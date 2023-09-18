package com.iMe.storage.data.network.model.request.twitter;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: TwitterLogoutRequest.kt */
/* loaded from: classes4.dex */
public final class TwitterLogoutRequest {
    private final String accessToken;
    private final String telegramChatId;
    private final String twitterUserId;

    public static /* synthetic */ TwitterLogoutRequest copy$default(TwitterLogoutRequest twitterLogoutRequest, String str, String str2, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            str = twitterLogoutRequest.accessToken;
        }
        if ((i & 2) != 0) {
            str2 = twitterLogoutRequest.telegramChatId;
        }
        if ((i & 4) != 0) {
            str3 = twitterLogoutRequest.twitterUserId;
        }
        return twitterLogoutRequest.copy(str, str2, str3);
    }

    public final String component1() {
        return this.accessToken;
    }

    public final String component2() {
        return this.telegramChatId;
    }

    public final String component3() {
        return this.twitterUserId;
    }

    public final TwitterLogoutRequest copy(String accessToken, String telegramChatId, String twitterUserId) {
        Intrinsics.checkNotNullParameter(accessToken, "accessToken");
        Intrinsics.checkNotNullParameter(telegramChatId, "telegramChatId");
        Intrinsics.checkNotNullParameter(twitterUserId, "twitterUserId");
        return new TwitterLogoutRequest(accessToken, telegramChatId, twitterUserId);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TwitterLogoutRequest) {
            TwitterLogoutRequest twitterLogoutRequest = (TwitterLogoutRequest) obj;
            return Intrinsics.areEqual(this.accessToken, twitterLogoutRequest.accessToken) && Intrinsics.areEqual(this.telegramChatId, twitterLogoutRequest.telegramChatId) && Intrinsics.areEqual(this.twitterUserId, twitterLogoutRequest.twitterUserId);
        }
        return false;
    }

    public int hashCode() {
        return (((this.accessToken.hashCode() * 31) + this.telegramChatId.hashCode()) * 31) + this.twitterUserId.hashCode();
    }

    public String toString() {
        return "TwitterLogoutRequest(accessToken=" + this.accessToken + ", telegramChatId=" + this.telegramChatId + ", twitterUserId=" + this.twitterUserId + ')';
    }

    public TwitterLogoutRequest(String accessToken, String telegramChatId, String twitterUserId) {
        Intrinsics.checkNotNullParameter(accessToken, "accessToken");
        Intrinsics.checkNotNullParameter(telegramChatId, "telegramChatId");
        Intrinsics.checkNotNullParameter(twitterUserId, "twitterUserId");
        this.accessToken = accessToken;
        this.telegramChatId = telegramChatId;
        this.twitterUserId = twitterUserId;
    }

    public final String getAccessToken() {
        return this.accessToken;
    }

    public final String getTelegramChatId() {
        return this.telegramChatId;
    }

    public final String getTwitterUserId() {
        return this.twitterUserId;
    }
}
