package com.iMe.storage.data.mapper.twitter;

import com.iMe.storage.data.network.model.response.twitter.TwitterProfileResponse;
import com.iMe.storage.data.utils.extentions.NumberExtKt;
import com.iMe.storage.domain.model.twitter.TwitterProfileInfo;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TwitterProfileInfoMapper.kt */
/* loaded from: classes3.dex */
public final class TwitterProfileInfoMapperKt {
    public static final TwitterProfileInfo mapToDomain(TwitterProfileResponse twitterProfileResponse) {
        Intrinsics.checkNotNullParameter(twitterProfileResponse, "<this>");
        long twitterUserId = twitterProfileResponse.getTwitterUserId();
        long orZero = NumberExtKt.orZero(twitterProfileResponse.getTwitterUserIdInDatabase());
        long orZero2 = NumberExtKt.orZero(twitterProfileResponse.getTelegramUserId());
        String twitterUserName = twitterProfileResponse.getTwitterUserName();
        if (twitterUserName == null) {
            twitterUserName = "";
        }
        return new TwitterProfileInfo(twitterUserId, orZero, orZero2, twitterUserName, false);
    }
}