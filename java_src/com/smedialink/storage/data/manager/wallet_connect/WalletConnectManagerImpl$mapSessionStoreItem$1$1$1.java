package com.smedialink.storage.data.manager.wallet_connect;

import com.trustwallet.walletconnect.WCClient;
import com.trustwallet.walletconnect.WCSessionStoreItem;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletConnectManagerImpl.kt */
/* loaded from: classes3.dex */
public final class WalletConnectManagerImpl$mapSessionStoreItem$1$1$1 extends Lambda implements Function0<Unit> {
    final /* synthetic */ WCClient $it;
    final /* synthetic */ WCSessionStoreItem $this_with;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletConnectManagerImpl$mapSessionStoreItem$1$1$1(WCClient wCClient, WCSessionStoreItem wCSessionStoreItem) {
        super(0);
        this.$it = wCClient;
        this.$this_with = wCSessionStoreItem;
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() {
        invoke2();
        return Unit.INSTANCE;
    }

    @Override // kotlin.jvm.functions.Function0
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2() {
        this.$it.connect(this.$this_with.getSession(), this.$this_with.getRemotePeerMeta(), this.$this_with.getPeerId(), this.$this_with.getRemotePeerId());
    }
}
