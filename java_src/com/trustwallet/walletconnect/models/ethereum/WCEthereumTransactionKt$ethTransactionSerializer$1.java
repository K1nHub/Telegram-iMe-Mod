package com.trustwallet.walletconnect.models.ethereum;

import com.github.salomonbrys.kotson.DeserializerArg;
import com.github.salomonbrys.kotson.GsonBuilderKt;
import com.google.gson.JsonArray;
import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonElement;
import com.google.gson.reflect.TypeToken;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: WCEthereumTransaction.kt */
/* loaded from: classes3.dex */
final class WCEthereumTransactionKt$ethTransactionSerializer$1 extends Lambda implements Function1<DeserializerArg, List<? extends WCEthereumTransaction>> {
    public static final WCEthereumTransactionKt$ethTransactionSerializer$1 INSTANCE = new WCEthereumTransactionKt$ethTransactionSerializer$1();

    WCEthereumTransactionKt$ethTransactionSerializer$1() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final List<WCEthereumTransaction> invoke(DeserializerArg it) {
        Type removeTypeWildcards;
        Intrinsics.checkNotNullParameter(it, "it");
        ArrayList arrayList = new ArrayList();
        JsonArray asJsonArray = it.getJson().getAsJsonArray();
        Intrinsics.checkNotNullExpressionValue(asJsonArray, "it.json.asJsonArray");
        for (JsonElement tx : asJsonArray) {
            if (tx.isJsonObject()) {
                DeserializerArg.Context context = it.getContext();
                Intrinsics.checkNotNullExpressionValue(tx, "tx");
                JsonDeserializationContext gsonContext = context.getGsonContext();
                Type type = new TypeToken<WCEthereumTransaction>() { // from class: com.trustwallet.walletconnect.models.ethereum.WCEthereumTransactionKt$ethTransactionSerializer$1$invoke$lambda-0$$inlined$deserialize$1
                }.getType();
                Intrinsics.checkExpressionValueIsNotNull(type, "object : TypeToken<T>() {} .type");
                if (type instanceof ParameterizedType) {
                    ParameterizedType parameterizedType = (ParameterizedType) type;
                    if (GsonBuilderKt.isWildcard(parameterizedType)) {
                        removeTypeWildcards = parameterizedType.getRawType();
                        Intrinsics.checkExpressionValueIsNotNull(removeTypeWildcards, "type.rawType");
                        Object deserialize = gsonContext.deserialize(tx, removeTypeWildcards);
                        Intrinsics.checkNotNullExpressionValue(deserialize, "it.context.deserialize(tx)");
                        arrayList.add(deserialize);
                    }
                }
                removeTypeWildcards = GsonBuilderKt.removeTypeWildcards(type);
                Object deserialize2 = gsonContext.deserialize(tx, removeTypeWildcards);
                Intrinsics.checkNotNullExpressionValue(deserialize2, "it.context.deserialize(tx)");
                arrayList.add(deserialize2);
            }
        }
        return arrayList;
    }
}
