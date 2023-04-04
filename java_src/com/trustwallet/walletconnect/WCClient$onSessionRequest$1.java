package com.trustwallet.walletconnect;

import com.trustwallet.walletconnect.models.WCPeerMeta;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: WCClient.kt */
/* loaded from: classes4.dex */
final class WCClient$onSessionRequest$1 extends Lambda implements Function2<Long, WCPeerMeta, Unit> {
    public static final WCClient$onSessionRequest$1 INSTANCE = new WCClient$onSessionRequest$1();

    WCClient$onSessionRequest$1() {
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
