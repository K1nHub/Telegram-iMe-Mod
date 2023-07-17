package com.google.android.exoplayer2.effect;

import android.content.Context;
import android.graphics.Matrix;
import android.util.Pair;
import com.google.android.exoplayer2.util.Assertions;
import com.google.common.collect.ImmutableList;
/* renamed from: com.google.android.exoplayer2.effect.Crop */
/* loaded from: classes.dex */
public final class C0541Crop implements MatrixTransformation {
    private final float bottom;
    private final float left;
    private final float right;
    private final float top;
    private Matrix transformationMatrix;

    @Override // com.google.android.exoplayer2.effect.MatrixTransformation, com.google.android.exoplayer2.effect.GlMatrixTransformation
    public /* synthetic */ float[] getGlMatrixArray(long j) {
        float[] glMatrixArray;
        glMatrixArray = MatrixUtils.getGlMatrixArray(getMatrix(j));
        return glMatrixArray;
    }

    @Override // com.google.android.exoplayer2.effect.GlMatrixTransformation, com.google.android.exoplayer2.effect.GlEffect
    public /* bridge */ /* synthetic */ GlTextureProcessor toGlTextureProcessor(Context context, boolean z) {
        GlTextureProcessor glTextureProcessor;
        glTextureProcessor = toGlTextureProcessor(context, z);
        return glTextureProcessor;
    }

    @Override // com.google.android.exoplayer2.effect.GlMatrixTransformation, com.google.android.exoplayer2.effect.GlEffect
    public /* synthetic */ SingleFrameGlTextureProcessor toGlTextureProcessor(Context context, boolean z) {
        SingleFrameGlTextureProcessor create;
        create = MatrixTextureProcessor.create(context, ImmutableList.m743of(this), ImmutableList.m744of(), z);
        return create;
    }

    public C0541Crop(float f, float f2, float f3, float f4) {
        boolean z = f2 > f;
        Assertions.checkArgument(z, "right value " + f2 + " should be greater than left value " + f);
        boolean z2 = f4 > f3;
        Assertions.checkArgument(z2, "top value " + f4 + " should be greater than bottom value " + f3);
        this.left = f;
        this.right = f2;
        this.bottom = f3;
        this.top = f4;
        this.transformationMatrix = new Matrix();
    }

    @Override // com.google.android.exoplayer2.effect.GlMatrixTransformation
    public Pair<Integer, Integer> configure(int i, int i2) {
        Assertions.checkArgument(i > 0, "inputWidth must be positive");
        Assertions.checkArgument(i2 > 0, "inputHeight must be positive");
        Matrix matrix = new Matrix();
        this.transformationMatrix = matrix;
        float f = this.left;
        if (f == -1.0f && this.right == 1.0f && this.bottom == -1.0f && this.top == 1.0f) {
            return Pair.create(Integer.valueOf(i), Integer.valueOf(i2));
        }
        float f2 = this.right;
        float f3 = (f2 - f) / 2.0f;
        float f4 = this.top;
        float f5 = this.bottom;
        float f6 = (f4 - f5) / 2.0f;
        matrix.postTranslate(-((f + f2) / 2.0f), -((f5 + f4) / 2.0f));
        this.transformationMatrix.postScale(1.0f / f3, 1.0f / f6);
        return Pair.create(Integer.valueOf(Math.round(i * f3)), Integer.valueOf(Math.round(i2 * f6)));
    }

    @Override // com.google.android.exoplayer2.effect.MatrixTransformation
    public Matrix getMatrix(long j) {
        return (Matrix) Assertions.checkStateNotNull(this.transformationMatrix, "configure must be called first");
    }
}
