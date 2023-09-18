package com.iMe.p031ui.common;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Interpolator;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iMe.utils.extentions.common.ViewExtKt;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: LinePagerIndicatorDecoration.kt */
/* renamed from: com.iMe.ui.common.LinePagerIndicatorDecoration */
/* loaded from: classes4.dex */
public final class LinePagerIndicatorDecoration extends RecyclerView.ItemDecoration {
    private final int colorActive = -1;
    private final int colorInactive = 1728053247;
    private final int mIndicatorHeight = ViewExtKt.getDpToPx(16);
    private final int mIndicatorItemLength;
    private final int mIndicatorItemPadding;
    private final int mIndicatorStrokeWidth;
    private final Interpolator mInterpolator;
    private final Paint mPaint;

    public LinePagerIndicatorDecoration() {
        int dpToPx = ViewExtKt.getDpToPx(1);
        this.mIndicatorStrokeWidth = dpToPx;
        this.mIndicatorItemLength = ViewExtKt.getDpToPx(16);
        this.mIndicatorItemPadding = ViewExtKt.getDpToPx(6);
        this.mInterpolator = new AccelerateDecelerateInterpolator();
        Paint paint = new Paint();
        this.mPaint = paint;
        paint.setStrokeCap(Paint.Cap.ROUND);
        paint.setStrokeWidth(dpToPx);
        paint.setStyle(Paint.Style.STROKE);
        paint.setAntiAlias(true);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void onDrawOver(Canvas c, RecyclerView parent, RecyclerView.State state) {
        Intrinsics.checkNotNullParameter(c, "c");
        Intrinsics.checkNotNullParameter(parent, "parent");
        Intrinsics.checkNotNullParameter(state, "state");
        super.onDrawOver(c, parent, state);
        RecyclerView.Adapter adapter = parent.getAdapter();
        int itemCount = adapter != null ? adapter.getItemCount() : 0;
        float width = (parent.getWidth() - ((this.mIndicatorItemLength * itemCount) + (Math.max(0, itemCount - 1) * this.mIndicatorItemPadding))) / 2.0f;
        float height = parent.getHeight() - (this.mIndicatorHeight / 2.0f);
        drawInactiveIndicators(c, width, height, itemCount);
        LinearLayoutManager linearLayoutManager = (LinearLayoutManager) parent.getLayoutManager();
        Intrinsics.checkNotNull(linearLayoutManager);
        int findFirstVisibleItemPosition = linearLayoutManager.findFirstVisibleItemPosition();
        if (findFirstVisibleItemPosition == -1) {
            return;
        }
        View findViewByPosition = linearLayoutManager.findViewByPosition(findFirstVisibleItemPosition);
        Intrinsics.checkNotNull(findViewByPosition);
        drawHighlights(c, width, height, findFirstVisibleItemPosition, this.mInterpolator.getInterpolation((findViewByPosition.getLeft() * (-1)) / findViewByPosition.getWidth()), itemCount);
    }

    private final void drawInactiveIndicators(Canvas canvas, float f, float f2, int i) {
        if (i < 2) {
            return;
        }
        this.mPaint.setColor(this.colorInactive);
        int i2 = this.mIndicatorItemLength + this.mIndicatorItemPadding;
        for (int i3 = 0; i3 < i; i3++) {
            canvas.drawLine(f, f2, f + this.mIndicatorItemLength, f2, this.mPaint);
            f += i2;
        }
    }

    private final void drawHighlights(Canvas canvas, float f, float f2, int i, float f3, int i2) {
        if (i2 < 2) {
            return;
        }
        this.mPaint.setColor(this.colorActive);
        int i3 = this.mIndicatorItemLength;
        int i4 = this.mIndicatorItemPadding + i3;
        if (f3 == BitmapDescriptorFactory.HUE_RED) {
            float f4 = f + (i4 * i);
            canvas.drawLine(f4, f2, f4 + i3, f2, this.mPaint);
            return;
        }
        float f5 = f + (i4 * i);
        float f6 = i3 * f3;
        canvas.drawLine(f5 + f6, f2, f5 + i3, f2, this.mPaint);
        if (i < i2 - 1) {
            float f7 = f5 + i4;
            canvas.drawLine(f7, f2, f7 + f6, f2, this.mPaint);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.State state) {
        Intrinsics.checkNotNullParameter(outRect, "outRect");
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(parent, "parent");
        Intrinsics.checkNotNullParameter(state, "state");
        super.getItemOffsets(outRect, view, parent, state);
        outRect.bottom = this.mIndicatorHeight;
    }
}
