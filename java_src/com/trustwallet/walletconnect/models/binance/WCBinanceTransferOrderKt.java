package com.trustwallet.walletconnect.models.binance;

import com.github.salomonbrys.kotson.GsonBuilderKt;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonSerializer;
import com.trustwallet.walletconnect.models.binance.WCBinanceTransferOrder;
/* compiled from: WCBinanceTransferOrder.kt */
/* loaded from: classes3.dex */
public final class WCBinanceTransferOrderKt {
    private static final JsonDeserializer<WCBinanceTransferOrder.Message> transferOrderDeserializer = GsonBuilderKt.jsonDeserializer(WCBinanceTransferOrderKt$transferOrderDeserializer$1.INSTANCE);
    private static final JsonSerializer<WCBinanceTransferOrder.Message> transferOrderSerializer = GsonBuilderKt.jsonSerializer(WCBinanceTransferOrderKt$transferOrderSerializer$1.INSTANCE);

    public static final JsonDeserializer<WCBinanceTransferOrder.Message> getTransferOrderDeserializer() {
        return transferOrderDeserializer;
    }

    public static final JsonSerializer<WCBinanceTransferOrder.Message> getTransferOrderSerializer() {
        return transferOrderSerializer;
    }
}
