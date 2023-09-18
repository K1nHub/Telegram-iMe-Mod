package com.otaliastudios.opengl.extensions;

import com.otaliastudios.opengl.internal.MiscKt;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: Matrix.kt */
/* loaded from: classes6.dex */
public final class MatrixKt {
    private static final void checkSize(float[] fArr) {
        if (fArr.length != 16) {
            throw new RuntimeException("Need a 16 values matrix.");
        }
    }

    public static final float[] makeIdentity(float[] fArr) {
        Intrinsics.checkNotNullParameter(fArr, "<this>");
        checkSize(fArr);
        MiscKt.matrixMakeIdentity(fArr);
        return fArr;
    }
}
