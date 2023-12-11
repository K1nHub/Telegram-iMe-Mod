package com.otaliastudios.opengl.program;

import android.graphics.RectF;
import android.opengl.GLES20;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.otaliastudios.opengl.core.Egloo;
import com.otaliastudios.opengl.draw.Gl2dDrawable;
import com.otaliastudios.opengl.draw.GlDrawable;
import com.otaliastudios.opengl.internal.GlKt;
import com.otaliastudios.opengl.internal.MiscKt;
import com.otaliastudios.opengl.texture.GlTexture;
import com.otaliastudios.opengl.types.BuffersJvmKt;
import com.otaliastudios.opengl.types.BuffersKt;
import java.nio.Buffer;
import java.nio.FloatBuffer;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: GlTextureProgram.kt */
/* loaded from: classes4.dex */
public class GlTextureProgram extends GlProgram {
    private Gl2dDrawable lastDrawable;
    private final RectF lastDrawableBounds;
    private int lastDrawableVersion;
    private GlTexture texture;
    private FloatBuffer textureCoordsBuffer;
    private final GlProgramLocation textureCoordsHandle;
    private float[] textureTransform;
    private final GlProgramLocation textureTransformHandle;
    private final GlProgramLocation vertexMvpMatrixHandle;
    private final GlProgramLocation vertexPositionHandle;

    static {
        new Companion(null);
    }

    public GlTextureProgram() {
        this(null, null, null, null, null, null, 63, null);
    }

