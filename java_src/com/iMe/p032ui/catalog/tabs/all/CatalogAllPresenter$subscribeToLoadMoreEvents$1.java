package com.iMe.p032ui.catalog.tabs.all;

import kotlin.Pair;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: CatalogAllPresenter.kt */
/* renamed from: com.iMe.ui.catalog.tabs.all.CatalogAllPresenter$subscribeToLoadMoreEvents$1 */
/* loaded from: classes3.dex */
final class CatalogAllPresenter$subscribeToLoadMoreEvents$1 extends Lambda implements Function1<Pair<? extends Long, ? extends String>, String> {
    public static final CatalogAllPresenter$subscribeToLoadMoreEvents$1 INSTANCE = new CatalogAllPresenter$subscribeToLoadMoreEvents$1();

    CatalogAllPresenter$subscribeToLoadMoreEvents$1() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ String invoke(Pair<? extends Long, ? extends String> pair) {
        return invoke2((Pair<Long, String>) pair);
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final String invoke2(Pair<Long, String> it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return it.getSecond();
    }
}
