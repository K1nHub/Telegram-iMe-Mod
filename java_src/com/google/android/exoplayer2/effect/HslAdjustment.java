package com.google.android.exoplayer2.effect;

import android.content.Context;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.FrameProcessingException;
/* loaded from: classes.dex */
public class HslAdjustment implements GlEffect {
    public final float hueAdjustmentDegrees;
    public final float lightnessAdjustment;
    public final float saturationAdjustment;

    /* loaded from: classes.dex */
    public static final class Builder {
        private float hueAdjustment;
        private float lightnessAdjustment;
        private float saturationAdjustment;

        public Builder adjustHue(float f) {
            this.hueAdjustment = f % 360.0f;
            return this;
        }

        public Builder adjustSaturation(float f) {
            boolean z = -100.0f <= f && f <= 100.0f;
            Assertions.checkArgument(z, "Can adjust the saturation by only 100 in either direction, but provided " + f);
            this.saturationAdjustment = f;
            return this;
        }

        public Builder adjustLightness(float f) {
            boolean z = -100.0f <= f && f <= 100.0f;
            Assertions.checkArgument(z, "Can adjust the lightness by only 100 in either direction, but provided " + f);
            this.lightnessAdjustment = f;
            return this;
        }

        public HslAdjustment build() {
            return new HslAdjustment(this.hueAdjustment, this.saturationAdjustment, this.lightnessAdjustment);
        }
    }

    private HslAdjustment(float f, float f2, float f3) {
        this.hueAdjustmentDegrees = f;
        this.saturationAdjustment = f2;
        this.lightnessAdjustment = f3;
    }

    @Override // com.google.android.exoplayer2.effect.GlEffect
    public SingleFrameGlTextureProcessor toGlTextureProcessor(Context context, boolean z) throws FrameProcessingException {
        return new HslProcessor(context, this, z);
    }
}
