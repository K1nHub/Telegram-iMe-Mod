package com.iMe.storage.data.mapper.crypto;

import com.iMe.storage.data.network.model.response.crypto.wallet.CryptoWalletsInfoResponse;
import com.iMe.storage.data.network.model.response.crypto.wallet.RemoteWalletInfoResponse;
import com.iMe.storage.domain.model.crypto.BlockchainType;
import com.iMe.storage.domain.model.crypto.CryptoWalletsInfo;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.text.StringsKt__StringNumberConversionsKt;
/* compiled from: WalletInformationMapping.kt */
/* loaded from: classes3.dex */
public final class WalletInformationMappingKt {
    public static final CryptoWalletsInfo mapToDomain(CryptoWalletsInfoResponse cryptoWalletsInfoResponse) {
        int collectionSizeOrDefault;
        int mapCapacity;
        int coerceAtLeast;
        Long longOrNull;
        Intrinsics.checkNotNullParameter(cryptoWalletsInfoResponse, "<this>");
        List<RemoteWalletInfoResponse> wallets = cryptoWalletsInfoResponse.getWallets();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(wallets, 10);
        mapCapacity = MapsKt__MapsJVMKt.mapCapacity(collectionSizeOrDefault);
        coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(mapCapacity, 16);
        LinkedHashMap linkedHashMap = new LinkedHashMap(coerceAtLeast);
        for (RemoteWalletInfoResponse remoteWalletInfoResponse : wallets) {
            Pair m103to = TuplesKt.m103to(BlockchainType.Companion.mapByBackendName(remoteWalletInfoResponse.getPlatform()), remoteWalletInfoResponse.getAddress());
            linkedHashMap.put(m103to.getFirst(), m103to.getSecond());
        }
        boolean isVisible = cryptoWalletsInfoResponse.isVisible();
        List<String> allowedUsers = cryptoWalletsInfoResponse.getAllowedUsers();
        ArrayList arrayList = new ArrayList();
        for (String str : allowedUsers) {
            longOrNull = StringsKt__StringNumberConversionsKt.toLongOrNull(str);
            if (longOrNull != null) {
                arrayList.add(longOrNull);
            }
        }
        return new CryptoWalletsInfo(linkedHashMap, isVisible, arrayList);
    }
}
