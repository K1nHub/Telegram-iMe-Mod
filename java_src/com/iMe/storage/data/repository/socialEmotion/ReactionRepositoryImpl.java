package com.iMe.storage.data.repository.socialEmotion;

import com.iMe.storage.data.network.api.own.ReactionApi;
import com.iMe.storage.data.network.handlers.impl.ApiErrorHandler;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.request.reaction.ReactionMessageResult;
import com.iMe.storage.data.network.model.request.reaction.ReactionRequestData;
import com.iMe.storage.data.network.model.response.base.ApiBaseResponse;
import com.iMe.storage.data.utils.extentions.FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.repository.socialEmotion.ReactionRepository;
import io.reactivex.Observable;
import io.reactivex.functions.Function;
import kotlin.jvm.functions.Function1;
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

    @Override // com.iMe.storage.domain.repository.socialEmotion.ReactionRepository
    public Observable<Result<ReactionMessageResult>> prepareLikeMessage(ReactionRequestData data) {
        Intrinsics.checkNotNullParameter(data, "data");
        Observable<ApiBaseResponse<ReactionMessageResult>> prepareLikeMessage = this.api.prepareLikeMessage(data);
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = prepareLikeMessage.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<ReactionMessageResult>, Result<? extends ReactionMessageResult>>() { // from class: com.iMe.storage.data.repository.socialEmotion.ReactionRepositoryImpl$prepareLikeMessage$$inlined$mapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<ReactionMessageResult> invoke(ApiBaseResponse<ReactionMessageResult> response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (response.isSuccess()) {
                    return Result.Companion.success(response.getPayload());
                }
                return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final Function1<Throwable, Result<? extends ReactionMessageResult>> function1 = new Function1<Throwable, Result<? extends ReactionMessageResult>>() { // from class: com.iMe.storage.data.repository.socialEmotion.ReactionRepositoryImpl$prepareLikeMessage$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<ReactionMessageResult> invoke(Throwable it) {
                ApiErrorHandler apiErrorHandler;
                Intrinsics.checkNotNullParameter(it, "it");
                apiErrorHandler = ReactionRepositoryImpl.this.errorHandler;
                return Result.Companion.error$default(Result.Companion, apiErrorHandler.handleError(it), null, 2, null);
            }
        };
        Observable<Result<ReactionMessageResult>> onErrorReturn = map.onErrorReturn(new Function() { // from class: com.iMe.storage.data.repository.socialEmotion.ReactionRepositoryImpl$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                Result prepareLikeMessage$lambda$1;
                prepareLikeMessage$lambda$1 = ReactionRepositoryImpl.prepareLikeMessage$lambda$1(Function1.this, obj);
                return prepareLikeMessage$lambda$1;
            }
        });
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "override fun prepareLike…ror(it).toError() }\n    }");
        return onErrorReturn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Result prepareLikeMessage$lambda$1(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (Result) tmp0.invoke(obj);
    }
}
