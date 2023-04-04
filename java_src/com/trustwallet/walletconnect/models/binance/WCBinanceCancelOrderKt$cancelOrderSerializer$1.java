package com.trustwallet.walletconnect.models.binance;

import com.github.salomonbrys.kotson.SerializerArg;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.trustwallet.walletconnect.models.binance.WCBinanceCancelOrder;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: WCBinanceCancelOrder.kt */
/* loaded from: classes4.dex */
final class WCBinanceCancelOrderKt$cancelOrderSerializer$1 extends Lambda implements Function1<SerializerArg<WCBinanceCancelOrder.Message>, JsonElement> {
    public static final WCBinanceCancelOrderKt$cancelOrderSerializer$1 INSTANCE = new WCBinanceCancelOrderKt$cancelOrderSerializer$1();

    WCBinanceCancelOrderKt$cancelOrderSerializer$1() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final JsonElement invoke(SerializerArg<WCBinanceCancelOrder.Message> it) {
        Intrinsics.checkNotNullParameter(it, "it");
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("refid", it.getSrc().getRefid());
        jsonObject.addProperty("sender", it.getSrc().getSender());
        jsonObject.addProperty("symbol", it.getSrc().getSymbol());
        return jsonObject;
    }
}
