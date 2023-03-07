package com.smedialink.storage.data.manager.wallet_connect;

import com.trustwallet.walletconnect.WCClient;
import com.trustwallet.walletconnect.models.WCPeerMeta;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletConnectManagerImpl.kt */
/* loaded from: classes3.dex */
public final class WalletConnectManagerImpl$setupClientListeners$1$3 extends Lambda implements Function2<Long, WCPeerMeta, Unit> {
    final /* synthetic */ WCClient $this_with;
    final /* synthetic */ WalletConnectManagerImpl this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletConnectManagerImpl$setupClientListeners$1$3(WalletConnectManagerImpl walletConnectManagerImpl, WCClient wCClient) {
        super(2);
        this.this$0 = walletConnectManagerImpl;
        this.$this_with = wCClient;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Unit invoke(Long l, WCPeerMeta wCPeerMeta) {
        invoke(l.longValue(), wCPeerMeta);
        return Unit.INSTANCE;
    }

    public final void invoke(long j, WCPeerMeta peerMeta) {
        Intrinsics.checkNotNullParameter(peerMeta, "peerMeta");
        this.this$0.onSessionRequest(this.$this_with, peerMeta);
    }
}
