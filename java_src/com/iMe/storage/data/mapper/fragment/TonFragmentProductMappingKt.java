package com.iMe.storage.data.mapper.fragment;

import com.iMe.storage.data.network.model.response.crypto.fragment.TonFragmentProductResponse;
import com.iMe.storage.data.network.model.response.crypto.fragment.TonFragmentUsernamesResponse;
import com.iMe.storage.domain.model.crypto.ton.TonFragmentProduct;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TonFragmentProductMapping.kt */
/* loaded from: classes3.dex */
public final class TonFragmentProductMappingKt {
    public static final List<TonFragmentProduct> mapToDomain(TonFragmentUsernamesResponse tonFragmentUsernamesResponse) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(tonFragmentUsernamesResponse, "<this>");
        List<TonFragmentProductResponse> usernames = tonFragmentUsernamesResponse.getUsernames();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(usernames, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (TonFragmentProductResponse tonFragmentProductResponse : usernames) {
            arrayList.add(mapToDomain(tonFragmentProductResponse));
        }
        return arrayList;
    }

    public static final TonFragmentProduct mapToDomain(TonFragmentProductResponse tonFragmentProductResponse) {
        Intrinsics.checkNotNullParameter(tonFragmentProductResponse, "<this>");
        return new TonFragmentProduct(tonFragmentProductResponse.getUsername(), tonFragmentProductResponse.getPrice(), tonFragmentProductResponse.getTimestamp(), tonFragmentProductResponse.getFiatPrice());
    }
}
