package com.smedialink.p031ui.catalog.tabs.all;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CatalogAllFragment.kt */
/* renamed from: com.smedialink.ui.catalog.tabs.all.CatalogAllFragment$setupLoadMore$1$1 */
/* loaded from: classes3.dex */
public final class CatalogAllFragment$setupLoadMore$1$1 extends Lambda implements Function1<Long, Unit> {
    final /* synthetic */ CatalogAllFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CatalogAllFragment$setupLoadMore$1$1(CatalogAllFragment catalogAllFragment) {
        super(1);
        this.this$0 = catalogAllFragment;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Long l) {
        invoke(l.longValue());
        return Unit.INSTANCE;
    }

    public final void invoke(long j) {
        CatalogAllPresenter presenter;
        presenter = this.this$0.getPresenter();
        presenter.onChannelLoadMore(j);
    }
}
