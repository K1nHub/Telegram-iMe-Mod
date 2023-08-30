package com.iMe.storage.domain.model.binancepay;

import com.iMe.bots.data.model.database.BotsDbModel$$ExternalSyntheticBackport0;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: BinanceAuthTokens.kt */
/* loaded from: classes3.dex */
public final class BinanceAuthTokens {
    private final String accessToken;
    private final long accessTokenExpiresIn;
    private final BinancePayAuthType authType;
    private final String refreshToken;

    public static /* synthetic */ BinanceAuthTokens copy$default(BinanceAuthTokens binanceAuthTokens, String str, String str2, long j, BinancePayAuthType binancePayAuthType, int i, Object obj) {
        if ((i & 1) != 0) {
            str = binanceAuthTokens.accessToken;
        }
        if ((i & 2) != 0) {
            str2 = binanceAuthTokens.refreshToken;
        }
        String str3 = str2;
        if ((i & 4) != 0) {
            j = binanceAuthTokens.accessTokenExpiresIn;
        }
        long j2 = j;
        if ((i & 8) != 0) {
            binancePayAuthType = binanceAuthTokens.authType;
        }
        return binanceAuthTokens.copy(str, str3, j2, binancePayAuthType);
    }

    public final String component1() {
        return this.accessToken;
    }

    public final String component2() {
        return this.refreshToken;
    }

    public final long component3() {
        return this.accessTokenExpiresIn;
    }

    public final BinancePayAuthType component4() {
        return this.authType;
    }

    public final BinanceAuthTokens copy(String accessToken, String refreshToken, long j, BinancePayAuthType authType) {
        Intrinsics.checkNotNullParameter(accessToken, "accessToken");
        Intrinsics.checkNotNullParameter(refreshToken, "refreshToken");
        Intrinsics.checkNotNullParameter(authType, "authType");
        return new BinanceAuthTokens(accessToken, refreshToken, j, authType);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof BinanceAuthTokens) {
            BinanceAuthTokens binanceAuthTokens = (BinanceAuthTokens) obj;
            return Intrinsics.areEqual(this.accessToken, binanceAuthTokens.accessToken) && Intrinsics.areEqual(this.refreshToken, binanceAuthTokens.refreshToken) && this.accessTokenExpiresIn == binanceAuthTokens.accessTokenExpiresIn && this.authType == binanceAuthTokens.authType;
        }
        return false;
    }

    public int hashCode() {
        return (((((this.accessToken.hashCode() * 31) + this.refreshToken.hashCode()) * 31) + BotsDbModel$$ExternalSyntheticBackport0.m724m(this.accessTokenExpiresIn)) * 31) + this.authType.hashCode();
    }

    public String toString() {
        return "BinanceAuthTokens(accessToken=" + this.accessToken + ", refreshToken=" + this.refreshToken + ", accessTokenExpiresIn=" + this.accessTokenExpiresIn + ", authType=" + this.authType + ')';
    }

    public BinanceAuthTokens(String accessToken, String refreshToken, long j, BinancePayAuthType authType) {
        Intrinsics.checkNotNullParameter(accessToken, "accessToken");
        Intrinsics.checkNotNullParameter(refreshToken, "refreshToken");
        Intrinsics.checkNotNullParameter(authType, "authType");
        this.accessToken = accessToken;
        this.refreshToken = refreshToken;
        this.accessTokenExpiresIn = j;
        this.authType = authType;
    }

    public final String getAccessToken() {
        return this.accessToken;
    }

    public final String getRefreshToken() {
        return this.refreshToken;
    }

    public final long getAccessTokenExpiresIn() {
        return this.accessTokenExpiresIn;
    }

    public final BinancePayAuthType getAuthType() {
        return this.authType;
    }
}
