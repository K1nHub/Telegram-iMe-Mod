package com.smedialink.storage.data.network.model.response.wallet;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: TokenBalanceResponse.kt */
/* loaded from: classes3.dex */
public final class TokenBalanceResponse {
    private final String coinCode;
    private final String networkType;
    private final Float ratePercentageChange24h;
    private final double rateToDollars;
    private final double total;
    private final float totalInDollars;

    public final String component1() {
        return this.coinCode;
    }

    public final double component2() {
        return this.total;
    }

    public final float component3() {
        return this.totalInDollars;
    }

    public final double component4() {
        return this.rateToDollars;
    }

    public final Float component5() {
        return this.ratePercentageChange24h;
    }

    public final String component6() {
        return this.networkType;
    }

    public final TokenBalanceResponse copy(String coinCode, double d, float f, double d2, Float f2, String networkType) {
        Intrinsics.checkNotNullParameter(coinCode, "coinCode");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        return new TokenBalanceResponse(coinCode, d, f, d2, f2, networkType);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TokenBalanceResponse) {
            TokenBalanceResponse tokenBalanceResponse = (TokenBalanceResponse) obj;
            return Intrinsics.areEqual(this.coinCode, tokenBalanceResponse.coinCode) && Double.compare(this.total, tokenBalanceResponse.total) == 0 && Float.compare(this.totalInDollars, tokenBalanceResponse.totalInDollars) == 0 && Double.compare(this.rateToDollars, tokenBalanceResponse.rateToDollars) == 0 && Intrinsics.areEqual(this.ratePercentageChange24h, tokenBalanceResponse.ratePercentageChange24h) && Intrinsics.areEqual(this.networkType, tokenBalanceResponse.networkType);
        }
        return false;
    }

    public int hashCode() {
        int hashCode = ((((((this.coinCode.hashCode() * 31) + Double.doubleToLongBits(this.total)) * 31) + Float.floatToIntBits(this.totalInDollars)) * 31) + Double.doubleToLongBits(this.rateToDollars)) * 31;
        Float f = this.ratePercentageChange24h;
        return ((hashCode + (f == null ? 0 : f.hashCode())) * 31) + this.networkType.hashCode();
    }

    public String toString() {
        return "TokenBalanceResponse(coinCode=" + this.coinCode + ", total=" + this.total + ", totalInDollars=" + this.totalInDollars + ", rateToDollars=" + this.rateToDollars + ", ratePercentageChange24h=" + this.ratePercentageChange24h + ", networkType=" + this.networkType + ')';
    }

    public TokenBalanceResponse(String coinCode, double d, float f, double d2, Float f2, String networkType) {
        Intrinsics.checkNotNullParameter(coinCode, "coinCode");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        this.coinCode = coinCode;
        this.total = d;
        this.totalInDollars = f;
        this.rateToDollars = d2;
        this.ratePercentageChange24h = f2;
        this.networkType = networkType;
    }

    public final String getCoinCode() {
        return this.coinCode;
    }

    public final double getTotal() {
        return this.total;
    }

    public final float getTotalInDollars() {
        return this.totalInDollars;
    }

    public final double getRateToDollars() {
        return this.rateToDollars;
    }

    public final Float getRatePercentageChange24h() {
        return this.ratePercentageChange24h;
    }

    public final String getNetworkType() {
        return this.networkType;
    }
}
