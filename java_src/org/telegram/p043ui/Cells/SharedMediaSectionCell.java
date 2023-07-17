package org.telegram.p043ui.Cells;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import org.telegram.messenger.AndroidUtilities;
/* renamed from: org.telegram.ui.Cells.SharedMediaSectionCell */
/* loaded from: classes5.dex */
public class SharedMediaSectionCell extends FrameLayout {
    private TextView textView;

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m54dp(32), 1073741824));
    }

    public void setText(String str) {
        this.textView.setText(str);
    }
}
