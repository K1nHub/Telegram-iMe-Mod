package org.telegram.p043ui.Components;

import android.animation.ValueAnimator;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.opengl.GLES20;
import android.text.TextUtils;
import android.view.View;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLContext;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.DispatchQueue;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.Utilities;
import org.telegram.p043ui.Components.BlurringShader;
import org.telegram.p043ui.Components.Paint.Shader;
/* renamed from: org.telegram.ui.Components.BlurringShader */
/* loaded from: classes6.dex */
public class BlurringShader {
    private Bitmap bitmap;
    private boolean bitmapAvailable;
    private final Object bitmapLock;
    private ByteBuffer buffer;
    private BlurManager currentManager;
    private final int[] framebuffer;
    private int gradientBottom;
    private int gradientTop;
    private int height;
    private final Matrix iMatrix;
    private final Runnable invalidateViews;
    private final float[] m3x3;
    private final float[] matrix;
    private final Object matrixLock;
    private FloatBuffer padPosBuffer;
    private int padding;
    private FloatBuffer posBuffer;
    private Program[] program;
    private boolean setupTransform;
    private final int[] texture;
    private FloatBuffer uvBuffer;
    private int width;

    public BlurringShader() {
        this(null);
    }

    public BlurringShader(FilterGLThread filterGLThread) {
        this.width = 1;
        this.height = 1;
        this.padding = 0;
        this.program = new Program[2];
        this.m3x3 = new float[9];
        this.matrix = new float[16];
        this.matrixLock = new Object();
        this.bitmapLock = new Object();
        this.framebuffer = new int[3];
        this.texture = new int[3];
        this.invalidateViews = new Runnable() { // from class: org.telegram.ui.Components.BlurringShader$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                BlurringShader.this.lambda$new$0();
            }
        };
        this.iMatrix = new Matrix();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Components.BlurringShader$Program */
    /* loaded from: classes6.dex */
    public static class Program {
        int flipyHandle;

        /* renamed from: gl */
        int f1824gl;
        int gradientBottomHandle;
        int gradientTopHandle;
        int hasVideoMatrixHandle;
        int matrixHandle;
        int posHandle;
        int stepHandle;
        int szHandle;
        int texHandle;
        int texSzHandle;
        int uvHandle;
        int videoMatrixHandle;

        public Program(int i) {
            this.f1824gl = i;
            this.posHandle = GLES20.glGetAttribLocation(i, TtmlNode.TAG_P);
            this.uvHandle = GLES20.glGetAttribLocation(i, "inputuv");
            this.matrixHandle = GLES20.glGetUniformLocation(i, "matrix");
            this.texHandle = GLES20.glGetUniformLocation(i, "tex");
            this.szHandle = GLES20.glGetUniformLocation(i, "sz");
            this.texSzHandle = GLES20.glGetUniformLocation(i, "texSz");
            this.gradientTopHandle = GLES20.glGetUniformLocation(i, "gtop");
            this.gradientBottomHandle = GLES20.glGetUniformLocation(i, "gbottom");
            this.stepHandle = GLES20.glGetUniformLocation(i, "step");
            this.videoMatrixHandle = GLES20.glGetUniformLocation(i, "videoMatrix");
            this.hasVideoMatrixHandle = GLES20.glGetUniformLocation(i, "hasVideoMatrix");
            this.flipyHandle = GLES20.glGetUniformLocation(i, "flipy");
        }
    }

