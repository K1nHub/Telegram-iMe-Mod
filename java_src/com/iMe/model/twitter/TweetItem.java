package com.iMe.model.twitter;

import com.iMe.bots.data.model.database.BotsDbModel$$ExternalSyntheticBackport0;
import com.iMe.model.common.NoChildNode;
import com.iMe.storage.domain.model.twitter.MediaInfoDomain;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TweetItem.kt */
/* loaded from: classes3.dex */
public final class TweetItem extends NoChildNode {
    private final String authorName;
    private final String authorNickname;
    private final String avatarUrl;
    private final String commentsCountText;
    private final String date;

    /* renamed from: id */
    private final long f357id;
    private final boolean isLiked;
    private final String likesCountText;
    private final List<MediaInfoDomain> mediaInfo;
    private final String retweetsCountText;
    private final String text;

    public final long component1() {
        return this.f357id;
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

    public final String component5() {
        return this.likesCountText;
    }

    public final String component6() {
        return this.commentsCountText;
    }

    public final String component7() {
        return this.retweetsCountText;
    }

    public final String component8() {
        return this.text;
    }

    public final String component9() {
        return this.date;
    }

    public final TweetItem copy(long j, String authorName, String authorNickname, String avatarUrl, String likesCountText, String commentsCountText, String retweetsCountText, String text, String date, boolean z, List<MediaInfoDomain> mediaInfo) {
        Intrinsics.checkNotNullParameter(authorName, "authorName");
        Intrinsics.checkNotNullParameter(authorNickname, "authorNickname");
        Intrinsics.checkNotNullParameter(avatarUrl, "avatarUrl");
        Intrinsics.checkNotNullParameter(likesCountText, "likesCountText");
        Intrinsics.checkNotNullParameter(commentsCountText, "commentsCountText");
        Intrinsics.checkNotNullParameter(retweetsCountText, "retweetsCountText");
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(date, "date");
        Intrinsics.checkNotNullParameter(mediaInfo, "mediaInfo");
        return new TweetItem(j, authorName, authorNickname, avatarUrl, likesCountText, commentsCountText, retweetsCountText, text, date, z, mediaInfo);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TweetItem) {
            TweetItem tweetItem = (TweetItem) obj;
            return this.f357id == tweetItem.f357id && Intrinsics.areEqual(this.authorName, tweetItem.authorName) && Intrinsics.areEqual(this.authorNickname, tweetItem.authorNickname) && Intrinsics.areEqual(this.avatarUrl, tweetItem.avatarUrl) && Intrinsics.areEqual(this.likesCountText, tweetItem.likesCountText) && Intrinsics.areEqual(this.commentsCountText, tweetItem.commentsCountText) && Intrinsics.areEqual(this.retweetsCountText, tweetItem.retweetsCountText) && Intrinsics.areEqual(this.text, tweetItem.text) && Intrinsics.areEqual(this.date, tweetItem.date) && this.isLiked == tweetItem.isLiked && Intrinsics.areEqual(this.mediaInfo, tweetItem.mediaInfo);
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int m706m = ((((((((((((((((BotsDbModel$$ExternalSyntheticBackport0.m706m(this.f357id) * 31) + this.authorName.hashCode()) * 31) + this.authorNickname.hashCode()) * 31) + this.avatarUrl.hashCode()) * 31) + this.likesCountText.hashCode()) * 31) + this.commentsCountText.hashCode()) * 31) + this.retweetsCountText.hashCode()) * 31) + this.text.hashCode()) * 31) + this.date.hashCode()) * 31;
        boolean z = this.isLiked;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return ((m706m + i) * 31) + this.mediaInfo.hashCode();
    }

    public String toString() {
        return "TweetItem(id=" + this.f357id + ", authorName=" + this.authorName + ", authorNickname=" + this.authorNickname + ", avatarUrl=" + this.avatarUrl + ", likesCountText=" + this.likesCountText + ", commentsCountText=" + this.commentsCountText + ", retweetsCountText=" + this.retweetsCountText + ", text=" + this.text + ", date=" + this.date + ", isLiked=" + this.isLiked + ", mediaInfo=" + this.mediaInfo + ')';
    }

    public final long getId() {
        return this.f357id;
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

    public final String getLikesCountText() {
        return this.likesCountText;
    }

    public final String getCommentsCountText() {
        return this.commentsCountText;
    }

    public final String getRetweetsCountText() {
        return this.retweetsCountText;
    }

    public final String getText() {
        return this.text;
    }

    public final String getDate() {
        return this.date;
    }

    public final boolean isLiked() {
        return this.isLiked;
    }

    public final List<MediaInfoDomain> getMediaInfo() {
        return this.mediaInfo;
    }

    public TweetItem(long j, String authorName, String authorNickname, String avatarUrl, String likesCountText, String commentsCountText, String retweetsCountText, String text, String date, boolean z, List<MediaInfoDomain> mediaInfo) {
        Intrinsics.checkNotNullParameter(authorName, "authorName");
        Intrinsics.checkNotNullParameter(authorNickname, "authorNickname");
        Intrinsics.checkNotNullParameter(avatarUrl, "avatarUrl");
        Intrinsics.checkNotNullParameter(likesCountText, "likesCountText");
        Intrinsics.checkNotNullParameter(commentsCountText, "commentsCountText");
        Intrinsics.checkNotNullParameter(retweetsCountText, "retweetsCountText");
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(date, "date");
        Intrinsics.checkNotNullParameter(mediaInfo, "mediaInfo");
        this.f357id = j;
        this.authorName = authorName;
        this.authorNickname = authorNickname;
        this.avatarUrl = avatarUrl;
        this.likesCountText = likesCountText;
        this.commentsCountText = commentsCountText;
        this.retweetsCountText = retweetsCountText;
        this.text = text;
        this.date = date;
        this.isLiked = z;
        this.mediaInfo = mediaInfo;
    }
}
