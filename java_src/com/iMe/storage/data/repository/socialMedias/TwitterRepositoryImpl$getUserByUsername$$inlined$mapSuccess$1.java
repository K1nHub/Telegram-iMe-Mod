package com.iMe.storage.data.repository.socialMedias;

import com.iMe.storage.data.mapper.twitter.TwitterProfileInfoMapperKt;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.response.base.ApiBaseResponse;
import com.iMe.storage.data.network.model.response.twitter.TwitterProfileResponse;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.twitter.TwitterProfileInfo;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: FirebaseExt.kt */
/* loaded from: classes3.dex */
public final class TwitterRepositoryImpl$getUserByUsername$$inlined$mapSuccess$1 extends Lambda implements Function1<ApiBaseResponse<TwitterProfileResponse>, Result<? extends TwitterProfileInfo>> {
    final /* synthetic */ FirebaseFunctionsErrorHandler $errorHandler;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TwitterRepositoryImpl$getUserByUsername$$inlined$mapSuccess$1(FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler) {
        super(1);
        this.$errorHandler = firebaseFunctionsErrorHandler;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Result<TwitterProfileInfo> invoke(ApiBaseResponse<TwitterProfileResponse> response) {
        Intrinsics.checkNotNullParameter(response, "response");
        if (!response.isSuccess()) {
            return Result.Companion.error$default(Result.Companion, this.$errorHandler.handleError((ApiBaseResponse<?>) response), null, 2, null);
        }
        return Result.Companion.success(TwitterProfileInfoMapperKt.mapToDomain(response.getPayload()));
    }
}
