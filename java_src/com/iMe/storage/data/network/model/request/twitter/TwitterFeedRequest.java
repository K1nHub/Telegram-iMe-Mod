package com.iMe.storage.data.network.model.request.twitter;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: TwitterFeedRequest.kt */
/* loaded from: classes3.dex */
public final class TwitterFeedRequest {
    private final String accessToken;
    private final String sinceId;
    private final String twitterUserId;

    public static /* synthetic */ TwitterFeedRequest copy$default(TwitterFeedRequest twitterFeedRequest, String str, String str2, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            str = twitterFeedRequest.twitterUserId;
        }
        if ((i & 2) != 0) {
            str2 = twitterFeedRequest.sinceId;
        }
        if ((i & 4) != 0) {
            str3 = twitterFeedRequest.accessToken;
        }
        return twitterFeedRequest.copy(str, str2, str3);
    }

    public final String component1() {
        return this.twitterUserId;
    }

    public final String component2() {
        return this.sinceId;
    }

    public final String component3() {
        return this.accessToken;
    }

    public final TwitterFeedRequest copy(String twitterUserId, String str, String str2) {
        Intrinsics.checkNotNullParameter(twitterUserId, "twitterUserId");
        return new TwitterFeedRequest(twitterUserId, str, str2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TwitterFeedRequest) {
            TwitterFeedRequest twitterFeedRequest = (TwitterFeedRequest) obj;
            return Intrinsics.areEqual(this.twitterUserId, twitterFeedRequest.twitterUserId) && Intrinsics.areEqual(this.sinceId, twitterFeedRequest.sinceId) && Intrinsics.areEqual(this.accessToken, twitterFeedRequest.accessToken);
        }
        return false;
    }

    public int hashCode() {
        int hashCode = this.twitterUserId.hashCode() * 31;
        String str = this.sinceId;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.accessToken;
        return hashCode2 + (str2 != null ? str2.hashCode() : 0);
    }

    public String toString() {
        return "TwitterFeedRequest(twitterUserId=" + this.twitterUserId + ", sinceId=" + this.sinceId + ", accessToken=" + this.accessToken + ')';
    }

    public TwitterFeedRequest(String twitterUserId, String str, String str2) {
        Intrinsics.checkNotNullParameter(twitterUserId, "twitterUserId");
        this.twitterUserId = twitterUserId;
        this.sinceId = str;
        this.accessToken = str2;
    }

    public final String getTwitterUserId() {
        return this.twitterUserId;
    }

    public final String getSinceId() {
        return this.sinceId;
    }

    public final String getAccessToken() {
        return this.accessToken;
    }
}
