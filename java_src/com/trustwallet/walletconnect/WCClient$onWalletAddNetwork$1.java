package com.trustwallet.walletconnect;

import com.trustwallet.walletconnect.models.session.WCAddNetwork;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: WCClient.kt */
/* loaded from: classes4.dex */
final class WCClient$onWalletAddNetwork$1 extends Lambda implements Function2<Long, WCAddNetwork, Unit> {
    public static final WCClient$onWalletAddNetwork$1 INSTANCE = new WCClient$onWalletAddNetwork$1();

    WCClient$onWalletAddNetwork$1() {
        super(2);
    }

    public final void invoke(long j, WCAddNetwork wCAddNetwork) {
        Intrinsics.checkNotNullParameter(wCAddNetwork, "<anonymous parameter 1>");
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Unit invoke(Long l, WCAddNetwork wCAddNetwork) {
        invoke(l.longValue(), wCAddNetwork);
        return Unit.INSTANCE;
    }
}
