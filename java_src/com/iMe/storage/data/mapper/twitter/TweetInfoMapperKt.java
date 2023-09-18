package com.iMe.storage.data.mapper.twitter;

import com.iMe.storage.data.network.model.response.twitter.MediaInfo;
import com.iMe.storage.data.network.model.response.twitter.TweetResponse;
import com.iMe.storage.data.network.model.response.twitter.TwitterFeedResponse;
import com.iMe.storage.domain.model.twitter.MediaInfoDomain;
import com.iMe.storage.domain.model.twitter.MediaType;
import com.iMe.storage.domain.model.twitter.TweetInfo;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringNumberConversionsKt;
/* compiled from: TweetInfoMapper.kt */
/* loaded from: classes4.dex */
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
        Long longOrNull;
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(tweetResponse, "<this>");
        longOrNull = StringsKt__StringNumberConversionsKt.toLongOrNull(tweetResponse.getId());
        long longValue = longOrNull != null ? longOrNull.longValue() : -1L;
        String userFullName = tweetResponse.getUserFullName();
        String userName = tweetResponse.getUserName();
        String avatarUrl = tweetResponse.getAvatarUrl();
        int likes = tweetResponse.getLikes();
        int quotes = tweetResponse.getQuotes();
        int retweets = tweetResponse.getRetweets();
        String text = tweetResponse.getText();
        long createdAt = tweetResponse.getCreatedAt();
        boolean likedByMe = tweetResponse.getLikedByMe();
        List<MediaInfo> mediaInfo = tweetResponse.getMediaInfo();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(mediaInfo, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (MediaInfo mediaInfo2 : mediaInfo) {
            arrayList.add(mapToDomain(mediaInfo2));
        }
        return new TweetInfo(longValue, userFullName, userName, avatarUrl, likes, quotes, retweets, text, createdAt, likedByMe, arrayList);
    }

    public static final MediaInfoDomain mapToDomain(MediaInfo mediaInfo) {
        Intrinsics.checkNotNullParameter(mediaInfo, "<this>");
        String type = mediaInfo.getType();
        if (type == null) {
            type = "";
        }
        MediaType stringToMediaType = stringToMediaType(type);
        String url = mediaInfo.getUrl();
        return new MediaInfoDomain(stringToMediaType, url != null ? url : "");
    }

    public static final MediaType stringToMediaType(String typeString) {
        Intrinsics.checkNotNullParameter(typeString, "typeString");
        String lowerCase = typeString.toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
        int hashCode = lowerCase.hashCode();
        if (hashCode != 106642994) {
            if (hashCode != 112202875) {
                if (hashCode == 1048796968 && lowerCase.equals("animated_gif")) {
                    return MediaType.ANIMATED_GIF;
                }
            } else if (lowerCase.equals("video")) {
                return MediaType.VIDEO;
            }
        } else if (lowerCase.equals("photo")) {
            return MediaType.PHOTO;
        }
        return MediaType.UNKNOWN;
    }
}
