package com.iMe.storage.domain.model.twitter;

import com.iMe.bots.data.model.database.BotsDbModel$$ExternalSyntheticBackport0;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TwitterProfileInfo.kt */
/* loaded from: classes4.dex */
public final class TwitterProfileInfo {
    private final boolean isUnlinked;
    private final long telegramUserId;
    private final long twitterUserId;
    private final long twitterUserIdInDatabase;
    private final String twitterUserName;

    public final long component1() {
        return this.twitterUserId;
    }

    public final long component2() {
        return this.twitterUserIdInDatabase;
    }

    public final long component3() {
        return this.telegramUserId;
    }

    public final String component4() {
        return this.twitterUserName;
    }

    public final boolean component5() {
        return this.isUnlinked;
    }

    public final TwitterProfileInfo copy(long j, long j2, long j3, String twitterUserName, boolean z) {
        Intrinsics.checkNotNullParameter(twitterUserName, "twitterUserName");
        return new TwitterProfileInfo(j, j2, j3, twitterUserName, z);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TwitterProfileInfo) {
            TwitterProfileInfo twitterProfileInfo = (TwitterProfileInfo) obj;
            return this.twitterUserId == twitterProfileInfo.twitterUserId && this.twitterUserIdInDatabase == twitterProfileInfo.twitterUserIdInDatabase && this.telegramUserId == twitterProfileInfo.telegramUserId && Intrinsics.areEqual(this.twitterUserName, twitterProfileInfo.twitterUserName) && this.isUnlinked == twitterProfileInfo.isUnlinked;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int m724m = ((((((BotsDbModel$$ExternalSyntheticBackport0.m724m(this.twitterUserId) * 31) + BotsDbModel$$ExternalSyntheticBackport0.m724m(this.twitterUserIdInDatabase)) * 31) + BotsDbModel$$ExternalSyntheticBackport0.m724m(this.telegramUserId)) * 31) + this.twitterUserName.hashCode()) * 31;
        boolean z = this.isUnlinked;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return m724m + i;
    }

    public String toString() {
        return "TwitterProfileInfo(twitterUserId=" + this.twitterUserId + ", twitterUserIdInDatabase=" + this.twitterUserIdInDatabase + ", telegramUserId=" + this.telegramUserId + ", twitterUserName=" + this.twitterUserName + ", isUnlinked=" + this.isUnlinked + ')';
    }

    public TwitterProfileInfo(long j, long j2, long j3, String twitterUserName, boolean z) {
        Intrinsics.checkNotNullParameter(twitterUserName, "twitterUserName");
        this.twitterUserId = j;
        this.twitterUserIdInDatabase = j2;
        this.telegramUserId = j3;
        this.twitterUserName = twitterUserName;
        this.isUnlinked = z;
    }

    public final long getTwitterUserId() {
        return this.twitterUserId;
    }

    public final long getTwitterUserIdInDatabase() {
        return this.twitterUserIdInDatabase;
    }

    public final long getTelegramUserId() {
        return this.telegramUserId;
    }

    public final String getTwitterUserName() {
        return this.twitterUserName;
    }

    public final boolean isUnlinked() {
        return this.isUnlinked;
    }
}