    public boolean setup(float f, boolean z, int i) {
        int i2;
        int i3;
        this.width = (int) Math.round(Math.sqrt(f * 324.0f));
        this.height = (int) Math.round(Math.sqrt(324.0f / f));
        this.padding = i;
        if (!this.setupTransform) {
            updateTransform(new Matrix(), 1, 1);
        }
        float[] fArr = {-1.0f, 1.0f, 1.0f, 1.0f, -1.0f, -1.0f, 1.0f, -1.0f};
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect(32);
        allocateDirect.order(ByteOrder.nativeOrder());
        FloatBuffer asFloatBuffer = allocateDirect.asFloatBuffer();
        this.posBuffer = asFloatBuffer;
        asFloatBuffer.put(fArr);
        this.posBuffer.position(0);
        for (int i4 = 0; i4 < 4; i4++) {
            int i5 = i4 * 2;
            fArr[i5] = fArr[i5] * ((i2 - i) / this.width);
            int i6 = i5 + 1;
            fArr[i6] = fArr[i6] * ((i3 - i) / this.height);
        }
        ByteBuffer allocateDirect2 = ByteBuffer.allocateDirect(32);
        allocateDirect2.order(ByteOrder.nativeOrder());
        FloatBuffer asFloatBuffer2 = allocateDirect2.asFloatBuffer();
        this.padPosBuffer = asFloatBuffer2;
        asFloatBuffer2.put(fArr);
        this.padPosBuffer.position(0);
        float[] fArr2 = {BitmapDescriptorFactory.HUE_RED, 1.0f, 1.0f, 1.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f, BitmapDescriptorFactory.HUE_RED};
        ByteBuffer allocateDirect3 = ByteBuffer.allocateDirect(32);
        allocateDirect3.order(ByteOrder.nativeOrder());
        FloatBuffer asFloatBuffer3 = allocateDirect3.asFloatBuffer();
        this.uvBuffer = asFloatBuffer3;
        asFloatBuffer3.put(fArr2);
        this.uvBuffer.position(0);
        String readRes = RLottieDrawable.readRes(null, C3632R.raw.blur_vrt);
        String readRes2 = RLottieDrawable.readRes(null, C3632R.raw.blur_frg);
        if (readRes == null || readRes2 == null) {
            return false;
        }
        for (int i7 = 0; i7 < 2; i7++) {
            if (i7 == 1) {
                readRes2 = "#extension GL_OES_EGL_image_external : require\n" + readRes2.replace("sampler2D tex", "samplerExternalOES tex");
            }
            int loadShader = FilterShaders.loadShader(35633, readRes);
            int loadShader2 = FilterShaders.loadShader(35632, readRes2);
            if (loadShader == 0 || loadShader2 == 0) {
                return false;
            }
            int glCreateProgram = GLES20.glCreateProgram();
            GLES20.glAttachShader(glCreateProgram, loadShader);
            GLES20.glAttachShader(glCreateProgram, loadShader2);
            GLES20.glBindAttribLocation(glCreateProgram, 0, TtmlNode.TAG_P);
            GLES20.glBindAttribLocation(glCreateProgram, 1, "inputuv");
            GLES20.glLinkProgram(glCreateProgram);
            int[] iArr = new int[1];
            GLES20.glGetProgramiv(glCreateProgram, 35714, iArr, 0);
            if (iArr[0] == 0) {
                GLES20.glDeleteProgram(glCreateProgram);
                return false;
            }
            this.program[i7] = new Program(glCreateProgram);
        }
        GLES20.glGenFramebuffers(3, this.framebuffer, 0);
        GLES20.glGenTextures(3, this.texture, 0);
        int i8 = 0;
        while (i8 < 3) {
            GLES20.glBindTexture(3553, this.texture[i8]);
            GLES20.glTexImage2D(3553, 0, 6408, this.width + (i8 == 2 ? i * 2 : 0), this.height + (i8 == 2 ? i * 2 : 0), 0, 6408, 5121, null);
            GLES20.glTexParameteri(3553, 10242, 33071);
            GLES20.glTexParameteri(3553, 10243, 33071);
            GLES20.glTexParameteri(3553, 10241, 9729);
            GLES20.glTexParameteri(3553, 10240, 9729);
            GLES20.glBindFramebuffer(36160, this.framebuffer[i8]);
            GLES20.glFramebufferTexture2D(36160, 36064, 3553, this.texture[i8], 0);
            if (GLES20.glCheckFramebufferStatus(36160) != 36053) {
                return false;
            }
            i8++;
        }
        GLES20.glBindFramebuffer(36160, 0);
        if (z) {
            int i9 = i * 2;
            this.bitmap = Bitmap.createBitmap(this.width + i9, this.height + i9, Bitmap.Config.ARGB_8888);
            this.buffer = ByteBuffer.allocateDirect((this.width + i9) * (i9 + this.height) * 4);
        }
        return true;
    }

