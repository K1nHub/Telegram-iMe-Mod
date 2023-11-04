package com.iMe.storage.data.mapper.wallet;

import com.iMe.storage.data.locale.prefs.model.TokenDisplaySettings;
import com.iMe.storage.data.network.model.response.wallet.DisplayedTokenResponse;
import com.iMe.storage.data.network.model.response.wallet.DisplayedTokensResponse;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
/* compiled from: DisplayedTokensMapping.kt */
/* loaded from: classes3.dex */
public final class DisplayedTokensMappingKt {
    public static final Map<TokenDetailed, Boolean> mapToDomain(DisplayedTokensResponse displayedTokensResponse) {
        int collectionSizeOrDefault;
        int mapCapacity;
        int coerceAtLeast;
        Intrinsics.checkNotNullParameter(displayedTokensResponse, "<this>");
        List<DisplayedTokenResponse> displayedTokens = displayedTokensResponse.getDisplayedTokens();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(displayedTokens, 10);
        mapCapacity = MapsKt__MapsJVMKt.mapCapacity(collectionSizeOrDefault);
        coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(mapCapacity, 16);
        LinkedHashMap linkedHashMap = new LinkedHashMap(coerceAtLeast);
        for (DisplayedTokenResponse displayedTokenResponse : displayedTokens) {
            Pair m146to = TuplesKt.m146to(TokenMappingKt.mapToDomain(displayedTokenResponse.getToken()), Boolean.valueOf(displayedTokenResponse.isVisible()));
            linkedHashMap.put(m146to.getFirst(), m146to.getSecond());
        }
        return linkedHashMap;
    }

    public static final List<TokenDisplaySettings.Crypto> mapToTokensSettings(DisplayedTokensResponse displayedTokensResponse) {
        List sortedWith;
        int collectionSizeOrDefault;
        List<TokenDisplaySettings.Crypto> mutableList;
        Intrinsics.checkNotNullParameter(displayedTokensResponse, "<this>");
        List<DisplayedTokenResponse> displayedTokens = displayedTokensResponse.getDisplayedTokens();
        HashSet hashSet = new HashSet();
        ArrayList arrayList = new ArrayList();
        for (Object obj : displayedTokens) {
            if (hashSet.add(((DisplayedTokenResponse) obj).getToken().getAddress())) {
                arrayList.add(obj);
            }
        }
        sortedWith = CollectionsKt___CollectionsKt.sortedWith(arrayList, new Comparator() { // from class: com.iMe.storage.data.mapper.wallet.DisplayedTokensMappingKt$mapToTokensSettings$$inlined$sortedByDescending$1
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                int compareValues;
                compareValues = ComparisonsKt__ComparisonsKt.compareValues(Boolean.valueOf(((DisplayedTokenResponse) t2).getToken().isCoin()), Boolean.valueOf(((DisplayedTokenResponse) t).getToken().isCoin()));
                return compareValues;
            }
        });
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(sortedWith, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
        int i = 0;
        for (Object obj2 : sortedWith) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            DisplayedTokenResponse displayedTokenResponse = (DisplayedTokenResponse) obj2;
            String address = displayedTokenResponse.getToken().getAddress();
            if (address == null) {
                address = "";
            }
            arrayList2.add(new TokenDisplaySettings.Crypto(i, displayedTokenResponse.isVisible(), address));
            i = i2;
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList2);
        return mutableList;
    }
}
