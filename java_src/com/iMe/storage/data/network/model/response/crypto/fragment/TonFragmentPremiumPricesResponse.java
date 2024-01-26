package com.iMe.storage.data.network.model.response.crypto.fragment;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TonFragmentPremiumPricesResponse.kt */
/* loaded from: classes3.dex */
public final class TonFragmentPremiumPricesResponse {
    private final List<TonFragmentPremiumPriceDataResponse> prices;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ TonFragmentPremiumPricesResponse copy$default(TonFragmentPremiumPricesResponse tonFragmentPremiumPricesResponse, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            list = tonFragmentPremiumPricesResponse.prices;
        }
        return tonFragmentPremiumPricesResponse.copy(list);
    }

    public final List<TonFragmentPremiumPriceDataResponse> component1() {
        return this.prices;
    }

    public final TonFragmentPremiumPricesResponse copy(List<TonFragmentPremiumPriceDataResponse> prices) {
        Intrinsics.checkNotNullParameter(prices, "prices");
        return new TonFragmentPremiumPricesResponse(prices);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof TonFragmentPremiumPricesResponse) && Intrinsics.areEqual(this.prices, ((TonFragmentPremiumPricesResponse) obj).prices);
    }

    public int hashCode() {
        return this.prices.hashCode();
    }

    public String toString() {
        return "TonFragmentPremiumPricesResponse(prices=" + this.prices + ')';
    }

    public TonFragmentPremiumPricesResponse(List<TonFragmentPremiumPriceDataResponse> prices) {
        Intrinsics.checkNotNullParameter(prices, "prices");
        this.prices = prices;
    }

    public final List<TonFragmentPremiumPriceDataResponse> getPrices() {
        return this.prices;
    }
}
