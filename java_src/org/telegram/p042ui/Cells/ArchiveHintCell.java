package org.telegram.p042ui.Cells;

import android.view.View;
import android.widget.FrameLayout;
import androidx.viewpager.widget.ViewPager;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p042ui.Components.BottomPagesView;
/* renamed from: org.telegram.ui.Cells.ArchiveHintCell */
/* loaded from: classes5.dex */
public class ArchiveHintCell extends FrameLayout {
    private BottomPagesView bottomPages;
    private ViewPager viewPager;

    @Override // android.view.View
    public void invalidate() {
        super.invalidate();
        this.bottomPages.invalidate();
    }

    public ViewPager getViewPager() {
        return this.viewPager;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m102dp(204), 1073741824));
    }
}
