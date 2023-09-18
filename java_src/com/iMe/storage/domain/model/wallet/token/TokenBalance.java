package com.iMe.storage.domain.model.wallet.token;

import com.iMe.i_staking.response.StakingDetailedMetadataResponse$$ExternalSyntheticBackport0;
import com.iMe.storage.domain.model.wallet.token.FiatValue;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TokenBalance.kt */
/* loaded from: classes4.dex */
public final class TokenBalance {
    public static final Companion Companion = new Companion(null);
    private final double ratePercentageChange24h;
    private final FiatValue rateToFiat;
    private final TokenDetailed token;
    private final double total;
    private final FiatValue totalInFiat;

    public final double component1() {
        return this.total;
    }

    public final FiatValue component2() {
        return this.totalInFiat;
    }

    public final FiatValue component3() {
        return this.rateToFiat;
    }

    public final double component4() {
        return this.ratePercentageChange24h;
    }

    public final TokenDetailed component5() {
        return this.token;
    }

    public final TokenBalance copy(double d, FiatValue totalInFiat, FiatValue rateToFiat, double d2, TokenDetailed token) {
        Intrinsics.checkNotNullParameter(totalInFiat, "totalInFiat");
        Intrinsics.checkNotNullParameter(rateToFiat, "rateToFiat");
        Intrinsics.checkNotNullParameter(token, "token");
        return new TokenBalance(d, totalInFiat, rateToFiat, d2, token);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TokenBalance) {
            TokenBalance tokenBalance = (TokenBalance) obj;
            return Double.compare(this.total, tokenBalance.total) == 0 && Intrinsics.areEqual(this.totalInFiat, tokenBalance.totalInFiat) && Intrinsics.areEqual(this.rateToFiat, tokenBalance.rateToFiat) && Double.compare(this.ratePercentageChange24h, tokenBalance.ratePercentageChange24h) == 0 && Intrinsics.areEqual(this.token, tokenBalance.token);
        }
        return false;
    }

    public int hashCode() {
        return (((((((StakingDetailedMetadataResponse$$ExternalSyntheticBackport0.m718m(this.total) * 31) + this.totalInFiat.hashCode()) * 31) + this.rateToFiat.hashCode()) * 31) + StakingDetailedMetadataResponse$$ExternalSyntheticBackport0.m718m(this.ratePercentageChange24h)) * 31) + this.token.hashCode();
    }

    public String toString() {
        return "TokenBalance(total=" + this.total + ", totalInFiat=" + this.totalInFiat + ", rateToFiat=" + this.rateToFiat + ", ratePercentageChange24h=" + this.ratePercentageChange24h + ", token=" + this.token + ')';
    }

    public TokenBalance(double d, FiatValue totalInFiat, FiatValue rateToFiat, double d2, TokenDetailed token) {
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

    public final FiatValue getTotalInFiat() {
        return this.totalInFiat;
    }

    public final FiatValue getRateToFiat() {
        return this.rateToFiat;
    }

    public final double getRatePercentageChange24h() {
        return this.ratePercentageChange24h;
    }

    public final TokenDetailed getToken() {
        return this.token;
    }

    /* compiled from: TokenBalance.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final TokenBalance createEmptyBalanceFor(TokenDetailed token) {
            Intrinsics.checkNotNullParameter(token, "token");
            FiatValue.Companion companion = FiatValue.Companion;
            return new TokenBalance(0.0d, FiatValue.Companion.createUSDValue$default(companion, 0.0d, 1, null), FiatValue.Companion.createUSDValue$default(companion, 0.0d, 1, null), 0.0d, token);
        }
    }
}
