package com.iMe.storage.data.manager.wallet_connect;

import io.reactivex.Observable;
import io.reactivex.observables.GroupedObservable;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletConnectManagerImpl.kt */
/* loaded from: classes3.dex */
public final class WalletConnectManagerImpl$subscribeToErrors$2 extends Lambda implements Function1<GroupedObservable<Class<Throwable>, Throwable>, Observable<Throwable>> {
    public static final WalletConnectManagerImpl$subscribeToErrors$2 INSTANCE = new WalletConnectManagerImpl$subscribeToErrors$2();

    WalletConnectManagerImpl$subscribeToErrors$2() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Observable<Throwable> invoke(GroupedObservable<Class<Throwable>, Throwable> it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return it.debounce(1L, TimeUnit.SECONDS);
    }
}
