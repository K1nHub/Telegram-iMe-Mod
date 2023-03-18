package com.smedialink.storage.data.manager.wallet_connect;

import com.trustwallet.walletconnect.WCClient;
import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletConnectManagerImpl.kt */
/* loaded from: classes3.dex */
public final class WalletConnectManagerImpl$approveRequest$1 extends Lambda implements Function0<Unit> {
    final /* synthetic */ long $requestId;
    final /* synthetic */ T $result;
    final /* synthetic */ String $sessionKey;
    final /* synthetic */ WalletConnectManagerImpl this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletConnectManagerImpl$approveRequest$1(WalletConnectManagerImpl walletConnectManagerImpl, String str, long j, T t) {
        super(0);
        this.this$0 = walletConnectManagerImpl;
        this.$sessionKey = str;
        this.$requestId = j;
        this.$result = t;
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
            wCClient.approveRequest(this.$requestId, this.$result);
        }
    }
}
