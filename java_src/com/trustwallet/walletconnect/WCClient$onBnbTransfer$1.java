package com.trustwallet.walletconnect;

import com.trustwallet.walletconnect.models.binance.WCBinanceTransferOrder;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: WCClient.kt */
/* loaded from: classes3.dex */
final class WCClient$onBnbTransfer$1 extends Lambda implements Function2<Long, WCBinanceTransferOrder, Unit> {
    public static final WCClient$onBnbTransfer$1 INSTANCE = new WCClient$onBnbTransfer$1();

    WCClient$onBnbTransfer$1() {
        super(2);
    }

    public final void invoke(long j, WCBinanceTransferOrder wCBinanceTransferOrder) {
        Intrinsics.checkNotNullParameter(wCBinanceTransferOrder, "<anonymous parameter 1>");
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Unit invoke(Long l, WCBinanceTransferOrder wCBinanceTransferOrder) {
        invoke(l.longValue(), wCBinanceTransferOrder);
        return Unit.INSTANCE;
    }
}
