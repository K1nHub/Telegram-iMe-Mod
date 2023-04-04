package com.trustwallet.walletconnect.models.binance;

import com.github.salomonbrys.kotson.ElementKt;
import com.github.salomonbrys.kotson.SerializerArg;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.trustwallet.walletconnect.models.binance.WCBinanceTransferOrder;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: WCBinanceTransferOrder.kt */
/* loaded from: classes4.dex */
final class WCBinanceTransferOrderKt$transferOrderSerializer$1 extends Lambda implements Function1<SerializerArg<WCBinanceTransferOrder.Message>, JsonElement> {
    public static final WCBinanceTransferOrderKt$transferOrderSerializer$1 INSTANCE = new WCBinanceTransferOrderKt$transferOrderSerializer$1();

    WCBinanceTransferOrderKt$transferOrderSerializer$1() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final JsonElement invoke(SerializerArg<WCBinanceTransferOrder.Message> it) {
        Intrinsics.checkNotNullParameter(it, "it");
        JsonObject jsonObject = new JsonObject();
        ElementKt.addProperty(jsonObject, WCBinanceTransferOrder.MessageKey.INPUTS.getKey(), it.getContext().serialize(it.getSrc().getInputs()));
        ElementKt.addProperty(jsonObject, WCBinanceTransferOrder.MessageKey.OUTPUTS.getKey(), it.getContext().serialize(it.getSrc().getOutputs()));
        return jsonObject;
    }
}
