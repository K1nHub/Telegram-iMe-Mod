package com.iMe.fork.p024ui.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.google.android.material.appbar.AppBarLayout;
import com.iMe.fork.utils.AbstractTabbedViewPage;
import com.iMe.fork.utils.TabbedViewPagerDelegate;
import com.iMe.utils.extentions.common.ViewExtKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.databinding.ForkViewCollapsableHeaderPagerBinding;
import org.telegram.p043ui.Components.LayoutHelper;
/* compiled from: CollapsableHeaderTabbedViewPager.kt */
/* renamed from: com.iMe.fork.ui.view.CollapsableHeaderTabbedViewPager */
/* loaded from: classes3.dex */
public final class CollapsableHeaderTabbedViewPager extends TabbedViewPager {
    private ForkViewCollapsableHeaderPagerBinding binding;
    private AppBarLayout.OnOffsetChangedListener onOffsetChangedListener;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CollapsableHeaderTabbedViewPager(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ CollapsableHeaderTabbedViewPager(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CollapsableHeaderTabbedViewPager(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        ForkViewCollapsableHeaderPagerBinding inflate = ForkViewCollapsableHeaderPagerBinding.inflate(LayoutInflater.from(context));
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(LayoutInflater.from(context))");
        this.binding = inflate;
        addView(inflate.getRoot());
    }

    @Override // com.iMe.fork.p024ui.view.TabbedViewPager
    public <T extends AbstractTabbedViewPage> void init(TabbedViewPagerDelegate<T> delegate) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        setDelegate(delegate);
        ForkViewCollapsableHeaderPagerBinding forkViewCollapsableHeaderPagerBinding = this.binding;
        forkViewCollapsableHeaderPagerBinding.toolbar.getLayoutParams().height = AndroidUtilities.m72dp(44);
        forkViewCollapsableHeaderPagerBinding.frameTabsContainer.addView(getTabsView(), LayoutHelper.createFrame(-1, 44));
        View scrollableHeaderView = delegate.getScrollableHeaderView();
        if (scrollableHeaderView != null) {
            FrameLayout frameLayout = forkViewCollapsableHeaderPagerBinding.frameCollapsingContentContainer;
            if (scrollableHeaderView.getParent() != null) {
                ViewExtKt.removeSelfFromParent(scrollableHeaderView);
            }
            frameLayout.addView(scrollableHeaderView, LayoutHelper.createFrame(-1, -2, 48, 0, 44, 0, 0));
            frameLayout.setOnTouchListener(new View.OnTouchListener() { // from class: com.iMe.fork.ui.view.CollapsableHeaderTabbedViewPager$$ExternalSyntheticLambda0
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view, MotionEvent motionEvent) {
                    boolean init$lambda$2$lambda$1$lambda$0;
                    init$lambda$2$lambda$1$lambda$0 = CollapsableHeaderTabbedViewPager.init$lambda$2$lambda$1$lambda$0(CollapsableHeaderTabbedViewPager.this, view, motionEvent);
                    return init$lambda$2$lambda$1$lambda$0;
                }
            });
            forkViewCollapsableHeaderPagerBinding.framePagesContainer.addView(getPager(), LayoutHelper.createFrame(-1, -1.0f));
        }
        addSwipeToRefreshSupportIfNeeded();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean init$lambda$2$lambda$1$lambda$0(CollapsableHeaderTabbedViewPager this$0, View view, MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getPager().onTouchEvent(motionEvent);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        this.binding.appbar.removeOnOffsetChangedListener(this.onOffsetChangedListener);
        this.onOffsetChangedListener = null;
        super.onDetachedFromWindow();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        addSwipeToRefreshSupportIfNeeded();
    }

    private final void addSwipeToRefreshSupportIfNeeded() {
        if (this.onOffsetChangedListener != null) {
            return;
        }
        TabbedViewPagerDelegate<AbstractTabbedViewPage> delegate = getDelegate();
        final SwipeRefreshLayout swipeRefreshLayout = delegate != null ? delegate.getSwipeRefreshLayout() : null;
        if (swipeRefreshLayout != null) {
            AppBarLayout.OnOffsetChangedListener onOffsetChangedListener = new AppBarLayout.OnOffsetChangedListener() { // from class: com.iMe.fork.ui.view.CollapsableHeaderTabbedViewPager$$ExternalSyntheticLambda1
                @Override // com.google.android.material.appbar.AppBarLayout.BaseOnOffsetChangedListener
                public final void onOffsetChanged(AppBarLayout appBarLayout, int i) {
                    CollapsableHeaderTabbedViewPager.addSwipeToRefreshSupportIfNeeded$lambda$3(SwipeRefreshLayout.this, appBarLayout, i);
                }
            };
            this.binding.appbar.addOnOffsetChangedListener(onOffsetChangedListener);
            this.onOffsetChangedListener = onOffsetChangedListener;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void addSwipeToRefreshSupportIfNeeded$lambda$3(SwipeRefreshLayout swipeRefreshLayout, AppBarLayout appBarLayout, int i) {
        swipeRefreshLayout.setEnabled(i == 0);
    }
}
