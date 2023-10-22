package com.iMe.mapper.wallet;

import com.iMe.model.wallet.crypto.NetworkItem;
import com.iMe.storage.data.utils.crypto.NetworksHelper;
import com.iMe.storage.domain.model.crypto.Network;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: NetworkUiMapping.kt */
/* loaded from: classes3.dex */
public final class NetworkUiMappingKt {
    public static final NetworkItem.Crypto mapToUI(Network network) {
        Intrinsics.checkNotNullParameter(network, "<this>");
        return new NetworkItem.Crypto(network.getId(), network.getFullName(), network.getShortName(), network.getColorHex(), network.getLogoUrl(), network.getSmallLogoUrl(), network.getExplorer().getName(), network.getExplorer().getLogoUrl());
    }

    public static final Network mapToDomain(NetworkItem.Crypto crypto) {
        Intrinsics.checkNotNullParameter(crypto, "<this>");
        return NetworksHelper.getNetworkById(crypto.getNetworkId());
    }

    public static final List<NetworkItem.Crypto> mapToUI(List<Network> list) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(list, "<this>");
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (Network network : list) {
            arrayList.add(mapToUI(network));
        }
        return arrayList;
    }
}
