package org.telegram.p043ui.Stories;

import android.content.Context;
import org.telegram.p043ui.Components.AvatarsImageView;
/* compiled from: HwLayouts.java */
/* renamed from: org.telegram.ui.Stories.HwAvatarsImageView */
/* loaded from: classes6.dex */
class HwAvatarsImageView extends AvatarsImageView {
    public HwAvatarsImageView(Context context, boolean z) {
        super(context, z);
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
