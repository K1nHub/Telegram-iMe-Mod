package com.smedialink.p031ui.custom;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: SlopSwipeRefreshLayout.kt */
/* renamed from: com.smedialink.ui.custom.SlopSwipeRefreshLayout */
/* loaded from: classes3.dex */
public final class SlopSwipeRefreshLayout extends SwipeRefreshLayout {
    private float mPrevX;
    private final int mTouchSlop;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SlopSwipeRefreshLayout(Context context, AttributeSet attrs) {
        super(context, attrs);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(attrs, "attrs");
        this.mTouchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
    }

    @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        int action = event.getAction();
        if (action == 0) {
            this.mPrevX = MotionEvent.obtain(event).getX();
        } else if (action == 2 && Math.abs(event.getX() - this.mPrevX) > this.mTouchSlop) {
            return false;
        }
        return super.onInterceptTouchEvent(event);
    }
}
