package com.iMe.storage.data.network.model.response.twitter;

import com.iMe.feature.profile.ProfileData$$ExternalSyntheticBackport0;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TwitterUserResponse.kt */
/* loaded from: classes3.dex */
public final class TwitterUserResponse {
    private final String avatarUrl;
    private final Long telegramUserId;
    private final long twitterUserId;
    private final String twitterUserName;
    private final String userFullName;

    public static /* synthetic */ TwitterUserResponse copy$default(TwitterUserResponse twitterUserResponse, long j, String str, Long l, String str2, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            j = twitterUserResponse.twitterUserId;
        }
        long j2 = j;
        if ((i & 2) != 0) {
            str = twitterUserResponse.twitterUserName;
        }
        String str4 = str;
        if ((i & 4) != 0) {
            l = twitterUserResponse.telegramUserId;
        }
        Long l2 = l;
        if ((i & 8) != 0) {
            str2 = twitterUserResponse.avatarUrl;
        }
        String str5 = str2;
        if ((i & 16) != 0) {
            str3 = twitterUserResponse.userFullName;
        }
        return twitterUserResponse.copy(j2, str4, l2, str5, str3);
    }

    public final long component1() {
        return this.twitterUserId;
    }

    public final String component2() {
        return this.twitterUserName;
    }

    public final Long component3() {
        return this.telegramUserId;
    }

    public final String component4() {
        return this.avatarUrl;
    }

    public final String component5() {
        return this.userFullName;
    }

    public final TwitterUserResponse copy(long j, String twitterUserName, Long l, String str, String str2) {
        Intrinsics.checkNotNullParameter(twitterUserName, "twitterUserName");
        return new TwitterUserResponse(j, twitterUserName, l, str, str2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TwitterUserResponse) {
            TwitterUserResponse twitterUserResponse = (TwitterUserResponse) obj;
            return this.twitterUserId == twitterUserResponse.twitterUserId && Intrinsics.areEqual(this.twitterUserName, twitterUserResponse.twitterUserName) && Intrinsics.areEqual(this.telegramUserId, twitterUserResponse.telegramUserId) && Intrinsics.areEqual(this.avatarUrl, twitterUserResponse.avatarUrl) && Intrinsics.areEqual(this.userFullName, twitterUserResponse.userFullName);
        }
        return false;
    }

    public int hashCode() {
        int m1020m = ((ProfileData$$ExternalSyntheticBackport0.m1020m(this.twitterUserId) * 31) + this.twitterUserName.hashCode()) * 31;
        Long l = this.telegramUserId;
        int hashCode = (m1020m + (l == null ? 0 : l.hashCode())) * 31;
        String str = this.avatarUrl;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.userFullName;
        return hashCode2 + (str2 != null ? str2.hashCode() : 0);
    }

    public String toString() {
        return "TwitterUserResponse(twitterUserId=" + this.twitterUserId + ", twitterUserName=" + this.twitterUserName + ", telegramUserId=" + this.telegramUserId + ", avatarUrl=" + this.avatarUrl + ", userFullName=" + this.userFullName + ')';
    }

    public TwitterUserResponse(long j, String twitterUserName, Long l, String str, String str2) {
        Intrinsics.checkNotNullParameter(twitterUserName, "twitterUserName");
        this.twitterUserId = j;
        this.twitterUserName = twitterUserName;
        this.telegramUserId = l;
        this.avatarUrl = str;
        this.userFullName = str2;
    }

    public final long getTwitterUserId() {
        return this.twitterUserId;
    }

    public final String getTwitterUserName() {
        return this.twitterUserName;
    }

    public final Long getTelegramUserId() {
        return this.telegramUserId;
    }

    public final String getAvatarUrl() {
        return this.avatarUrl;
    }

    public final String getUserFullName() {
        return this.userFullName;
    }
}
