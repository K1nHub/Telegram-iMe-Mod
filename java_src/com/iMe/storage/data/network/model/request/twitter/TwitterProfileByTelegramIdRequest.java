package com.iMe.storage.data.network.model.request.twitter;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: TwitterProfileByTelegramIdRequest.kt */
/* loaded from: classes3.dex */
public final class TwitterProfileByTelegramIdRequest {
    private final String telegramUserId;

    public static /* synthetic */ TwitterProfileByTelegramIdRequest copy$default(TwitterProfileByTelegramIdRequest twitterProfileByTelegramIdRequest, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = twitterProfileByTelegramIdRequest.telegramUserId;
        }
        return twitterProfileByTelegramIdRequest.copy(str);
    }

    public final String component1() {
        return this.telegramUserId;
    }

    public final TwitterProfileByTelegramIdRequest copy(String telegramUserId) {
        Intrinsics.checkNotNullParameter(telegramUserId, "telegramUserId");
        return new TwitterProfileByTelegramIdRequest(telegramUserId);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof TwitterProfileByTelegramIdRequest) && Intrinsics.areEqual(this.telegramUserId, ((TwitterProfileByTelegramIdRequest) obj).telegramUserId);
    }

    public int hashCode() {
        return this.telegramUserId.hashCode();
    }

    public String toString() {
        return "TwitterProfileByTelegramIdRequest(telegramUserId=" + this.telegramUserId + ')';
    }

    public TwitterProfileByTelegramIdRequest(String telegramUserId) {
        Intrinsics.checkNotNullParameter(telegramUserId, "telegramUserId");
        this.telegramUserId = telegramUserId;
    }

    public final String getTelegramUserId() {
        return this.telegramUserId;
    }
}
