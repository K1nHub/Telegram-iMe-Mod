package com.otaliastudios.gif.strategy.size;
/* loaded from: classes6.dex */
public class Size {
    private int mMajor;
    private int mMinor;

    public Size(int i, int i2) {
        this.mMajor = Math.max(i, i2);
        this.mMinor = Math.min(i, i2);
    }

    public int getMinor() {
        return this.mMinor;
    }

    public int getMajor() {
        return this.mMajor;
    }
}
