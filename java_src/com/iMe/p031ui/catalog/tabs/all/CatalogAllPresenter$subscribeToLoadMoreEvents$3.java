package com.iMe.p031ui.catalog.tabs.all;

import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CatalogAllPresenter.kt */
/* renamed from: com.iMe.ui.catalog.tabs.all.CatalogAllPresenter$subscribeToLoadMoreEvents$3 */
/* loaded from: classes.dex */
public final class CatalogAllPresenter$subscribeToLoadMoreEvents$3 extends Lambda implements Function1<Pair<? extends Long, ? extends String>, Unit> {
    final /* synthetic */ CatalogAllPresenter this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CatalogAllPresenter$subscribeToLoadMoreEvents$3(CatalogAllPresenter catalogAllPresenter) {
        super(1);
        this.this$0 = catalogAllPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Pair<? extends Long, ? extends String> pair) {
        invoke2((Pair<Long, String>) pair);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(Pair<Long, String> pair) {
        this.this$0.loadMoreChannels(pair.getFirst().longValue(), pair.getSecond());
    }
}
