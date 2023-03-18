package com.smedialink.storage.domain.model.twitter;

import com.iMe.i_staking.request.StakingApprovalPrepareRequest$$ExternalSyntheticBackport0;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TweetInfo.kt */
/* loaded from: classes3.dex */
public final class TweetInfo {
    private final String authorName;
    private final String authorNickname;
    private final String avatarUrl;
    private final long createdAt;

    /* renamed from: id */
    private final long f352id;
    private final boolean isLiked;
    private final int likesCount;
    private final int quotesCount;
    private final int retweetsCount;
    private final String text;

    public final long component1() {
        return this.f352id;
    }

    public final boolean component10() {
        return this.isLiked;
    }

    public final String component2() {
        return this.authorName;
    }

    public final String component3() {
        return this.authorNickname;
    }

    public final String component4() {
        return this.avatarUrl;
    }

    public final int component5() {
        return this.likesCount;
    }

    public final int component6() {
        return this.quotesCount;
    }

    public final int component7() {
        return this.retweetsCount;
    }

    public final String component8() {
        return this.text;
    }

    public final long component9() {
        return this.createdAt;
    }

    public final TweetInfo copy(long j, String authorName, String authorNickname, String avatarUrl, int i, int i2, int i3, String text, long j2, boolean z) {
        Intrinsics.checkNotNullParameter(authorName, "authorName");
        Intrinsics.checkNotNullParameter(authorNickname, "authorNickname");
        Intrinsics.checkNotNullParameter(avatarUrl, "avatarUrl");
        Intrinsics.checkNotNullParameter(text, "text");
        return new TweetInfo(j, authorName, authorNickname, avatarUrl, i, i2, i3, text, j2, z);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TweetInfo) {
            TweetInfo tweetInfo = (TweetInfo) obj;
            return this.f352id == tweetInfo.f352id && Intrinsics.areEqual(this.authorName, tweetInfo.authorName) && Intrinsics.areEqual(this.authorNickname, tweetInfo.authorNickname) && Intrinsics.areEqual(this.avatarUrl, tweetInfo.avatarUrl) && this.likesCount == tweetInfo.likesCount && this.quotesCount == tweetInfo.quotesCount && this.retweetsCount == tweetInfo.retweetsCount && Intrinsics.areEqual(this.text, tweetInfo.text) && this.createdAt == tweetInfo.createdAt && this.isLiked == tweetInfo.isLiked;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int m716m = ((((((((((((((((StakingApprovalPrepareRequest$$ExternalSyntheticBackport0.m716m(this.f352id) * 31) + this.authorName.hashCode()) * 31) + this.authorNickname.hashCode()) * 31) + this.avatarUrl.hashCode()) * 31) + this.likesCount) * 31) + this.quotesCount) * 31) + this.retweetsCount) * 31) + this.text.hashCode()) * 31) + StakingApprovalPrepareRequest$$ExternalSyntheticBackport0.m716m(this.createdAt)) * 31;
        boolean z = this.isLiked;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return m716m + i;
    }

    public String toString() {
        return "TweetInfo(id=" + this.f352id + ", authorName=" + this.authorName + ", authorNickname=" + this.authorNickname + ", avatarUrl=" + this.avatarUrl + ", likesCount=" + this.likesCount + ", quotesCount=" + this.quotesCount + ", retweetsCount=" + this.retweetsCount + ", text=" + this.text + ", createdAt=" + this.createdAt + ", isLiked=" + this.isLiked + ')';
    }

    public TweetInfo(long j, String authorName, String authorNickname, String avatarUrl, int i, int i2, int i3, String text, long j2, boolean z) {
        Intrinsics.checkNotNullParameter(authorName, "authorName");
        Intrinsics.checkNotNullParameter(authorNickname, "authorNickname");
        Intrinsics.checkNotNullParameter(avatarUrl, "avatarUrl");
        Intrinsics.checkNotNullParameter(text, "text");
        this.f352id = j;
        this.authorName = authorName;
        this.authorNickname = authorNickname;
        this.avatarUrl = avatarUrl;
        this.likesCount = i;
        this.quotesCount = i2;
        this.retweetsCount = i3;
        this.text = text;
        this.createdAt = j2;
        this.isLiked = z;
    }

    public final long getId() {
        return this.f352id;
    }

    public final String getAuthorName() {
        return this.authorName;
    }

    public final String getAuthorNickname() {
        return this.authorNickname;
    }

    public final String getAvatarUrl() {
        return this.avatarUrl;
    }

    public final int getLikesCount() {
        return this.likesCount;
    }

    public final int getQuotesCount() {
        return this.quotesCount;
    }

    public final int getRetweetsCount() {
        return this.retweetsCount;
    }

    public final String getText() {
        return this.text;
    }

    public final long getCreatedAt() {
        return this.createdAt;
    }

    public final boolean isLiked() {
        return this.isLiked;
    }
}
