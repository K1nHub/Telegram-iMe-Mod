package com.otaliastudios.gif.strategy.size;
/* loaded from: classes6.dex */
public class ExactSize extends Size {
    private int mHeight;
    private int mWidth;

    public ExactSize(int i, int i2) {
        super(i, i2);
        this.mWidth = i;
        this.mHeight = i2;
    }

    public int getWidth() {
        return this.mWidth;
    }

    public int getHeight() {
        return this.mHeight;
    }
}
