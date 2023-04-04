package com.trustwallet.walletconnect;

import com.trustwallet.walletconnect.models.WCSignTransaction;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: WCClient.kt */
/* loaded from: classes4.dex */
final class WCClient$onSignTransaction$1 extends Lambda implements Function2<Long, WCSignTransaction, Unit> {
    public static final WCClient$onSignTransaction$1 INSTANCE = new WCClient$onSignTransaction$1();

    WCClient$onSignTransaction$1() {
        super(2);
    }

    public final void invoke(long j, WCSignTransaction wCSignTransaction) {
        Intrinsics.checkNotNullParameter(wCSignTransaction, "<anonymous parameter 1>");
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Unit invoke(Long l, WCSignTransaction wCSignTransaction) {
        invoke(l.longValue(), wCSignTransaction);
        return Unit.INSTANCE;
    }
}
