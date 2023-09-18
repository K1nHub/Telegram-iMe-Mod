package com.iMe.storage.data.network.model.request.twitter;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: ChangeTwitterConnectionStatusRequest.kt */
/* loaded from: classes4.dex */
public final class ChangeTwitterConnectionStatusRequest {
    private final String telegramChatId;
    private final String twitterUserId;

    public static /* synthetic */ ChangeTwitterConnectionStatusRequest copy$default(ChangeTwitterConnectionStatusRequest changeTwitterConnectionStatusRequest, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = changeTwitterConnectionStatusRequest.twitterUserId;
        }
        if ((i & 2) != 0) {
            str2 = changeTwitterConnectionStatusRequest.telegramChatId;
        }
        return changeTwitterConnectionStatusRequest.copy(str, str2);
    }

    public final String component1() {
        return this.twitterUserId;
    }

    public final String component2() {
        return this.telegramChatId;
    }

    public final ChangeTwitterConnectionStatusRequest copy(String twitterUserId, String telegramChatId) {
        Intrinsics.checkNotNullParameter(twitterUserId, "twitterUserId");
        Intrinsics.checkNotNullParameter(telegramChatId, "telegramChatId");
        return new ChangeTwitterConnectionStatusRequest(twitterUserId, telegramChatId);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ChangeTwitterConnectionStatusRequest) {
            ChangeTwitterConnectionStatusRequest changeTwitterConnectionStatusRequest = (ChangeTwitterConnectionStatusRequest) obj;
            return Intrinsics.areEqual(this.twitterUserId, changeTwitterConnectionStatusRequest.twitterUserId) && Intrinsics.areEqual(this.telegramChatId, changeTwitterConnectionStatusRequest.telegramChatId);
        }
        return false;
    }

    public int hashCode() {
        return (this.twitterUserId.hashCode() * 31) + this.telegramChatId.hashCode();
    }

    public String toString() {
        return "ChangeTwitterConnectionStatusRequest(twitterUserId=" + this.twitterUserId + ", telegramChatId=" + this.telegramChatId + ')';
    }

    public ChangeTwitterConnectionStatusRequest(String twitterUserId, String telegramChatId) {
        Intrinsics.checkNotNullParameter(twitterUserId, "twitterUserId");
        Intrinsics.checkNotNullParameter(telegramChatId, "telegramChatId");
        this.twitterUserId = twitterUserId;
        this.telegramChatId = telegramChatId;
    }

    public final String getTwitterUserId() {
        return this.twitterUserId;
    }

    public final String getTelegramChatId() {
        return this.telegramChatId;
    }
}
