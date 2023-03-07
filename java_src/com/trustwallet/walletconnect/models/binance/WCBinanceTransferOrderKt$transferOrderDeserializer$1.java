package com.trustwallet.walletconnect.models.binance;

import com.github.salomonbrys.kotson.DeserializerArg;
import com.trustwallet.walletconnect.models.binance.WCBinanceTransferOrder;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
/* compiled from: WCBinanceTransferOrder.kt */
/* loaded from: classes3.dex */
final class WCBinanceTransferOrderKt$transferOrderDeserializer$1 extends Lambda implements Function1<DeserializerArg, WCBinanceTransferOrder.Message> {
    public static final WCBinanceTransferOrderKt$transferOrderDeserializer$1 INSTANCE = new WCBinanceTransferOrderKt$transferOrderDeserializer$1();

    WCBinanceTransferOrderKt$transferOrderDeserializer$1() {
        super(1);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x007f  */
    @Override // kotlin.jvm.functions.Function1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.trustwallet.walletconnect.models.binance.WCBinanceTransferOrder.Message invoke(com.github.salomonbrys.kotson.DeserializerArg r9) {
        /*
            r8 = this;
            java.lang.String r0 = "it"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r9, r0)
            com.trustwallet.walletconnect.models.binance.WCBinanceTransferOrder$Message r0 = new com.trustwallet.walletconnect.models.binance.WCBinanceTransferOrder$Message
            com.github.salomonbrys.kotson.DeserializerArg$Context r1 = r9.getContext()
            com.google.gson.JsonElement r2 = r9.getJson()
            com.trustwallet.walletconnect.models.binance.WCBinanceTransferOrder$MessageKey r3 = com.trustwallet.walletconnect.models.binance.WCBinanceTransferOrder.MessageKey.INPUTS
            java.lang.String r3 = r3.getKey()
            com.google.gson.JsonElement r2 = com.github.salomonbrys.kotson.ElementKt.get(r2, r3)
            com.google.gson.JsonArray r2 = com.github.salomonbrys.kotson.ElementKt.getArray(r2)
            com.google.gson.JsonDeserializationContext r1 = r1.getGsonContext()
            com.trustwallet.walletconnect.models.binance.WCBinanceTransferOrderKt$transferOrderDeserializer$1$invoke$$inlined$deserialize$1 r3 = new com.trustwallet.walletconnect.models.binance.WCBinanceTransferOrderKt$transferOrderDeserializer$1$invoke$$inlined$deserialize$1
            r3.<init>()
            java.lang.reflect.Type r3 = r3.getType()
            java.lang.String r4 = "object : TypeToken<T>() {} .type"
            kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r3, r4)
            boolean r5 = r3 instanceof java.lang.reflect.ParameterizedType
            java.lang.String r6 = "type.rawType"
            if (r5 == 0) goto L46
            r5 = r3
            java.lang.reflect.ParameterizedType r5 = (java.lang.reflect.ParameterizedType) r5
            boolean r7 = com.github.salomonbrys.kotson.GsonBuilderKt.isWildcard(r5)
            if (r7 == 0) goto L46
            java.lang.reflect.Type r3 = r5.getRawType()
            kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r3, r6)
            goto L4a
        L46:
            java.lang.reflect.Type r3 = com.github.salomonbrys.kotson.GsonBuilderKt.removeTypeWildcards(r3)
        L4a:
            java.lang.Object r1 = r1.deserialize(r2, r3)
            java.lang.String r2 = "it.context.deserialize(i…ageKey.INPUTS.key].array)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r2)
            java.util.List r1 = (java.util.List) r1
            com.github.salomonbrys.kotson.DeserializerArg$Context r2 = r9.getContext()
            com.google.gson.JsonElement r9 = r9.getJson()
            com.trustwallet.walletconnect.models.binance.WCBinanceTransferOrder$MessageKey r3 = com.trustwallet.walletconnect.models.binance.WCBinanceTransferOrder.MessageKey.OUTPUTS
            java.lang.String r3 = r3.getKey()
            com.google.gson.JsonElement r9 = com.github.salomonbrys.kotson.ElementKt.get(r9, r3)
            com.google.gson.JsonArray r9 = com.github.salomonbrys.kotson.ElementKt.getArray(r9)
            com.google.gson.JsonDeserializationContext r2 = r2.getGsonContext()
            com.trustwallet.walletconnect.models.binance.WCBinanceTransferOrderKt$transferOrderDeserializer$1$invoke$$inlined$deserialize$2 r3 = new com.trustwallet.walletconnect.models.binance.WCBinanceTransferOrderKt$transferOrderDeserializer$1$invoke$$inlined$deserialize$2
            r3.<init>()
            java.lang.reflect.Type r3 = r3.getType()
            kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r3, r4)
            boolean r4 = r3 instanceof java.lang.reflect.ParameterizedType
            if (r4 == 0) goto L90
            r4 = r3
            java.lang.reflect.ParameterizedType r4 = (java.lang.reflect.ParameterizedType) r4
            boolean r5 = com.github.salomonbrys.kotson.GsonBuilderKt.isWildcard(r4)
            if (r5 == 0) goto L90
            java.lang.reflect.Type r3 = r4.getRawType()
            kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r3, r6)
            goto L94
        L90:
            java.lang.reflect.Type r3 = com.github.salomonbrys.kotson.GsonBuilderKt.removeTypeWildcards(r3)
        L94:
            java.lang.Object r9 = r2.deserialize(r9, r3)
            java.lang.String r2 = "it.context.deserialize(i…geKey.OUTPUTS.key].array)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r9, r2)
            java.util.List r9 = (java.util.List) r9
            r0.<init>(r1, r9)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.trustwallet.walletconnect.models.binance.WCBinanceTransferOrderKt$transferOrderDeserializer$1.invoke(com.github.salomonbrys.kotson.DeserializerArg):com.trustwallet.walletconnect.models.binance.WCBinanceTransferOrder$Message");
    }
}
