package com.iMe.storage.data.network.model.request.twitter;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: TwitterInviteRequest.kt */
/* loaded from: classes3.dex */
public final class TwitterInviteRequest {
    private final String accessToken;
    private final String twitterUserId;

    public static /* synthetic */ TwitterInviteRequest copy$default(TwitterInviteRequest twitterInviteRequest, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = twitterInviteRequest.accessToken;
        }
        if ((i & 2) != 0) {
            str2 = twitterInviteRequest.twitterUserId;
        }
        return twitterInviteRequest.copy(str, str2);
    }

    public final String component1() {
        return this.accessToken;
    }

    public final String component2() {
        return this.twitterUserId;
    }

    public final TwitterInviteRequest copy(String accessToken, String twitterUserId) {
        Intrinsics.checkNotNullParameter(accessToken, "accessToken");
        Intrinsics.checkNotNullParameter(twitterUserId, "twitterUserId");
        return new TwitterInviteRequest(accessToken, twitterUserId);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TwitterInviteRequest) {
            TwitterInviteRequest twitterInviteRequest = (TwitterInviteRequest) obj;
            return Intrinsics.areEqual(this.accessToken, twitterInviteRequest.accessToken) && Intrinsics.areEqual(this.twitterUserId, twitterInviteRequest.twitterUserId);
        }
        return false;
    }

    public int hashCode() {
        return (this.accessToken.hashCode() * 31) + this.twitterUserId.hashCode();
    }

    public String toString() {
        return "TwitterInviteRequest(accessToken=" + this.accessToken + ", twitterUserId=" + this.twitterUserId + ')';
    }

    public TwitterInviteRequest(String accessToken, String twitterUserId) {
        Intrinsics.checkNotNullParameter(accessToken, "accessToken");
        Intrinsics.checkNotNullParameter(twitterUserId, "twitterUserId");
        this.accessToken = accessToken;
        this.twitterUserId = twitterUserId;
    }

    public final String getAccessToken() {
        return this.accessToken;
    }

    public final String getTwitterUserId() {
        return this.twitterUserId;
    }
}
