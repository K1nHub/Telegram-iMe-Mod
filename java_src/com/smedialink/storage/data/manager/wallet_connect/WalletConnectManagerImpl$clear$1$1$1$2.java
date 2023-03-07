package com.smedialink.storage.data.manager.wallet_connect;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: WalletConnectManagerImpl.kt */
/* loaded from: classes3.dex */
final class WalletConnectManagerImpl$clear$1$1$1$2 extends Lambda implements Function1<Throwable, Unit> {
    public static final WalletConnectManagerImpl$clear$1$1$1$2 INSTANCE = new WalletConnectManagerImpl$clear$1$1$1$2();

    WalletConnectManagerImpl$clear$1$1$1$2() {
        super(1);
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(Throwable it) {
        Intrinsics.checkNotNullParameter(it, "it");
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
        invoke2(th);
        return Unit.INSTANCE;
    }
}