    public void draw(float[] fArr, int i, int i2, int i3) {
        char c = fArr != null ? (char) 1 : (char) 0;
        Program program = this.program[c];
        if (program == null) {
            return;
        }
        GLES20.glBindFramebuffer(36160, this.framebuffer[0]);
        GLES20.glViewport(0, 0, this.width, this.height);
        GLES20.glClear(16384);
        GLES20.glUseProgram(program.f1824gl);
        GLES20.glUniform1i(program.texHandle, 0);
        GLES20.glActiveTexture(33984);
        if (c != 0) {
            GLES20.glBindTexture(36197, i);
        } else {
            GLES20.glBindTexture(3553, i);
        }
        GLES20.glEnableVertexAttribArray(program.uvHandle);
        GLES20.glVertexAttribPointer(program.uvHandle, 2, 5126, false, 8, (Buffer) this.uvBuffer);
        GLES20.glEnableVertexAttribArray(program.posHandle);
        GLES20.glVertexAttribPointer(program.posHandle, 2, 5126, false, 8, (Buffer) this.posBuffer);
        GLES20.glUniform2f(program.szHandle, this.width, this.height);
        float f = i2;
        float f2 = i3;
        GLES20.glUniform2f(program.texSzHandle, f, f2);
        GLES20.glUniform1i(program.stepHandle, 0);
        GLES20.glUniform1f(program.flipyHandle, c != 0 ? 1.0f : 0.0f);
        if (c != 0) {
            GLES20.glUniformMatrix4fv(program.videoMatrixHandle, 1, false, fArr, 0);
        }
        GLES20.glUniform1f(program.hasVideoMatrixHandle, c == 0 ? 0.0f : 1.0f);
        Shader.SetColorUniform(program.gradientTopHandle, this.gradientTop);
        Shader.SetColorUniform(program.gradientBottomHandle, this.gradientBottom);
        synchronized (this.matrixLock) {
            GLES20.glUniformMatrix4fv(program.matrixHandle, 1, false, this.matrix, 0);
        }
        GLES20.glDrawArrays(5, 0, 4);
        if (c != 0) {
            program = this.program[0];
            if (program == null) {
                return;
            }
            GLES20.glUseProgram(program.f1824gl);
            GLES20.glEnableVertexAttribArray(program.uvHandle);
            GLES20.glVertexAttribPointer(program.uvHandle, 2, 5126, false, 8, (Buffer) this.uvBuffer);
            GLES20.glEnableVertexAttribArray(program.posHandle);
            GLES20.glVertexAttribPointer(program.posHandle, 2, 5126, false, 8, (Buffer) this.posBuffer);
            GLES20.glUniform2f(program.szHandle, this.width, this.height);
            GLES20.glUniform2f(program.texSzHandle, f, f2);
            GLES20.glUniform1i(program.stepHandle, 0);
            Shader.SetColorUniform(program.gradientTopHandle, this.gradientTop);
            Shader.SetColorUniform(program.gradientBottomHandle, this.gradientBottom);
            GLES20.glUniform1f(program.flipyHandle, BitmapDescriptorFactory.HUE_RED);
            synchronized (this.matrixLock) {
                GLES20.glUniformMatrix4fv(program.matrixHandle, 1, false, this.matrix, 0);
            }
        }
        GLES20.glBindFramebuffer(36160, this.framebuffer[1]);
        GLES20.glUniform1i(program.stepHandle, 1);
        GLES20.glUniform1i(program.texHandle, 0);
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(3553, this.texture[0]);
        GLES20.glDrawArrays(5, 0, 4);
        GLES20.glBindFramebuffer(36160, this.framebuffer[2]);
        int i4 = this.width;
        int i5 = this.padding;
        GLES20.glViewport(0, 0, i4 + (i5 * 2), this.height + (i5 * 2));
        GLES20.glClear(16384);
        GLES20.glEnableVertexAttribArray(program.posHandle);
        GLES20.glVertexAttribPointer(program.posHandle, 2, 5126, false, 8, (Buffer) this.padPosBuffer);
        GLES20.glUniform1i(program.stepHandle, 2);
        GLES20.glUniform1i(program.texHandle, 0);
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(3553, this.texture[1]);
        BlurManager blurManager = this.currentManager;
        Object textureLock = blurManager != null ? blurManager.getTextureLock() : null;
        if (textureLock != null) {
            synchronized (textureLock) {
                GLES20.glDrawArrays(5, 0, 4);
            }
        } else {
            GLES20.glDrawArrays(5, 0, 4);
        }
        ByteBuffer byteBuffer = this.buffer;
        if (byteBuffer != null) {
            byteBuffer.rewind();
            int i6 = this.width;
            int i7 = this.padding;
            GLES20.glReadPixels(0, 0, i6 + (i7 * 2), this.height + (i7 * 2), 6408, 5121, this.buffer);
            synchronized (this.bitmapLock) {
                this.bitmap.copyPixelsFromBuffer(this.buffer);
                this.bitmapAvailable = true;
            }
            GLES20.glBindFramebuffer(36160, 0);
        }
        AndroidUtilities.cancelRunOnUIThread(this.invalidateViews);
        AndroidUtilities.runOnUIThread(this.invalidateViews);
    }

    public int getTexture() {
        return this.texture[2];
    }

    public Bitmap getBitmap() {
        synchronized (this.bitmapLock) {
            if (this.bitmapAvailable) {
                return this.bitmap;
            }
            return null;
        }
    }

    public void resetBitmap() {
        synchronized (this.bitmapLock) {
            this.bitmapAvailable = false;
        }
    }

    public void updateGradient(int i, int i2) {
        this.gradientTop = i;
        this.gradientBottom = i2;
    }

