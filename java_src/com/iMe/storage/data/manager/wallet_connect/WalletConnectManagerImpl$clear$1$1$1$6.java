package com.iMe.storage.data.manager.wallet_connect;

import com.trustwallet.walletconnect.models.ethereum.WCEthereumTransaction;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: WalletConnectManagerImpl.kt */
/* loaded from: classes3.dex */
final class WalletConnectManagerImpl$clear$1$1$1$6 extends Lambda implements Function2<Long, WCEthereumTransaction, Unit> {
    public static final WalletConnectManagerImpl$clear$1$1$1$6 INSTANCE = new WalletConnectManagerImpl$clear$1$1$1$6();

    WalletConnectManagerImpl$clear$1$1$1$6() {
        super(2);
    }

    public final void invoke(long j, WCEthereumTransaction wCEthereumTransaction) {
        Intrinsics.checkNotNullParameter(wCEthereumTransaction, "<anonymous parameter 1>");
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Unit invoke(Long l, WCEthereumTransaction wCEthereumTransaction) {
        invoke(l.longValue(), wCEthereumTransaction);
        return Unit.INSTANCE;
    }
}