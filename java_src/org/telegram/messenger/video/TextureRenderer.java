package org.telegram.messenger.video;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.SurfaceTexture;
import android.graphics.drawable.Drawable;
import android.opengl.GLES20;
import android.opengl.GLES30;
import android.opengl.GLUtils;
import android.os.Build;
import android.text.TextUtils;
import android.util.Pair;
import android.view.View;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.io.File;
import java.io.RandomAccessFile;
import java.nio.Buffer;
import java.nio.FloatBuffer;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.Bitmaps;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.MediaController;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.VideoEditedInfo;
import org.telegram.p043ui.Components.AnimatedEmojiDrawable;
import org.telegram.p043ui.Components.AnimatedFileDrawable;
import org.telegram.p043ui.Components.BlurringShader;
import org.telegram.p043ui.Components.CubicBezierInterpolator;
import org.telegram.p043ui.Components.EditTextEffects;
import org.telegram.p043ui.Components.FilterShaders;
import org.telegram.p043ui.Components.Paint.Views.EditTextOutline;
import org.telegram.p043ui.Components.RLottieDrawable;
/* loaded from: classes4.dex */
public class TextureRenderer {
    private static final String FRAGMENT_EXTERNAL_MASK_SHADER = "#extension GL_OES_EGL_image_external : require\nprecision highp float;\nvarying vec2 vTextureCoord;\nvarying vec2 MTextureCoord;\nuniform samplerExternalOES sTexture;\nuniform sampler2D sMask;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord) * texture2D(sMask, MTextureCoord).a;\n}\n";
    private static final String FRAGMENT_EXTERNAL_SHADER = "#extension GL_OES_EGL_image_external : require\nprecision highp float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);}\n";
    private static final String FRAGMENT_MASK_SHADER = "precision highp float;\nvarying vec2 vTextureCoord;\nvarying vec2 MTextureCoord;\nuniform sampler2D sTexture;\nuniform sampler2D sMask;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord) * texture2D(sMask, MTextureCoord).a;\n}\n";
    private static final String FRAGMENT_SHADER = "precision highp float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n";
    private static final String GRADIENT_FRAGMENT_SHADER = "precision highp float;\nvarying vec2 vTextureCoord;\nuniform vec4 gradientTopColor;\nuniform vec4 gradientBottomColor;\nfloat interleavedGradientNoise(vec2 n) {\n    return fract(52.9829189 * fract(.06711056 * n.x + .00583715 * n.y));\n}\nvoid main() {\n  gl_FragColor = mix(gradientTopColor, gradientBottomColor, vTextureCoord.y + (.2 * interleavedGradientNoise(gl_FragCoord.xy) - .1));\n}\n";
    private static final String VERTEX_SHADER = "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n";
    private static final String VERTEX_SHADER_300 = "#version 320 es\nuniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nin vec4 aPosition;\nin vec4 aTextureCoord;\nout vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n";
    private static final String VERTEX_SHADER_MASK = "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nattribute vec4 mTextureCoord;\nvarying vec2 vTextureCoord;\nvarying vec2 MTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n  MTextureCoord = (uSTMatrix * mTextureCoord).xy;\n}\n";
    private static final String VERTEX_SHADER_MASK_300 = "#version 320 es\nuniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nin vec4 aPosition;\nin vec4 aTextureCoord;\nin vec4 mTextureCoord;\nout vec2 vTextureCoord;\nout vec2 MTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n  MTextureCoord = (uSTMatrix * mTextureCoord).xy;\n}\n";
    private int NUM_EXTERNAL_SHADER;
    private int NUM_FILTER_SHADER;
    private int NUM_GRADIENT_SHADER;
    private Drawable backgroundDrawable;
    private String backgroundPath;
    private FloatBuffer bitmapVerticesBuffer;
    private boolean blendEnabled;
    private BlurringShader blur;
    private int blurBlurImageHandle;
    private int blurInputTexCoordHandle;
    private int blurMaskImageHandle;
    private String blurPath;
    private int blurPositionHandle;
    private int blurShaderProgram;
    private int[] blurTexture;
    private FloatBuffer blurVerticesBuffer;
    private final MediaController.CropState cropState;
    private ArrayList<AnimatedEmojiDrawable> emojiDrawables;
    private FilterShaders filterShaders;
    private int gradientBottomColor;
    private int gradientBottomColorHandle;
    private FloatBuffer gradientTextureBuffer;
    private int gradientTopColor;
    private int gradientTopColorHandle;
    private FloatBuffer gradientVerticesBuffer;
    private int imageHeight;
    private int imageOrientation;
    private String imagePath;
    private int imageWidth;
    private boolean isPhoto;
    private int[] mProgram;
    private int mTextureID;
    private int[] maPositionHandle;
    private int[] maTextureHandle;
    private FloatBuffer maskTextureBuffer;
    private int[] maskTextureHandle;
    private ArrayList<VideoEditedInfo.MediaEntity> mediaEntities;
    private String messagePath;
    private String messageVideoMaskPath;
    private int[] mmTextureHandle;
    private int[] muMVPMatrixHandle;
    private int[] muSTMatrixHandle;
    private int originalHeight;
    private int originalWidth;
    private String paintPath;
    private int[] paintTexture;
    Path path;
    private FloatBuffer renderTextureBuffer;
    private Bitmap roundBitmap;
    private Canvas roundCanvas;
    private Path roundClipPath;
    private int simpleInputTexCoordHandle;
    private int simplePositionHandle;
    private int simpleShaderProgram;
    private int simpleSourceImageHandle;
    private Bitmap stickerBitmap;
    private Canvas stickerCanvas;
    private int[] stickerTexture;
    private int texSizeHandle;
    Paint textColorPaint;
    private FloatBuffer textureBuffer;
    private int transformedHeight;
    private int transformedWidth;
    private boolean useMatrixForImagePath;
    private FloatBuffer verticesBuffer;
    private float videoFps;
    private int videoMaskTexture;
    Paint xRefPaint;
    float[] bitmapData = {-1.0f, 1.0f, 1.0f, 1.0f, -1.0f, -1.0f, 1.0f, -1.0f};
    private float[] mMVPMatrix = new float[16];
    private float[] mSTMatrix = new float[16];
    private float[] mSTMatrixIdentity = new float[16];
    private int imagePathIndex = -1;
    private int paintPathIndex = -1;
    private int messagePathIndex = -1;
    private int backgroundPathIndex = -1;
    private final Rect roundSrc = new Rect();
    private final RectF roundDst = new RectF();
    private boolean firstFrame = true;

