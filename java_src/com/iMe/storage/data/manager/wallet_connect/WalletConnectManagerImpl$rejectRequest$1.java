package com.iMe.storage.data.manager.wallet_connect;

import com.trustwallet.walletconnect.WCClient;
import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* compiled from: WalletConnectManagerImpl.kt */
/* loaded from: classes3.dex */
final class WalletConnectManagerImpl$rejectRequest$1 extends Lambda implements Function0<Unit> {
    final /* synthetic */ long $requestId;
    final /* synthetic */ String $sessionKey;
    final /* synthetic */ WalletConnectManagerImpl this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletConnectManagerImpl$rejectRequest$1(WalletConnectManagerImpl walletConnectManagerImpl, String str, long j) {
        super(0);
        this.this$0 = walletConnectManagerImpl;
        this.$sessionKey = str;
        this.$requestId = j;
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() {
        invoke2();
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2() {
        Map map;
        map = this.this$0.wcClients;
        WCClient wCClient = (WCClient) map.get(this.$sessionKey);
        if (wCClient != null) {
            WCClient.rejectRequest$default(wCClient, this.$requestId, null, 2, null);
        }
    }
}
