package com.iMe.storage.domain.model.crypto;

import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
/* compiled from: NetworkType.kt */
/* loaded from: classes3.dex */
public final class NetworkType {
    public static final String BSC = "BINANCE_SMART_CHAIN";
    public static final String BTC = "BITCOIN";
    public static final String ETH = "ETHEREUM";
    public static final String FTM = "FANTOM";
    public static final NetworkType INSTANCE = new NetworkType();
    public static final String POLY = "POLYGON";
    public static final String TON = "THE_OPEN_NETWORK";
    public static final String TRON = "TRON";

    private NetworkType() {
    }

    public final List<String> getValues() {
        List<String> listOf;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{BSC, BTC, ETH, FTM, POLY, TON, TRON});
        return listOf;
    }
}
