package com.iMe.model.twitter;

import android.text.SpannableStringBuilder;
import com.iMe.bots.data.model.database.BotsDbModel$$ExternalSyntheticBackport0;
import com.iMe.model.common.NoChildNode;
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
    private final long f276id;
    private final boolean isLiked;
    private final String likesCountText;
    private final String retweetsCountText;
    private final SpannableStringBuilder text;

    public final long component1() {
        return this.f276id;
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

    public final String component5() {
        return this.likesCountText;
    }

    public final String component6() {
        return this.commentsCountText;
    }

    public final String component7() {
        return this.retweetsCountText;
    }

    public final SpannableStringBuilder component8() {
        return this.text;
    }

    public final String component9() {
        return this.date;
    }

    public final TweetItem copy(long j, String authorName, String authorNickname, String avatarUrl, String likesCountText, String commentsCountText, String retweetsCountText, SpannableStringBuilder text, String date, boolean z) {
        Intrinsics.checkNotNullParameter(authorName, "authorName");
        Intrinsics.checkNotNullParameter(authorNickname, "authorNickname");
        Intrinsics.checkNotNullParameter(avatarUrl, "avatarUrl");
        Intrinsics.checkNotNullParameter(likesCountText, "likesCountText");
        Intrinsics.checkNotNullParameter(commentsCountText, "commentsCountText");
        Intrinsics.checkNotNullParameter(retweetsCountText, "retweetsCountText");
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(date, "date");
        return new TweetItem(j, authorName, authorNickname, avatarUrl, likesCountText, commentsCountText, retweetsCountText, text, date, z);
    }

    public String toString() {
        return "TweetItem(id=" + this.f276id + ", authorName=" + this.authorName + ", authorNickname=" + this.authorNickname + ", avatarUrl=" + this.avatarUrl + ", likesCountText=" + this.likesCountText + ", commentsCountText=" + this.commentsCountText + ", retweetsCountText=" + this.retweetsCountText + ", text=" + ((Object) this.text) + ", date=" + this.date + ", isLiked=" + this.isLiked + ')';
    }

    public final long getId() {
        return this.f276id;
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

    public final SpannableStringBuilder getText() {
        return this.text;
    }

    public final String getDate() {
        return this.date;
    }

    public final boolean isLiked() {
        return this.isLiked;
    }

    public TweetItem(long j, String authorName, String authorNickname, String avatarUrl, String likesCountText, String commentsCountText, String retweetsCountText, SpannableStringBuilder text, String date, boolean z) {
        Intrinsics.checkNotNullParameter(authorName, "authorName");
        Intrinsics.checkNotNullParameter(authorNickname, "authorNickname");
        Intrinsics.checkNotNullParameter(avatarUrl, "avatarUrl");
        Intrinsics.checkNotNullParameter(likesCountText, "likesCountText");
        Intrinsics.checkNotNullParameter(commentsCountText, "commentsCountText");
        Intrinsics.checkNotNullParameter(retweetsCountText, "retweetsCountText");
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(date, "date");
        this.f276id = j;
        this.authorName = authorName;
        this.authorNickname = authorNickname;
        this.avatarUrl = avatarUrl;
        this.likesCountText = likesCountText;
        this.commentsCountText = commentsCountText;
        this.retweetsCountText = retweetsCountText;
        this.text = text;
        this.date = date;
        this.isLiked = z;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (Intrinsics.areEqual(TweetItem.class, obj != null ? obj.getClass() : null)) {
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type com.iMe.model.twitter.TweetItem");
            TweetItem tweetItem = (TweetItem) obj;
            return this.f276id == tweetItem.f276id && Intrinsics.areEqual(this.authorName, tweetItem.authorName) && Intrinsics.areEqual(this.authorNickname, tweetItem.authorNickname) && Intrinsics.areEqual(this.avatarUrl, tweetItem.avatarUrl) && Intrinsics.areEqual(this.likesCountText, tweetItem.likesCountText) && Intrinsics.areEqual(this.commentsCountText, tweetItem.commentsCountText) && Intrinsics.areEqual(this.retweetsCountText, tweetItem.retweetsCountText) && Intrinsics.areEqual(this.text.toString(), tweetItem.text.toString()) && Intrinsics.areEqual(this.date, tweetItem.date) && this.isLiked == tweetItem.isLiked;
        }
        return false;
    }

    public int hashCode() {
        return (((((((((((((((((BotsDbModel$$ExternalSyntheticBackport0.m716m(this.f276id) * 31) + this.authorName.hashCode()) * 31) + this.authorNickname.hashCode()) * 31) + this.avatarUrl.hashCode()) * 31) + this.likesCountText.hashCode()) * 31) + this.commentsCountText.hashCode()) * 31) + this.retweetsCountText.hashCode()) * 31) + this.text.toString().hashCode()) * 31) + this.date.hashCode()) * 31) + TweetItem$$ExternalSyntheticBackport0.m709m(this.isLiked);
    }
}
