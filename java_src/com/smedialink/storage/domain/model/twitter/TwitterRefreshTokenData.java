package com.smedialink.storage.domain.model.twitter;

import com.iMe.i_staking.request.StakingApprovalPrepareRequest$$ExternalSyntheticBackport0;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TwitterRefreshTokenData.kt */
/* loaded from: classes3.dex */
public final class TwitterRefreshTokenData {
    private final String accessToken;
    private final long expiresIn;
    private final String refreshToken;

    public static /* synthetic */ TwitterRefreshTokenData copy$default(TwitterRefreshTokenData twitterRefreshTokenData, String str, String str2, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            str = twitterRefreshTokenData.accessToken;
        }
        if ((i & 2) != 0) {
            str2 = twitterRefreshTokenData.refreshToken;
        }
        if ((i & 4) != 0) {
            j = twitterRefreshTokenData.expiresIn;
        }
        return twitterRefreshTokenData.copy(str, str2, j);
    }

    public final String component1() {
        return this.accessToken;
    }

    public final String component2() {
        return this.refreshToken;
    }

    public final long component3() {
        return this.expiresIn;
    }

    public final TwitterRefreshTokenData copy(String accessToken, String refreshToken, long j) {
        Intrinsics.checkNotNullParameter(accessToken, "accessToken");
        Intrinsics.checkNotNullParameter(refreshToken, "refreshToken");
        return new TwitterRefreshTokenData(accessToken, refreshToken, j);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TwitterRefreshTokenData) {
            TwitterRefreshTokenData twitterRefreshTokenData = (TwitterRefreshTokenData) obj;
            return Intrinsics.areEqual(this.accessToken, twitterRefreshTokenData.accessToken) && Intrinsics.areEqual(this.refreshToken, twitterRefreshTokenData.refreshToken) && this.expiresIn == twitterRefreshTokenData.expiresIn;
        }
        return false;
    }

    public int hashCode() {
        return (((this.accessToken.hashCode() * 31) + this.refreshToken.hashCode()) * 31) + StakingApprovalPrepareRequest$$ExternalSyntheticBackport0.m716m(this.expiresIn);
    }

    public String toString() {
        return "TwitterRefreshTokenData(accessToken=" + this.accessToken + ", refreshToken=" + this.refreshToken + ", expiresIn=" + this.expiresIn + ')';
    }

    public TwitterRefreshTokenData(String accessToken, String refreshToken, long j) {
        Intrinsics.checkNotNullParameter(accessToken, "accessToken");
        Intrinsics.checkNotNullParameter(refreshToken, "refreshToken");
        this.accessToken = accessToken;
        this.refreshToken = refreshToken;
        this.expiresIn = j;
    }

    public final String getAccessToken() {
        return this.accessToken;
    }

    public final String getRefreshToken() {
        return this.refreshToken;
    }

    public final long getExpiresIn() {
        return this.expiresIn;
    }
}