    /* JADX WARN: Removed duplicated region for block: B:38:0x0225  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0248  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0364  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0390  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x03b2  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x03d5  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x03f4  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x03fc  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public TextureRenderer(org.telegram.messenger.MediaController.SavedFilterState r29, java.lang.String r30, java.lang.String r31, java.lang.String r32, java.util.ArrayList<org.telegram.messenger.VideoEditedInfo.MediaEntity> r33, org.telegram.messenger.MediaController.CropState r34, int r35, int r36, int r37, int r38, int r39, float r40, boolean r41, java.lang.Integer r42, java.lang.Integer r43, org.telegram.p043ui.Stories.recorder.StoryEntry.HDRInfo r44, org.telegram.messenger.video.MediaCodecVideoConvertor.ConvertVideoParams r45) {
        /*
            Method dump skipped, instructions count: 1366
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.video.TextureRenderer.<init>(org.telegram.messenger.MediaController$SavedFilterState, java.lang.String, java.lang.String, java.lang.String, java.util.ArrayList, org.telegram.messenger.MediaController$CropState, int, int, int, int, int, float, boolean, java.lang.Integer, java.lang.Integer, org.telegram.ui.Stories.recorder.StoryEntry$HDRInfo, org.telegram.messenger.video.MediaCodecVideoConvertor$ConvertVideoParams):void");
    }

    public int getTextureId() {
        return this.mTextureID;
    }

    private void drawBackground() {
        int i = this.NUM_GRADIENT_SHADER;
        if (i >= 0) {
            GLES20.glUseProgram(this.mProgram[i]);
            GLES20.glVertexAttribPointer(this.maPositionHandle[this.NUM_GRADIENT_SHADER], 2, 5126, false, 8, (Buffer) this.gradientVerticesBuffer);
            GLES20.glEnableVertexAttribArray(this.maPositionHandle[this.NUM_GRADIENT_SHADER]);
            GLES20.glVertexAttribPointer(this.maTextureHandle[this.NUM_GRADIENT_SHADER], 2, 5126, false, 8, (Buffer) this.gradientTextureBuffer);
            GLES20.glEnableVertexAttribArray(this.maTextureHandle[this.NUM_GRADIENT_SHADER]);
            GLES20.glUniformMatrix4fv(this.muSTMatrixHandle[this.NUM_GRADIENT_SHADER], 1, false, this.mSTMatrix, 0);
            GLES20.glUniformMatrix4fv(this.muMVPMatrixHandle[this.NUM_GRADIENT_SHADER], 1, false, this.mMVPMatrix, 0);
            GLES20.glUniform4f(this.gradientTopColorHandle, Color.red(this.gradientTopColor) / 255.0f, Color.green(this.gradientTopColor) / 255.0f, Color.blue(this.gradientTopColor) / 255.0f, Color.alpha(this.gradientTopColor) / 255.0f);
            GLES20.glUniform4f(this.gradientBottomColorHandle, Color.red(this.gradientBottomColor) / 255.0f, Color.green(this.gradientBottomColor) / 255.0f, Color.blue(this.gradientBottomColor) / 255.0f, Color.alpha(this.gradientBottomColor) / 255.0f);
            GLES20.glDrawArrays(5, 0, 4);
        } else if (this.backgroundPathIndex >= 0) {
            GLES20.glUseProgram(this.simpleShaderProgram);
            GLES20.glActiveTexture(33984);
            GLES20.glUniform1i(this.simpleSourceImageHandle, 0);
            GLES20.glEnableVertexAttribArray(this.simpleInputTexCoordHandle);
            GLES20.glVertexAttribPointer(this.simpleInputTexCoordHandle, 2, 5126, false, 8, (Buffer) this.textureBuffer);
            GLES20.glEnableVertexAttribArray(this.simplePositionHandle);
            drawTexture(true, this.paintTexture[this.backgroundPathIndex], -10000.0f, -10000.0f, -10000.0f, -10000.0f, BitmapDescriptorFactory.HUE_RED, false, false, -1);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v9 */
    public void drawFrame(SurfaceTexture surfaceTexture, long j) {
        int i;
        float[] fArr;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int[] iArr;
        boolean z = true;
        if (this.isPhoto) {
            drawBackground();
            i4 = 0;
        } else {
            surfaceTexture.getTransformMatrix(this.mSTMatrix);
            if (BuildVars.LOGS_ENABLED && this.firstFrame) {
                StringBuilder sb = new StringBuilder();
                int i8 = 0;
                while (true) {
                    float[] fArr2 = this.mSTMatrix;
                    if (i8 >= fArr2.length) {
                        break;
                    }
                    sb.append(fArr2[i8]);
                    sb.append(", ");
                    i8++;
                }
                FileLog.m105d("stMatrix = " + ((Object) sb));
                this.firstFrame = false;
            }
            if (this.blendEnabled) {
                GLES20.glDisable(3042);
                this.blendEnabled = false;
            }
            FilterShaders filterShaders = this.filterShaders;
            if (filterShaders != null) {
                filterShaders.onVideoFrameUpdate(this.mSTMatrix);
                GLES20.glViewport(0, 0, this.originalWidth, this.originalHeight);
                this.filterShaders.drawSkinSmoothPass();
                this.filterShaders.drawEnhancePass();
                this.filterShaders.drawSharpenPass();
                this.filterShaders.drawCustomParamsPass();
                boolean drawBlurPass = this.filterShaders.drawBlurPass();
                GLES20.glBindFramebuffer(36160, 0);
                int i9 = this.transformedWidth;
                if (i9 != this.originalWidth || this.transformedHeight != this.originalHeight) {
                    GLES20.glViewport(0, 0, i9, this.transformedHeight);
                }
                int renderTexture = this.filterShaders.getRenderTexture(!drawBlurPass);
                int i10 = this.NUM_FILTER_SHADER;
                fArr = this.mSTMatrixIdentity;
                i2 = i10;
                i3 = renderTexture;
                i4 = drawBlurPass;
                i = 3553;
            } else {
                int i11 = this.mTextureID;
                int i12 = this.NUM_EXTERNAL_SHADER;
                i = 36197;
                fArr = this.mSTMatrix;
                i2 = i12;
                i3 = i11;
                i4 = 0;
            }
            drawBackground();
            GLES20.glUseProgram(this.mProgram[i2]);
            GLES20.glActiveTexture(33984);
            GLES20.glBindTexture(i, i3);
            if (this.messageVideoMaskPath != null && this.videoMaskTexture != -1) {
                GLES20.glActiveTexture(33985);
                GLES20.glBindTexture(3553, this.videoMaskTexture);
                GLES20.glUniform1i(this.maskTextureHandle[i2], 1);
            }
            GLES20.glVertexAttribPointer(this.maPositionHandle[i2], 2, 5126, false, 8, (Buffer) this.verticesBuffer);
            GLES20.glEnableVertexAttribArray(this.maPositionHandle[i2]);
            GLES20.glVertexAttribPointer(this.maTextureHandle[i2], 2, 5126, false, 8, (Buffer) this.renderTextureBuffer);
            GLES20.glEnableVertexAttribArray(this.maTextureHandle[i2]);
            if (this.messageVideoMaskPath != null && this.videoMaskTexture != -1) {
                GLES20.glVertexAttribPointer(this.mmTextureHandle[i2], 2, 5126, false, 8, (Buffer) this.maskTextureBuffer);
                GLES20.glEnableVertexAttribArray(this.mmTextureHandle[i2]);
            }
            int i13 = this.texSizeHandle;
            if (i13 != 0) {
                GLES20.glUniform2f(i13, this.transformedWidth, this.transformedHeight);
            }
            GLES20.glUniformMatrix4fv(this.muSTMatrixHandle[i2], 1, false, fArr, 0);
            GLES20.glUniformMatrix4fv(this.muMVPMatrixHandle[i2], 1, false, this.mMVPMatrix, 0);
            GLES20.glDrawArrays(5, 0, 4);
        }
        if (this.blur != null) {
            if (!this.blendEnabled) {
                GLES20.glEnable(3042);
                GLES20.glBlendFunc(1, 771);
                this.blendEnabled = true;
            }
            if (this.imagePath != null && (iArr = this.paintTexture) != null) {
                i5 = iArr[0];
                i6 = this.imageWidth;
                i7 = this.imageHeight;
            } else {
                FilterShaders filterShaders2 = this.filterShaders;
                if (filterShaders2 != null) {
                    i5 = filterShaders2.getRenderTexture(i4 ^ 1);
                    i6 = this.filterShaders.getRenderBufferWidth();
                    i7 = this.filterShaders.getRenderBufferHeight();
                } else {
                    i5 = -1;
                    i6 = 1;
                    i7 = 1;
                }
            }
            if (i5 != -1) {
                this.blur.draw(null, i5, i6, i7);
                GLES20.glViewport(0, 0, this.transformedWidth, this.transformedHeight);
                GLES20.glBindFramebuffer(36160, 0);
                GLES20.glUseProgram(this.blurShaderProgram);
                GLES20.glEnableVertexAttribArray(this.blurInputTexCoordHandle);
                GLES20.glVertexAttribPointer(this.blurInputTexCoordHandle, 2, 5126, false, 8, (Buffer) this.gradientTextureBuffer);
                GLES20.glEnableVertexAttribArray(this.blurPositionHandle);
                GLES20.glVertexAttribPointer(this.blurPositionHandle, 2, 5126, false, 8, (Buffer) this.blurVerticesBuffer);
                GLES20.glUniform1i(this.blurBlurImageHandle, 0);
                GLES20.glActiveTexture(33984);
                GLES20.glBindTexture(3553, this.blur.getTexture());
                GLES20.glUniform1i(this.blurMaskImageHandle, 1);
                GLES20.glActiveTexture(33985);
                GLES20.glBindTexture(3553, this.blurTexture[0]);
                GLES20.glDrawArrays(5, 0, 4);
            }
        }
        if (this.isPhoto || this.paintTexture != null || this.stickerTexture != null) {
            GLES20.glUseProgram(this.simpleShaderProgram);
            GLES20.glActiveTexture(33984);
            GLES20.glUniform1i(this.simpleSourceImageHandle, 0);
            GLES20.glEnableVertexAttribArray(this.simpleInputTexCoordHandle);
            GLES20.glVertexAttribPointer(this.simpleInputTexCoordHandle, 2, 5126, false, 8, (Buffer) this.textureBuffer);
            GLES20.glEnableVertexAttribArray(this.simplePositionHandle);
        }
        int i14 = this.imagePathIndex;
        if (i14 >= 0) {
            drawTexture(true, this.paintTexture[i14], -10000.0f, -10000.0f, -10000.0f, -10000.0f, BitmapDescriptorFactory.HUE_RED, false, (this.useMatrixForImagePath && this.isPhoto) ? false : false, -1);
        }
        int i15 = this.paintPathIndex;
        if (i15 >= 0) {
            drawTexture(true, this.paintTexture[i15], -10000.0f, -10000.0f, -10000.0f, -10000.0f, BitmapDescriptorFactory.HUE_RED, false, false, -1);
        }
        int i16 = this.messagePathIndex;
        if (i16 >= 0) {
            drawTexture(true, this.paintTexture[i16], -10000.0f, -10000.0f, -10000.0f, -10000.0f, BitmapDescriptorFactory.HUE_RED, false, false, -1);
        }
        if (this.stickerTexture != null) {
            int size = this.mediaEntities.size();
            for (int i17 = 0; i17 < size; i17++) {
                drawEntity(this.mediaEntities.get(i17), this.mediaEntities.get(i17).color, j);
            }
        }
        GLES20.glFinish();
    }

