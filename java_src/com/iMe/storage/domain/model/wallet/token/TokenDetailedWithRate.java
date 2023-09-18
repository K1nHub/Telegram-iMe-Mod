package com.iMe.storage.domain.model.wallet.token;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: TokenDetailedWithRate.kt */
/* loaded from: classes4.dex */
public final class TokenDetailedWithRate {
    private final FiatValue rateToFiat;
    private final TokenDetailed token;

    public static /* synthetic */ TokenDetailedWithRate copy$default(TokenDetailedWithRate tokenDetailedWithRate, TokenDetailed tokenDetailed, FiatValue fiatValue, int i, Object obj) {
        if ((i & 1) != 0) {
            tokenDetailed = tokenDetailedWithRate.token;
        }
        if ((i & 2) != 0) {
            fiatValue = tokenDetailedWithRate.rateToFiat;
        }
        return tokenDetailedWithRate.copy(tokenDetailed, fiatValue);
    }

    public final TokenDetailed component1() {
        return this.token;
    }

    public final FiatValue component2() {
        return this.rateToFiat;
    }

    public final TokenDetailedWithRate copy(TokenDetailed token, FiatValue rateToFiat) {
        Intrinsics.checkNotNullParameter(token, "token");
        Intrinsics.checkNotNullParameter(rateToFiat, "rateToFiat");
        return new TokenDetailedWithRate(token, rateToFiat);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TokenDetailedWithRate) {
            TokenDetailedWithRate tokenDetailedWithRate = (TokenDetailedWithRate) obj;
            return Intrinsics.areEqual(this.token, tokenDetailedWithRate.token) && Intrinsics.areEqual(this.rateToFiat, tokenDetailedWithRate.rateToFiat);
        }
        return false;
    }

    public int hashCode() {
        return (this.token.hashCode() * 31) + this.rateToFiat.hashCode();
    }

    public String toString() {
        return "TokenDetailedWithRate(token=" + this.token + ", rateToFiat=" + this.rateToFiat + ')';
    }

    public TokenDetailedWithRate(TokenDetailed token, FiatValue rateToFiat) {
        Intrinsics.checkNotNullParameter(token, "token");
        Intrinsics.checkNotNullParameter(rateToFiat, "rateToFiat");
        this.token = token;
        this.rateToFiat = rateToFiat;
    }

    public final TokenDetailed getToken() {
        return this.token;
    }

    public final FiatValue getRateToFiat() {
        return this.rateToFiat;
    }
}