    public void setBlurManager(BlurManager blurManager) {
        BlurManager blurManager2 = this.currentManager;
        if (blurManager2 != null) {
            blurManager2.setShader(null);
        }
        this.currentManager = blurManager;
        if (blurManager != null) {
            blurManager.setShader(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0() {
        BlurManager blurManager = this.currentManager;
        if (blurManager != null) {
            blurManager.invalidate();
        }
    }

    public void updateTransform(Matrix matrix, int i, int i2) {
        matrix.invert(this.iMatrix);
        float f = i;
        float f2 = i2;
        this.iMatrix.preScale(f, f2);
        this.iMatrix.postScale(1.0f / f, 1.0f / f2);
        updateTransform(this.iMatrix);
    }

    public void updateTransform(Matrix matrix) {
        this.setupTransform = true;
        matrix.getValues(this.m3x3);
        synchronized (this.matrixLock) {
            float[] fArr = this.matrix;
            float[] fArr2 = this.m3x3;
            fArr[0] = fArr2[0];
            fArr[1] = fArr2[3];
            fArr[2] = 0.0f;
            fArr[3] = fArr2[6];
            fArr[4] = fArr2[1];
            fArr[5] = fArr2[4];
            fArr[6] = 0.0f;
            fArr[7] = fArr2[7];
            fArr[8] = 0.0f;
            fArr[9] = 0.0f;
            fArr[10] = 1.0f;
            fArr[11] = 0.0f;
            fArr[12] = fArr2[2];
            fArr[13] = fArr2[5];
            fArr[14] = 0.0f;
            fArr[15] = fArr2[8];
        }
    }

    /* renamed from: org.telegram.ui.Components.BlurringShader$BlurManager */
    /* loaded from: classes6.dex */
    public static class BlurManager {
        private EGLContext context;
        private BlurringShader currentShader;
        private Bitmap fallbackBitmap;
        public int padding;
        private final View view;
        private final ArrayList<View> parents = new ArrayList<>();
        private final ArrayList<StoryBlurDrawer> holders = new ArrayList<>();
        private final ArrayList<Runnable> invalidateHolders = new ArrayList<>();
        private final Object contextLock = new Object();
        private final Object textureLock = new Object();
        private final ThumbBlurer thumbBlurer = new ThumbBlurer(0, new Runnable() { // from class: org.telegram.ui.Components.BlurringShader$BlurManager$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                BlurringShader.BlurManager.this.invalidateFallbackBlur();
            }
        });

        /* renamed from: i */
        private int f1823i = 0;

        public BlurManager(View view) {
            this.view = view;
            if (view.isAttachedToWindow()) {
                updateParents();
            }
            view.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: org.telegram.ui.Components.BlurringShader.BlurManager.1
                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewAttachedToWindow(View view2) {
                    BlurManager.this.updateParents();
                }

                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewDetachedFromWindow(View view2) {
                    BlurManager.this.parents.clear();
                }
            });
        }

        public EGLContext getParentContext() {
            synchronized (this.contextLock) {
                EGLContext eGLContext = this.context;
                if (eGLContext != null) {
                    return eGLContext;
                }
                return EGL10.EGL_NO_CONTEXT;
            }
        }

        public void acquiredContext(EGLContext eGLContext) {
            synchronized (this.contextLock) {
                if (this.context == null) {
                    this.context = eGLContext;
                }
            }
        }

        public void destroyedContext(EGLContext eGLContext) {
            synchronized (this.contextLock) {
                if (this.context == eGLContext) {
                    this.context = null;
                }
            }
        }

        public Object getTextureLock() {
            return this.textureLock;
        }

        public int getTexture() {
            BlurringShader blurringShader = this.currentShader;
            if (blurringShader != null) {
                return blurringShader.getTexture();
            }
            return -1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void updateParents() {
            this.parents.clear();
            for (View view = this.view; view != null; view = (View) view.getParent()) {
                this.parents.add(0, view);
                if (!(view.getParent() instanceof View)) {
                    return;
                }
            }
        }

        public void setShader(BlurringShader blurringShader) {
            if (this.currentShader == blurringShader) {
                return;
            }
            this.currentShader = blurringShader;
            if (blurringShader != null) {
                invalidate();
            }
        }

        public void invalidate() {
            Iterator<StoryBlurDrawer> it = this.holders.iterator();
            while (it.hasNext()) {
                it.next().view.invalidate();
            }
            Iterator<Runnable> it2 = this.invalidateHolders.iterator();
            while (it2.hasNext()) {
                it2.next().run();
            }
        }

        public void attach(StoryBlurDrawer storyBlurDrawer) {
            this.holders.add(storyBlurDrawer);
        }

        public void detach(StoryBlurDrawer storyBlurDrawer) {
            this.holders.remove(storyBlurDrawer);
            if (this.invalidateHolders.isEmpty() && this.holders.isEmpty()) {
                this.thumbBlurer.destroy();
            }
        }

        public void attach(Runnable runnable) {
            this.invalidateHolders.add(runnable);
        }

        public void detach(Runnable runnable) {
            this.invalidateHolders.remove(runnable);
            if (this.invalidateHolders.isEmpty() && this.holders.isEmpty()) {
                this.thumbBlurer.destroy();
            }
        }

        public Bitmap getBitmap() {
            BlurringShader blurringShader = this.currentShader;
            if (blurringShader == null) {
                return this.fallbackBitmap;
            }
            Bitmap bitmap = blurringShader.getBitmap();
            return bitmap == null ? this.fallbackBitmap : bitmap;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void invalidateFallbackBlur() {
            this.fallbackBitmap = this.thumbBlurer.thumbBitmap;
            invalidate();
        }

        public void setFallbackBlur(Bitmap bitmap, int i) {
            setFallbackBlur(bitmap, i, false);
        }

        public void setFallbackBlur(Bitmap bitmap, int i, boolean z) {
            ThumbBlurer thumbBlurer = this.thumbBlurer;
            StringBuilder sb = new StringBuilder();
            sb.append("");
            int i2 = this.f1823i;
            this.f1823i = i2 + 1;
            sb.append(i2);
            this.fallbackBitmap = thumbBlurer.getBitmap(bitmap, sb.toString(), i, 0, z);
        }

        public void resetBitmap() {
            BlurringShader blurringShader = this.currentShader;
            if (blurringShader != null) {
                blurringShader.resetBitmap();
            }
        }
    }

    /* renamed from: org.telegram.ui.Components.BlurringShader$ThumbBlurer */
    /* loaded from: classes6.dex */
    public static class ThumbBlurer {
        private final Paint clearPaint;
        private Runnable generate;
        private final Runnable invalidate;
        private final int padding;
        private Bitmap thumbBitmap;
        private String thumbKey;

        public ThumbBlurer(int i, Runnable runnable) {
            Paint paint = new Paint(1);
            this.clearPaint = paint;
            this.padding = i;
            this.invalidate = runnable;
            paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        }

        public void destroy() {
            this.thumbKey = null;
            if (this.generate != null) {
                Utilities.globalQueue.cancelRunnable(this.generate);
            }
            Bitmap bitmap = this.thumbBitmap;
            if (bitmap != null && !bitmap.isRecycled()) {
                this.thumbBitmap.recycle();
            }
            this.thumbBitmap = null;
        }

        public Bitmap getBitmap(final Bitmap bitmap, final String str, final int i, final int i2, final boolean z) {
            if (bitmap == null) {
                return null;
            }
            if (TextUtils.equals(this.thumbKey, str)) {
                Bitmap bitmap2 = this.thumbBitmap;
                if (bitmap2 != null) {
                    return bitmap2;
                }
                if (this.generate != null) {
                    return null;
                }
            }
            if (this.generate != null) {
                Utilities.globalQueue.cancelRunnable(this.generate);
            }
            this.thumbKey = str;
            DispatchQueue dispatchQueue = Utilities.globalQueue;
            Runnable runnable = new Runnable() { // from class: org.telegram.ui.Components.BlurringShader$ThumbBlurer$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    BlurringShader.ThumbBlurer.this.lambda$getBitmap$1(bitmap, i, i2, str, z);
                }
            };
            this.generate = runnable;
            dispatchQueue.postRunnable(runnable);
            return this.thumbBitmap;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$getBitmap$1(final Bitmap bitmap, int i, int i2, final String str, final boolean z) {
            int i3;
            int i4;
            float width = bitmap.getWidth() / bitmap.getHeight();
            int round = (int) Math.round(Math.sqrt(width * 324.0f));
            int round2 = (int) Math.round(Math.sqrt(324.0f / width));
            if (i == 90 || i == 270) {
                i3 = round2;
                i4 = round;
            } else {
                i4 = round2;
                i3 = round;
            }
            int i5 = this.padding;
            final Bitmap createBitmap = Bitmap.createBitmap((i5 * 2) + i3, (i5 * 2) + i4, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(createBitmap);
            Rect rect = new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight());
            int i6 = this.padding;
            Rect rect2 = new Rect(i6, i6, i6 + round, i6 + round2);
            int i7 = this.padding;
            canvas.translate(i7 + (i3 / 2.0f), i7 + (i4 / 2.0f));
            if (i2 == 1) {
                canvas.scale(-1.0f, 1.0f);
            } else if (i2 == 2) {
                canvas.scale(1.0f, -1.0f);
            }
            canvas.rotate(i);
            int i8 = this.padding;
            canvas.translate((-i8) - (round / 2.0f), (-i8) - (round2 / 2.0f));
            canvas.drawBitmap(bitmap, rect, rect2, (Paint) null);
            Utilities.stackBlurBitmap(createBitmap, 6);
            int i9 = this.padding;
            if (i9 > 0) {
                canvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, round + i9, i9, this.clearPaint);
                int i10 = this.padding;
                canvas.drawRect(BitmapDescriptorFactory.HUE_RED, i10, i10, i10 + round2, this.clearPaint);
                int i11 = this.padding;
                canvas.drawRect(i11 + round, i11, i11 + round + i11, i11 + round2, this.clearPaint);
                int i12 = this.padding;
                canvas.drawRect(BitmapDescriptorFactory.HUE_RED, i12 + round2, round + i12 + i12, round2 + i12 + i12, this.clearPaint);
            }
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.BlurringShader$ThumbBlurer$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    BlurringShader.ThumbBlurer.this.lambda$getBitmap$0(str, createBitmap, z, bitmap);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$getBitmap$0(String str, Bitmap bitmap, boolean z, Bitmap bitmap2) {
            if (TextUtils.equals(this.thumbKey, str)) {
                this.generate = null;
                Bitmap bitmap3 = this.thumbBitmap;
                if (bitmap3 != null) {
                    bitmap3.recycle();
                }
                this.thumbBitmap = bitmap;
                Runnable runnable = this.invalidate;
                if (runnable != null) {
                    runnable.run();
                }
            } else {
                bitmap.recycle();
            }
            if (z) {
                bitmap2.recycle();
            }
        }

        public Bitmap getBitmap(ImageReceiver imageReceiver) {
            if (imageReceiver == null) {
                return null;
            }
            return getBitmap(imageReceiver.getBitmap(), imageReceiver.getImageKey(), imageReceiver.getOrientation(), imageReceiver.getInvert(), false);
        }

        public Bitmap getBitmap(ImageReceiver.BitmapHolder bitmapHolder) {
            if (bitmapHolder == null) {
                return null;
            }
            return getBitmap(bitmapHolder.bitmap, bitmapHolder.getKey(), bitmapHolder.orientation, 0, false);
        }
    }

    /* renamed from: org.telegram.ui.Components.BlurringShader$StoryBlurDrawer */
    /* loaded from: classes6.dex */
    public static class StoryBlurDrawer {
        private boolean animateBitmapChange;
        private BitmapShader bitmapShader;
        RectF bounds;
        private ValueAnimator crossfadeAnimator;
        private boolean customOffset;
        private float customOffsetX;
        private float customOffsetY;
        private Bitmap lastBitmap;
        private final BlurManager manager;
        private final Matrix matrix;
        public Paint oldPaint;
        private float oldPaintAlpha;
        private boolean oldPaintSet;
        public Paint paint;
        private Paint[] tempPaints;
        private final View view;
        private boolean wasDark;

        public StoryBlurDrawer(BlurManager blurManager, View view, int i) {
            this(blurManager, view, i, false);
        }

        public StoryBlurDrawer(final BlurManager blurManager, View view, int i, boolean z) {
            this.oldPaint = new Paint(3);
            this.paint = new Paint(3);
            this.matrix = new Matrix();
            this.bounds = new RectF();
            this.wasDark = false;
            this.manager = blurManager;
            this.view = view;
            this.animateBitmapChange = z;
            ColorMatrix colorMatrix = new ColorMatrix();
            if (i == 0) {
                AndroidUtilities.adjustSaturationColorMatrix(colorMatrix, 0.45f);
            } else if (i == 5) {
                this.paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
                this.oldPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
                AndroidUtilities.adjustSaturationColorMatrix(colorMatrix, 0.3f);
            } else if (i == 2) {
                this.paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
                this.oldPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
                AndroidUtilities.adjustBrightnessColorMatrix(colorMatrix, 0.4f);
                AndroidUtilities.adjustSaturationColorMatrix(colorMatrix, 0.3f);
            } else if (i == 1) {
                AndroidUtilities.adjustSaturationColorMatrix(colorMatrix, 0.35f);
                AndroidUtilities.adjustBrightnessColorMatrix(colorMatrix, 0.7f);
                AndroidUtilities.multiplyBrightnessColorMatrix(colorMatrix, 1.5f);
            } else if (i == 3) {
                AndroidUtilities.adjustSaturationColorMatrix(colorMatrix, 0.5f);
            } else if (i == 4) {
                AndroidUtilities.adjustSaturationColorMatrix(colorMatrix, 0.6f);
                AndroidUtilities.adjustBrightnessColorMatrix(colorMatrix, 0.3f);
                AndroidUtilities.multiplyBrightnessColorMatrix(colorMatrix, 1.2f);
            } else if (i == 6) {
                AndroidUtilities.adjustSaturationColorMatrix(colorMatrix, 0.4f);
                AndroidUtilities.multiplyBrightnessColorMatrix(colorMatrix, 0.35f);
            } else if (i == 7) {
                AndroidUtilities.adjustSaturationColorMatrix(colorMatrix, 0.5f);
                AndroidUtilities.multiplyBrightnessColorMatrix(colorMatrix, 0.95f);
            } else if (i == 8) {
                AndroidUtilities.adjustBrightnessColorMatrix(colorMatrix, -0.15f);
                AndroidUtilities.adjustSaturationColorMatrix(colorMatrix, 0.47f);
            } else if (i == 9) {
                this.paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
                this.oldPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
                AndroidUtilities.adjustBrightnessColorMatrix(colorMatrix, 0.4f);
                AndroidUtilities.adjustSaturationColorMatrix(colorMatrix, 0.45f);
            } else if (i == 10) {
                colorMatrix.setSaturation(1.6f);
                AndroidUtilities.multiplyBrightnessColorMatrix(colorMatrix, this.wasDark ? 0.97f : 0.92f);
                AndroidUtilities.adjustBrightnessColorMatrix(colorMatrix, this.wasDark ? 0.12f : -0.06f);
            }
            this.paint.setColorFilter(new ColorMatrixColorFilter(colorMatrix));
            this.oldPaint.setColorFilter(new ColorMatrixColorFilter(colorMatrix));
            if (view.isAttachedToWindow() && blurManager != null) {
                blurManager.attach(this);
            }
            view.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: org.telegram.ui.Components.BlurringShader.StoryBlurDrawer.1
                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewAttachedToWindow(View view2) {
                    BlurManager blurManager2 = blurManager;
                    if (blurManager2 != null) {
                        blurManager2.attach(StoryBlurDrawer.this);
                    }
                }

                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewDetachedFromWindow(View view2) {
                    BlurManager blurManager2 = blurManager;
                    if (blurManager2 != null) {
                        blurManager2.detach(StoryBlurDrawer.this);
                    }
                    StoryBlurDrawer.this.recycle();
                }
            });
        }

        private void updateBounds() {
            Bitmap bitmap = this.manager.getBitmap();
            if (bitmap == null) {
                return;
            }
            if (this.bitmapShader == null || this.lastBitmap != bitmap) {
                this.lastBitmap = bitmap;
                Shader.TileMode tileMode = Shader.TileMode.CLAMP;
                BitmapShader bitmapShader = new BitmapShader(bitmap, tileMode, tileMode);
                this.bitmapShader = bitmapShader;
                this.paint.setShader(bitmapShader);
            }
            float width = this.bounds.width() / this.lastBitmap.getWidth();
            float height = this.bounds.height() / this.lastBitmap.getHeight();
            this.matrix.reset();
            Matrix matrix = this.matrix;
            RectF rectF = this.bounds;
            matrix.postTranslate(rectF.left, rectF.top);
            this.matrix.preScale(width, height);
            this.bitmapShader.setLocalMatrix(this.matrix);
        }

        public void setBounds(float f, float f2, float f3, float f4) {
            RectF rectF = AndroidUtilities.rectTmp;
            rectF.set(f, f2, f3, f4);
            setBounds(rectF);
        }

        public void setBounds(RectF rectF) {
            RectF rectF2 = this.bounds;
            if (rectF2.top == rectF.top && rectF2.bottom == rectF.bottom && rectF2.left == rectF.left && rectF2.right == rectF.right) {
                return;
            }
            rectF2.set(rectF);
            updateBounds();
        }

        public Paint getPaint(float f) {
            return getPaint(f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
        }

        public Paint getPaint(float f, float f2, float f3) {
            Bitmap bitmap;
            Bitmap bitmap2;
            BlurManager blurManager = this.manager;
            if (blurManager == null || (bitmap = blurManager.getBitmap()) == null) {
                return null;
            }
            BitmapShader bitmapShader = this.bitmapShader;
            if (bitmapShader == null || this.lastBitmap != bitmap) {
                if (this.animateBitmapChange && bitmapShader != null && (bitmap2 = this.lastBitmap) != null && !bitmap2.isRecycled() && !bitmap.isRecycled()) {
                    Paint paint = this.paint;
                    this.paint = this.oldPaint;
                    this.oldPaint = paint;
                    this.oldPaintSet = true;
                    animateOldPaint();
                }
                this.lastBitmap = bitmap;
                Shader.TileMode tileMode = Shader.TileMode.CLAMP;
                BitmapShader bitmapShader2 = new BitmapShader(bitmap, tileMode, tileMode);
                this.bitmapShader = bitmapShader2;
                this.paint.setShader(bitmapShader2);
            }
            if (setupMatrix(bitmap.getWidth(), bitmap.getHeight())) {
                this.matrix.postTranslate(-f2, -f3);
                this.bitmapShader.setLocalMatrix(this.matrix);
                this.paint.setAlpha((int) (f * 255.0f));
                return this.paint;
            }
            return null;
        }

        public Paint[] getPaints(float f, float f2, float f3) {
            Paint paint = getPaint(f, f2, f3);
            boolean z = this.oldPaintSet;
            Paint paint2 = z ? this.oldPaint : null;
            if (paint != null && z) {
                paint.setAlpha((int) ((1.0f - this.oldPaintAlpha) * 255.0f * f));
            }
            if (paint2 != null) {
                paint2.setAlpha((int) (f * 255.0f));
            }
            if (this.tempPaints == null) {
                this.tempPaints = new Paint[2];
            }
            Paint[] paintArr = this.tempPaints;
            paintArr[0] = paint2;
            paintArr[1] = paint;
            return paintArr;
        }

        private void animateOldPaint() {
            ValueAnimator valueAnimator = this.crossfadeAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
                this.crossfadeAnimator = null;
            }
            this.oldPaintAlpha = 1.0f;
            ValueAnimator ofFloat = ValueAnimator.ofFloat(1.0f, BitmapDescriptorFactory.HUE_RED);
            this.crossfadeAnimator = ofFloat;
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.BlurringShader$StoryBlurDrawer$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    BlurringShader.StoryBlurDrawer.this.lambda$animateOldPaint$0(valueAnimator2);
                }
            });
            this.crossfadeAnimator.start();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$animateOldPaint$0(ValueAnimator valueAnimator) {
            this.oldPaintAlpha = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            this.view.invalidate();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void recycle() {
            this.lastBitmap = null;
            Paint paint = this.paint;
            this.bitmapShader = null;
            paint.setShader(null);
        }

        private boolean setupMatrix(int i, int i2) {
            BlurManager blurManager;
            this.matrix.reset();
            if (this.customOffset) {
                this.matrix.postTranslate(-this.customOffsetX, -this.customOffsetY);
            } else {
                View view = this.view;
                do {
                    this.matrix.preScale(1.0f / view.getScaleX(), 1.0f / view.getScaleY(), view.getPivotX(), view.getPivotY());
                    this.matrix.preRotate(-view.getRotation(), view.getPivotX(), view.getPivotY());
                    this.matrix.preTranslate(-view.getX(), -view.getY());
                    if (!(view.getParent() instanceof View) || (view = (View) view.getParent()) == null || (blurManager = this.manager) == null) {
                        break;
                    }
                } while (!blurManager.parents.contains(view));
                BlurManager blurManager2 = this.manager;
                if (blurManager2 != null && blurManager2.view != view) {
                    int indexOf = this.manager.parents.indexOf(view) + 1;
                    while (indexOf >= 0 && indexOf < this.manager.parents.size()) {
                        View view2 = (View) this.manager.parents.get(indexOf);
                        if (view2 != null) {
                            this.matrix.postTranslate(view2.getX(), view2.getY());
                            this.matrix.postScale(1.0f / view2.getScaleX(), 1.0f / view2.getScaleY(), view2.getPivotX(), view2.getPivotY());
                            this.matrix.postRotate(view2.getRotation(), view2.getPivotX(), view2.getPivotY());
                            indexOf++;
                        }
                    }
                }
            }
            BlurManager blurManager3 = this.manager;
            if (blurManager3 != null && blurManager3.view != null) {
                this.matrix.preScale(this.manager.view.getWidth() / i, this.manager.view.getHeight() / i2);
            }
            return true;
        }

        public Drawable makeDrawable(final float f, final float f2, final Drawable drawable, final float f3) {
            return new Drawable() { // from class: org.telegram.ui.Components.BlurringShader.StoryBlurDrawer.2
                float alpha = 1.0f;
                private final Paint dimPaint = new Paint(1);

                @Override // android.graphics.drawable.Drawable
                public int getOpacity() {
                    return -2;
                }

                @Override // android.graphics.drawable.Drawable
                public void setColorFilter(ColorFilter colorFilter) {
                }

                private Paint getPaint() {
                    Bitmap bitmap;
                    if (StoryBlurDrawer.this.manager == null || (bitmap = StoryBlurDrawer.this.manager.getBitmap()) == null) {
                        return null;
                    }
                    if (StoryBlurDrawer.this.bitmapShader == null || StoryBlurDrawer.this.lastBitmap != bitmap) {
                        StoryBlurDrawer storyBlurDrawer = StoryBlurDrawer.this;
                        Bitmap bitmap2 = StoryBlurDrawer.this.lastBitmap = bitmap;
                        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
                        storyBlurDrawer.bitmapShader = new BitmapShader(bitmap2, tileMode, tileMode);
                        StoryBlurDrawer storyBlurDrawer2 = StoryBlurDrawer.this;
                        storyBlurDrawer2.paint.setShader(storyBlurDrawer2.bitmapShader);
                    }
                    StoryBlurDrawer.this.matrix.reset();
                    StoryBlurDrawer.this.matrix.postTranslate((-StoryBlurDrawer.this.customOffsetX) - f, (-StoryBlurDrawer.this.customOffsetY) - f2);
                    if (StoryBlurDrawer.this.manager.view != null) {
                        StoryBlurDrawer.this.matrix.preScale(StoryBlurDrawer.this.manager.view.getWidth() / bitmap.getWidth(), StoryBlurDrawer.this.manager.view.getHeight() / bitmap.getHeight());
                    }
                    StoryBlurDrawer.this.bitmapShader.setLocalMatrix(StoryBlurDrawer.this.matrix);
                    StoryBlurDrawer.this.paint.setAlpha((int) (this.alpha * 255.0f));
                    return StoryBlurDrawer.this.paint;
                }

                @Override // android.graphics.drawable.Drawable
                public void draw(Canvas canvas) {
                    Paint paint = getPaint();
                    Rect bounds = getBounds();
                    if (paint != null) {
                        if (drawable != null) {
                            canvas.saveLayerAlpha(bounds.left, bounds.top, bounds.right, bounds.bottom, 255, 31);
                            drawable.setBounds(bounds);
                            drawable.draw(canvas);
                            canvas.drawRect(bounds, paint);
                            canvas.restore();
                            Rect rect = AndroidUtilities.rectTmp2;
                            getPadding(rect);
                            RectF rectF = AndroidUtilities.rectTmp;
                            rectF.set(bounds.left + rect.left, bounds.top + rect.top, bounds.right - rect.right, bounds.bottom - rect.bottom);
                            this.dimPaint.setColor(1711276032);
                            float f4 = f3;
                            canvas.drawRoundRect(rectF, f4, f4, this.dimPaint);
                            return;
                        }
                        if (f3 > BitmapDescriptorFactory.HUE_RED) {
                            RectF rectF2 = AndroidUtilities.rectTmp;
                            rectF2.set(bounds);
                            float f5 = f3;
                            canvas.drawRoundRect(rectF2, f5, f5, paint);
                        } else {
                            canvas.drawRect(bounds, paint);
                        }
                        this.dimPaint.setColor(1711276032);
                        if (f3 > BitmapDescriptorFactory.HUE_RED) {
                            RectF rectF3 = AndroidUtilities.rectTmp;
                            rectF3.set(bounds);
                            float f6 = f3;
                            canvas.drawRoundRect(rectF3, f6, f6, this.dimPaint);
                            return;
                        }
                        canvas.drawRect(bounds, this.dimPaint);
                        return;
                    }
                    Drawable drawable2 = drawable;
                    if (drawable2 != null) {
                        drawable2.setBounds(bounds);
                        drawable.draw(canvas);
                        return;
                    }
                    this.dimPaint.setColor(-14145495);
                    if (f3 > BitmapDescriptorFactory.HUE_RED) {
                        RectF rectF4 = AndroidUtilities.rectTmp;
                        rectF4.set(bounds);
                        float f7 = f3;
                        canvas.drawRoundRect(rectF4, f7, f7, this.dimPaint);
                        return;
                    }
                    canvas.drawRect(bounds, this.dimPaint);
                }

                @Override // android.graphics.drawable.Drawable
                public void setAlpha(int i) {
                    this.alpha = i / 255.0f;
                }

                @Override // android.graphics.drawable.Drawable
                public boolean getPadding(Rect rect) {
                    Drawable drawable2 = drawable;
                    if (drawable2 != null) {
                        return drawable2.getPadding(rect);
                    }
                    rect.set(0, 0, 0, 0);
                    return true;
                }
            };
        }
    }
}
