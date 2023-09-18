package com.otaliastudios.opengl.internal;

import android.opengl.GLU;
import android.opengl.Matrix;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: misc.kt */
/* loaded from: classes6.dex */
public final class MiscKt {
    public static final String intToHexString(int i) {
        String hexString = Integer.toHexString(i);
        Intrinsics.checkNotNullExpressionValue(hexString, "toHexString(value)");
        return hexString;
    }

    public static final String gluErrorString(int i) {
        String gluErrorString = GLU.gluErrorString(i);
        Intrinsics.checkNotNullExpressionValue(gluErrorString, "gluErrorString(value)");
        return gluErrorString;
    }

    public static final void matrixMakeIdentity(float[] matrix) {
        Intrinsics.checkNotNullParameter(matrix, "matrix");
        Matrix.setIdentityM(matrix, 0);
    }

    public static final float[] matrixClone(float[] matrix) {
        Intrinsics.checkNotNullParameter(matrix, "matrix");
        return (float[]) matrix.clone();
    }
}
