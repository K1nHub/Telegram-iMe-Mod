package com.smedialink.storage.data.network.model.response.twitter;

import com.iMe.i_staking.request.StakingApprovalPrepareRequest$$ExternalSyntheticBackport0;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: RefreshTokenResponse.kt */
/* loaded from: classes3.dex */
public final class RefreshTokenResponse {
    private final String accessToken;
    private final long expiresIn;
    private final String refreshToken;

    public static /* synthetic */ RefreshTokenResponse copy$default(RefreshTokenResponse refreshTokenResponse, String str, String str2, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            str = refreshTokenResponse.accessToken;
        }
        if ((i & 2) != 0) {
            str2 = refreshTokenResponse.refreshToken;
        }
        if ((i & 4) != 0) {
            j = refreshTokenResponse.expiresIn;
        }
        return refreshTokenResponse.copy(str, str2, j);
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

    public final RefreshTokenResponse copy(String accessToken, String refreshToken, long j) {
        Intrinsics.checkNotNullParameter(accessToken, "accessToken");
        Intrinsics.checkNotNullParameter(refreshToken, "refreshToken");
        return new RefreshTokenResponse(accessToken, refreshToken, j);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof RefreshTokenResponse) {
            RefreshTokenResponse refreshTokenResponse = (RefreshTokenResponse) obj;
            return Intrinsics.areEqual(this.accessToken, refreshTokenResponse.accessToken) && Intrinsics.areEqual(this.refreshToken, refreshTokenResponse.refreshToken) && this.expiresIn == refreshTokenResponse.expiresIn;
        }
        return false;
    }

    public int hashCode() {
        return (((this.accessToken.hashCode() * 31) + this.refreshToken.hashCode()) * 31) + StakingApprovalPrepareRequest$$ExternalSyntheticBackport0.m716m(this.expiresIn);
    }

    public String toString() {
        return "RefreshTokenResponse(accessToken=" + this.accessToken + ", refreshToken=" + this.refreshToken + ", expiresIn=" + this.expiresIn + ')';
    }

    public RefreshTokenResponse(String accessToken, String refreshToken, long j) {
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
