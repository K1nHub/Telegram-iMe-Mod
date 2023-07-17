package com.iMe.storage.data.network.model.response.twitter;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.gson.annotations.SerializedName;
import com.iMe.bots.data.model.database.BotsDbModel$$ExternalSyntheticBackport0;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TwitterFeedResponse.kt */
/* loaded from: classes3.dex */
public final class TweetResponse {
    @SerializedName("avatarUrl")
    private final String avatarUrl;
    @SerializedName("createdAt")
    private final long createdAt;
    @SerializedName(TtmlNode.ATTR_ID)

    /* renamed from: id */
    private final String f391id;
    @SerializedName("likedByMe")
    private final boolean likedByMe;
    @SerializedName("likes")
    private final int likes;
    @SerializedName("mediaInfo")
    private final List<MediaInfo> mediaInfo;
    @SerializedName("quotes")
    private final int quotes;
    @SerializedName("retweets")
    private final int retweets;
    @SerializedName("text")
    private final String text;
    @SerializedName("userFullName")
    private final String userFullName;
    @SerializedName("userId")
    private final String userId;
    @SerializedName("userName")
    private final String userName;

    public final String component1() {
        return this.f391id;
    }

    public final boolean component10() {
        return this.likedByMe;
    }

    public final long component11() {
        return this.createdAt;
    }

    public final List<MediaInfo> component12() {
        return this.mediaInfo;
    }

    public final int component2() {
        return this.likes;
    }

    public final int component3() {
        return this.quotes;
    }

    public final int component4() {
        return this.retweets;
    }

    public final String component5() {
        return this.userName;
    }

    public final String component6() {
        return this.userFullName;
    }

    public final String component7() {
        return this.userId;
    }

    public final String component8() {
        return this.avatarUrl;
    }

    public final String component9() {
        return this.text;
    }

    public final TweetResponse copy(String id, int i, int i2, int i3, String userName, String userFullName, String userId, String avatarUrl, String text, boolean z, long j, List<MediaInfo> mediaInfo) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(userName, "userName");
        Intrinsics.checkNotNullParameter(userFullName, "userFullName");
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(avatarUrl, "avatarUrl");
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(mediaInfo, "mediaInfo");
        return new TweetResponse(id, i, i2, i3, userName, userFullName, userId, avatarUrl, text, z, j, mediaInfo);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TweetResponse) {
            TweetResponse tweetResponse = (TweetResponse) obj;
            return Intrinsics.areEqual(this.f391id, tweetResponse.f391id) && this.likes == tweetResponse.likes && this.quotes == tweetResponse.quotes && this.retweets == tweetResponse.retweets && Intrinsics.areEqual(this.userName, tweetResponse.userName) && Intrinsics.areEqual(this.userFullName, tweetResponse.userFullName) && Intrinsics.areEqual(this.userId, tweetResponse.userId) && Intrinsics.areEqual(this.avatarUrl, tweetResponse.avatarUrl) && Intrinsics.areEqual(this.text, tweetResponse.text) && this.likedByMe == tweetResponse.likedByMe && this.createdAt == tweetResponse.createdAt && Intrinsics.areEqual(this.mediaInfo, tweetResponse.mediaInfo);
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = ((((((((((((((((this.f391id.hashCode() * 31) + this.likes) * 31) + this.quotes) * 31) + this.retweets) * 31) + this.userName.hashCode()) * 31) + this.userFullName.hashCode()) * 31) + this.userId.hashCode()) * 31) + this.avatarUrl.hashCode()) * 31) + this.text.hashCode()) * 31;
        boolean z = this.likedByMe;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return ((((hashCode + i) * 31) + BotsDbModel$$ExternalSyntheticBackport0.m706m(this.createdAt)) * 31) + this.mediaInfo.hashCode();
    }

    public String toString() {
        return "TweetResponse(id=" + this.f391id + ", likes=" + this.likes + ", quotes=" + this.quotes + ", retweets=" + this.retweets + ", userName=" + this.userName + ", userFullName=" + this.userFullName + ", userId=" + this.userId + ", avatarUrl=" + this.avatarUrl + ", text=" + this.text + ", likedByMe=" + this.likedByMe + ", createdAt=" + this.createdAt + ", mediaInfo=" + this.mediaInfo + ')';
    }

    public TweetResponse(String id, int i, int i2, int i3, String userName, String userFullName, String userId, String avatarUrl, String text, boolean z, long j, List<MediaInfo> mediaInfo) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(userName, "userName");
        Intrinsics.checkNotNullParameter(userFullName, "userFullName");
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(avatarUrl, "avatarUrl");
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(mediaInfo, "mediaInfo");
        this.f391id = id;
        this.likes = i;
        this.quotes = i2;
        this.retweets = i3;
        this.userName = userName;
        this.userFullName = userFullName;
        this.userId = userId;
        this.avatarUrl = avatarUrl;
        this.text = text;
        this.likedByMe = z;
        this.createdAt = j;
        this.mediaInfo = mediaInfo;
    }

    public final String getId() {
        return this.f391id;
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

    public final String getUserName() {
        return this.userName;
    }

    public final String getUserFullName() {
        return this.userFullName;
    }

    public final String getUserId() {
        return this.userId;
    }

    public final String getAvatarUrl() {
        return this.avatarUrl;
    }

    public final String getText() {
        return this.text;
    }

    public final boolean getLikedByMe() {
        return this.likedByMe;
    }

    public final long getCreatedAt() {
        return this.createdAt;
    }

    public final List<MediaInfo> getMediaInfo() {
        return this.mediaInfo;
    }
}
