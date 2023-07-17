package com.iMe.fork.p024ui.view;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.p043ui.Components.ViewPagerFixed;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TabbedViewPager.kt */
/* renamed from: com.iMe.fork.ui.view.TabbedViewPager$tabsView$2 */
/* loaded from: classes3.dex */
public final class TabbedViewPager$tabsView$2 extends Lambda implements Function0<ViewPagerFixed.TabsView> {
    final /* synthetic */ TabbedViewPager this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TabbedViewPager$tabsView$2(TabbedViewPager tabbedViewPager) {
        super(0);
        this.this$0 = tabbedViewPager;
    }

    @Override // kotlin.jvm.functions.Function0
    public final ViewPagerFixed.TabsView invoke() {
        ViewPagerFixed.TabsView initTabsView;
        initTabsView = this.this$0.initTabsView();
        return initTabsView;
    }
}
