package com.smedialink.storage.data.manager.wallet_connect;

import com.trustwallet.walletconnect.WCSessionStoreItem;
import com.trustwallet.walletconnect.models.ethereum.WCEthereumTransaction;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletConnectManagerImpl.kt */
/* loaded from: classes3.dex */
public final class WalletConnectManagerImpl$setupClientListeners$1$5 extends Lambda implements Function2<Long, WCEthereumTransaction, Unit> {
    final /* synthetic */ WCSessionStoreItem $sessionStoreItem;
    final /* synthetic */ WalletConnectManagerImpl this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletConnectManagerImpl$setupClientListeners$1$5(WalletConnectManagerImpl walletConnectManagerImpl, WCSessionStoreItem wCSessionStoreItem) {
        super(2);
        this.this$0 = walletConnectManagerImpl;
        this.$sessionStoreItem = wCSessionStoreItem;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Unit invoke(Long l, WCEthereumTransaction wCEthereumTransaction) {
        invoke(l.longValue(), wCEthereumTransaction);
        return Unit.INSTANCE;
    }

    public final void invoke(long j, WCEthereumTransaction transaction) {
        Intrinsics.checkNotNullParameter(transaction, "transaction");
        this.this$0.onTransactionProcessing(j, this.$sessionStoreItem, transaction, true);
    }
}
