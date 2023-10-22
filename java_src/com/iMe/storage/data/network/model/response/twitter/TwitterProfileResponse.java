package com.iMe.storage.data.network.model.response.twitter;

import com.iMe.feature.profile.ProfileData$$ExternalSyntheticBackport0;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TwitterProfileResponse.kt */
/* loaded from: classes3.dex */
public final class TwitterProfileResponse {
    private final Long telegramUserId;
    private final long twitterUserId;
    private final Long twitterUserIdInDatabase;
    private final String twitterUserName;
    private final Boolean unlinked;

    public static /* synthetic */ TwitterProfileResponse copy$default(TwitterProfileResponse twitterProfileResponse, long j, Long l, Long l2, String str, Boolean bool, int i, Object obj) {
        if ((i & 1) != 0) {
            j = twitterProfileResponse.twitterUserId;
        }
        long j2 = j;
        if ((i & 2) != 0) {
            l = twitterProfileResponse.twitterUserIdInDatabase;
        }
        Long l3 = l;
        if ((i & 4) != 0) {
            l2 = twitterProfileResponse.telegramUserId;
        }
        Long l4 = l2;
        if ((i & 8) != 0) {
            str = twitterProfileResponse.twitterUserName;
        }
        String str2 = str;
        if ((i & 16) != 0) {
            bool = twitterProfileResponse.unlinked;
        }
        return twitterProfileResponse.copy(j2, l3, l4, str2, bool);
    }

    public final long component1() {
        return this.twitterUserId;
    }

    public final Long component2() {
        return this.twitterUserIdInDatabase;
    }

    public final Long component3() {
        return this.telegramUserId;
    }

    public final String component4() {
        return this.twitterUserName;
    }

    public final Boolean component5() {
        return this.unlinked;
    }

    public final TwitterProfileResponse copy(long j, Long l, Long l2, String str, Boolean bool) {
        return new TwitterProfileResponse(j, l, l2, str, bool);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TwitterProfileResponse) {
            TwitterProfileResponse twitterProfileResponse = (TwitterProfileResponse) obj;
            return this.twitterUserId == twitterProfileResponse.twitterUserId && Intrinsics.areEqual(this.twitterUserIdInDatabase, twitterProfileResponse.twitterUserIdInDatabase) && Intrinsics.areEqual(this.telegramUserId, twitterProfileResponse.telegramUserId) && Intrinsics.areEqual(this.twitterUserName, twitterProfileResponse.twitterUserName) && Intrinsics.areEqual(this.unlinked, twitterProfileResponse.unlinked);
        }
        return false;
    }

    public int hashCode() {
        int m1017m = ProfileData$$ExternalSyntheticBackport0.m1017m(this.twitterUserId) * 31;
        Long l = this.twitterUserIdInDatabase;
        int hashCode = (m1017m + (l == null ? 0 : l.hashCode())) * 31;
        Long l2 = this.telegramUserId;
        int hashCode2 = (hashCode + (l2 == null ? 0 : l2.hashCode())) * 31;
        String str = this.twitterUserName;
        int hashCode3 = (hashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        Boolean bool = this.unlinked;
        return hashCode3 + (bool != null ? bool.hashCode() : 0);
    }

    public String toString() {
        return "TwitterProfileResponse(twitterUserId=" + this.twitterUserId + ", twitterUserIdInDatabase=" + this.twitterUserIdInDatabase + ", telegramUserId=" + this.telegramUserId + ", twitterUserName=" + this.twitterUserName + ", unlinked=" + this.unlinked + ')';
    }

    public TwitterProfileResponse(long j, Long l, Long l2, String str, Boolean bool) {
        this.twitterUserId = j;
        this.twitterUserIdInDatabase = l;
        this.telegramUserId = l2;
        this.twitterUserName = str;
        this.unlinked = bool;
    }

    public final long getTwitterUserId() {
        return this.twitterUserId;
    }

    public final Long getTwitterUserIdInDatabase() {
        return this.twitterUserIdInDatabase;
    }

    public final Long getTelegramUserId() {
        return this.telegramUserId;
    }

    public final String getTwitterUserName() {
        return this.twitterUserName;
    }

    public final Boolean getUnlinked() {
        return this.unlinked;
    }
}
