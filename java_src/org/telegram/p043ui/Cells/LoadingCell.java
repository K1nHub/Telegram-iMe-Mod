package org.telegram.p043ui.Cells;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.RadialProgressView;
/* renamed from: org.telegram.ui.Cells.LoadingCell */
/* loaded from: classes5.dex */
public class LoadingCell extends FrameLayout {
    private int height;
    private RadialProgressView progressBar;

    public LoadingCell(Context context) {
        this(context, AndroidUtilities.m54dp(40), AndroidUtilities.m54dp(54));
    }

    public LoadingCell(Context context, int i, int i2) {
        super(context);
        this.height = i2;
        RadialProgressView radialProgressView = new RadialProgressView(context);
        this.progressBar = radialProgressView;
        radialProgressView.setSize(i);
        addView(this.progressBar, LayoutHelper.createFrame(-2, -2, 17));
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), View.MeasureSpec.makeMeasureSpec(this.height, 1073741824));
    }
}
