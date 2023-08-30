package org.telegram.p043ui.Components.ListView;

import android.content.Context;
import android.graphics.Canvas;
import android.view.View;
import org.telegram.p043ui.Components.RecyclerListView;
/* renamed from: org.telegram.ui.Components.ListView.RecyclerListViewWithOverlayDraw */
/* loaded from: classes6.dex */
public class RecyclerListViewWithOverlayDraw extends RecyclerListView {
    boolean invalidated;

    /* renamed from: org.telegram.ui.Components.ListView.RecyclerListViewWithOverlayDraw$OverlayView */
    /* loaded from: classes6.dex */
    public interface OverlayView {
        float getX();

        float getY();

        void preDraw(View view, Canvas canvas);
    }

    public RecyclerListViewWithOverlayDraw(Context context) {
        super(context);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.telegram.p043ui.Components.RecyclerListView, android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        this.invalidated = false;
        for (int i = 0; i < getChildCount(); i++) {
            if (getChildAt(i) instanceof OverlayView) {
                OverlayView overlayView = (OverlayView) getChildAt(i);
                canvas.save();
                canvas.translate(overlayView.getX(), overlayView.getY());
                overlayView.preDraw(this, canvas);
                canvas.restore();
            }
        }
        super.dispatchDraw(canvas);
    }

    @Override // android.view.View
    public void invalidate() {
        if (this.invalidated) {
            return;
        }
        super.invalidate();
        this.invalidated = true;
    }
}
