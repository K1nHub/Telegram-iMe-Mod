package com.trustwallet.walletconnect.models.binance;

import com.github.salomonbrys.kotson.DeserializerArg;
import com.github.salomonbrys.kotson.ElementKt;
import com.github.salomonbrys.kotson.GsonBuilderKt;
import com.github.salomonbrys.kotson.SerializerArg;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonSerializer;
import com.trustwallet.walletconnect.models.binance.WCBinanceTradeOrder;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: WCBinanceTradeOrder.kt */
/* loaded from: classes6.dex */
public final class WCBinanceTradeOrderKt {
    private static final JsonDeserializer<WCBinanceTradeOrder.Message> tradeOrderDeserializer = GsonBuilderKt.jsonDeserializer(new Function1<DeserializerArg, WCBinanceTradeOrder.Message>() { // from class: com.trustwallet.walletconnect.models.binance.WCBinanceTradeOrderKt$tradeOrderDeserializer$1
        @Override // kotlin.jvm.functions.Function1
        public final WCBinanceTradeOrder.Message invoke(DeserializerArg it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return new WCBinanceTradeOrder.Message(ElementKt.getString(ElementKt.get(it.getJson(), WCBinanceTradeOrder.MessageKey.ID.getKey())), ElementKt.getInt(ElementKt.get(it.getJson(), WCBinanceTradeOrder.MessageKey.ORDER_TYPE.getKey())), ElementKt.getLong(ElementKt.get(it.getJson(), WCBinanceTradeOrder.MessageKey.PRICE.getKey())), ElementKt.getLong(ElementKt.get(it.getJson(), WCBinanceTradeOrder.MessageKey.QUANTITY.getKey())), ElementKt.getString(ElementKt.get(it.getJson(), WCBinanceTradeOrder.MessageKey.SENDER.getKey())), ElementKt.getInt(ElementKt.get(it.getJson(), WCBinanceTradeOrder.MessageKey.SIDE.getKey())), ElementKt.getString(ElementKt.get(it.getJson(), WCBinanceTradeOrder.MessageKey.SYMBOL.getKey())), ElementKt.getInt(ElementKt.get(it.getJson(), WCBinanceTradeOrder.MessageKey.TIME_INFORCE.getKey())));
        }
    });
    private static final JsonSerializer<WCBinanceTradeOrder.Message> tradeOrderSerializer = GsonBuilderKt.jsonSerializer(new Function1<SerializerArg<WCBinanceTradeOrder.Message>, JsonElement>() { // from class: com.trustwallet.walletconnect.models.binance.WCBinanceTradeOrderKt$tradeOrderSerializer$1
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
    });

    public static final JsonDeserializer<WCBinanceTradeOrder.Message> getTradeOrderDeserializer() {
        return tradeOrderDeserializer;
    }

    public static final JsonSerializer<WCBinanceTradeOrder.Message> getTradeOrderSerializer() {
        return tradeOrderSerializer;
    }
}
