package com.iMe.fork.p024ui.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import com.iMe.fork.utils.AbstractTabbedViewPage;
import com.iMe.fork.utils.TabbedViewPagerDelegate;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.ActionBar.ThemeDescription;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.ViewPagerFixed;
/* compiled from: TabbedViewPager.kt */
/* renamed from: com.iMe.fork.ui.view.TabbedViewPager */
/* loaded from: classes3.dex */
public class TabbedViewPager extends FrameLayout {
    private TabbedViewPagerDelegate<AbstractTabbedViewPage> delegate;
    private final Lazy pager$delegate;
    private ViewPagerFixed.TabsView.TabType tabsType;
    private final Lazy tabsView$delegate;

    static {
        new Companion(null);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public TabbedViewPager(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ TabbedViewPager(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TabbedViewPager(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Lazy lazy;
        Lazy lazy2;
        Intrinsics.checkNotNullParameter(context, "context");
        lazy = LazyKt__LazyJVMKt.lazy(new TabbedViewPager$tabsView$2(this));
        this.tabsView$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new TabbedViewPager$pager$2(this));
        this.pager$delegate = lazy2;
        this.tabsType = ViewPagerFixed.TabsView.TabType.TITLE_WITH_ICON;
    }

    public final ViewPagerFixed.TabsView getTabsView() {
        Object value = this.tabsView$delegate.getValue();
        Intrinsics.checkNotNullExpressionValue(value, "<get-tabsView>(...)");
        return (ViewPagerFixed.TabsView) value;
    }

    public final ViewPagerFixed getPager() {
        return (ViewPagerFixed) this.pager$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final TabbedViewPagerDelegate<AbstractTabbedViewPage> getDelegate() {
        return this.delegate;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void setDelegate(TabbedViewPagerDelegate<AbstractTabbedViewPage> tabbedViewPagerDelegate) {
        this.delegate = tabbedViewPagerDelegate;
    }

    public final <T extends AbstractTabbedViewPage> void init(TabbedViewPagerDelegate<T> delegate, ViewPagerFixed.TabsView.TabType tabsType) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        Intrinsics.checkNotNullParameter(tabsType, "tabsType");
        this.tabsType = tabsType;
        init(delegate);
    }

    public final boolean isSwipeBackEnabled() {
        return this.delegate != null && getTabsView().getCurrentTabId() == getTabsView().getFirstTabId();
    }

    public final List<ThemeDescription> getThemeDescription() {
        ArrayList arrayListOf;
        List<ThemeDescription> emptyList;
        if (this.delegate == null) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(getPager(), ThemeDescription.FLAG_BACKGROUND, null, null, null, null, Theme.key_windowBackgroundGray), new ThemeDescription(getTabsView(), ThemeDescription.FLAG_BACKGROUND, null, null, null, new ThemeDescription.ThemeDescriptionDelegate() { // from class: com.iMe.fork.ui.view.TabbedViewPager$$ExternalSyntheticLambda0
            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                TabbedViewPager.getThemeDescription$lambda$0(TabbedViewPager.this);
            }

            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        }, getTabsView().getBackgroundColorKey()));
        return arrayListOf;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getThemeDescription$lambda$0(TabbedViewPager this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getTabsView().updateColors();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r1v0, types: [org.telegram.ui.Components.ViewPagerFixed, com.iMe.fork.ui.view.TabbedViewPager$initPager$1] */
    public final TabbedViewPager$initPager$1 initPager() {
        final Context context = getContext();
        ?? r1 = new ViewPagerFixed(context) { // from class: com.iMe.fork.ui.view.TabbedViewPager$initPager$1
            @Override // org.telegram.p043ui.Components.ViewPagerFixed
            protected void onItemSelected(View view, View view2, int i, int i2) {
                TabbedViewPagerDelegate<AbstractTabbedViewPage> delegate = TabbedViewPager.this.getDelegate();
                Intrinsics.checkNotNull(delegate);
                TabbedViewPagerDelegate<AbstractTabbedViewPage> delegate2 = TabbedViewPager.this.getDelegate();
                Intrinsics.checkNotNull(delegate2);
                TabbedViewPagerDelegate<AbstractTabbedViewPage> delegate3 = TabbedViewPager.this.getDelegate();
                Intrinsics.checkNotNull(delegate3);
                delegate.onPageChanged(delegate2.getPages().get(i), delegate3.getPages().get(i2), i, i2);
            }
        };
        r1.setAdapter(new ViewPagerFixed.Adapter() { // from class: com.iMe.fork.ui.view.TabbedViewPager$initPager$2$1
            @Override // org.telegram.p043ui.Components.ViewPagerFixed.Adapter
            public int getItemViewType(int i) {
                return i;
            }

            @Override // org.telegram.p043ui.Components.ViewPagerFixed.Adapter
            public int getItemIcon(int i) {
                TabbedViewPagerDelegate<AbstractTabbedViewPage> delegate = TabbedViewPager.this.getDelegate();
                Intrinsics.checkNotNull(delegate);
                return delegate.getPages().get(i).getIcon();
            }

            @Override // org.telegram.p043ui.Components.ViewPagerFixed.Adapter
            public String getItemTitle(int i) {
                TabbedViewPagerDelegate<AbstractTabbedViewPage> delegate = TabbedViewPager.this.getDelegate();
                Intrinsics.checkNotNull(delegate);
                return delegate.getPages().get(i).getTitle();
            }

            @Override // org.telegram.p043ui.Components.ViewPagerFixed.Adapter
            public int getItemCount() {
                TabbedViewPagerDelegate<AbstractTabbedViewPage> delegate = TabbedViewPager.this.getDelegate();
                Intrinsics.checkNotNull(delegate);
                return delegate.getPages().size();
            }

            @Override // org.telegram.p043ui.Components.ViewPagerFixed.Adapter
            public View createView(int i) {
                TabbedViewPagerDelegate<AbstractTabbedViewPage> delegate = TabbedViewPager.this.getDelegate();
                Intrinsics.checkNotNull(delegate);
                return delegate.getPages().get(i).getView();
            }

            @Override // org.telegram.p043ui.Components.ViewPagerFixed.Adapter
            public void bindView(View view, int i, int i2) {
                Intrinsics.checkNotNullParameter(view, "view");
                TabbedViewPagerDelegate<AbstractTabbedViewPage> delegate = TabbedViewPager.this.getDelegate();
                Intrinsics.checkNotNull(delegate);
                TabbedViewPagerDelegate<AbstractTabbedViewPage> delegate2 = TabbedViewPager.this.getDelegate();
                Intrinsics.checkNotNull(delegate2);
                delegate.bind(delegate2.getPages().get(i), i);
            }
        });
        return r1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ViewPagerFixed.TabsView initTabsView() {
        return getPager().createTabsView(false, 8, this.tabsType);
    }

    public <T extends AbstractTabbedViewPage> void init(TabbedViewPagerDelegate<T> delegate) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        this.delegate = delegate;
        removeAllViews();
        addView(getPager(), LayoutHelper.createFrame(-1, -1, 48, 0, 44, 0, 0));
        addView(getTabsView(), LayoutHelper.createFrame(-1, 44));
    }

    /* compiled from: TabbedViewPager.kt */
    /* renamed from: com.iMe.fork.ui.view.TabbedViewPager$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
