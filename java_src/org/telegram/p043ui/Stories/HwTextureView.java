package org.telegram.p043ui.Stories;

import android.content.Context;
import android.view.TextureView;
/* compiled from: HwLayouts.java */
/* renamed from: org.telegram.ui.Stories.HwTextureView */
/* loaded from: classes6.dex */
class HwTextureView extends TextureView {
    public HwTextureView(Context context) {
        super(context);
    }

    @Override // android.view.View
    public void invalidate() {
        if (HwFrameLayout.hwEnabled) {
            HwFrameLayout.hwViews.add(this);
        } else {
            super.invalidate();
        }
    }

    @Override // android.view.View
    public void invalidate(int i, int i2, int i3, int i4) {
        if (HwFrameLayout.hwEnabled) {
            HwFrameLayout.hwViews.add(this);
        } else {
            super.invalidate(i, i2, i3, i4);
        }
    }
}
