package com.smedialink.storage.twitter_test.mapper;

import com.smedialink.storage.data.network.model.response.twitter.TweetResponse;
import com.smedialink.storage.data.network.model.response.twitter.TwitterFeedResponse;
import com.smedialink.storage.domain.model.twitter.TweetInfo;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TweetInfoMapper.kt */
/* loaded from: classes3.dex */
public final class TweetInfoMapperKt {
    public static final List<TweetInfo> mapToDomain(TwitterFeedResponse twitterFeedResponse) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(twitterFeedResponse, "<this>");
        List<TweetResponse> tweets = twitterFeedResponse.getTweets();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(tweets, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (TweetResponse tweetResponse : tweets) {
            arrayList.add(mapToDomain(tweetResponse));
        }
        return arrayList;
    }

    public static final TweetInfo mapToDomain(TweetResponse tweetResponse) {
        Intrinsics.checkNotNullParameter(tweetResponse, "<this>");
        return new TweetInfo(tweetResponse.getId(), tweetResponse.getUserFullName(), tweetResponse.getUserName(), tweetResponse.getAvatarUrl(), tweetResponse.getLikes(), tweetResponse.getQuotes(), tweetResponse.getRetweets(), tweetResponse.getText(), tweetResponse.getCreatedAt(), tweetResponse.getLikedByMe());
    }
}
