package com.smedialink.storage.data.manager.wallet_connect;

import com.smedialink.storage.domain.model.crypto.Wallet;
import com.smedialink.storage.domain.storage.CryptoPreferenceHelper;
import com.trustwallet.walletconnect.WCClient;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletConnectManagerImpl.kt */
/* loaded from: classes3.dex */
public final class WalletConnectManagerImpl$updateSessionsChain$1 extends Lambda implements Function0<Unit> {
    final /* synthetic */ WalletConnectManagerImpl this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletConnectManagerImpl$updateSessionsChain$1(WalletConnectManagerImpl walletConnectManagerImpl) {
        super(0);
        this.this$0 = walletConnectManagerImpl;
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() {
        invoke2();
        return Unit.INSTANCE;
    }

    @Override // kotlin.jvm.functions.Function0
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2() {
        Map map;
        Wallet.EVM wallet;
        List<String> listOf;
        CryptoPreferenceHelper cryptoPreferenceHelper;
        map = this.this$0.wcClients;
        Collection<WCClient> values = map.values();
        WalletConnectManagerImpl walletConnectManagerImpl = this.this$0;
        for (WCClient wCClient : values) {
            wallet = walletConnectManagerImpl.getWallet();
            String address = wallet == null ? null : wallet.getAddress();
            if (address == null) {
                address = "";
            }
            listOf = CollectionsKt__CollectionsJVMKt.listOf(address);
            cryptoPreferenceHelper = walletConnectManagerImpl.cryptoPreferenceHelper;
            wCClient.updateSession(listOf, Integer.valueOf((int) cryptoPreferenceHelper.getNetworkType().getChainId()), true);
        }
    }
}
