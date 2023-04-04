package com.trustwallet.walletconnect;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
/* compiled from: WCClient.kt */
/* loaded from: classes4.dex */
final class WCClient$onGetAccounts$1 extends Lambda implements Function1<Long, Unit> {
    public static final WCClient$onGetAccounts$1 INSTANCE = new WCClient$onGetAccounts$1();

    WCClient$onGetAccounts$1() {
        super(1);
    }

    public final void invoke(long j) {
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Long l) {
        invoke(l.longValue());
        return Unit.INSTANCE;
    }
}
