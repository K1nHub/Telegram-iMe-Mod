package org.telegram.p044ui.Components.Premium;

import android.content.Context;
import android.graphics.Canvas;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.UserConfig;
import org.telegram.p044ui.ActionBar.Theme;
import org.telegram.p044ui.Components.LayoutHelper;
import org.telegram.p044ui.Components.RecyclerListView;
/* renamed from: org.telegram.ui.Components.Premium.DoubleLimitsPageView */
/* loaded from: classes6.dex */
public class DoubleLimitsPageView extends FrameLayout implements PagerHeaderView {
    DoubledLimitsBottomSheet$Adapter adapter;
    final LinearLayoutManager layoutManager;
    final RecyclerListView recyclerListView;

    public DoubleLimitsPageView(Context context) {
        super(context);
        RecyclerListView recyclerListView = new RecyclerListView(context);
        this.recyclerListView = recyclerListView;
        DoubledLimitsBottomSheet$Adapter doubledLimitsBottomSheet$Adapter = new DoubledLimitsBottomSheet$Adapter(UserConfig.selectedAccount, true);
        this.adapter = doubledLimitsBottomSheet$Adapter;
        recyclerListView.setAdapter(doubledLimitsBottomSheet$Adapter);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(context, 1, false);
        this.layoutManager = linearLayoutManager;
        recyclerListView.setLayoutManager(linearLayoutManager);
        recyclerListView.setClipToPadding(false);
        this.adapter.containerView = this;
        addView(recyclerListView, LayoutHelper.createFrame(-1, -1));
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.adapter.measureGradient(getContext(), getMeasuredWidth(), getMeasuredHeight());
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        canvas.drawLine(BitmapDescriptorFactory.HUE_RED, getMeasuredHeight() - 1, getMeasuredWidth(), getMeasuredHeight() - 1, Theme.dividerPaint);
    }

    @Override // org.telegram.p044ui.Components.Premium.PagerHeaderView
    public void setOffset(float f) {
        if (Math.abs(f / getMeasuredWidth()) == 1.0f) {
            if (this.recyclerListView.findViewHolderForAdapterPosition(0) == null || this.recyclerListView.findViewHolderForAdapterPosition(0).itemView.getTop() != this.recyclerListView.getPaddingTop()) {
                this.recyclerListView.scrollToPosition(0);
            }
        }
    }

    public void setTopOffset(int i) {
        this.recyclerListView.setPadding(0, i, 0, 0);
    }
}