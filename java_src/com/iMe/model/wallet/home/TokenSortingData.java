package com.iMe.model.wallet.home;

import com.iMe.storage.domain.model.wallet.token.TokenOrderType;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TokenSortingData.kt */
/* loaded from: classes3.dex */
public final class TokenSortingData {
    private final boolean isPositiveBalances;
    private final TokenOrderType tokensOrderType;

    public static /* synthetic */ TokenSortingData copy$default(TokenSortingData tokenSortingData, TokenOrderType tokenOrderType, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            tokenOrderType = tokenSortingData.tokensOrderType;
        }
        if ((i & 2) != 0) {
            z = tokenSortingData.isPositiveBalances;
        }
        return tokenSortingData.copy(tokenOrderType, z);
    }

    public final TokenOrderType component1() {
        return this.tokensOrderType;
    }

    public final boolean component2() {
        return this.isPositiveBalances;
    }

    public final TokenSortingData copy(TokenOrderType tokensOrderType, boolean z) {
        Intrinsics.checkNotNullParameter(tokensOrderType, "tokensOrderType");
        return new TokenSortingData(tokensOrderType, z);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TokenSortingData) {
            TokenSortingData tokenSortingData = (TokenSortingData) obj;
            return this.tokensOrderType == tokenSortingData.tokensOrderType && this.isPositiveBalances == tokenSortingData.isPositiveBalances;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = this.tokensOrderType.hashCode() * 31;
        boolean z = this.isPositiveBalances;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return hashCode + i;
    }

    public String toString() {
        return "TokenSortingData(tokensOrderType=" + this.tokensOrderType + ", isPositiveBalances=" + this.isPositiveBalances + ')';
    }

    public TokenSortingData(TokenOrderType tokensOrderType, boolean z) {
        Intrinsics.checkNotNullParameter(tokensOrderType, "tokensOrderType");
        this.tokensOrderType = tokensOrderType;
        this.isPositiveBalances = z;
    }

    public final TokenOrderType getTokensOrderType() {
        return this.tokensOrderType;
    }

    public final boolean isPositiveBalances() {
        return this.isPositiveBalances;
    }
}
