package com.smedialink.storage.data.manager.wallet_connect;

import com.smedialink.storage.domain.model.crypto.Wallet;
import com.smedialink.storage.domain.storage.CryptoPreferenceHelper;
import com.trustwallet.walletconnect.WCClient;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletConnectManagerImpl.kt */
/* loaded from: classes3.dex */
public final class WalletConnectManagerImpl$onSessionRequest$1 extends Lambda implements Function0<Unit> {
    final /* synthetic */ WCClient $client;
    final /* synthetic */ WalletConnectManagerImpl this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletConnectManagerImpl$onSessionRequest$1(WCClient wCClient, WalletConnectManagerImpl walletConnectManagerImpl) {
        super(0);
        this.$client = wCClient;
        this.this$0 = walletConnectManagerImpl;
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() {
        invoke2();
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2() {
        Wallet.EVM wallet;
        List<String> listOf;
        CryptoPreferenceHelper cryptoPreferenceHelper;
        WCClient wCClient = this.$client;
        wallet = this.this$0.getWallet();
        String address = wallet != null ? wallet.getAddress() : null;
        if (address == null) {
            address = "";
        }
        listOf = CollectionsKt__CollectionsJVMKt.listOf(address);
        cryptoPreferenceHelper = this.this$0.cryptoPreferenceHelper;
        wCClient.approveSession(listOf, (int) cryptoPreferenceHelper.getNetworkType().getChainId());
    }
}
