package org.telegram.p043ui.Stories;

import android.graphics.Outline;
import android.view.View;
import android.view.ViewOutlineProvider;
import org.telegram.messenger.AndroidUtilities;
/* renamed from: org.telegram.ui.Stories.RoundRectOutlineProvider */
/* loaded from: classes7.dex */
public class RoundRectOutlineProvider extends ViewOutlineProvider {
    public float radiusInDp;

    public RoundRectOutlineProvider(int i) {
        this.radiusInDp = i;
    }

    @Override // android.view.ViewOutlineProvider
    public void getOutline(View view, Outline outline) {
        outline.setRoundRect(0, 0, view.getMeasuredWidth(), view.getMeasuredHeight(), AndroidUtilities.dpf2(this.radiusInDp));
    }
}
