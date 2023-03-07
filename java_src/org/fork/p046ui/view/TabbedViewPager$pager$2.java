package org.fork.p046ui.view;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TabbedViewPager.kt */
/* renamed from: org.fork.ui.view.TabbedViewPager$pager$2 */
/* loaded from: classes4.dex */
public final class TabbedViewPager$pager$2 extends Lambda implements Function0<TabbedViewPager$initPager$1> {
    final /* synthetic */ TabbedViewPager this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TabbedViewPager$pager$2(TabbedViewPager tabbedViewPager) {
        super(0);
        this.this$0 = tabbedViewPager;
    }

    @Override // kotlin.jvm.functions.Function0
    public final TabbedViewPager$initPager$1 invoke() {
        TabbedViewPager$initPager$1 initPager;
        initPager = this.this$0.initPager();
        return initPager;
    }
}
