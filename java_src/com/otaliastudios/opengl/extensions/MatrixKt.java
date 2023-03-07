package com.otaliastudios.opengl.extensions;

import android.opengl.Matrix;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: Matrix.kt */
/* loaded from: classes3.dex */
public final class MatrixKt {
    private static final void checkSize(float[] fArr) {
        if (fArr.length != 16) {
            throw new RuntimeException("Need a 16 values matrix.");
        }
    }

    public static final float[] makeIdentity(float[] makeIdentity) {
        Intrinsics.checkParameterIsNotNull(makeIdentity, "$this$makeIdentity");
        checkSize(makeIdentity);
        Matrix.setIdentityM(makeIdentity, 0);
        return makeIdentity;
    }
}
