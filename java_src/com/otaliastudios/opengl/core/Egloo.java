package com.otaliastudios.opengl.core;

import android.opengl.EGL14;
import android.opengl.GLES20;
import android.opengl.GLU;
import android.util.Log;
import com.otaliastudios.opengl.extensions.MatrixKt;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: Egloo.kt */
/* loaded from: classes3.dex */
public final class Egloo {
    private static final float[] IDENTITY_MATRIX;

    static {
        new Egloo();
        float[] fArr = new float[16];
        MatrixKt.makeIdentity(fArr);
        IDENTITY_MATRIX = fArr;
    }

    private Egloo() {
    }

    public static final float[] getIDENTITY_MATRIX() {
        return IDENTITY_MATRIX;
    }

    public static final void checkGlError(String opName) {
        int glGetError;
        Intrinsics.checkParameterIsNotNull(opName, "opName");
        if (GLES20.glGetError() == 0) {
            return;
        }
        String str = "Error during " + opName + ": glError 0x" + Integer.toHexString(glGetError) + ": " + GLU.gluErrorString(glGetError);
        Log.e("Egloo", str);
        throw new RuntimeException(str);
    }

    public static final void checkEglError(String opName) {
        int eglGetError;
        Intrinsics.checkParameterIsNotNull(opName, "opName");
        if (EGL14.eglGetError() == 12288) {
            return;
        }
        String str = "Error during " + opName + ": EGL error 0x" + Integer.toHexString(eglGetError);
        Log.e("Egloo", str);
        throw new RuntimeException(str);
    }

    public static final void checkGlProgramLocation(int i, String label) {
        Intrinsics.checkParameterIsNotNull(label, "label");
        if (i >= 0) {
            return;
        }
        String str = "Unable to locate " + label + " in program";
        Log.e("Egloo", str);
        throw new RuntimeException(str);
    }
}
