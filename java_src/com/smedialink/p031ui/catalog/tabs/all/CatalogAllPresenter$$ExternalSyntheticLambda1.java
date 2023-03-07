package com.smedialink.p031ui.catalog.tabs.all;

import io.reactivex.Observable;
import io.reactivex.functions.Function;
import io.reactivex.observables.GroupedObservable;
/* renamed from: com.smedialink.ui.catalog.tabs.all.CatalogAllPresenter$$ExternalSyntheticLambda1 */
/* loaded from: classes3.dex */
public final /* synthetic */ class CatalogAllPresenter$$ExternalSyntheticLambda1 implements Function {
    public static final /* synthetic */ CatalogAllPresenter$$ExternalSyntheticLambda1 INSTANCE = new CatalogAllPresenter$$ExternalSyntheticLambda1();

    private /* synthetic */ CatalogAllPresenter$$ExternalSyntheticLambda1() {
    }

    @Override // io.reactivex.functions.Function
    public final Object apply(Object obj) {
        Observable m1423subscribeToLoadMoreEvents$lambda3;
        m1423subscribeToLoadMoreEvents$lambda3 = CatalogAllPresenter.m1423subscribeToLoadMoreEvents$lambda3((GroupedObservable) obj);
        return m1423subscribeToLoadMoreEvents$lambda3;
    }
}
