package com.google.android.exoplayer2.effect;

import android.content.Context;
import android.graphics.Matrix;
import android.util.Pair;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.common.collect.ImmutableList;
/* loaded from: classes.dex */
public final class ScaleToFitTransformation implements MatrixTransformation {
    private Matrix adjustedTransformationMatrix;
    private final Matrix transformationMatrix;

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
        create = MatrixTextureProcessor.create(context, ImmutableList.m1054of(this), ImmutableList.m1055of(), z);
        return create;
    }

    /* loaded from: classes.dex */
    public static final class Builder {
        private float scaleX = 1.0f;
        private float scaleY = 1.0f;
        private float rotationDegrees = BitmapDescriptorFactory.HUE_RED;

        public Builder setScale(float f, float f2) {
            this.scaleX = f;
            this.scaleY = f2;
            return this;
        }

        public Builder setRotationDegrees(float f) {
            this.rotationDegrees = f;
            return this;
        }

        public ScaleToFitTransformation build() {
            return new ScaleToFitTransformation(this.scaleX, this.scaleY, this.rotationDegrees);
        }
    }

    private ScaleToFitTransformation(float f, float f2, float f3) {
        Matrix matrix = new Matrix();
        this.transformationMatrix = matrix;
        matrix.postScale(f, f2);
        matrix.postRotate(f3);
    }

    @Override // com.google.android.exoplayer2.effect.GlMatrixTransformation
    public Pair<Integer, Integer> configure(int i, int i2) {
        Assertions.checkArgument(i > 0, "inputWidth must be positive");
        Assertions.checkArgument(i2 > 0, "inputHeight must be positive");
        this.adjustedTransformationMatrix = new Matrix(this.transformationMatrix);
        if (this.transformationMatrix.isIdentity()) {
            return Pair.create(Integer.valueOf(i), Integer.valueOf(i2));
        }
        float f = i;
        float f2 = i2;
        float f3 = f / f2;
        this.adjustedTransformationMatrix.preScale(f3, 1.0f);
        this.adjustedTransformationMatrix.postScale(1.0f / f3, 1.0f);
        float[][] fArr = {new float[]{-1.0f, -1.0f, BitmapDescriptorFactory.HUE_RED, 1.0f}, new float[]{-1.0f, 1.0f, BitmapDescriptorFactory.HUE_RED, 1.0f}, new float[]{1.0f, -1.0f, BitmapDescriptorFactory.HUE_RED, 1.0f}, new float[]{1.0f, 1.0f, BitmapDescriptorFactory.HUE_RED, 1.0f}};
        float f4 = Float.MIN_VALUE;
        float f5 = Float.MAX_VALUE;
        float f6 = Float.MAX_VALUE;
        float f7 = Float.MIN_VALUE;
        for (int i3 = 0; i3 < 4; i3++) {
            float[] fArr2 = fArr[i3];
            this.adjustedTransformationMatrix.mapPoints(fArr2);
            f5 = Math.min(f5, fArr2[0]);
            f4 = Math.max(f4, fArr2[0]);
            f6 = Math.min(f6, fArr2[1]);
            f7 = Math.max(f7, fArr2[1]);
        }
        float f8 = (f4 - f5) / 2.0f;
        float f9 = (f7 - f6) / 2.0f;
        this.adjustedTransformationMatrix.postScale(1.0f / f8, 1.0f / f9);
        return Pair.create(Integer.valueOf(Math.round(f * f8)), Integer.valueOf(Math.round(f2 * f9)));
    }

    @Override // com.google.android.exoplayer2.effect.MatrixTransformation
    public Matrix getMatrix(long j) {
        return (Matrix) Assertions.checkStateNotNull(this.adjustedTransformationMatrix, "configure must be called first");
    }
}
