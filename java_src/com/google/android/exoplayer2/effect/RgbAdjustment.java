package com.google.android.exoplayer2.effect;

import android.content.Context;
import android.opengl.Matrix;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.GlUtil;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.common.collect.ImmutableList;
/* loaded from: classes.dex */
public final class RgbAdjustment implements RgbMatrix {
    private final float[] rgbMatrix;

    @Override // com.google.android.exoplayer2.effect.RgbMatrix, com.google.android.exoplayer2.effect.GlEffect
    public /* bridge */ /* synthetic */ GlTextureProcessor toGlTextureProcessor(Context context, boolean z) {
        GlTextureProcessor glTextureProcessor;
        glTextureProcessor = toGlTextureProcessor(context, z);
        return glTextureProcessor;
    }

    @Override // com.google.android.exoplayer2.effect.RgbMatrix, com.google.android.exoplayer2.effect.GlEffect
    public /* synthetic */ SingleFrameGlTextureProcessor toGlTextureProcessor(Context context, boolean z) {
        SingleFrameGlTextureProcessor create;
        create = MatrixTextureProcessor.create(context, ImmutableList.m740of(), ImmutableList.m739of(this), z);
        return create;
    }

    /* loaded from: classes.dex */
    public static final class Builder {
        private float redScale = 1.0f;
        private float greenScale = 1.0f;
        private float blueScale = 1.0f;

        public Builder setRedScale(float f) {
            Assertions.checkArgument(BitmapDescriptorFactory.HUE_RED <= f, "Red scale needs to be non-negative.");
            this.redScale = f;
            return this;
        }

        public Builder setGreenScale(float f) {
            Assertions.checkArgument(BitmapDescriptorFactory.HUE_RED <= f, "Green scale needs to be non-negative.");
            this.greenScale = f;
            return this;
        }

        public Builder setBlueScale(float f) {
            Assertions.checkArgument(BitmapDescriptorFactory.HUE_RED <= f, "Blue scale needs to be non-negative.");
            this.blueScale = f;
            return this;
        }

        public RgbAdjustment build() {
            float[] create4x4IdentityMatrix = GlUtil.create4x4IdentityMatrix();
            Matrix.scaleM(create4x4IdentityMatrix, 0, this.redScale, this.greenScale, this.blueScale);
            return new RgbAdjustment(create4x4IdentityMatrix);
        }
    }

    private RgbAdjustment(float[] fArr) {
        this.rgbMatrix = fArr;
    }

    @Override // com.google.android.exoplayer2.effect.RgbMatrix
    public float[] getMatrix(long j, boolean z) {
        return this.rgbMatrix;
    }
}
