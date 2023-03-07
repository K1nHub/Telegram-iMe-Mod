package com.otaliastudios.opengl.program;

import android.opengl.GLES20;
import com.otaliastudios.opengl.core.Egloo;
import com.otaliastudios.opengl.draw.GlDrawable;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: GlProgram.kt */
/* loaded from: classes3.dex */
public abstract class GlProgram {
    public static final Companion Companion = new Companion(null);
    private final String fragmentShader;
    private int handle;
    private final String vertexShader;

    public final void draw(GlDrawable glDrawable) {
        draw$default(this, glDrawable, null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onPostDraw(GlDrawable drawable) {
        Intrinsics.checkParameterIsNotNull(drawable, "drawable");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onPreDraw(GlDrawable drawable, float[] modelViewProjectionMatrix) {
        Intrinsics.checkParameterIsNotNull(drawable, "drawable");
        Intrinsics.checkParameterIsNotNull(modelViewProjectionMatrix, "modelViewProjectionMatrix");
    }

    public GlProgram(String vertexShader, String fragmentShader) {
        Intrinsics.checkParameterIsNotNull(vertexShader, "vertexShader");
        Intrinsics.checkParameterIsNotNull(fragmentShader, "fragmentShader");
        this.vertexShader = vertexShader;
        this.fragmentShader = fragmentShader;
        this.handle = createProgram();
    }

    private final int createProgram() {
        Companion companion = Companion;
        int loadShader = companion.loadShader(35632, this.fragmentShader);
        if (loadShader == 0) {
            throw new RuntimeException("Could not load fragment shader");
        }
        int loadShader2 = companion.loadShader(35633, this.vertexShader);
        if (loadShader2 == 0) {
            throw new RuntimeException("Could not load vertex shader");
        }
        int glCreateProgram = GLES20.glCreateProgram();
        Egloo.checkGlError("glCreateProgram");
        if (glCreateProgram == 0) {
            throw new RuntimeException("Could not create program");
        }
        GLES20.glAttachShader(glCreateProgram, loadShader2);
        Egloo.checkGlError("glAttachShader");
        GLES20.glAttachShader(glCreateProgram, loadShader);
        Egloo.checkGlError("glAttachShader");
        GLES20.glLinkProgram(glCreateProgram);
        int[] iArr = new int[1];
        GLES20.glGetProgramiv(glCreateProgram, 35714, iArr, 0);
        if (iArr[0] == 1) {
            return glCreateProgram;
        }
        String str = "Could not link program: " + GLES20.glGetProgramInfoLog(glCreateProgram);
        GLES20.glDeleteProgram(glCreateProgram);
        throw new RuntimeException(str);
    }

    public void release() {
        int i = this.handle;
        if (i != -1) {
            GLES20.glDeleteProgram(i);
            this.handle = -1;
        }
    }

    public static /* synthetic */ void draw$default(GlProgram glProgram, GlDrawable glDrawable, float[] fArr, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: draw");
        }
        if ((i & 2) != 0) {
            fArr = glDrawable.getModelMatrix();
        }
        glProgram.draw(glDrawable, fArr);
    }

    public final void draw(GlDrawable drawable, float[] modelViewProjectionMatrix) {
        Intrinsics.checkParameterIsNotNull(drawable, "drawable");
        Intrinsics.checkParameterIsNotNull(modelViewProjectionMatrix, "modelViewProjectionMatrix");
        Egloo.checkGlError("draw start");
        GLES20.glUseProgram(this.handle);
        Egloo.checkGlError("glUseProgram");
        onPreDraw(drawable, modelViewProjectionMatrix);
        onDraw(drawable);
        onPostDraw(drawable);
        GLES20.glUseProgram(0);
        Egloo.checkGlError("draw end");
    }

    protected void onDraw(GlDrawable drawable) {
        Intrinsics.checkParameterIsNotNull(drawable, "drawable");
        drawable.draw();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final GlHandle getAttribHandle(String name) {
        Intrinsics.checkParameterIsNotNull(name, "name");
        return GlHandle.Companion.getAttrib(this.handle, name);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final GlHandle getUniformHandle(String name) {
        Intrinsics.checkParameterIsNotNull(name, "name");
        return GlHandle.Companion.getUniform(this.handle, name);
    }

    /* compiled from: GlProgram.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final int loadShader(int i, String str) {
            int glCreateShader = GLES20.glCreateShader(i);
            Egloo.checkGlError("glCreateShader type=" + i);
            GLES20.glShaderSource(glCreateShader, str);
            GLES20.glCompileShader(glCreateShader);
            int[] iArr = new int[1];
            GLES20.glGetShaderiv(glCreateShader, 35713, iArr, 0);
            if (iArr[0] != 0) {
                return glCreateShader;
            }
            String str2 = "Could not compile shader " + i + ": " + GLES20.glGetShaderInfoLog(glCreateShader) + " source: " + str;
            GLES20.glDeleteShader(glCreateShader);
            throw new RuntimeException(str2);
        }
    }
}
