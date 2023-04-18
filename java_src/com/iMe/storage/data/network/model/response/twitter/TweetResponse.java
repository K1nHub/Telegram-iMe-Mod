package com.iMe.storage.data.network.model.response.twitter;

import com.iMe.bots.data.model.database.BotsDbModel$$ExternalSyntheticBackport0;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TweetResponse.kt */
/* loaded from: classes3.dex */
public final class TweetResponse {
    private final String avatarUrl;
    private final long createdAt;

    /* renamed from: id */
    private final long f307id;
    private final boolean likedByMe;
    private final int likes;
    private final int quotes;
    private final int retweets;
    private final String text;
    private final String userFullName;
    private final String userName;

    public final long component1() {
        return this.f307id;
    }

    public final boolean component10() {
        return this.likedByMe;
    }

    public final String component2() {
        return this.userFullName;
    }

    public final String component3() {
        return this.userName;
    }

    public final String component4() {
        return this.avatarUrl;
    }

    public final int component5() {
        return this.likes;
    }

    public final int component6() {
        return this.quotes;
    }

    public final int component7() {
        return this.retweets;
    }

    public final String component8() {
        return this.text;
    }

    public final long component9() {
        return this.createdAt;
    }

    public final TweetResponse copy(long j, String userFullName, String userName, String avatarUrl, int i, int i2, int i3, String text, long j2, boolean z) {
        Intrinsics.checkNotNullParameter(userFullName, "userFullName");
        Intrinsics.checkNotNullParameter(userName, "userName");
        Intrinsics.checkNotNullParameter(avatarUrl, "avatarUrl");
        Intrinsics.checkNotNullParameter(text, "text");
        return new TweetResponse(j, userFullName, userName, avatarUrl, i, i2, i3, text, j2, z);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TweetResponse) {
            TweetResponse tweetResponse = (TweetResponse) obj;
            return this.f307id == tweetResponse.f307id && Intrinsics.areEqual(this.userFullName, tweetResponse.userFullName) && Intrinsics.areEqual(this.userName, tweetResponse.userName) && Intrinsics.areEqual(this.avatarUrl, tweetResponse.avatarUrl) && this.likes == tweetResponse.likes && this.quotes == tweetResponse.quotes && this.retweets == tweetResponse.retweets && Intrinsics.areEqual(this.text, tweetResponse.text) && this.createdAt == tweetResponse.createdAt && this.likedByMe == tweetResponse.likedByMe;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int m702m = ((((((((((((((((BotsDbModel$$ExternalSyntheticBackport0.m702m(this.f307id) * 31) + this.userFullName.hashCode()) * 31) + this.userName.hashCode()) * 31) + this.avatarUrl.hashCode()) * 31) + this.likes) * 31) + this.quotes) * 31) + this.retweets) * 31) + this.text.hashCode()) * 31) + BotsDbModel$$ExternalSyntheticBackport0.m702m(this.createdAt)) * 31;
        boolean z = this.likedByMe;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return m702m + i;
    }

    public String toString() {
        return "TweetResponse(id=" + this.f307id + ", userFullName=" + this.userFullName + ", userName=" + this.userName + ", avatarUrl=" + this.avatarUrl + ", likes=" + this.likes + ", quotes=" + this.quotes + ", retweets=" + this.retweets + ", text=" + this.text + ", createdAt=" + this.createdAt + ", likedByMe=" + this.likedByMe + ')';
    }

    public TweetResponse(long j, String userFullName, String userName, String avatarUrl, int i, int i2, int i3, String text, long j2, boolean z) {
        Intrinsics.checkNotNullParameter(userFullName, "userFullName");
        Intrinsics.checkNotNullParameter(userName, "userName");
        Intrinsics.checkNotNullParameter(avatarUrl, "avatarUrl");
        Intrinsics.checkNotNullParameter(text, "text");
        this.f307id = j;
        this.userFullName = userFullName;
        this.userName = userName;
        this.avatarUrl = avatarUrl;
        this.likes = i;
        this.quotes = i2;
        this.retweets = i3;
        this.text = text;
        this.createdAt = j2;
        this.likedByMe = z;
    }

    public final long getId() {
        return this.f307id;
    }

    public final String getUserFullName() {
        return this.userFullName;
    }

    public final String getUserName() {
        return this.userName;
    }

    public final String getAvatarUrl() {
        return this.avatarUrl;
    }

    public final int getLikes() {
        return this.likes;
    }

    public final int getQuotes() {
        return this.quotes;
    }

    public final int getRetweets() {
        return this.retweets;
    }

    public final String getText() {
        return this.text;
    }

    public final long getCreatedAt() {
        return this.createdAt;
    }

    public final boolean getLikedByMe() {
        return this.likedByMe;
    }
}
