package com.smedialink.p031ui.shop.view.custom;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import androidx.viewpager.widget.ViewPager;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: NonSwipeableViewPager.kt */
/* renamed from: com.smedialink.ui.shop.view.custom.NonSwipeableViewPager */
/* loaded from: classes3.dex */
public final class NonSwipeableViewPager extends ViewPager {
    @Override // androidx.viewpager.widget.ViewPager, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        return false;
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        return false;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NonSwipeableViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ NonSwipeableViewPager(Context context, AttributeSet attributeSet, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i & 2) != 0 ? null : attributeSet);
    }
}
