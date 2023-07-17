package org.telegram.p043ui.Components;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.LocaleController;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Cells.GroupCreateSectionCell;
/* renamed from: org.telegram.ui.Components.GroupCreateDividerItemDecoration */
/* loaded from: classes6.dex */
public class GroupCreateDividerItemDecoration extends RecyclerView.ItemDecoration {
    private boolean single;
    private int skipRows;

    public void setSearching(boolean z) {
    }

    public void setSingle(boolean z) {
        this.single = z;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void onDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView.State state) {
        int width = recyclerView.getWidth();
        int childCount = recyclerView.getChildCount() - (!this.single ? 1 : 0);
        int i = 0;
        while (i < childCount) {
            View childAt = recyclerView.getChildAt(i);
            View childAt2 = i < childCount + (-1) ? recyclerView.getChildAt(i + 1) : null;
            if (recyclerView.getChildAdapterPosition(childAt) >= this.skipRows && !(childAt instanceof GroupCreateSectionCell) && !(childAt2 instanceof GroupCreateSectionCell)) {
                float bottom = childAt.getBottom();
                canvas.drawLine(LocaleController.isRTL ? BitmapDescriptorFactory.HUE_RED : AndroidUtilities.m54dp(72), bottom, width - (LocaleController.isRTL ? AndroidUtilities.m54dp(72) : 0), bottom, Theme.dividerPaint);
            }
            i++;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        super.getItemOffsets(rect, view, recyclerView, state);
        rect.top = 1;
    }
}
