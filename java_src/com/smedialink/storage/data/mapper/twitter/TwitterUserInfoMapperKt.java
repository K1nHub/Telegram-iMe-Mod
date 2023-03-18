package com.smedialink.storage.data.mapper.twitter;

import com.smedialink.storage.data.network.model.response.twitter.TwitterUserResponse;
import com.smedialink.storage.domain.model.twitter.TwitterUserInfo;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TwitterUserInfoMapper.kt */
/* loaded from: classes3.dex */
public final class TwitterUserInfoMapperKt {
    public static final TwitterUserInfo mapToDomain(TwitterUserResponse twitterUserResponse) {
        Intrinsics.checkNotNullParameter(twitterUserResponse, "<this>");
        long twitterUserId = twitterUserResponse.getTwitterUserId();
        String twitterUserName = twitterUserResponse.getTwitterUserName();
        String userFullName = twitterUserResponse.getUserFullName();
        String str = userFullName == null ? "" : userFullName;
        String avatarUrl = twitterUserResponse.getAvatarUrl();
        return new TwitterUserInfo(twitterUserId, twitterUserName, str, avatarUrl == null ? "" : avatarUrl, twitterUserResponse.getTelegramUserId());
    }
}
