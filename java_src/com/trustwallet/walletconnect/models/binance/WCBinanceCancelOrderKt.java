package com.trustwallet.walletconnect.models.binance;

import com.github.salomonbrys.kotson.DeserializerArg;
import com.github.salomonbrys.kotson.ElementKt;
import com.github.salomonbrys.kotson.GsonBuilderKt;
import com.github.salomonbrys.kotson.SerializerArg;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonSerializer;
import com.trustwallet.walletconnect.models.binance.WCBinanceCancelOrder;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: WCBinanceCancelOrder.kt */
/* loaded from: classes6.dex */
public final class WCBinanceCancelOrderKt {
    private static final JsonDeserializer<WCBinanceCancelOrder.Message> cancelOrderDeserializer = GsonBuilderKt.jsonDeserializer(new Function1<DeserializerArg, WCBinanceCancelOrder.Message>() { // from class: com.trustwallet.walletconnect.models.binance.WCBinanceCancelOrderKt$cancelOrderDeserializer$1
        @Override // kotlin.jvm.functions.Function1
        public final WCBinanceCancelOrder.Message invoke(DeserializerArg it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return new WCBinanceCancelOrder.Message(ElementKt.getString(ElementKt.get(it.getJson(), WCBinanceCancelOrder.MessageKey.REFID.getKey())), ElementKt.getString(ElementKt.get(it.getJson(), WCBinanceCancelOrder.MessageKey.SENDER.getKey())), ElementKt.getString(ElementKt.get(it.getJson(), WCBinanceCancelOrder.MessageKey.SYMBOL.getKey())));
        }
    });
    private static final JsonSerializer<WCBinanceCancelOrder.Message> cancelOrderSerializer = GsonBuilderKt.jsonSerializer(new Function1<SerializerArg<WCBinanceCancelOrder.Message>, JsonElement>() { // from class: com.trustwallet.walletconnect.models.binance.WCBinanceCancelOrderKt$cancelOrderSerializer$1
        @Override // kotlin.jvm.functions.Function1
        public final JsonElement invoke(SerializerArg<WCBinanceCancelOrder.Message> it) {
            Intrinsics.checkNotNullParameter(it, "it");
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("refid", it.getSrc().getRefid());
            jsonObject.addProperty("sender", it.getSrc().getSender());
            jsonObject.addProperty("symbol", it.getSrc().getSymbol());
            return jsonObject;
        }
    });

    public static final JsonDeserializer<WCBinanceCancelOrder.Message> getCancelOrderDeserializer() {
        return cancelOrderDeserializer;
    }

    public static final JsonSerializer<WCBinanceCancelOrder.Message> getCancelOrderSerializer() {
        return cancelOrderSerializer;
    }
}
