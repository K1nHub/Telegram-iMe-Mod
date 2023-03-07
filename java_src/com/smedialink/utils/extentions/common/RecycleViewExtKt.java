package com.smedialink.utils.extentions.common;

import android.os.Parcelable;
import android.view.MotionEvent;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.SimpleItemAnimator;
import androidx.recyclerview.widget.SnapHelper;
import com.smedialink.utils.listeners.OnSnapPositionChangeListener;
import com.smedialink.utils.listeners.SnapOnScrollListener;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: RecycleViewExt.kt */
/* loaded from: classes3.dex */
public final class RecycleViewExtKt {
    public static final void restoreScrollState(LinearLayoutManager linearLayoutManager, Parcelable parcelable) {
        Intrinsics.checkNotNullParameter(linearLayoutManager, "<this>");
        if (parcelable != null) {
            linearLayoutManager.onRestoreInstanceState(parcelable);
        } else {
            linearLayoutManager.scrollToPosition(0);
        }
    }

    public static final void disableDefaultAnimation(RecyclerView recyclerView) {
        Intrinsics.checkNotNullParameter(recyclerView, "<this>");
        RecyclerView.ItemAnimator itemAnimator = recyclerView.getItemAnimator();
        SimpleItemAnimator simpleItemAnimator = itemAnimator instanceof SimpleItemAnimator ? (SimpleItemAnimator) itemAnimator : null;
        if (simpleItemAnimator == null) {
            return;
        }
        simpleItemAnimator.setSupportsChangeAnimations(false);
    }

    public static final boolean isLastItem(RecyclerView.ViewHolder viewHolder, RecyclerView.Adapter<?> adapter) {
        Intrinsics.checkNotNullParameter(viewHolder, "<this>");
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        return viewHolder.getAdapterPosition() == adapter.getItemCount() - 1;
    }

    public static /* synthetic */ void attachSnapHelperWithListener$default(RecyclerView recyclerView, SnapHelper snapHelper, SnapOnScrollListener.Behavior behavior, OnSnapPositionChangeListener onSnapPositionChangeListener, int i, Object obj) {
        if ((i & 2) != 0) {
            behavior = SnapOnScrollListener.Behavior.NOTIFY_ON_SCROLL_STATE_IDLE;
        }
        attachSnapHelperWithListener(recyclerView, snapHelper, behavior, onSnapPositionChangeListener);
    }

    public static final void attachSnapHelperWithListener(RecyclerView recyclerView, SnapHelper snapHelper, SnapOnScrollListener.Behavior behavior, OnSnapPositionChangeListener onSnapPositionChangeListener) {
        Intrinsics.checkNotNullParameter(recyclerView, "<this>");
        Intrinsics.checkNotNullParameter(snapHelper, "snapHelper");
        Intrinsics.checkNotNullParameter(behavior, "behavior");
        Intrinsics.checkNotNullParameter(onSnapPositionChangeListener, "onSnapPositionChangeListener");
        snapHelper.attachToRecyclerView(recyclerView);
        recyclerView.addOnScrollListener(new SnapOnScrollListener(snapHelper, behavior, onSnapPositionChangeListener));
    }

