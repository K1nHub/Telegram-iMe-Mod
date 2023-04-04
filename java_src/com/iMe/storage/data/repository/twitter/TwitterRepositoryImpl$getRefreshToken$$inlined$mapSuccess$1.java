package com.iMe.storage.data.repository.twitter;

import com.iMe.storage.data.mapper.twitter.TwitterRefreshTokenDataMapperKt;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.response.base.ApiBaseResponse;
import com.iMe.storage.data.network.model.response.twitter.RefreshTokenResponse;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.twitter.TwitterRefreshTokenData;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: FirebaseExt.kt */
/* loaded from: classes3.dex */
public final class TwitterRepositoryImpl$getRefreshToken$$inlined$mapSuccess$1 extends Lambda implements Function1<ApiBaseResponse<RefreshTokenResponse>, Result<? extends TwitterRefreshTokenData>> {
    final /* synthetic */ FirebaseFunctionsErrorHandler $errorHandler;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TwitterRepositoryImpl$getRefreshToken$$inlined$mapSuccess$1(FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler) {
        super(1);
        this.$errorHandler = firebaseFunctionsErrorHandler;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Result<TwitterRefreshTokenData> invoke(ApiBaseResponse<RefreshTokenResponse> response) {
        Intrinsics.checkNotNullParameter(response, "response");
        if (response.isSuccess()) {
            return Result.Companion.success(TwitterRefreshTokenDataMapperKt.mapToDomain(response.getPayload()));
        }
        return Result.Companion.error$default(Result.Companion, this.$errorHandler.handleError((ApiBaseResponse<?>) response), null, 2, null);
    }
}
