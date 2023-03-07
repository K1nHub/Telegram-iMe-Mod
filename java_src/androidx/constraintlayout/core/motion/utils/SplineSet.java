package androidx.constraintlayout.core.motion.utils;

import java.text.DecimalFormat;
/* loaded from: classes.dex */
public abstract class SplineSet {
    private int count;
    protected CurveFit mCurveFit;
    private String mType;
    protected int[] mTimePoints = new int[10];
    protected float[] mValues = new float[10];

    public String toString() {
        String str = this.mType;
        DecimalFormat decimalFormat = new DecimalFormat("##.##");
        for (int i = 0; i < this.count; i++) {
            str = str + "[" + this.mTimePoints[i] + " , " + decimalFormat.format(this.mValues[i]) + "] ";
        }
        return str;
    }

    public float get(float f) {
        return (float) this.mCurveFit.getPos(f, 0);
    }
}
