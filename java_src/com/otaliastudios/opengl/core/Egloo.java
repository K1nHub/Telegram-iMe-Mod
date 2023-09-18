package com.otaliastudios.opengl.core;

import android.opengl.EGL14;
import android.opengl.GLES20;
import android.util.Log;
import com.otaliastudios.opengl.extensions.MatrixKt;
import com.otaliastudios.opengl.internal.EglKt;
import com.otaliastudios.opengl.internal.GlKt;
import com.otaliastudios.opengl.internal.MiscKt;
import kotlin.UInt;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: Egloo.kt */
/* loaded from: classes6.dex */
public final class Egloo {
    public static final float[] IDENTITY_MATRIX;

    private Egloo() {
    }

    static {
        new Egloo();
        float[] fArr = new float[16];
        MatrixKt.makeIdentity(fArr);
        IDENTITY_MATRIX = fArr;
    }

    public static final void checkEglError(String opName) {
        int eglGetError;
        Intrinsics.checkNotNullParameter(opName, "opName");
        if (EGL14.eglGetError() == EglKt.getEGL_SUCCESS()) {
            return;
        }
        String str = "Error during " + opName + ": EGL error 0x" + MiscKt.intToHexString(eglGetError);
        Log.e("Egloo", str);
        throw new RuntimeException(str);
    }

    public static final void checkGlProgramLocation(int i, String label) {
        Intrinsics.checkNotNullParameter(label, "label");
        if (i >= 0) {
            return;
        }
        String str = "Unable to locate " + label + " in program";
        Log.e("Egloo", str);
        throw new RuntimeException(str);
    }

    public static final void checkGlError(String opName) {
        int m1662constructorimpl;
        Intrinsics.checkNotNullParameter(opName, "opName");
        if (UInt.m1662constructorimpl(GLES20.glGetError()) == GlKt.getGL_NO_ERROR()) {
            return;
        }
        String str = "Error during " + opName + ": glError 0x" + MiscKt.intToHexString(m1662constructorimpl) + ": " + MiscKt.gluErrorString(m1662constructorimpl);
        Log.e("Egloo", str);
        throw new RuntimeException(str);
    }
}
