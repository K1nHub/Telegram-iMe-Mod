package androidx.constraintlayout.core.motion.utils;

import java.lang.reflect.Array;
import java.text.DecimalFormat;
/* loaded from: classes.dex */
public abstract class TimeCycleSplineSet {
    protected int count;
    protected long last_time;
    protected CurveFit mCurveFit;
    protected String mType;
    protected int mWaveShape = 0;
    protected int[] mTimePoints = new int[10];
    protected float[][] mValues = (float[][]) Array.newInstance(float.class, 10, 3);
    protected float[] mCache = new float[3];
    protected boolean mContinue = false;
    protected float last_cycle = Float.NaN;

    public String toString() {
        String str = this.mType;
        DecimalFormat decimalFormat = new DecimalFormat("##.##");
        for (int i = 0; i < this.count; i++) {
            str = str + "[" + this.mTimePoints[i] + " , " + decimalFormat.format(this.mValues[i]) + "] ";
        }
        return str;
    }
}
