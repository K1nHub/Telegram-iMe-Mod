package com.iMe.storage.data.manager.wallet_connect;

import com.trustwallet.walletconnect.models.WCPeerMeta;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: WalletConnectManagerImpl.kt */
/* loaded from: classes3.dex */
final class WalletConnectManagerImpl$clear$1$1$1$3 extends Lambda implements Function2<Long, WCPeerMeta, Unit> {
    public static final WalletConnectManagerImpl$clear$1$1$1$3 INSTANCE = new WalletConnectManagerImpl$clear$1$1$1$3();

    WalletConnectManagerImpl$clear$1$1$1$3() {
        super(2);
    }

    public final void invoke(long j, WCPeerMeta wCPeerMeta) {
        Intrinsics.checkNotNullParameter(wCPeerMeta, "<anonymous parameter 1>");
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Unit invoke(Long l, WCPeerMeta wCPeerMeta) {
        invoke(l.longValue(), wCPeerMeta);
        return Unit.INSTANCE;
    }
}
