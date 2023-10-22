package com.iMe.utils.listeners;

import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.SnapHelper;
import com.iMe.utils.extentions.common.SnapHelperExtKt;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: SnapOnScrollListener.kt */
/* loaded from: classes4.dex */
public final class SnapOnScrollListener extends RecyclerView.OnScrollListener {
    private Behavior behavior;
    private OnSnapPositionChangeListener onSnapPositionChangeListener;
    private final SnapHelper snapHelper;
    private int snapPosition;

    /* compiled from: SnapOnScrollListener.kt */
    /* loaded from: classes4.dex */
    public enum Behavior {
        NOTIFY_ON_SCROLL,
        NOTIFY_ON_SCROLL_STATE_IDLE
    }

    public SnapOnScrollListener(SnapHelper snapHelper, Behavior behavior, OnSnapPositionChangeListener onSnapPositionChangeListener) {
        Intrinsics.checkNotNullParameter(snapHelper, "snapHelper");
        Intrinsics.checkNotNullParameter(behavior, "behavior");
        this.snapHelper = snapHelper;
        this.behavior = behavior;
        this.onSnapPositionChangeListener = onSnapPositionChangeListener;
        this.snapPosition = -1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
    public void onScrolled(RecyclerView recyclerView, int i, int i2) {
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        if (this.behavior == Behavior.NOTIFY_ON_SCROLL) {
            maybeNotifySnapPositionChange(recyclerView);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
    public void onScrollStateChanged(RecyclerView recyclerView, int i) {
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        if (this.behavior == Behavior.NOTIFY_ON_SCROLL_STATE_IDLE && i == 0) {
            maybeNotifySnapPositionChange(recyclerView);
        }
    }

    private final void maybeNotifySnapPositionChange(RecyclerView recyclerView) {
        int snapPosition = SnapHelperExtKt.getSnapPosition(this.snapHelper, recyclerView);
        if (this.snapPosition != snapPosition) {
            OnSnapPositionChangeListener onSnapPositionChangeListener = this.onSnapPositionChangeListener;
            if (onSnapPositionChangeListener != null) {
                onSnapPositionChangeListener.onSnapPositionChange(snapPosition);
            }
            this.snapPosition = snapPosition;
        }
    }
}
