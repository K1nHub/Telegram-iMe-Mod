package com.iMe.storage.data.network.model.response.twitter;
/* compiled from: TweetLikedStatusResponse.kt */
/* loaded from: classes3.dex */
public final class TweetLikedStatusResponse {
    private final boolean liked;

    public static /* synthetic */ TweetLikedStatusResponse copy$default(TweetLikedStatusResponse tweetLikedStatusResponse, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = tweetLikedStatusResponse.liked;
        }
        return tweetLikedStatusResponse.copy(z);
    }

    public final boolean component1() {
        return this.liked;
    }

    public final TweetLikedStatusResponse copy(boolean z) {
        return new TweetLikedStatusResponse(z);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof TweetLikedStatusResponse) && this.liked == ((TweetLikedStatusResponse) obj).liked;
    }

    public int hashCode() {
        boolean z = this.liked;
        if (z) {
            return 1;
        }
        return z ? 1 : 0;
    }

    public String toString() {
        return "TweetLikedStatusResponse(liked=" + this.liked + ')';
    }

    public TweetLikedStatusResponse(boolean z) {
        this.liked = z;
    }

    public final boolean getLiked() {
        return this.liked;
    }
}
