package com.iMe.storage.data.network.model.response.binance.pay;

import com.iMe.feature.profile.ProfileData$$ExternalSyntheticBackport0;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: BinancePayGetAuthTokensResponse.kt */
/* loaded from: classes3.dex */
public final class BinancePayGetAuthTokensResponse {
    private final String accessToken;
    private final long expiresIn;
    private final String refreshToken;
    private final String scope;
    private final String tokenType;

    public static /* synthetic */ BinancePayGetAuthTokensResponse copy$default(BinancePayGetAuthTokensResponse binancePayGetAuthTokensResponse, String str, String str2, String str3, String str4, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            str = binancePayGetAuthTokensResponse.accessToken;
        }
        if ((i & 2) != 0) {
            str2 = binancePayGetAuthTokensResponse.refreshToken;
        }
        String str5 = str2;
        if ((i & 4) != 0) {
            str3 = binancePayGetAuthTokensResponse.scope;
        }
        String str6 = str3;
        if ((i & 8) != 0) {
            str4 = binancePayGetAuthTokensResponse.tokenType;
        }
        String str7 = str4;
        if ((i & 16) != 0) {
            j = binancePayGetAuthTokensResponse.expiresIn;
        }
        return binancePayGetAuthTokensResponse.copy(str, str5, str6, str7, j);
    }

    public final String component1() {
        return this.accessToken;
    }

    public final String component2() {
        return this.refreshToken;
    }

    public final String component3() {
        return this.scope;
    }

    public final String component4() {
        return this.tokenType;
    }

    public final long component5() {
        return this.expiresIn;
    }

    public final BinancePayGetAuthTokensResponse copy(String accessToken, String refreshToken, String scope, String tokenType, long j) {
        Intrinsics.checkNotNullParameter(accessToken, "accessToken");
        Intrinsics.checkNotNullParameter(refreshToken, "refreshToken");
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(tokenType, "tokenType");
        return new BinancePayGetAuthTokensResponse(accessToken, refreshToken, scope, tokenType, j);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof BinancePayGetAuthTokensResponse) {
            BinancePayGetAuthTokensResponse binancePayGetAuthTokensResponse = (BinancePayGetAuthTokensResponse) obj;
            return Intrinsics.areEqual(this.accessToken, binancePayGetAuthTokensResponse.accessToken) && Intrinsics.areEqual(this.refreshToken, binancePayGetAuthTokensResponse.refreshToken) && Intrinsics.areEqual(this.scope, binancePayGetAuthTokensResponse.scope) && Intrinsics.areEqual(this.tokenType, binancePayGetAuthTokensResponse.tokenType) && this.expiresIn == binancePayGetAuthTokensResponse.expiresIn;
        }
        return false;
    }

    public int hashCode() {
        return (((((((this.accessToken.hashCode() * 31) + this.refreshToken.hashCode()) * 31) + this.scope.hashCode()) * 31) + this.tokenType.hashCode()) * 31) + ProfileData$$ExternalSyntheticBackport0.m1018m(this.expiresIn);
    }

    public String toString() {
        return "BinancePayGetAuthTokensResponse(accessToken=" + this.accessToken + ", refreshToken=" + this.refreshToken + ", scope=" + this.scope + ", tokenType=" + this.tokenType + ", expiresIn=" + this.expiresIn + ')';
    }

    public BinancePayGetAuthTokensResponse(String accessToken, String refreshToken, String scope, String tokenType, long j) {
        Intrinsics.checkNotNullParameter(accessToken, "accessToken");
        Intrinsics.checkNotNullParameter(refreshToken, "refreshToken");
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(tokenType, "tokenType");
        this.accessToken = accessToken;
        this.refreshToken = refreshToken;
        this.scope = scope;
        this.tokenType = tokenType;
        this.expiresIn = j;
    }

    public final String getAccessToken() {
        return this.accessToken;
    }

    public final String getRefreshToken() {
        return this.refreshToken;
    }

    public final String getScope() {
        return this.scope;
    }

    public final String getTokenType() {
        return this.tokenType;
    }

    public final long getExpiresIn() {
        return this.expiresIn;
    }
}
