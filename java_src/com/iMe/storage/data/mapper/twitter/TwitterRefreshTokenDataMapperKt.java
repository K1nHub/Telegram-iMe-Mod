package com.iMe.storage.data.mapper.twitter;

import com.iMe.storage.data.network.model.response.twitter.RefreshTokenResponse;
import com.iMe.storage.domain.model.twitter.TwitterRefreshTokenData;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TwitterRefreshTokenDataMapper.kt */
/* loaded from: classes3.dex */
public final class TwitterRefreshTokenDataMapperKt {
    public static final TwitterRefreshTokenData mapToDomain(RefreshTokenResponse refreshTokenResponse) {
        Intrinsics.checkNotNullParameter(refreshTokenResponse, "<this>");
        return new TwitterRefreshTokenData(refreshTokenResponse.getAccessToken(), refreshTokenResponse.getRefreshToken(), refreshTokenResponse.getExpiresIn());
    }
}
