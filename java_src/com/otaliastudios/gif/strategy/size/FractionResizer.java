package com.otaliastudios.gif.strategy.size;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes4.dex */
public class FractionResizer implements Resizer {
    private final float fraction;

    public FractionResizer(float f) {
        if (f <= BitmapDescriptorFactory.HUE_RED || f > 1.0f) {
            throw new IllegalArgumentException("Fraction must be > 0 and <= 1");
        }
        this.fraction = f;
    }

    @Override // com.otaliastudios.gif.strategy.size.Resizer
    public Size getOutputSize(Size size) {
        int minor = (int) (this.fraction * size.getMinor());
        int major = (int) (this.fraction * size.getMajor());
        if (minor % 2 != 0) {
            minor--;
        }
        if (major % 2 != 0) {
            major--;
        }
        return new Size(minor, major);
    }
}
