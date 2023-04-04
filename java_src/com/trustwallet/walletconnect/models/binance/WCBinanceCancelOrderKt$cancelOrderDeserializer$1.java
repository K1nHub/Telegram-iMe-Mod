package com.trustwallet.walletconnect.models.binance;

import com.github.salomonbrys.kotson.DeserializerArg;
import com.github.salomonbrys.kotson.ElementKt;
import com.trustwallet.walletconnect.models.binance.WCBinanceCancelOrder;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: WCBinanceCancelOrder.kt */
/* loaded from: classes4.dex */
final class WCBinanceCancelOrderKt$cancelOrderDeserializer$1 extends Lambda implements Function1<DeserializerArg, WCBinanceCancelOrder.Message> {
    public static final WCBinanceCancelOrderKt$cancelOrderDeserializer$1 INSTANCE = new WCBinanceCancelOrderKt$cancelOrderDeserializer$1();

    WCBinanceCancelOrderKt$cancelOrderDeserializer$1() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final WCBinanceCancelOrder.Message invoke(DeserializerArg it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return new WCBinanceCancelOrder.Message(ElementKt.getString(ElementKt.get(it.getJson(), WCBinanceCancelOrder.MessageKey.REFID.getKey())), ElementKt.getString(ElementKt.get(it.getJson(), WCBinanceCancelOrder.MessageKey.SENDER.getKey())), ElementKt.getString(ElementKt.get(it.getJson(), WCBinanceCancelOrder.MessageKey.SYMBOL.getKey())));
    }
}
