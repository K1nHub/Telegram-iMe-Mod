package com.otaliastudios.gif.strategy.size;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4.dex */
public class MultiResizer implements Resizer {
    private final List<Resizer> list = new ArrayList();

    public void addResizer(Resizer resizer) {
        this.list.add(resizer);
    }

    @Override // com.otaliastudios.gif.strategy.size.Resizer
    public Size getOutputSize(Size size) throws Exception {
        for (Resizer resizer : this.list) {
            size = resizer.getOutputSize(size);
        }
        return size;
    }
}
