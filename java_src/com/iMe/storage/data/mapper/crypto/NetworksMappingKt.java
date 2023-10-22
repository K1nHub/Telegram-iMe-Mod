package com.iMe.storage.data.mapper.crypto;

import com.iMe.storage.data.network.model.response.crypto.wallet.NetworkResponse;
import com.iMe.storage.data.network.model.response.crypto.wallet.NetworksListResponse;
import com.iMe.storage.domain.model.crypto.BlockchainType;
import com.iMe.storage.domain.model.crypto.Network;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: NetworksMapping.kt */
/* loaded from: classes3.dex */
public final class NetworksMappingKt {
    public static final List<Network> mapToDomain(NetworksListResponse networksListResponse) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(networksListResponse, "<this>");
        List<NetworkResponse> networks = networksListResponse.getNetworks();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(networks, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (NetworkResponse networkResponse : networks) {
            arrayList.add(mapToDomain(networkResponse));
        }
        return arrayList;
    }

    public static final Network mapToDomain(NetworkResponse networkResponse) {
        Intrinsics.checkNotNullParameter(networkResponse, "<this>");
        String id = networkResponse.getId();
        BlockchainType mapByBackendName = BlockchainType.Companion.mapByBackendName(networkResponse.getPlatform());
        String name = networkResponse.getName();
        String shortName = networkResponse.getShortName();
        String color = networkResponse.getColor();
        NetworkResponse.ExplorerResponse explorer = networkResponse.getExplorer();
        String name2 = explorer.getName();
        String url = explorer.getUrl();
        String logo = explorer.getLogo();
        NetworkResponse.ExplorerResponse.PathTemplateResponse pathTemplate = explorer.getPathTemplate();
        return new Network(id, mapByBackendName, name, shortName, color, new Network.Explorer(name2, url, logo, new Network.Explorer.PathTemplate(pathTemplate.getAddress(), pathTemplate.getToken(), pathTemplate.getTx())), networkResponse.getChainId(), networkResponse.getLogo(), networkResponse.getLogoSmall());
    }
}
