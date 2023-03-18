package com.smedialink.storage.data.manager.wallet_connect;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: WalletConnectManagerImpl.kt */
/* loaded from: classes3.dex */
final class WalletConnectManagerImpl$subscribeToErrors$1 extends Lambda implements Function1<Throwable, Class<Throwable>> {
    public static final WalletConnectManagerImpl$subscribeToErrors$1 INSTANCE = new WalletConnectManagerImpl$subscribeToErrors$1();

    WalletConnectManagerImpl$subscribeToErrors$1() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Class<Throwable> invoke(Throwable it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return it.getClass();
    }
}
