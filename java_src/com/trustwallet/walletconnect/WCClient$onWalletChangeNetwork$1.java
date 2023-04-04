package com.trustwallet.walletconnect;

import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;
/* compiled from: WCClient.kt */
/* loaded from: classes4.dex */
final class WCClient$onWalletChangeNetwork$1 extends Lambda implements Function2<Long, Integer, Unit> {
    public static final WCClient$onWalletChangeNetwork$1 INSTANCE = new WCClient$onWalletChangeNetwork$1();

    WCClient$onWalletChangeNetwork$1() {
        super(2);
    }

    public final void invoke(long j, int i) {
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Unit invoke(Long l, Integer num) {
        invoke(l.longValue(), num.intValue());
        return Unit.INSTANCE;
    }
}
