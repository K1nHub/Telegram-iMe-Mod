package com.iMe.storage.data.network.model.request.twitter;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: TwitterSelfChatProfileRequest.kt */
/* loaded from: classes4.dex */
public final class TwitterSelfChatProfileRequest {
    private final String accessToken;
    private final String telegramUserId;

    public static /* synthetic */ TwitterSelfChatProfileRequest copy$default(TwitterSelfChatProfileRequest twitterSelfChatProfileRequest, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = twitterSelfChatProfileRequest.accessToken;
        }
        if ((i & 2) != 0) {
            str2 = twitterSelfChatProfileRequest.telegramUserId;
        }
        return twitterSelfChatProfileRequest.copy(str, str2);
    }

    public final String component1() {
        return this.accessToken;
    }

    public final String component2() {
        return this.telegramUserId;
    }

    public final TwitterSelfChatProfileRequest copy(String accessToken, String telegramUserId) {
        Intrinsics.checkNotNullParameter(accessToken, "accessToken");
        Intrinsics.checkNotNullParameter(telegramUserId, "telegramUserId");
        return new TwitterSelfChatProfileRequest(accessToken, telegramUserId);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TwitterSelfChatProfileRequest) {
            TwitterSelfChatProfileRequest twitterSelfChatProfileRequest = (TwitterSelfChatProfileRequest) obj;
            return Intrinsics.areEqual(this.accessToken, twitterSelfChatProfileRequest.accessToken) && Intrinsics.areEqual(this.telegramUserId, twitterSelfChatProfileRequest.telegramUserId);
        }
        return false;
    }

    public int hashCode() {
        return (this.accessToken.hashCode() * 31) + this.telegramUserId.hashCode();
    }

    public String toString() {
        return "TwitterSelfChatProfileRequest(accessToken=" + this.accessToken + ", telegramUserId=" + this.telegramUserId + ')';
    }

    public TwitterSelfChatProfileRequest(String accessToken, String telegramUserId) {
        Intrinsics.checkNotNullParameter(accessToken, "accessToken");
        Intrinsics.checkNotNullParameter(telegramUserId, "telegramUserId");
        this.accessToken = accessToken;
        this.telegramUserId = telegramUserId;
    }

    public final String getAccessToken() {
        return this.accessToken;
    }

    public final String getTelegramUserId() {
        return this.telegramUserId;
    }
}
