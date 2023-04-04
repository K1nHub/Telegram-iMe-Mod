package com.trustwallet.walletconnect.models.binance;

import com.github.salomonbrys.kotson.DeserializerArg;
import com.github.salomonbrys.kotson.ElementKt;
import com.trustwallet.walletconnect.models.binance.WCBinanceTradeOrder;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: WCBinanceTradeOrder.kt */
/* loaded from: classes4.dex */
final class WCBinanceTradeOrderKt$tradeOrderDeserializer$1 extends Lambda implements Function1<DeserializerArg, WCBinanceTradeOrder.Message> {
    public static final WCBinanceTradeOrderKt$tradeOrderDeserializer$1 INSTANCE = new WCBinanceTradeOrderKt$tradeOrderDeserializer$1();

    WCBinanceTradeOrderKt$tradeOrderDeserializer$1() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final WCBinanceTradeOrder.Message invoke(DeserializerArg it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return new WCBinanceTradeOrder.Message(ElementKt.getString(ElementKt.get(it.getJson(), WCBinanceTradeOrder.MessageKey.ID.getKey())), ElementKt.getInt(ElementKt.get(it.getJson(), WCBinanceTradeOrder.MessageKey.ORDER_TYPE.getKey())), ElementKt.getLong(ElementKt.get(it.getJson(), WCBinanceTradeOrder.MessageKey.PRICE.getKey())), ElementKt.getLong(ElementKt.get(it.getJson(), WCBinanceTradeOrder.MessageKey.QUANTITY.getKey())), ElementKt.getString(ElementKt.get(it.getJson(), WCBinanceTradeOrder.MessageKey.SENDER.getKey())), ElementKt.getInt(ElementKt.get(it.getJson(), WCBinanceTradeOrder.MessageKey.SIDE.getKey())), ElementKt.getString(ElementKt.get(it.getJson(), WCBinanceTradeOrder.MessageKey.SYMBOL.getKey())), ElementKt.getInt(ElementKt.get(it.getJson(), WCBinanceTradeOrder.MessageKey.TIME_INFORCE.getKey())));
    }
}