    private void drawEntity(VideoEditedInfo.MediaEntity mediaEntity, int i, long j) {
        int i2;
        VideoEditedInfo.MediaEntity mediaEntity2;
        Bitmap bitmap;
        long j2;
        long j3;
        long clamp;
        int i3;
        int i4;
        TextureRenderer textureRenderer = this;
        long j4 = mediaEntity.ptr;
        if (j4 != 0) {
            Bitmap bitmap2 = mediaEntity.bitmap;
            if (bitmap2 == null || (i3 = mediaEntity.f1578W) <= 0 || (i4 = mediaEntity.f1577H) <= 0) {
                return;
            }
            RLottieDrawable.getFrame(j4, (int) mediaEntity.currentFrame, bitmap2, i3, i4, bitmap2.getRowBytes(), true);
            textureRenderer.applyRoundRadius(mediaEntity, mediaEntity.bitmap, (mediaEntity.subType & 8) != 0 ? i : 0);
            GLES20.glBindTexture(3553, textureRenderer.stickerTexture[0]);
            GLUtils.texImage2D(3553, 0, mediaEntity.bitmap, 0);
            float f = mediaEntity.currentFrame + mediaEntity.framesPerDraw;
            mediaEntity.currentFrame = f;
            if (f >= mediaEntity.metadata[0]) {
                mediaEntity.currentFrame = BitmapDescriptorFactory.HUE_RED;
            }
            drawTexture(false, textureRenderer.stickerTexture[0], mediaEntity.f1579x, mediaEntity.f1580y, mediaEntity.width, mediaEntity.height, mediaEntity.rotation, (mediaEntity.subType & 2) != 0);
        } else if (mediaEntity.animatedFileDrawable != null) {
            float f2 = mediaEntity.currentFrame;
            int i5 = (int) f2;
            float f3 = 1.0f;
            if (mediaEntity.type == 5) {
                if (textureRenderer.isPhoto) {
                    j3 = mediaEntity.roundDuration;
                    j2 = 0;
                } else {
                    j2 = mediaEntity.roundOffset;
                    j3 = (mediaEntity.roundRight - mediaEntity.roundLeft) + j2;
                }
                long j5 = j / 1000000;
                if (j5 < j2) {
                    f3 = CubicBezierInterpolator.EASE_OUT_QUINT.getInterpolation(Utilities.clamp(1.0f - (((float) (j2 - j5)) / 400.0f), 1.0f, (float) BitmapDescriptorFactory.HUE_RED));
                } else if (j5 > j3) {
                    f3 = CubicBezierInterpolator.EASE_OUT_QUINT.getInterpolation(Utilities.clamp(1.0f - (((float) (j5 - j3)) / 400.0f), 1.0f, (float) BitmapDescriptorFactory.HUE_RED));
                }
                textureRenderer = this;
                if (f3 > BitmapDescriptorFactory.HUE_RED) {
                    if (textureRenderer.isPhoto) {
                        clamp = Utilities.clamp(j5, mediaEntity.roundDuration, 0L);
                    } else {
                        clamp = Utilities.clamp((j5 - mediaEntity.roundOffset) + mediaEntity.roundLeft, mediaEntity.roundDuration, 0L);
                    }
                    while (!mediaEntity.looped && mediaEntity.animatedFileDrawable.getProgressMs() < Math.min(clamp, mediaEntity.animatedFileDrawable.getDurationMs())) {
                        int progressMs = mediaEntity.animatedFileDrawable.getProgressMs();
                        mediaEntity.animatedFileDrawable.getNextFrame(false);
                        if (mediaEntity.animatedFileDrawable.getProgressMs() <= progressMs && (mediaEntity.animatedFileDrawable.getProgressMs() != 0 || progressMs != 0)) {
                            mediaEntity.looped = true;
                            break;
                        }
                    }
                }
            } else {
                float f4 = f2 + mediaEntity.framesPerDraw;
                mediaEntity.currentFrame = f4;
                for (int i6 = (int) f4; i5 != i6; i6--) {
                    mediaEntity.animatedFileDrawable.getNextFrame(true);
                }
            }
            Bitmap backgroundBitmap = mediaEntity.animatedFileDrawable.getBackgroundBitmap();
            if (backgroundBitmap != null) {
                if (mediaEntity.type == 5) {
                    if (textureRenderer.roundBitmap == null) {
                        int min = Math.min(backgroundBitmap.getWidth(), backgroundBitmap.getHeight());
                        textureRenderer.roundBitmap = Bitmap.createBitmap(min, min, Bitmap.Config.ARGB_8888);
                        textureRenderer.roundCanvas = new Canvas(textureRenderer.roundBitmap);
                    }
                    Bitmap bitmap3 = textureRenderer.roundBitmap;
                    if (bitmap3 != null) {
                        bitmap3.eraseColor(0);
                        textureRenderer.roundCanvas.save();
                        if (textureRenderer.roundClipPath == null) {
                            textureRenderer.roundClipPath = new Path();
                        }
                        textureRenderer.roundClipPath.rewind();
                        textureRenderer.roundClipPath.addCircle(textureRenderer.roundBitmap.getWidth() / 2.0f, textureRenderer.roundBitmap.getHeight() / 2.0f, (textureRenderer.roundBitmap.getWidth() / 2.0f) * f3, Path.Direction.CW);
                        textureRenderer.roundCanvas.clipPath(textureRenderer.roundClipPath);
                        if (backgroundBitmap.getWidth() >= backgroundBitmap.getHeight()) {
                            textureRenderer.roundSrc.set((backgroundBitmap.getWidth() - backgroundBitmap.getHeight()) / 2, 0, backgroundBitmap.getWidth() - ((backgroundBitmap.getWidth() - backgroundBitmap.getHeight()) / 2), backgroundBitmap.getHeight());
                        } else {
                            textureRenderer.roundSrc.set(0, (backgroundBitmap.getHeight() - backgroundBitmap.getWidth()) / 2, backgroundBitmap.getWidth(), backgroundBitmap.getHeight() - ((backgroundBitmap.getHeight() - backgroundBitmap.getWidth()) / 2));
                        }
                        textureRenderer.roundDst.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, textureRenderer.roundBitmap.getWidth(), textureRenderer.roundBitmap.getHeight());
                        textureRenderer.roundCanvas.drawBitmap(backgroundBitmap, textureRenderer.roundSrc, textureRenderer.roundDst, (Paint) null);
                        textureRenderer.roundCanvas.restore();
                    }
                    bitmap = textureRenderer.roundBitmap;
                } else {
                    if (textureRenderer.stickerCanvas == null && textureRenderer.stickerBitmap != null) {
                        textureRenderer.stickerCanvas = new Canvas(textureRenderer.stickerBitmap);
                        if (textureRenderer.stickerBitmap.getHeight() != backgroundBitmap.getHeight() || textureRenderer.stickerBitmap.getWidth() != backgroundBitmap.getWidth()) {
                            textureRenderer.stickerCanvas.scale(textureRenderer.stickerBitmap.getWidth() / backgroundBitmap.getWidth(), textureRenderer.stickerBitmap.getHeight() / backgroundBitmap.getHeight());
                        }
                    }
                    Bitmap bitmap4 = textureRenderer.stickerBitmap;
                    if (bitmap4 != null) {
                        bitmap4.eraseColor(0);
                        textureRenderer.stickerCanvas.drawBitmap(backgroundBitmap, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, (Paint) null);
                        textureRenderer.applyRoundRadius(mediaEntity, textureRenderer.stickerBitmap, (mediaEntity.subType & 8) != 0 ? i : 0);
                    }
                    bitmap = textureRenderer.stickerBitmap;
                }
                if (bitmap != null) {
                    GLES20.glBindTexture(3553, textureRenderer.stickerTexture[0]);
                    GLUtils.texImage2D(3553, 0, bitmap, 0);
                    drawTexture(false, textureRenderer.stickerTexture[0], mediaEntity.f1579x, mediaEntity.f1580y, mediaEntity.width, mediaEntity.height, mediaEntity.rotation, (mediaEntity.subType & 2) != 0);
                }
            }
        } else {
            if (mediaEntity.bitmap != null) {
                GLES20.glBindTexture(3553, textureRenderer.stickerTexture[0]);
                GLUtils.texImage2D(3553, 0, mediaEntity.bitmap, 0);
                int i7 = textureRenderer.stickerTexture[0];
                float f5 = mediaEntity.f1579x;
                float f6 = mediaEntity.additionalWidth;
                float f7 = f5 - (f6 / 2.0f);
                float f8 = mediaEntity.f1580y;
                float f9 = mediaEntity.additionalHeight;
                i2 = 0;
                drawTexture(false, i7, f7, f8 - (f9 / 2.0f), mediaEntity.width + f6, f9 + mediaEntity.height, mediaEntity.rotation, mediaEntity.type == 2 && (mediaEntity.subType & 2) != 0);
            } else {
                i2 = 0;
            }
            ArrayList<VideoEditedInfo.EmojiEntity> arrayList = mediaEntity.entities;
            if (arrayList == null || arrayList.isEmpty()) {
                return;
            }
            for (int i8 = i2; i8 < mediaEntity.entities.size(); i8++) {
                VideoEditedInfo.EmojiEntity emojiEntity = mediaEntity.entities.get(i8);
                if (emojiEntity != null && (mediaEntity2 = emojiEntity.entity) != null) {
                    textureRenderer.drawEntity(mediaEntity2, mediaEntity.color, j);
                }
            }
        }
    }

    private void applyRoundRadius(VideoEditedInfo.MediaEntity mediaEntity, Bitmap bitmap, int i) {
        if (bitmap == null || mediaEntity == null) {
            return;
        }
        if (mediaEntity.roundRadius == BitmapDescriptorFactory.HUE_RED && i == 0) {
            return;
        }
        if (mediaEntity.roundRadiusCanvas == null) {
            mediaEntity.roundRadiusCanvas = new Canvas(bitmap);
        }
        if (mediaEntity.roundRadius != BitmapDescriptorFactory.HUE_RED) {
            if (this.path == null) {
                this.path = new Path();
            }
            if (this.xRefPaint == null) {
                Paint paint = new Paint(1);
                this.xRefPaint = paint;
                paint.setColor(-16777216);
                this.xRefPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
            }
            float min = Math.min(bitmap.getWidth(), bitmap.getHeight()) * mediaEntity.roundRadius;
            this.path.rewind();
            this.path.addRoundRect(new RectF(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, bitmap.getWidth(), bitmap.getHeight()), min, min, Path.Direction.CCW);
            this.path.toggleInverseFillType();
            mediaEntity.roundRadiusCanvas.drawPath(this.path, this.xRefPaint);
        }
        if (i != 0) {
            if (this.textColorPaint == null) {
                Paint paint2 = new Paint(1);
                this.textColorPaint = paint2;
                paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
            }
            this.textColorPaint.setColor(i);
            mediaEntity.roundRadiusCanvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, bitmap.getWidth(), bitmap.getHeight(), this.textColorPaint);
        }
    }

    private void drawTexture(boolean z, int i) {
        drawTexture(z, i, -10000.0f, -10000.0f, -10000.0f, -10000.0f, BitmapDescriptorFactory.HUE_RED, false);
    }

    private void drawTexture(boolean z, int i, float f, float f2, float f3, float f4, float f5, boolean z2) {
        drawTexture(z, i, f, f2, f3, f4, f5, z2, false, -1);
    }

    private void drawTexture(boolean z, int i, float f, float f2, float f3, float f4, float f5, boolean z2, boolean z3, int i2) {
        if (!this.blendEnabled) {
            GLES20.glEnable(3042);
            GLES20.glBlendFunc(1, 771);
            this.blendEnabled = true;
        }
        if (f <= -10000.0f) {
            float[] fArr = this.bitmapData;
            fArr[0] = -1.0f;
            fArr[1] = 1.0f;
            fArr[2] = 1.0f;
            fArr[3] = 1.0f;
            fArr[4] = -1.0f;
            fArr[5] = -1.0f;
            fArr[6] = 1.0f;
            fArr[7] = -1.0f;
        } else {
            float f6 = (f * 2.0f) - 1.0f;
            float f7 = ((1.0f - f2) * 2.0f) - 1.0f;
            float[] fArr2 = this.bitmapData;
            fArr2[0] = f6;
            fArr2[1] = f7;
            float f8 = (f3 * 2.0f) + f6;
            fArr2[2] = f8;
            fArr2[3] = f7;
            fArr2[4] = f6;
            float f9 = f7 - (f4 * 2.0f);
            fArr2[5] = f9;
            fArr2[6] = f8;
            fArr2[7] = f9;
        }
        float[] fArr3 = this.bitmapData;
        float f10 = (fArr3[0] + fArr3[2]) / 2.0f;
        if (z2) {
            float f11 = fArr3[2];
            fArr3[2] = fArr3[0];
            fArr3[0] = f11;
            float f12 = fArr3[6];
            fArr3[6] = fArr3[4];
            fArr3[4] = f12;
        }
        if (f5 != BitmapDescriptorFactory.HUE_RED) {
            float f13 = this.transformedWidth / this.transformedHeight;
            float f14 = (fArr3[5] + fArr3[1]) / 2.0f;
            int i3 = 0;
            for (int i4 = 4; i3 < i4; i4 = 4) {
                float[] fArr4 = this.bitmapData;
                int i5 = i3 * 2;
                int i6 = i5 + 1;
                double d = fArr4[i5] - f10;
                double d2 = f5;
                double d3 = (fArr4[i6] - f14) / f13;
                fArr4[i5] = ((float) ((Math.cos(d2) * d) - (Math.sin(d2) * d3))) + f10;
                this.bitmapData[i6] = (((float) ((d * Math.sin(d2)) + (d3 * Math.cos(d2)))) * f13) + f14;
                i3++;
            }
        }
        this.bitmapVerticesBuffer.put(this.bitmapData).position(0);
        GLES20.glVertexAttribPointer(this.simplePositionHandle, 2, 5126, false, 8, (Buffer) (z3 ? this.verticesBuffer : this.bitmapVerticesBuffer));
        GLES20.glEnableVertexAttribArray(this.simpleInputTexCoordHandle);
        GLES20.glVertexAttribPointer(this.simpleInputTexCoordHandle, 2, 5126, false, 8, (Buffer) (z3 ? this.renderTextureBuffer : this.textureBuffer));
        if (z) {
            GLES20.glBindTexture(3553, i);
        }
        GLES20.glDrawArrays(5, 0, 4);
    }

    public void setBreakStrategy(EditTextOutline editTextOutline) {
        editTextOutline.setBreakStrategy(0);
    }

    /* JADX WARN: Code restructure failed: missing block: B:189:0x057d, code lost:
        if (org.telegram.messenger.LocaleController.isRTL != false) goto L134;
     */
    /* JADX WARN: Removed duplicated region for block: B:128:0x03b0  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x03b3  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x03b8  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x03bb  */
    /* JADX WARN: Removed duplicated region for block: B:251:0x00ba A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0040  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void surfaceCreated() {
        /*
            Method dump skipped, instructions count: 1984
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.video.TextureRenderer.surfaceCreated():void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initStickerEntity(VideoEditedInfo.MediaEntity mediaEntity) {
        Bitmap bitmap;
        AnimatedFileDrawable animatedFileDrawable;
        int i;
        int i2 = (int) (mediaEntity.width * this.transformedWidth);
        mediaEntity.f1578W = i2;
        int i3 = (int) (mediaEntity.height * this.transformedHeight);
        mediaEntity.f1577H = i3;
        if (i2 > 512) {
            mediaEntity.f1577H = (int) ((i3 / i2) * 512.0f);
            mediaEntity.f1578W = 512;
        }
        int i4 = mediaEntity.f1577H;
        if (i4 > 512) {
            mediaEntity.f1578W = (int) ((mediaEntity.f1578W / i4) * 512.0f);
            mediaEntity.f1577H = 512;
        }
        byte b = mediaEntity.subType;
        if ((b & 1) != 0) {
            int i5 = mediaEntity.f1578W;
            if (i5 <= 0 || (i = mediaEntity.f1577H) <= 0) {
                return;
            }
            mediaEntity.bitmap = Bitmap.createBitmap(i5, i, Bitmap.Config.ARGB_8888);
            int[] iArr = new int[3];
            mediaEntity.metadata = iArr;
            mediaEntity.ptr = RLottieDrawable.create(mediaEntity.text, null, mediaEntity.f1578W, mediaEntity.f1577H, iArr, false, null, false, 0);
            mediaEntity.framesPerDraw = mediaEntity.metadata[1] / this.videoFps;
        } else if ((b & 4) != 0) {
            mediaEntity.looped = false;
            mediaEntity.animatedFileDrawable = new AnimatedFileDrawable(new File(mediaEntity.text), true, 0L, 0, null, null, null, 0L, UserConfig.selectedAccount, true, 512, 512, null);
            mediaEntity.framesPerDraw = animatedFileDrawable.getFps() / this.videoFps;
            mediaEntity.currentFrame = 1.0f;
            mediaEntity.animatedFileDrawable.getNextFrame(true);
            if (mediaEntity.type == 5) {
                mediaEntity.firstSeek = true;
            }
        } else {
            String str = mediaEntity.text;
            if (!TextUtils.isEmpty(mediaEntity.segmentedPath) && (mediaEntity.subType & 16) != 0) {
                str = mediaEntity.segmentedPath;
            }
            if (Build.VERSION.SDK_INT >= 19) {
                BitmapFactory.Options options = new BitmapFactory.Options();
                if (mediaEntity.type == 2) {
                    options.inMutable = true;
                }
                mediaEntity.bitmap = BitmapFactory.decodeFile(str, options);
            } else {
                try {
                    File file = new File(str);
                    RandomAccessFile randomAccessFile = new RandomAccessFile(file, "r");
                    MappedByteBuffer map = randomAccessFile.getChannel().map(FileChannel.MapMode.READ_ONLY, 0L, file.length());
                    BitmapFactory.Options options2 = new BitmapFactory.Options();
                    options2.inJustDecodeBounds = true;
                    Utilities.loadWebpImage(null, map, map.limit(), options2, true);
                    if (mediaEntity.type == 2) {
                        options2.inMutable = true;
                    }
                    Bitmap createBitmap = Bitmaps.createBitmap(options2.outWidth, options2.outHeight, Bitmap.Config.ARGB_8888);
                    mediaEntity.bitmap = createBitmap;
                    Utilities.loadWebpImage(createBitmap, map, map.limit(), null, true);
                    randomAccessFile.close();
                } catch (Throwable th) {
                    FileLog.m102e(th);
                }
            }
            if (mediaEntity.type == 2 && mediaEntity.bitmap != null) {
                mediaEntity.roundRadius = AndroidUtilities.m107dp(12) / Math.min(mediaEntity.viewWidth, mediaEntity.viewHeight);
                Pair<Integer, Integer> imageOrientation = AndroidUtilities.getImageOrientation(mediaEntity.text);
                mediaEntity.rotation = (float) (mediaEntity.rotation - Math.toRadians(((Integer) imageOrientation.first).intValue()));
                if ((((Integer) imageOrientation.first).intValue() / 90) % 2 == 1) {
                    float f = mediaEntity.f1579x;
                    float f2 = mediaEntity.width;
                    float f3 = f + (f2 / 2.0f);
                    float f4 = mediaEntity.f1580y;
                    float f5 = mediaEntity.height;
                    float f6 = f4 + (f5 / 2.0f);
                    int i6 = this.transformedWidth;
                    int i7 = this.transformedHeight;
                    float f7 = (f2 * i6) / i7;
                    float f8 = (f5 * i7) / i6;
                    mediaEntity.width = f8;
                    mediaEntity.height = f7;
                    mediaEntity.f1579x = f3 - (f8 / 2.0f);
                    mediaEntity.f1580y = f6 - (f7 / 2.0f);
                }
                applyRoundRadius(mediaEntity, mediaEntity.bitmap, 0);
                return;
            }
            if (mediaEntity.bitmap != null) {
                float width = bitmap.getWidth() / mediaEntity.bitmap.getHeight();
                if (width > 1.0f) {
                    float f9 = mediaEntity.height;
                    float f10 = f9 / width;
                    mediaEntity.f1580y += (f9 - f10) / 2.0f;
                    mediaEntity.height = f10;
                } else if (width < 1.0f) {
                    float f11 = mediaEntity.width;
                    float f12 = width * f11;
                    mediaEntity.f1579x += (f11 - f12) / 2.0f;
                    mediaEntity.width = f12;
                }
            }
        }
    }

    private int createProgram(String str, String str2, boolean z) {
        int loadShader;
        int glCreateProgram;
        int loadShader2;
        int glCreateProgram2;
        if (z) {
            int loadShader3 = FilterShaders.loadShader(35633, str);
            if (loadShader3 == 0 || (loadShader2 = FilterShaders.loadShader(35632, str2)) == 0 || (glCreateProgram2 = GLES30.glCreateProgram()) == 0) {
                return 0;
            }
            GLES30.glAttachShader(glCreateProgram2, loadShader3);
            GLES30.glAttachShader(glCreateProgram2, loadShader2);
            GLES30.glLinkProgram(glCreateProgram2);
            int[] iArr = new int[1];
            GLES30.glGetProgramiv(glCreateProgram2, 35714, iArr, 0);
            if (iArr[0] != 1) {
                GLES30.glDeleteProgram(glCreateProgram2);
                return 0;
            }
            return glCreateProgram2;
        }
        int loadShader4 = FilterShaders.loadShader(35633, str);
        if (loadShader4 == 0 || (loadShader = FilterShaders.loadShader(35632, str2)) == 0 || (glCreateProgram = GLES20.glCreateProgram()) == 0) {
            return 0;
        }
        GLES20.glAttachShader(glCreateProgram, loadShader4);
        GLES20.glAttachShader(glCreateProgram, loadShader);
        GLES20.glLinkProgram(glCreateProgram);
        int[] iArr2 = new int[1];
        GLES20.glGetProgramiv(glCreateProgram, 35714, iArr2, 0);
        if (iArr2[0] != 1) {
            GLES20.glDeleteProgram(glCreateProgram);
            return 0;
        }
        return glCreateProgram;
    }

    public void release() {
        ArrayList<VideoEditedInfo.MediaEntity> arrayList = this.mediaEntities;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                VideoEditedInfo.MediaEntity mediaEntity = this.mediaEntities.get(i);
                long j = mediaEntity.ptr;
                if (j != 0) {
                    RLottieDrawable.destroy(j);
                }
                AnimatedFileDrawable animatedFileDrawable = mediaEntity.animatedFileDrawable;
                if (animatedFileDrawable != null) {
                    animatedFileDrawable.recycle();
                }
                View view = mediaEntity.view;
                if (view instanceof EditTextEffects) {
                    ((EditTextEffects) view).recycleEmojis();
                }
                Bitmap bitmap = mediaEntity.bitmap;
                if (bitmap != null) {
                    bitmap.recycle();
                    mediaEntity.bitmap = null;
                }
            }
        }
    }

    public void changeFragmentShader(String str, String str2, boolean z) {
        int createProgram;
        int createProgram2;
        String str3 = this.messageVideoMaskPath != null ? z ? VERTEX_SHADER_MASK_300 : VERTEX_SHADER_MASK : z ? VERTEX_SHADER_300 : VERTEX_SHADER;
        int i = this.NUM_EXTERNAL_SHADER;
        if (i >= 0 && i < this.mProgram.length && (createProgram2 = createProgram(str3, str, z)) != 0) {
            GLES20.glDeleteProgram(this.mProgram[this.NUM_EXTERNAL_SHADER]);
            this.mProgram[this.NUM_EXTERNAL_SHADER] = createProgram2;
            this.texSizeHandle = GLES20.glGetUniformLocation(createProgram2, "texSize");
        }
        int i2 = this.NUM_FILTER_SHADER;
        if (i2 < 0 || i2 >= this.mProgram.length || (createProgram = createProgram(str3, str2, z)) == 0) {
            return;
        }
        GLES20.glDeleteProgram(this.mProgram[this.NUM_FILTER_SHADER]);
        this.mProgram[this.NUM_FILTER_SHADER] = createProgram;
    }
}
