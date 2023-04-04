package com.trustwallet.walletconnect;

import com.trustwallet.walletconnect.models.binance.WCBinanceTradeOrder;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: WCClient.kt */
/* loaded from: classes4.dex */
final class WCClient$onBnbTrade$1 extends Lambda implements Function2<Long, WCBinanceTradeOrder, Unit> {
    public static final WCClient$onBnbTrade$1 INSTANCE = new WCClient$onBnbTrade$1();

    WCClient$onBnbTrade$1() {
        super(2);
    }

    public final void invoke(long j, WCBinanceTradeOrder wCBinanceTradeOrder) {
        Intrinsics.checkNotNullParameter(wCBinanceTradeOrder, "<anonymous parameter 1>");
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Unit invoke(Long l, WCBinanceTradeOrder wCBinanceTradeOrder) {
        invoke(l.longValue(), wCBinanceTradeOrder);
        return Unit.INSTANCE;
    }
}
