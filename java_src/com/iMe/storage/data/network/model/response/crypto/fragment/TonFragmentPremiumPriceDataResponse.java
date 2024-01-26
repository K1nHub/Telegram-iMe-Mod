package com.iMe.storage.data.network.model.response.crypto.fragment;

import com.iMe.i_staking.response.StakingDetailedMetadataResponse$$ExternalSyntheticBackport0;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TonFragmentPremiumPriceDataResponse.kt */
/* loaded from: classes3.dex */
public final class TonFragmentPremiumPriceDataResponse {
    private final String discount;
    private final int months;
    private final double priceTon;
    private final String priceUsd;

    public static /* synthetic */ TonFragmentPremiumPriceDataResponse copy$default(TonFragmentPremiumPriceDataResponse tonFragmentPremiumPriceDataResponse, int i, double d, String str, String str2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = tonFragmentPremiumPriceDataResponse.months;
        }
        if ((i2 & 2) != 0) {
            d = tonFragmentPremiumPriceDataResponse.priceTon;
        }
        double d2 = d;
        if ((i2 & 4) != 0) {
            str = tonFragmentPremiumPriceDataResponse.discount;
        }
        String str3 = str;
        if ((i2 & 8) != 0) {
            str2 = tonFragmentPremiumPriceDataResponse.priceUsd;
        }
        return tonFragmentPremiumPriceDataResponse.copy(i, d2, str3, str2);
    }

    public final int component1() {
        return this.months;
    }

    public final double component2() {
        return this.priceTon;
    }

    public final String component3() {
        return this.discount;
    }

    public final String component4() {
        return this.priceUsd;
    }

    public final TonFragmentPremiumPriceDataResponse copy(int i, double d, String discount, String priceUsd) {
        Intrinsics.checkNotNullParameter(discount, "discount");
        Intrinsics.checkNotNullParameter(priceUsd, "priceUsd");
        return new TonFragmentPremiumPriceDataResponse(i, d, discount, priceUsd);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TonFragmentPremiumPriceDataResponse) {
            TonFragmentPremiumPriceDataResponse tonFragmentPremiumPriceDataResponse = (TonFragmentPremiumPriceDataResponse) obj;
            return this.months == tonFragmentPremiumPriceDataResponse.months && Double.compare(this.priceTon, tonFragmentPremiumPriceDataResponse.priceTon) == 0 && Intrinsics.areEqual(this.discount, tonFragmentPremiumPriceDataResponse.discount) && Intrinsics.areEqual(this.priceUsd, tonFragmentPremiumPriceDataResponse.priceUsd);
        }
        return false;
    }

    public int hashCode() {
        return (((((this.months * 31) + StakingDetailedMetadataResponse$$ExternalSyntheticBackport0.m1015m(this.priceTon)) * 31) + this.discount.hashCode()) * 31) + this.priceUsd.hashCode();
    }

    public String toString() {
        return "TonFragmentPremiumPriceDataResponse(months=" + this.months + ", priceTon=" + this.priceTon + ", discount=" + this.discount + ", priceUsd=" + this.priceUsd + ')';
    }

    public TonFragmentPremiumPriceDataResponse(int i, double d, String discount, String priceUsd) {
        Intrinsics.checkNotNullParameter(discount, "discount");
        Intrinsics.checkNotNullParameter(priceUsd, "priceUsd");
        this.months = i;
        this.priceTon = d;
        this.discount = discount;
        this.priceUsd = priceUsd;
    }

    public final int getMonths() {
        return this.months;
    }

    public final double getPriceTon() {
        return this.priceTon;
    }

    public final String getDiscount() {
        return this.discount;
    }

    public final String getPriceUsd() {
        return this.priceUsd;
    }
}
