package com.iMe.storage.data.repository.twitter;

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
/* renamed from: com.iMe.storage.data.repository.twitter.TwitterRepositoryImpl$getSelfChatTwitterProfile$$inlined$mapSuccess$1 */
/* loaded from: classes3.dex */
public final class C1847x8ce31916 extends Lambda implements Function1<ApiBaseResponse<TwitterProfileResponse>, Result<? extends TwitterProfileInfo>> {
    final /* synthetic */ FirebaseFunctionsErrorHandler $errorHandler;
    final /* synthetic */ long $profileId$inlined;
    final /* synthetic */ TwitterRepositoryImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1847x8ce31916(FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler, TwitterRepositoryImpl twitterRepositoryImpl, long j) {
        super(1);
        this.$errorHandler = firebaseFunctionsErrorHandler;
        this.this$0 = twitterRepositoryImpl;
        this.$profileId$inlined = j;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Result<TwitterProfileInfo> invoke(ApiBaseResponse<TwitterProfileResponse> response) {
        Intrinsics.checkNotNullParameter(response, "response");
        if (!response.isSuccess()) {
            return Result.Companion.error$default(Result.Companion, this.$errorHandler.handleError((ApiBaseResponse<?>) response), null, 2, null);
        }
        TwitterProfileInfo mapToDomain = TwitterProfileInfoMapperKt.mapToDomain(response.getPayload());
        this.this$0.updateAccountUsername(this.$profileId$inlined, mapToDomain.getTwitterUserName());
        return Result.Companion.success(mapToDomain);
    }
}
