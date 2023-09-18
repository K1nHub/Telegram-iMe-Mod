package com.google.zxing.common.detector;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes4.dex */
public final class MathUtils {
    public static int round(float f) {
        return (int) (f + (f < BitmapDescriptorFactory.HUE_RED ? -0.5f : 0.5f));
    }

    public static float distance(float f, float f2, float f3, float f4) {
        double d = f - f3;
        double d2 = f2 - f4;
        return (float) Math.sqrt((d * d) + (d2 * d2));
    }

    public static float distance(int i, int i2, int i3, int i4) {
        double d = i - i3;
        double d2 = i2 - i4;
        return (float) Math.sqrt((d * d) + (d2 * d2));
    }
}
