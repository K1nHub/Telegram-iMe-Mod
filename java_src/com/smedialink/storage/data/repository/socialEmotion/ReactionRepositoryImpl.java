package com.smedialink.storage.data.repository.socialEmotion;

import com.smedialink.storage.data.network.api.own.ReactionApi;
import com.smedialink.storage.data.network.handlers.impl.ApiErrorHandler;
import com.smedialink.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.smedialink.storage.data.network.model.request.reaction.ReactionMessageResult;
import com.smedialink.storage.data.network.model.request.reaction.ReactionRequestData;
import com.smedialink.storage.data.network.model.response.base.ApiBaseResponse;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.repository.socialEmotion.ReactionRepository;
import io.reactivex.Observable;
import io.reactivex.functions.Function;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: ReactionRepositoryImpl.kt */
/* loaded from: classes3.dex */
public final class ReactionRepositoryImpl implements ReactionRepository {
    private final ReactionApi api;
    private final ApiErrorHandler errorHandler;
    private final FirebaseFunctionsErrorHandler firebaseErrorHandler;

    public ReactionRepositoryImpl(ReactionApi api, FirebaseFunctionsErrorHandler firebaseErrorHandler, ApiErrorHandler errorHandler) {
        Intrinsics.checkNotNullParameter(api, "api");
        Intrinsics.checkNotNullParameter(firebaseErrorHandler, "firebaseErrorHandler");
        Intrinsics.checkNotNullParameter(errorHandler, "errorHandler");
        this.api = api;
        this.firebaseErrorHandler = firebaseErrorHandler;
        this.errorHandler = errorHandler;
    }

    @Override // com.smedialink.storage.domain.repository.socialEmotion.ReactionRepository
    public Observable<Result<ReactionMessageResult>> prepareLikeMessage(ReactionRequestData data) {
        Intrinsics.checkNotNullParameter(data, "data");
        Observable<ApiBaseResponse<ReactionMessageResult>> prepareLikeMessage = this.api.prepareLikeMessage(data);
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = prepareLikeMessage.map(new Function() { // from class: com.smedialink.storage.data.repository.socialEmotion.ReactionRepositoryImpl$prepareLikeMessage$$inlined$mapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lcom/smedialink/storage/domain/model/Result<TR;>; */
            @Override // io.reactivex.functions.Function
            public final Result apply(ApiBaseResponse response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (response.isSuccess()) {
                    return Result.Companion.success((ReactionMessageResult) response.getPayload());
                }
                return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<ReactionMessageResult>> onErrorReturn = map.onErrorReturn(new Function() { // from class: com.smedialink.storage.data.repository.socialEmotion.ReactionRepositoryImpl$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                Result m1376prepareLikeMessage$lambda1;
                m1376prepareLikeMessage$lambda1 = ReactionRepositoryImpl.m1376prepareLikeMessage$lambda1(ReactionRepositoryImpl.this, (Throwable) obj);
                return m1376prepareLikeMessage$lambda1;
            }
        });
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "api.prepareLikeMessage(d…ndleError(it).toError() }");
        return onErrorReturn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: prepareLikeMessage$lambda-1  reason: not valid java name */
    public static final Result m1376prepareLikeMessage$lambda1(ReactionRepositoryImpl this$0, Throwable it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "it");
        return Result.Companion.error$default(Result.Companion, this$0.errorHandler.handleError(it), null, 2, null);
    }
}
