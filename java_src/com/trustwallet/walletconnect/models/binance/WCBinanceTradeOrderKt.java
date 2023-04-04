package com.trustwallet.walletconnect.models.binance;

import com.github.salomonbrys.kotson.GsonBuilderKt;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonSerializer;
import com.trustwallet.walletconnect.models.binance.WCBinanceTradeOrder;
/* compiled from: WCBinanceTradeOrder.kt */
/* loaded from: classes4.dex */
public final class WCBinanceTradeOrderKt {
    private static final JsonDeserializer<WCBinanceTradeOrder.Message> tradeOrderDeserializer = GsonBuilderKt.jsonDeserializer(WCBinanceTradeOrderKt$tradeOrderDeserializer$1.INSTANCE);
    private static final JsonSerializer<WCBinanceTradeOrder.Message> tradeOrderSerializer = GsonBuilderKt.jsonSerializer(WCBinanceTradeOrderKt$tradeOrderSerializer$1.INSTANCE);

    public static final JsonDeserializer<WCBinanceTradeOrder.Message> getTradeOrderDeserializer() {
        return tradeOrderDeserializer;
    }

    public static final JsonSerializer<WCBinanceTradeOrder.Message> getTradeOrderSerializer() {
        return tradeOrderSerializer;
    }
}
