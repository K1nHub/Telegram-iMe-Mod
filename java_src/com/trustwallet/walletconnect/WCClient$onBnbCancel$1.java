package com.trustwallet.walletconnect;

import com.trustwallet.walletconnect.models.binance.WCBinanceCancelOrder;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: WCClient.kt */
/* loaded from: classes4.dex */
final class WCClient$onBnbCancel$1 extends Lambda implements Function2<Long, WCBinanceCancelOrder, Unit> {
    public static final WCClient$onBnbCancel$1 INSTANCE = new WCClient$onBnbCancel$1();

    WCClient$onBnbCancel$1() {
        super(2);
    }

    public final void invoke(long j, WCBinanceCancelOrder wCBinanceCancelOrder) {
        Intrinsics.checkNotNullParameter(wCBinanceCancelOrder, "<anonymous parameter 1>");
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Unit invoke(Long l, WCBinanceCancelOrder wCBinanceCancelOrder) {
        invoke(l.longValue(), wCBinanceCancelOrder);
        return Unit.INSTANCE;
    }
}
