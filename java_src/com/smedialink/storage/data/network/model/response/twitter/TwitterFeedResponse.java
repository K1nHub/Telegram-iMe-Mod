package com.smedialink.storage.data.network.model.response.twitter;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TwitterFeedResponse.kt */
/* loaded from: classes3.dex */
public final class TwitterFeedResponse {
    private final List<TweetResponse> tweets;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ TwitterFeedResponse copy$default(TwitterFeedResponse twitterFeedResponse, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            list = twitterFeedResponse.tweets;
        }
        return twitterFeedResponse.copy(list);
    }

    public final List<TweetResponse> component1() {
        return this.tweets;
    }

    public final TwitterFeedResponse copy(List<TweetResponse> tweets) {
        Intrinsics.checkNotNullParameter(tweets, "tweets");
        return new TwitterFeedResponse(tweets);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof TwitterFeedResponse) && Intrinsics.areEqual(this.tweets, ((TwitterFeedResponse) obj).tweets);
    }

    public int hashCode() {
        return this.tweets.hashCode();
    }

    public String toString() {
        return "TwitterFeedResponse(tweets=" + this.tweets + ')';
    }

    public TwitterFeedResponse(List<TweetResponse> tweets) {
        Intrinsics.checkNotNullParameter(tweets, "tweets");
        this.tweets = tweets;
    }

    public final List<TweetResponse> getTweets() {
        return this.tweets;
    }
}
