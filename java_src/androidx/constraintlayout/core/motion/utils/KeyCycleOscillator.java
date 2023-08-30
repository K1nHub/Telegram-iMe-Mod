package androidx.constraintlayout.core.motion.utils;

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes.dex */
public abstract class KeyCycleOscillator {
    private CycleOscillator mCycleOscillator;
    private String mType;
    private int mWaveShape = 0;
    private String mWaveString = null;
    public int mVariesBy = 0;
    ArrayList<WavePoint> mWavePoints = new ArrayList<>();

    /* loaded from: classes.dex */
    static class CycleOscillator {
        public double getValues(float f) {
            throw null;
        }
    }

    /* loaded from: classes.dex */
    static class WavePoint {
        int mPosition;
        float mValue;
    }

    public String toString() {
        String str = this.mType;
        DecimalFormat decimalFormat = new DecimalFormat("##.##");
        Iterator<WavePoint> it = this.mWavePoints.iterator();
        while (it.hasNext()) {
            WavePoint next = it.next();
            str = str + "[" + next.mPosition + " , " + decimalFormat.format(next.mValue) + "] ";
        }
        return str;
    }

    public float get(float f) {
        return (float) this.mCycleOscillator.getValues(f);
    }
}
