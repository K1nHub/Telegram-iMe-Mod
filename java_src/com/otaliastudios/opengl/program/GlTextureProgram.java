package com.otaliastudios.opengl.program;

import android.opengl.GLES20;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.otaliastudios.opengl.core.Egloo;
import com.otaliastudios.opengl.draw.GlDrawable;
import com.otaliastudios.opengl.extensions.BuffersKt;
import java.nio.Buffer;
import java.nio.FloatBuffer;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: GlTextureProgram.kt */
/* loaded from: classes3.dex */
public class GlTextureProgram extends GlProgram {
    private static final FloatBuffer FULL_COORDINATES;
    private final GlHandle textureCoordsHandle;
    private final int textureId;
    private final int textureTarget;
    private float[] textureTransform;
    private final GlHandle textureTransformHandle;
    private final int textureUnit;
    private final GlHandle vertexMvpMatrixHandle;
    private final GlHandle vertexPositionHandle;

    public GlTextureProgram() {
        this(0, 1, null);
    }

    public /* synthetic */ GlTextureProgram(int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 33984 : i);
    }

    public GlTextureProgram(int i) {
        super("uniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n", "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n");
        this.textureUnit = i;
        this.textureTarget = 36197;
        this.vertexPositionHandle = getAttribHandle("aPosition");
        this.vertexMvpMatrixHandle = getUniformHandle("uMVPMatrix");
        this.textureCoordsHandle = getAttribHandle("aTextureCoord");
        this.textureTransformHandle = getUniformHandle("uTexMatrix");
        int[] iArr = new int[1];
        GLES20.glGenTextures(1, iArr, 0);
        Egloo.checkGlError("glGenTextures");
        int i2 = iArr[0];
        this.textureId = i2;
        GLES20.glActiveTexture(i);
        GLES20.glBindTexture(36197, i2);
        Egloo.checkGlError("glBindTexture " + i2);
        GLES20.glTexParameterf(36197, 10241, (float) 9728);
        GLES20.glTexParameterf(36197, 10240, (float) 9729);
        GLES20.glTexParameteri(36197, 10242, 33071);
        GLES20.glTexParameteri(36197, 10243, 33071);
        Egloo.checkGlError("glTexParameter");
        GLES20.glBindTexture(36197, 0);
        GLES20.glActiveTexture(33984);
        Egloo.checkGlError("init end");
        this.textureTransform = (float[]) Egloo.getIDENTITY_MATRIX().clone();
    }

    public final int getTextureId() {
        return this.textureId;
    }

    public final float[] getTextureTransform() {
        return this.textureTransform;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.otaliastudios.opengl.program.GlProgram
    public void onPreDraw(GlDrawable drawable, float[] modelViewProjectionMatrix) {
        Intrinsics.checkParameterIsNotNull(drawable, "drawable");
        Intrinsics.checkParameterIsNotNull(modelViewProjectionMatrix, "modelViewProjectionMatrix");
        super.onPreDraw(drawable, modelViewProjectionMatrix);
        GLES20.glActiveTexture(this.textureUnit);
        GLES20.glBindTexture(this.textureTarget, this.textureId);
        GLES20.glUniformMatrix4fv(this.vertexMvpMatrixHandle.getValue(), 1, false, modelViewProjectionMatrix, 0);
        Egloo.checkGlError("glUniformMatrix4fv");
        GLES20.glUniformMatrix4fv(this.textureTransformHandle.getValue(), 1, false, this.textureTransform, 0);
        Egloo.checkGlError("glUniformMatrix4fv");
        GLES20.glEnableVertexAttribArray(this.vertexPositionHandle.getValue());
        Egloo.checkGlError("glEnableVertexAttribArray");
        GLES20.glVertexAttribPointer(this.vertexPositionHandle.getValue(), drawable.getCoordsPerVertex(), 5126, false, drawable.getVertexStride(), (Buffer) drawable.getVertexArray());
        Egloo.checkGlError("glVertexAttribPointer");
        GLES20.glEnableVertexAttribArray(this.textureCoordsHandle.getValue());
        Egloo.checkGlError("glEnableVertexAttribArray");
        GLES20.glVertexAttribPointer(this.textureCoordsHandle.getValue(), 2, 5126, false, 8, (Buffer) FULL_COORDINATES);
        Egloo.checkGlError("glVertexAttribPointer");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.otaliastudios.opengl.program.GlProgram
    public void onPostDraw(GlDrawable drawable) {
        Intrinsics.checkParameterIsNotNull(drawable, "drawable");
        super.onPostDraw(drawable);
        GLES20.glDisableVertexAttribArray(this.vertexPositionHandle.getValue());
        GLES20.glDisableVertexAttribArray(this.textureCoordsHandle.getValue());
        GLES20.glBindTexture(this.textureTarget, 0);
        GLES20.glActiveTexture(33984);
        Egloo.checkGlError("onPostDraw end");
    }

    /* compiled from: GlTextureProgram.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        new Companion(null);
        FULL_COORDINATES = BuffersKt.floatBufferOf(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f, 1.0f, 1.0f);
    }
}
