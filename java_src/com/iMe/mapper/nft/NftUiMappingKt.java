package com.iMe.mapper.nft;

import com.iMe.mapper.wallet.NetworkUiMappingKt;
import com.iMe.model.wallet.home.nft.NftCollectionItem;
import com.iMe.model.wallet.home.nft.NftTokenItem;
import com.iMe.model.wallet.home.nft.NftType;
import com.iMe.storage.data.utils.crypto.NetworksHelper;
import com.iMe.storage.domain.model.crypto.nft.NftCollection;
import com.iMe.storage.domain.model.crypto.nft.NftToken;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: NftUiMapping.kt */
/* loaded from: classes3.dex */
public final class NftUiMappingKt {
    public static final List<NftCollectionItem> mapToUi(List<NftToken> list, boolean z) {
        NftType nftType;
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(list, "<this>");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj : list) {
            NftCollection collection = ((NftToken) obj).getCollection();
            Object obj2 = linkedHashMap.get(collection);
            if (obj2 == null) {
                obj2 = new ArrayList();
                linkedHashMap.put(collection, obj2);
            }
            ((List) obj2).add(obj);
        }
        ArrayList arrayList = new ArrayList(linkedHashMap.size());
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            String id = ((NftCollection) entry.getKey()).getId();
            if (Intrinsics.areEqual(id, "e1c53c6e-688f-44bf-9bdd-a34dd1317106")) {
                nftType = NftType.ANONYMOUS_NUMBER;
            } else {
                nftType = Intrinsics.areEqual(id, "4e3f131b-9e04-461b-bb72-b4ea03ffccd4") ? NftType.USERNAME : NftType.IMAGE;
            }
            NftType nftType2 = nftType;
            NftCollection nftCollection = (NftCollection) entry.getKey();
            Iterable iterable = (Iterable) entry.getValue();
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(iterable, 10);
            ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
            int i = 0;
            for (Object obj3 : iterable) {
                int i2 = i + 1;
                if (i < 0) {
                    CollectionsKt__CollectionsKt.throwIndexOverflow();
                }
                arrayList2.add(new NftTokenItem((NftToken) obj3, i, nftType2));
                i = i2;
            }
            NftCollectionItem nftCollectionItem = new NftCollectionItem(nftCollection, arrayList2, NetworkUiMappingKt.mapToUI(NetworksHelper.getNetworkById(((NftCollection) entry.getKey()).getNetworkId())), z, nftType2);
            nftCollectionItem.setExpanded(false);
            arrayList.add(nftCollectionItem);
        }
        return arrayList;
    }
}
