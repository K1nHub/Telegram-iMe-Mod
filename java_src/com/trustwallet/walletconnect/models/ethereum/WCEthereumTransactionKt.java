package com.trustwallet.walletconnect.models.ethereum;

import com.github.salomonbrys.kotson.GsonBuilderKt;
import com.google.gson.JsonDeserializer;
import java.util.List;
/* compiled from: WCEthereumTransaction.kt */
/* loaded from: classes3.dex */
public final class WCEthereumTransactionKt {
    private static final JsonDeserializer<List<WCEthereumTransaction>> ethTransactionSerializer = GsonBuilderKt.jsonDeserializer(WCEthereumTransactionKt$ethTransactionSerializer$1.INSTANCE);

    public static final JsonDeserializer<List<WCEthereumTransaction>> getEthTransactionSerializer() {
        return ethTransactionSerializer;
    }
}
