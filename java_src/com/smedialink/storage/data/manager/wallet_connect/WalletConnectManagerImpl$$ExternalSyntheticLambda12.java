package com.smedialink.storage.data.manager.wallet_connect;

import io.reactivex.Observable;
import io.reactivex.functions.Function;
import io.reactivex.observables.GroupedObservable;
/* loaded from: classes3.dex */
public final /* synthetic */ class WalletConnectManagerImpl$$ExternalSyntheticLambda12 implements Function {
    public static final /* synthetic */ WalletConnectManagerImpl$$ExternalSyntheticLambda12 INSTANCE = new WalletConnectManagerImpl$$ExternalSyntheticLambda12();

    private /* synthetic */ WalletConnectManagerImpl$$ExternalSyntheticLambda12() {
    }

    @Override // io.reactivex.functions.Function
    public final Object apply(Object obj) {
        Observable m1347subscribeToErrors$lambda17;
        m1347subscribeToErrors$lambda17 = WalletConnectManagerImpl.m1347subscribeToErrors$lambda17((GroupedObservable) obj);
        return m1347subscribeToErrors$lambda17;
    }
}
