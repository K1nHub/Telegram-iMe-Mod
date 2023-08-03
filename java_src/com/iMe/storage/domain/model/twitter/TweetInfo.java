package com.iMe.storage.domain.model.twitter;

import com.iMe.bots.data.model.database.BotsDbModel$$ExternalSyntheticBackport0;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TweetInfo.kt */
/* loaded from: classes3.dex */
public final class TweetInfo {
    private final String authorName;
    private final String authorNickname;
    private final String avatarUrl;
    private final long createdAt;

    /* renamed from: id */
    private final long f433id;
    private final boolean isLiked;
    private final int likesCount;
    private final List<MediaInfoDomain> mediaInfo;
    private final int quotesCount;
    private final int retweetsCount;
    private final String text;

    public final long component1() {
        return this.f433id;
    }

    public final boolean component10() {
        return this.isLiked;
    }

    public final List<MediaInfoDomain> component11() {
        return this.mediaInfo;
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

    public final TweetInfo copy(long j, String authorName, String authorNickname, String avatarUrl, int i, int i2, int i3, String text, long j2, boolean z, List<MediaInfoDomain> mediaInfo) {
        Intrinsics.checkNotNullParameter(authorName, "authorName");
        Intrinsics.checkNotNullParameter(authorNickname, "authorNickname");
        Intrinsics.checkNotNullParameter(avatarUrl, "avatarUrl");
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(mediaInfo, "mediaInfo");
        return new TweetInfo(j, authorName, authorNickname, avatarUrl, i, i2, i3, text, j2, z, mediaInfo);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TweetInfo) {
            TweetInfo tweetInfo = (TweetInfo) obj;
            return this.f433id == tweetInfo.f433id && Intrinsics.areEqual(this.authorName, tweetInfo.authorName) && Intrinsics.areEqual(this.authorNickname, tweetInfo.authorNickname) && Intrinsics.areEqual(this.avatarUrl, tweetInfo.avatarUrl) && this.likesCount == tweetInfo.likesCount && this.quotesCount == tweetInfo.quotesCount && this.retweetsCount == tweetInfo.retweetsCount && Intrinsics.areEqual(this.text, tweetInfo.text) && this.createdAt == tweetInfo.createdAt && this.isLiked == tweetInfo.isLiked && Intrinsics.areEqual(this.mediaInfo, tweetInfo.mediaInfo);
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int m724m = ((((((((((((((((BotsDbModel$$ExternalSyntheticBackport0.m724m(this.f433id) * 31) + this.authorName.hashCode()) * 31) + this.authorNickname.hashCode()) * 31) + this.avatarUrl.hashCode()) * 31) + this.likesCount) * 31) + this.quotesCount) * 31) + this.retweetsCount) * 31) + this.text.hashCode()) * 31) + BotsDbModel$$ExternalSyntheticBackport0.m724m(this.createdAt)) * 31;
        boolean z = this.isLiked;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return ((m724m + i) * 31) + this.mediaInfo.hashCode();
    }

    public String toString() {
        return "TweetInfo(id=" + this.f433id + ", authorName=" + this.authorName + ", authorNickname=" + this.authorNickname + ", avatarUrl=" + this.avatarUrl + ", likesCount=" + this.likesCount + ", quotesCount=" + this.quotesCount + ", retweetsCount=" + this.retweetsCount + ", text=" + this.text + ", createdAt=" + this.createdAt + ", isLiked=" + this.isLiked + ", mediaInfo=" + this.mediaInfo + ')';
    }

    public TweetInfo(long j, String authorName, String authorNickname, String avatarUrl, int i, int i2, int i3, String text, long j2, boolean z, List<MediaInfoDomain> mediaInfo) {
        Intrinsics.checkNotNullParameter(authorName, "authorName");
        Intrinsics.checkNotNullParameter(authorNickname, "authorNickname");
        Intrinsics.checkNotNullParameter(avatarUrl, "avatarUrl");
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(mediaInfo, "mediaInfo");
        this.f433id = j;
        this.authorName = authorName;
        this.authorNickname = authorNickname;
        this.avatarUrl = avatarUrl;
        this.likesCount = i;
        this.quotesCount = i2;
        this.retweetsCount = i3;
        this.text = text;
        this.createdAt = j2;
        this.isLiked = z;
        this.mediaInfo = mediaInfo;
    }

    public final long getId() {
        return this.f433id;
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

    public final List<MediaInfoDomain> getMediaInfo() {
        return this.mediaInfo;
    }
}
