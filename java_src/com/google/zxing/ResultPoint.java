package com.google.zxing;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.zxing.common.detector.MathUtils;
/* loaded from: classes3.dex */
public class ResultPoint {

    /* renamed from: x */
    private final float f314x;

    /* renamed from: y */
    private final float f315y;

    public ResultPoint(float f, float f2) {
        this.f314x = f;
        this.f315y = f2;
    }

    public final float getX() {
        return this.f314x;
    }

    public final float getY() {
        return this.f315y;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof ResultPoint) {
            ResultPoint resultPoint = (ResultPoint) obj;
            return this.f314x == resultPoint.f314x && this.f315y == resultPoint.f315y;
        }
        return false;
    }

    public final int hashCode() {
        return (Float.floatToIntBits(this.f314x) * 31) + Float.floatToIntBits(this.f315y);
    }

    public final String toString() {
        return "(" + this.f314x + ',' + this.f315y + ')';
    }

    public static void orderBestPatterns(ResultPoint[] resultPointArr) {
        ResultPoint resultPoint;
        ResultPoint resultPoint2;
        ResultPoint resultPoint3;
        float distance = distance(resultPointArr[0], resultPointArr[1]);
        float distance2 = distance(resultPointArr[1], resultPointArr[2]);
        float distance3 = distance(resultPointArr[0], resultPointArr[2]);
        if (distance2 >= distance && distance2 >= distance3) {
            resultPoint = resultPointArr[0];
            resultPoint2 = resultPointArr[1];
            resultPoint3 = resultPointArr[2];
        } else if (distance3 >= distance2 && distance3 >= distance) {
            resultPoint = resultPointArr[1];
            resultPoint2 = resultPointArr[0];
            resultPoint3 = resultPointArr[2];
        } else {
            resultPoint = resultPointArr[2];
            resultPoint2 = resultPointArr[0];
            resultPoint3 = resultPointArr[1];
        }
        if (crossProductZ(resultPoint2, resultPoint, resultPoint3) < BitmapDescriptorFactory.HUE_RED) {
            ResultPoint resultPoint4 = resultPoint3;
            resultPoint3 = resultPoint2;
            resultPoint2 = resultPoint4;
        }
        resultPointArr[0] = resultPoint2;
        resultPointArr[1] = resultPoint;
        resultPointArr[2] = resultPoint3;
    }

    public static float distance(ResultPoint resultPoint, ResultPoint resultPoint2) {
        return MathUtils.distance(resultPoint.f314x, resultPoint.f315y, resultPoint2.f314x, resultPoint2.f315y);
    }

    private static float crossProductZ(ResultPoint resultPoint, ResultPoint resultPoint2, ResultPoint resultPoint3) {
        float f = resultPoint2.f314x;
        float f2 = resultPoint2.f315y;
        return ((resultPoint3.f314x - f) * (resultPoint.f315y - f2)) - ((resultPoint3.f315y - f2) * (resultPoint.f314x - f));
    }
}
