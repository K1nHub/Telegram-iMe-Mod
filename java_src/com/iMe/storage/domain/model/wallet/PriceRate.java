package com.iMe.storage.domain.model.wallet;

import com.iMe.i_staking.response.StakingDetailedMetadataResponse$$ExternalSyntheticBackport0;
/* compiled from: PriceRate.kt */
/* loaded from: classes3.dex */
public final class PriceRate {
    private final float ratePercentageChange24h;
    private final double rateToDollars;

    public static /* synthetic */ PriceRate copy$default(PriceRate priceRate, double d, float f, int i, Object obj) {
        if ((i & 1) != 0) {
            d = priceRate.rateToDollars;
        }
        if ((i & 2) != 0) {
            f = priceRate.ratePercentageChange24h;
        }
        return priceRate.copy(d, f);
    }

    public final double component1() {
        return this.rateToDollars;
    }

    public final float component2() {
        return this.ratePercentageChange24h;
    }

    public final PriceRate copy(double d, float f) {
        return new PriceRate(d, f);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof PriceRate) {
            PriceRate priceRate = (PriceRate) obj;
            return Double.compare(this.rateToDollars, priceRate.rateToDollars) == 0 && Float.compare(this.ratePercentageChange24h, priceRate.ratePercentageChange24h) == 0;
        }
        return false;
    }

    public int hashCode() {
        return (StakingDetailedMetadataResponse$$ExternalSyntheticBackport0.m1012m(this.rateToDollars) * 31) + Float.floatToIntBits(this.ratePercentageChange24h);
    }

    public String toString() {
        return "PriceRate(rateToDollars=" + this.rateToDollars + ", ratePercentageChange24h=" + this.ratePercentageChange24h + ')';
    }

    public PriceRate(double d, float f) {
        this.rateToDollars = d;
        this.ratePercentageChange24h = f;
    }

    public final double getRateToDollars() {
        return this.rateToDollars;
    }

    public final float getRatePercentageChange24h() {
        return this.ratePercentageChange24h;
    }
}