    public static final void preventScrollByParent(RecyclerView recyclerView) {
        Intrinsics.checkNotNullParameter(recyclerView, "<this>");
        recyclerView.addOnItemTouchListener(new RecyclerView.OnItemTouchListener() { // from class: com.smedialink.utils.extentions.common.RecycleViewExtKt$preventScrollByParent$1
            @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
            public void onRequestDisallowInterceptTouchEvent(boolean z) {
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
            public void onTouchEvent(RecyclerView rv, MotionEvent e) {
                Intrinsics.checkNotNullParameter(rv, "rv");
                Intrinsics.checkNotNullParameter(e, "e");
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
            public boolean onInterceptTouchEvent(RecyclerView rv, MotionEvent e) {
                Intrinsics.checkNotNullParameter(rv, "rv");
                Intrinsics.checkNotNullParameter(e, "e");
                if (e.getAction() == 0) {
                    rv.getParent().requestDisallowInterceptTouchEvent(true);
                    return false;
                }
                return false;
            }
        });
    }

    public static final void setHorizontalRecyclerInPagerScrollHelper(RecyclerView recyclerView) {
        Intrinsics.checkNotNullParameter(recyclerView, "<this>");
        recyclerView.addOnItemTouchListener(new RecyclerView.OnItemTouchListener() { // from class: com.smedialink.utils.extentions.common.RecycleViewExtKt$setHorizontalRecyclerInPagerScrollHelper$1
            private float lastX;
            private float lastY;

            @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
            public void onRequestDisallowInterceptTouchEvent(boolean z) {
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
            public void onTouchEvent(RecyclerView rv, MotionEvent e) {
                Intrinsics.checkNotNullParameter(rv, "rv");
                Intrinsics.checkNotNullParameter(e, "e");
            }

            /* JADX WARN: Code restructure failed: missing block: B:8:0x0018, code lost:
                if (r0 != 3) goto L8;
             */
            @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public boolean onInterceptTouchEvent(androidx.recyclerview.widget.RecyclerView r6, android.view.MotionEvent r7) {
                /*
                    r5 = this;
                    java.lang.String r0 = "rv"
                    kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r0)
                    java.lang.String r0 = "e"
                    kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r7, r0)
                    int r0 = r7.getAction()
                    r1 = 1
                    r2 = 0
                    if (r0 == 0) goto L8b
                    if (r0 == r1) goto L83
                    r3 = 2
                    if (r0 == r3) goto L1c
                    r7 = 3
                    if (r0 == r7) goto L83
                    goto L9e
                L1c:
                    float r0 = r7.getX()
                    float r3 = r5.lastX
                    int r0 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
                    if (r0 >= 0) goto L34
                    boolean r0 = r6.canScrollHorizontally(r1)
                    if (r0 != 0) goto L34
                    android.view.ViewParent r6 = r6.getParent()
                    r6.requestDisallowInterceptTouchEvent(r2)
                    goto L76
                L34:
                    float r0 = r7.getX()
                    float r3 = r5.lastX
                    int r0 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
                    if (r0 <= 0) goto L4d
                    r0 = -1
                    boolean r0 = r6.canScrollHorizontally(r0)
                    if (r0 != 0) goto L4d
                    android.view.ViewParent r6 = r6.getParent()
                    r6.requestDisallowInterceptTouchEvent(r2)
                    goto L76
                L4d:
                    float r0 = r7.getX()
                    float r3 = r5.lastX
                    float r0 = r0 - r3
                    float r0 = java.lang.Math.abs(r0)
                    float r3 = r7.getY()
                    float r4 = r5.lastY
                    float r3 = r3 - r4
                    float r3 = java.lang.Math.abs(r3)
                    int r0 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
                    if (r0 <= 0) goto L6f
                    android.view.ViewParent r6 = r6.getParent()
                    r6.requestDisallowInterceptTouchEvent(r1)
                    goto L76
                L6f:
                    android.view.ViewParent r6 = r6.getParent()
                    r6.requestDisallowInterceptTouchEvent(r2)
                L76:
                    float r6 = r7.getX()
                    r5.lastX = r6
                    float r6 = r7.getY()
                    r5.lastY = r6
                    goto L9e
                L83:
                    android.view.ViewParent r6 = r6.getParent()
                    r6.requestDisallowInterceptTouchEvent(r2)
                    goto L9e
                L8b:
                    float r0 = r7.getX()
                    r5.lastX = r0
                    float r7 = r7.getY()
                    r5.lastY = r7
                    android.view.ViewParent r6 = r6.getParent()
                    r6.requestDisallowInterceptTouchEvent(r1)
                L9e:
                    return r2
                */
                throw new UnsupportedOperationException("Method not decompiled: com.smedialink.utils.extentions.common.RecycleViewExtKt$setHorizontalRecyclerInPagerScrollHelper$1.onInterceptTouchEvent(androidx.recyclerview.widget.RecyclerView, android.view.MotionEvent):boolean");
            }
        });
    }
}
