package com.trustwallet.walletconnect.models.binance;

import com.github.salomonbrys.kotson.SerializerArg;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.trustwallet.walletconnect.models.binance.WCBinanceTradeOrder;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: WCBinanceTradeOrder.kt */
/* loaded from: classes3.dex */
final class WCBinanceTradeOrderKt$tradeOrderSerializer$1 extends Lambda implements Function1<SerializerArg<WCBinanceTradeOrder.Message>, JsonElement> {
    public static final WCBinanceTradeOrderKt$tradeOrderSerializer$1 INSTANCE = new WCBinanceTradeOrderKt$tradeOrderSerializer$1();

    WCBinanceTradeOrderKt$tradeOrderSerializer$1() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final JsonElement invoke(SerializerArg<WCBinanceTradeOrder.Message> it) {
        Intrinsics.checkNotNullParameter(it, "it");
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty(WCBinanceTradeOrder.MessageKey.ID.getKey(), it.getSrc().getId());
        jsonObject.addProperty(WCBinanceTradeOrder.MessageKey.ORDER_TYPE.getKey(), Integer.valueOf(it.getSrc().getOrderType()));
        jsonObject.addProperty(WCBinanceTradeOrder.MessageKey.PRICE.getKey(), Long.valueOf(it.getSrc().getPrice()));
        jsonObject.addProperty(WCBinanceTradeOrder.MessageKey.QUANTITY.getKey(), Long.valueOf(it.getSrc().getQuantity()));
        jsonObject.addProperty(WCBinanceTradeOrder.MessageKey.SENDER.getKey(), it.getSrc().getSender());
        jsonObject.addProperty(WCBinanceTradeOrder.MessageKey.SIDE.getKey(), Integer.valueOf(it.getSrc().getSide()));
        jsonObject.addProperty(WCBinanceTradeOrder.MessageKey.SYMBOL.getKey(), it.getSrc().getSymbol());
        jsonObject.addProperty(WCBinanceTradeOrder.MessageKey.TIME_INFORCE.getKey(), Integer.valueOf(it.getSrc().getTimeInforce()));
        return jsonObject;
    }
}
