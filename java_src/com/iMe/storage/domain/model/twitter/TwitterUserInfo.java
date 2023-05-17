package com.iMe.storage.domain.model.twitter;

import com.iMe.bots.data.model.database.BotsDbModel$$ExternalSyntheticBackport0;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TwitterUserInfo.kt */
/* loaded from: classes3.dex */
public final class TwitterUserInfo {
    private final Long telegramUserId;
    private final String twitterAvatarUrl;
    private final String twitterName;
    private final long twitterUserId;
    private final String twitterUsername;

    public static /* synthetic */ TwitterUserInfo copy$default(TwitterUserInfo twitterUserInfo, long j, String str, String str2, String str3, Long l, int i, Object obj) {
        if ((i & 1) != 0) {
            j = twitterUserInfo.twitterUserId;
        }
        long j2 = j;
        if ((i & 2) != 0) {
            str = twitterUserInfo.twitterUsername;
        }
        String str4 = str;
        if ((i & 4) != 0) {
            str2 = twitterUserInfo.twitterName;
        }
        String str5 = str2;
        if ((i & 8) != 0) {
            str3 = twitterUserInfo.twitterAvatarUrl;
        }
        String str6 = str3;
        if ((i & 16) != 0) {
            l = twitterUserInfo.telegramUserId;
        }
        return twitterUserInfo.copy(j2, str4, str5, str6, l);
    }

    public final long component1() {
        return this.twitterUserId;
    }

    public final String component2() {
        return this.twitterUsername;
    }

    public final String component3() {
        return this.twitterName;
    }

    public final String component4() {
        return this.twitterAvatarUrl;
    }

    public final Long component5() {
        return this.telegramUserId;
    }

    public final TwitterUserInfo copy(long j, String twitterUsername, String twitterName, String twitterAvatarUrl, Long l) {
        Intrinsics.checkNotNullParameter(twitterUsername, "twitterUsername");
        Intrinsics.checkNotNullParameter(twitterName, "twitterName");
        Intrinsics.checkNotNullParameter(twitterAvatarUrl, "twitterAvatarUrl");
        return new TwitterUserInfo(j, twitterUsername, twitterName, twitterAvatarUrl, l);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TwitterUserInfo) {
            TwitterUserInfo twitterUserInfo = (TwitterUserInfo) obj;
            return this.twitterUserId == twitterUserInfo.twitterUserId && Intrinsics.areEqual(this.twitterUsername, twitterUserInfo.twitterUsername) && Intrinsics.areEqual(this.twitterName, twitterUserInfo.twitterName) && Intrinsics.areEqual(this.twitterAvatarUrl, twitterUserInfo.twitterAvatarUrl) && Intrinsics.areEqual(this.telegramUserId, twitterUserInfo.telegramUserId);
        }
        return false;
    }

    public int hashCode() {
        int m706m = ((((((BotsDbModel$$ExternalSyntheticBackport0.m706m(this.twitterUserId) * 31) + this.twitterUsername.hashCode()) * 31) + this.twitterName.hashCode()) * 31) + this.twitterAvatarUrl.hashCode()) * 31;
        Long l = this.telegramUserId;
        return m706m + (l == null ? 0 : l.hashCode());
    }

    public String toString() {
        return "TwitterUserInfo(twitterUserId=" + this.twitterUserId + ", twitterUsername=" + this.twitterUsername + ", twitterName=" + this.twitterName + ", twitterAvatarUrl=" + this.twitterAvatarUrl + ", telegramUserId=" + this.telegramUserId + ')';
    }

    public TwitterUserInfo(long j, String twitterUsername, String twitterName, String twitterAvatarUrl, Long l) {
        Intrinsics.checkNotNullParameter(twitterUsername, "twitterUsername");
        Intrinsics.checkNotNullParameter(twitterName, "twitterName");
        Intrinsics.checkNotNullParameter(twitterAvatarUrl, "twitterAvatarUrl");
        this.twitterUserId = j;
        this.twitterUsername = twitterUsername;
        this.twitterName = twitterName;
        this.twitterAvatarUrl = twitterAvatarUrl;
        this.telegramUserId = l;
    }

    public final long getTwitterUserId() {
        return this.twitterUserId;
    }

    public final String getTwitterUsername() {
        return this.twitterUsername;
    }

    public final String getTwitterName() {
        return this.twitterName;
    }

    public final String getTwitterAvatarUrl() {
        return this.twitterAvatarUrl;
    }

    public final Long getTelegramUserId() {
        return this.telegramUserId;
    }
}
