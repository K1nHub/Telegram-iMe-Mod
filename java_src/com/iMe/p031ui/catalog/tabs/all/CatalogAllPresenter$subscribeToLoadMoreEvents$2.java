package com.iMe.p031ui.catalog.tabs.all;

import io.reactivex.Observable;
import io.reactivex.observables.GroupedObservable;
import java.util.concurrent.TimeUnit;
import kotlin.Pair;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: CatalogAllPresenter.kt */
/* renamed from: com.iMe.ui.catalog.tabs.all.CatalogAllPresenter$subscribeToLoadMoreEvents$2 */
/* loaded from: classes3.dex */
final class CatalogAllPresenter$subscribeToLoadMoreEvents$2 extends Lambda implements Function1<GroupedObservable<String, Pair<? extends Long, ? extends String>>, Observable<Pair<? extends Long, ? extends String>>> {
    public static final CatalogAllPresenter$subscribeToLoadMoreEvents$2 INSTANCE = new CatalogAllPresenter$subscribeToLoadMoreEvents$2();

    CatalogAllPresenter$subscribeToLoadMoreEvents$2() {
        super(1);
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Observable<Pair<Long, String>> invoke2(GroupedObservable<String, Pair<Long, String>> it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return it.debounce(500L, TimeUnit.MILLISECONDS);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Observable<Pair<? extends Long, ? extends String>> invoke(GroupedObservable<String, Pair<? extends Long, ? extends String>> groupedObservable) {
        return invoke2((GroupedObservable<String, Pair<Long, String>>) groupedObservable);
    }
}