    protected float computeTextureCoordinate(int i, Gl2dDrawable drawable, float f, float f2, float f3, boolean z) {
        Intrinsics.checkNotNullParameter(drawable, "drawable");
        return (((f - f2) / (f3 - f2)) * 1.0f) + BitmapDescriptorFactory.HUE_RED;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    protected GlTextureProgram(int i, boolean z, String vertexPositionName, String vertexMvpMatrixName, String str, String str2) {
        super(i, z, new GlShader[0]);
        Intrinsics.checkNotNullParameter(vertexPositionName, "vertexPositionName");
        Intrinsics.checkNotNullParameter(vertexMvpMatrixName, "vertexMvpMatrixName");
        this.textureTransform = MiscKt.matrixClone(Egloo.IDENTITY_MATRIX);
        this.textureTransformHandle = str2 == null ? null : getUniformHandle(str2);
        this.textureCoordsBuffer = BuffersJvmKt.floatBuffer(8);
        this.textureCoordsHandle = str != null ? getAttribHandle(str) : null;
        this.vertexPositionHandle = getAttribHandle(vertexPositionName);
        this.vertexMvpMatrixHandle = getUniformHandle(vertexMvpMatrixName);
        this.lastDrawableBounds = new RectF();
        this.lastDrawableVersion = -1;
    }

    public /* synthetic */ GlTextureProgram(String str, String str2, String str3, String str4, String str5, String str6, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "uniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n" : str, (i & 2) != 0 ? "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n" : str2, (i & 4) != 0 ? "aPosition" : str3, (i & 8) != 0 ? "uMVPMatrix" : str4, (i & 16) != 0 ? "aTextureCoord" : str5, (i & 32) != 0 ? "uTexMatrix" : str6);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public GlTextureProgram(String vertexShader, String fragmentShader, String vertexPositionName, String vertexMvpMatrixName, String str, String str2) {
        this(GlProgram.Companion.create(vertexShader, fragmentShader), true, vertexPositionName, vertexMvpMatrixName, str, str2);
        Intrinsics.checkNotNullParameter(vertexShader, "vertexShader");
        Intrinsics.checkNotNullParameter(fragmentShader, "fragmentShader");
        Intrinsics.checkNotNullParameter(vertexPositionName, "vertexPositionName");
        Intrinsics.checkNotNullParameter(vertexMvpMatrixName, "vertexMvpMatrixName");
    }

    public final float[] getTextureTransform() {
        return this.textureTransform;
    }

    public final void setTexture(GlTexture glTexture) {
        this.texture = glTexture;
    }

    @Override // com.otaliastudios.opengl.program.GlProgram
    public void onPreDraw(GlDrawable drawable, float[] modelViewProjectionMatrix) {
        Intrinsics.checkNotNullParameter(drawable, "drawable");
        Intrinsics.checkNotNullParameter(modelViewProjectionMatrix, "modelViewProjectionMatrix");
        super.onPreDraw(drawable, modelViewProjectionMatrix);
        if (!(drawable instanceof Gl2dDrawable)) {
            throw new RuntimeException("GlTextureProgram only supports 2D drawables.");
        }
        GlTexture glTexture = this.texture;
        if (glTexture != null) {
            glTexture.bind();
        }
        boolean z = true;
        GLES20.glUniformMatrix4fv(this.vertexMvpMatrixHandle.getValue(), 1, false, modelViewProjectionMatrix, 0);
        Egloo.checkGlError("glUniformMatrix4fv");
        GlProgramLocation glProgramLocation = this.textureTransformHandle;
        if (glProgramLocation != null) {
            GLES20.glUniformMatrix4fv(glProgramLocation.getValue(), 1, false, getTextureTransform(), 0);
            Egloo.checkGlError("glUniformMatrix4fv");
        }
        GlProgramLocation glProgramLocation2 = this.vertexPositionHandle;
        GLES20.glEnableVertexAttribArray(glProgramLocation2.m1889getUvaluepVg5ArA$library_release());
        Egloo.checkGlError("glEnableVertexAttribArray");
        GLES20.glVertexAttribPointer(glProgramLocation2.m1889getUvaluepVg5ArA$library_release(), 2, GlKt.getGL_FLOAT(), false, drawable.getVertexStride(), (Buffer) drawable.getVertexArray());
        Egloo.checkGlError("glVertexAttribPointer");
        GlProgramLocation glProgramLocation3 = this.textureCoordsHandle;
        if (glProgramLocation3 == null) {
            return;
        }
        if (!Intrinsics.areEqual(drawable, this.lastDrawable) || drawable.getVertexArrayVersion() != this.lastDrawableVersion) {
            Gl2dDrawable gl2dDrawable = (Gl2dDrawable) drawable;
            this.lastDrawable = gl2dDrawable;
            this.lastDrawableVersion = drawable.getVertexArrayVersion();
            gl2dDrawable.getBounds(this.lastDrawableBounds);
            int vertexCount = drawable.getVertexCount() * 2;
            if (this.textureCoordsBuffer.capacity() < vertexCount) {
                BuffersKt.dispose(this.textureCoordsBuffer);
                this.textureCoordsBuffer = BuffersJvmKt.floatBuffer(vertexCount);
            }
            this.textureCoordsBuffer.clear();
            this.textureCoordsBuffer.limit(vertexCount);
            if (vertexCount > 0) {
                int i = 0;
                while (true) {
                    int i2 = i + 1;
                    boolean z2 = i % 2 == 0 ? z : false;
                    float f = drawable.getVertexArray().get(i);
                    RectF rectF = this.lastDrawableBounds;
                    float f2 = z2 ? rectF.left : rectF.bottom;
                    RectF rectF2 = this.lastDrawableBounds;
                    this.textureCoordsBuffer.put(computeTextureCoordinate(i / 2, gl2dDrawable, f, f2, z2 ? rectF2.right : rectF2.top, z2));
                    if (i2 >= vertexCount) {
                        break;
                    }
                    i = i2;
                    z = true;
                }
            }
        }
        this.textureCoordsBuffer.rewind();
        GLES20.glEnableVertexAttribArray(glProgramLocation3.m1889getUvaluepVg5ArA$library_release());
        Egloo.checkGlError("glEnableVertexAttribArray");
        GLES20.glVertexAttribPointer(glProgramLocation3.m1889getUvaluepVg5ArA$library_release(), 2, GlKt.getGL_FLOAT(), false, drawable.getVertexStride(), (Buffer) this.textureCoordsBuffer);
        Egloo.checkGlError("glVertexAttribPointer");
    }

    @Override // com.otaliastudios.opengl.program.GlProgram
    public void onPostDraw(GlDrawable drawable) {
        Intrinsics.checkNotNullParameter(drawable, "drawable");
        super.onPostDraw(drawable);
        GLES20.glDisableVertexAttribArray(this.vertexPositionHandle.m1889getUvaluepVg5ArA$library_release());
        GlProgramLocation glProgramLocation = this.textureCoordsHandle;
        if (glProgramLocation != null) {
            GLES20.glDisableVertexAttribArray(glProgramLocation.m1889getUvaluepVg5ArA$library_release());
        }
        GlTexture glTexture = this.texture;
        if (glTexture != null) {
            glTexture.unbind();
        }
        Egloo.checkGlError("onPostDraw end");
    }

    @Override // com.otaliastudios.opengl.program.GlProgram
    public void release() {
        super.release();
        BuffersKt.dispose(this.textureCoordsBuffer);
        GlTexture glTexture = this.texture;
        if (glTexture != null) {
            glTexture.release();
        }
        this.texture = null;
    }

    /* compiled from: GlTextureProgram.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
