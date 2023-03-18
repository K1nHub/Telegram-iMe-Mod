package com.smedialink.storage.data.manager.wallet_connect;

import com.trustwallet.walletconnect.WCClient;
import com.trustwallet.walletconnect.WCSessionStoreItem;
import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* compiled from: WalletConnectManagerImpl.kt */
/* loaded from: classes3.dex */
final class WalletConnectManagerImpl$rejectNewSession$1 extends Lambda implements Function0<Unit> {
    final /* synthetic */ WCSessionStoreItem $sessionItem;
    final /* synthetic */ WalletConnectManagerImpl this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletConnectManagerImpl$rejectNewSession$1(WalletConnectManagerImpl walletConnectManagerImpl, WCSessionStoreItem wCSessionStoreItem) {
        super(0);
        this.this$0 = walletConnectManagerImpl;
        this.$sessionItem = wCSessionStoreItem;
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() {
        invoke2();
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2() {
        Map map;
        Map map2;
        map = this.this$0.wcClients;
        WCClient wCClient = (WCClient) map.get(this.$sessionItem.getSession().getKey());
        if (wCClient != null) {
            WCClient.rejectSession$default(wCClient, null, 1, null);
            wCClient.disconnect();
        }
        map2 = this.this$0.wcClients;
        map2.remove(this.$sessionItem.getSession().getKey());
        this.this$0.pendingSessionStoreItem = null;
    }
}
