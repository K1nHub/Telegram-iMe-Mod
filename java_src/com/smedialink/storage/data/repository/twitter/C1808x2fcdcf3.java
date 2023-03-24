package com.smedialink.storage.data.repository.twitter;

import com.smedialink.storage.data.mapper.twitter.TwitterUserInfoMapperKt;
import com.smedialink.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.smedialink.storage.data.network.model.response.base.ApiBaseResponse;
import com.smedialink.storage.data.network.model.response.twitter.TwitterUserResponse;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.twitter.TwitterUserInfo;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: FirebaseExt.kt */
/* renamed from: com.smedialink.storage.data.repository.twitter.TwitterRepositoryImpl$searchUsersByUsername$$inlined$mapSuccess$1 */
/* loaded from: classes3.dex */
public final class C1808x2fcdcf3 extends Lambda implements Function1<ApiBaseResponse<List<? extends TwitterUserResponse>>, Result<? extends List<? extends TwitterUserInfo>>> {
    final /* synthetic */ FirebaseFunctionsErrorHandler $errorHandler;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1808x2fcdcf3(FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler) {
        super(1);
        this.$errorHandler = firebaseFunctionsErrorHandler;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Result<List<? extends TwitterUserInfo>> invoke(ApiBaseResponse<List<? extends TwitterUserResponse>> response) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(response, "response");
        if (!response.isSuccess()) {
            return Result.Companion.error$default(Result.Companion, this.$errorHandler.handleError((ApiBaseResponse<?>) response), null, 2, null);
        }
        List<? extends TwitterUserResponse> payload = response.getPayload();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(payload, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (TwitterUserResponse twitterUserResponse : payload) {
            arrayList.add(TwitterUserInfoMapperKt.mapToDomain(twitterUserResponse));
        }
        return Result.Companion.success(arrayList);
    }
}
