package com.smedialink.storage.data.repository.twitter;

import com.smedialink.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.smedialink.storage.data.network.model.response.base.ApiBaseResponse;
import com.smedialink.storage.data.network.model.response.twitter.TwitterFeedResponse;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.twitter.TweetInfo;
import com.smedialink.storage.twitter_test.mapper.TweetInfoMapperKt;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: FirebaseExt.kt */
/* loaded from: classes3.dex */
public final class TwitterRepositoryImpl$getUserTweets$$inlined$mapSuccess$1 extends Lambda implements Function1<ApiBaseResponse<TwitterFeedResponse>, Result<? extends List<? extends TweetInfo>>> {
    final /* synthetic */ FirebaseFunctionsErrorHandler $errorHandler;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TwitterRepositoryImpl$getUserTweets$$inlined$mapSuccess$1(FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler) {
        super(1);
        this.$errorHandler = firebaseFunctionsErrorHandler;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Result<List<? extends TweetInfo>> invoke(ApiBaseResponse<TwitterFeedResponse> response) {
        Intrinsics.checkNotNullParameter(response, "response");
        if (!response.isSuccess()) {
            return Result.Companion.error$default(Result.Companion, this.$errorHandler.handleError((ApiBaseResponse<?>) response), null, 2, null);
        }
        return Result.Companion.success(TweetInfoMapperKt.mapToDomain(response.getPayload()));
    }
}
