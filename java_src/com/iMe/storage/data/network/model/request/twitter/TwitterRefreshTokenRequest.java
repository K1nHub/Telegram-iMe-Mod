package com.iMe.storage.data.network.model.request.twitter;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: TwitterRefreshTokenRequest.kt */
/* loaded from: classes3.dex */
public final class TwitterRefreshTokenRequest {
    private final String refreshToken;

    public static /* synthetic */ TwitterRefreshTokenRequest copy$default(TwitterRefreshTokenRequest twitterRefreshTokenRequest, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = twitterRefreshTokenRequest.refreshToken;
        }
        return twitterRefreshTokenRequest.copy(str);
    }

    public final String component1() {
        return this.refreshToken;
    }

    public final TwitterRefreshTokenRequest copy(String refreshToken) {
        Intrinsics.checkNotNullParameter(refreshToken, "refreshToken");
        return new TwitterRefreshTokenRequest(refreshToken);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof TwitterRefreshTokenRequest) && Intrinsics.areEqual(this.refreshToken, ((TwitterRefreshTokenRequest) obj).refreshToken);
    }

    public int hashCode() {
        return this.refreshToken.hashCode();
    }

    public String toString() {
        return "TwitterRefreshTokenRequest(refreshToken=" + this.refreshToken + ')';
    }

    public TwitterRefreshTokenRequest(String refreshToken) {
        Intrinsics.checkNotNullParameter(refreshToken, "refreshToken");
        this.refreshToken = refreshToken;
    }

    public final String getRefreshToken() {
        return this.refreshToken;
    }
}
