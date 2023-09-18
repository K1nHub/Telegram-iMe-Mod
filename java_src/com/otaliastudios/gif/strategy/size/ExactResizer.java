package com.otaliastudios.gif.strategy.size;
/* loaded from: classes6.dex */
public class ExactResizer implements Resizer {
    private final Size output;

    public ExactResizer(int i, int i2) {
        this.output = new Size(i, i2);
    }

    @Override // com.otaliastudios.gif.strategy.size.Resizer
    public Size getOutputSize(Size size) {
        return this.output;
    }
}
