package com.iMe.storage.data.mapper.fragment;

import com.iMe.storage.data.network.model.response.crypto.fragment.TonFragmentPremiumPriceDataResponse;
import com.iMe.storage.data.network.model.response.crypto.fragment.TonFragmentPremiumPricesResponse;
import com.iMe.storage.domain.model.crypto.ton.PremiumPlan;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: PremiumPlanMapping.kt */
/* loaded from: classes3.dex */
public final class PremiumPlanMappingKt {
    public static final List<PremiumPlan> mapToDomain(TonFragmentPremiumPricesResponse tonFragmentPremiumPricesResponse) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(tonFragmentPremiumPricesResponse, "<this>");
        List<TonFragmentPremiumPriceDataResponse> prices = tonFragmentPremiumPricesResponse.getPrices();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(prices, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (TonFragmentPremiumPriceDataResponse tonFragmentPremiumPriceDataResponse : prices) {
            arrayList.add(new PremiumPlan(tonFragmentPremiumPriceDataResponse.getMonths(), tonFragmentPremiumPriceDataResponse.getPriceTon(), tonFragmentPremiumPriceDataResponse.getDiscount(), tonFragmentPremiumPriceDataResponse.getPriceUsd()));
        }
        return arrayList;
    }
}
