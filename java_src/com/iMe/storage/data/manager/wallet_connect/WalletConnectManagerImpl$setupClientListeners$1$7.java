package com.iMe.storage.data.manager.wallet_connect;

import com.iMe.storage.domain.model.crypto.Chain;
import com.iMe.storage.domain.model.crypto.NetworkType;
import com.trustwallet.walletconnect.WCClient;
import com.trustwallet.walletconnect.WCSessionStoreItem;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletConnectManagerImpl.kt */
/* loaded from: classes3.dex */
public final class WalletConnectManagerImpl$setupClientListeners$1$7 extends Lambda implements Function2<Long, Integer, Unit> {
    final /* synthetic */ WCSessionStoreItem $sessionStoreItem;
    final /* synthetic */ WCClient $this_with;
    final /* synthetic */ WalletConnectManagerImpl this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletConnectManagerImpl$setupClientListeners$1$7(WalletConnectManagerImpl walletConnectManagerImpl, WCClient wCClient, WCSessionStoreItem wCSessionStoreItem) {
        super(2);
        this.this$0 = walletConnectManagerImpl;
        this.$this_with = wCClient;
        this.$sessionStoreItem = wCSessionStoreItem;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Unit invoke(Long l, Integer num) {
        invoke(l.longValue(), num.intValue());
        return Unit.INSTANCE;
    }

    public final void invoke(long j, int i) {
        long j2 = i;
        if (Chain.Companion.getChainById(j2) instanceof Chain.Unknown) {
            this.this$0.getEventsDelegate().onWalletChangeUnsupportedNetwork();
            this.$this_with.rejectRequest(j, this.$sessionStoreItem.getSession().getKey());
            return;
        }
        this.this$0.getEventsDelegate().onWalletChangeNetwork(j, this.$sessionStoreItem, NetworkType.Companion.fromChainId(j2));
    }
}
