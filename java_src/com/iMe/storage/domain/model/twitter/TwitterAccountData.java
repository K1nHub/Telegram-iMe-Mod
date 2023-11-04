package com.iMe.storage.domain.model.twitter;

import com.iMe.feature.profile.ProfileData$$ExternalSyntheticBackport0;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TwitterAccountData.kt */
/* loaded from: classes3.dex */
public final class TwitterAccountData {
    private final String accessToken;
    private final String refreshToken;
    private final long tokenValidUntil;
    private final long twitterId;
    private final String twitterUsername;

    public final long component1() {
        return this.twitterId;
    }

    public final String component2() {
        return this.twitterUsername;
    }

    public final String component3() {
        return this.accessToken;
    }

    public final String component4() {
        return this.refreshToken;
    }

    public final long component5() {
        return this.tokenValidUntil;
    }

    public final TwitterAccountData copy(long j, String twitterUsername, String accessToken, String refreshToken, long j2) {
        Intrinsics.checkNotNullParameter(twitterUsername, "twitterUsername");
        Intrinsics.checkNotNullParameter(accessToken, "accessToken");
        Intrinsics.checkNotNullParameter(refreshToken, "refreshToken");
        return new TwitterAccountData(j, twitterUsername, accessToken, refreshToken, j2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TwitterAccountData) {
            TwitterAccountData twitterAccountData = (TwitterAccountData) obj;
            return this.twitterId == twitterAccountData.twitterId && Intrinsics.areEqual(this.twitterUsername, twitterAccountData.twitterUsername) && Intrinsics.areEqual(this.accessToken, twitterAccountData.accessToken) && Intrinsics.areEqual(this.refreshToken, twitterAccountData.refreshToken) && this.tokenValidUntil == twitterAccountData.tokenValidUntil;
        }
        return false;
    }

    public int hashCode() {
        return (((((((ProfileData$$ExternalSyntheticBackport0.m1018m(this.twitterId) * 31) + this.twitterUsername.hashCode()) * 31) + this.accessToken.hashCode()) * 31) + this.refreshToken.hashCode()) * 31) + ProfileData$$ExternalSyntheticBackport0.m1018m(this.tokenValidUntil);
    }

    public String toString() {
        return "TwitterAccountData(twitterId=" + this.twitterId + ", twitterUsername=" + this.twitterUsername + ", accessToken=" + this.accessToken + ", refreshToken=" + this.refreshToken + ", tokenValidUntil=" + this.tokenValidUntil + ')';
    }

    public TwitterAccountData(long j, String twitterUsername, String accessToken, String refreshToken, long j2) {
        Intrinsics.checkNotNullParameter(twitterUsername, "twitterUsername");
        Intrinsics.checkNotNullParameter(accessToken, "accessToken");
        Intrinsics.checkNotNullParameter(refreshToken, "refreshToken");
        this.twitterId = j;
        this.twitterUsername = twitterUsername;
        this.accessToken = accessToken;
        this.refreshToken = refreshToken;
        this.tokenValidUntil = j2;
    }

    public final long getTwitterId() {
        return this.twitterId;
    }

    public final String getTwitterUsername() {
        return this.twitterUsername;
    }

    public final String getAccessToken() {
        return this.accessToken;
    }

    public final String getRefreshToken() {
        return this.refreshToken;
    }

    public final long getTokenValidUntil() {
        return this.tokenValidUntil;
    }
}
