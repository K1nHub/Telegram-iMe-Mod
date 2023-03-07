package com.trustwallet.walletconnect;

import com.trustwallet.walletconnect.models.binance.WCBinanceTxConfirmParam;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: WCClient.kt */
/* loaded from: classes3.dex */
final class WCClient$onBnbTxConfirm$1 extends Lambda implements Function2<Long, WCBinanceTxConfirmParam, Unit> {
    public static final WCClient$onBnbTxConfirm$1 INSTANCE = new WCClient$onBnbTxConfirm$1();

    WCClient$onBnbTxConfirm$1() {
        super(2);
    }

    public final void invoke(long j, WCBinanceTxConfirmParam wCBinanceTxConfirmParam) {
        Intrinsics.checkNotNullParameter(wCBinanceTxConfirmParam, "<anonymous parameter 1>");
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Unit invoke(Long l, WCBinanceTxConfirmParam wCBinanceTxConfirmParam) {
        invoke(l.longValue(), wCBinanceTxConfirmParam);
        return Unit.INSTANCE;
    }
}
