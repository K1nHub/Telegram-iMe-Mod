package com.trustwallet.walletconnect.models.binance;

import com.github.salomonbrys.kotson.GsonBuilderKt;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonSerializer;
import com.trustwallet.walletconnect.models.binance.WCBinanceCancelOrder;
/* compiled from: WCBinanceCancelOrder.kt */
/* loaded from: classes4.dex */
public final class WCBinanceCancelOrderKt {
    private static final JsonDeserializer<WCBinanceCancelOrder.Message> cancelOrderDeserializer = GsonBuilderKt.jsonDeserializer(WCBinanceCancelOrderKt$cancelOrderDeserializer$1.INSTANCE);
    private static final JsonSerializer<WCBinanceCancelOrder.Message> cancelOrderSerializer = GsonBuilderKt.jsonSerializer(WCBinanceCancelOrderKt$cancelOrderSerializer$1.INSTANCE);

    public static final JsonDeserializer<WCBinanceCancelOrder.Message> getCancelOrderDeserializer() {
        return cancelOrderDeserializer;
    }

    public static final JsonSerializer<WCBinanceCancelOrder.Message> getCancelOrderSerializer() {
        return cancelOrderSerializer;
    }
}
