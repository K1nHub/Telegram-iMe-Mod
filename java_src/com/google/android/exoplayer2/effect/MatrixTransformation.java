package com.google.android.exoplayer2.effect;

import android.graphics.Matrix;
/* loaded from: classes.dex */
public interface MatrixTransformation extends GlMatrixTransformation {
    @Override // com.google.android.exoplayer2.effect.GlMatrixTransformation
    float[] getGlMatrixArray(long j);

    Matrix getMatrix(long j);

    /* renamed from: com.google.android.exoplayer2.effect.MatrixTransformation$-CC  reason: invalid class name */
    /* loaded from: classes.dex */
    public final /* synthetic */ class CC {
    }
}
