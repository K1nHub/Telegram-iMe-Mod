package com.iMe.storage.data.network.model.response.wallet;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: TokenBalanceResponse.kt */
/* loaded from: classes3.dex */
public final class TokenBalanceResponse {
    private final Double ratePercentageChange24h;
    private final FiatValueResponse rateToFiat;
    private final TokenDetailedResponse token;
    private final double total;
    private final FiatValueResponse totalInFiat;

    public static /* synthetic */ TokenBalanceResponse copy$default(TokenBalanceResponse tokenBalanceResponse, double d, FiatValueResponse fiatValueResponse, FiatValueResponse fiatValueResponse2, Double d2, TokenDetailedResponse tokenDetailedResponse, int i, Object obj) {
        if ((i & 1) != 0) {
            d = tokenBalanceResponse.total;
        }
        double d3 = d;
        if ((i & 2) != 0) {
            fiatValueResponse = tokenBalanceResponse.totalInFiat;
        }
        FiatValueResponse fiatValueResponse3 = fiatValueResponse;
        if ((i & 4) != 0) {
            fiatValueResponse2 = tokenBalanceResponse.rateToFiat;
        }
        FiatValueResponse fiatValueResponse4 = fiatValueResponse2;
        if ((i & 8) != 0) {
            d2 = tokenBalanceResponse.ratePercentageChange24h;
        }
        Double d4 = d2;
        if ((i & 16) != 0) {
            tokenDetailedResponse = tokenBalanceResponse.token;
        }
        return tokenBalanceResponse.copy(d3, fiatValueResponse3, fiatValueResponse4, d4, tokenDetailedResponse);
    }

    public final double component1() {
        return this.total;
    }

    public final FiatValueResponse component2() {
        return this.totalInFiat;
    }

    public final FiatValueResponse component3() {
        return this.rateToFiat;
    }

    public final Double component4() {
        return this.ratePercentageChange24h;
    }

    public final TokenDetailedResponse component5() {
        return this.token;
    }

    public final TokenBalanceResponse copy(double d, FiatValueResponse totalInFiat, FiatValueResponse rateToFiat, Double d2, TokenDetailedResponse token) {
        Intrinsics.checkNotNullParameter(totalInFiat, "totalInFiat");
        Intrinsics.checkNotNullParameter(rateToFiat, "rateToFiat");
        Intrinsics.checkNotNullParameter(token, "token");
        return new TokenBalanceResponse(d, totalInFiat, rateToFiat, d2, token);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TokenBalanceResponse) {
            TokenBalanceResponse tokenBalanceResponse = (TokenBalanceResponse) obj;
            return Double.compare(this.total, tokenBalanceResponse.total) == 0 && Intrinsics.areEqual(this.totalInFiat, tokenBalanceResponse.totalInFiat) && Intrinsics.areEqual(this.rateToFiat, tokenBalanceResponse.rateToFiat) && Intrinsics.areEqual(this.ratePercentageChange24h, tokenBalanceResponse.ratePercentageChange24h) && Intrinsics.areEqual(this.token, tokenBalanceResponse.token);
        }
        return false;
    }

    public int hashCode() {
        int doubleToLongBits = ((((Double.doubleToLongBits(this.total) * 31) + this.totalInFiat.hashCode()) * 31) + this.rateToFiat.hashCode()) * 31;
        Double d = this.ratePercentageChange24h;
        return ((doubleToLongBits + (d == null ? 0 : d.hashCode())) * 31) + this.token.hashCode();
    }

    public String toString() {
        return "TokenBalanceResponse(total=" + this.total + ", totalInFiat=" + this.totalInFiat + ", rateToFiat=" + this.rateToFiat + ", ratePercentageChange24h=" + this.ratePercentageChange24h + ", token=" + this.token + ')';
    }

    public TokenBalanceResponse(double d, FiatValueResponse totalInFiat, FiatValueResponse rateToFiat, Double d2, TokenDetailedResponse token) {
        Intrinsics.checkNotNullParameter(totalInFiat, "totalInFiat");
        Intrinsics.checkNotNullParameter(rateToFiat, "rateToFiat");
        Intrinsics.checkNotNullParameter(token, "token");
        this.total = d;
        this.totalInFiat = totalInFiat;
        this.rateToFiat = rateToFiat;
        this.ratePercentageChange24h = d2;
        this.token = token;
    }

    public final double getTotal() {
        return this.total;
    }

    public final FiatValueResponse getTotalInFiat() {
        return this.totalInFiat;
    }

    public final FiatValueResponse getRateToFiat() {
        return this.rateToFiat;
    }

    public final Double getRatePercentageChange24h() {
        return this.ratePercentageChange24h;
    }

    public final TokenDetailedResponse getToken() {
        return this.token;
    }
}
