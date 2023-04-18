package com.iMe.storage.data.repository.firebase;

import com.iMe.storage.data.network.api.google.RemoteConfigApi;
import com.iMe.storage.data.network.handlers.impl.ApiErrorHandler;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.repository.firebase.RemoteConfigRepository;
import io.reactivex.Single;
import io.reactivex.functions.Function;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: RemoteConfigRepositoryImpl.kt */
/* loaded from: classes3.dex */
public final class RemoteConfigRepositoryImpl implements RemoteConfigRepository {
    private final ApiErrorHandler errorHandler;
    private final RemoteConfigApi remoteConfigApi;

    public RemoteConfigRepositoryImpl(RemoteConfigApi remoteConfigApi, ApiErrorHandler errorHandler) {
        Intrinsics.checkNotNullParameter(remoteConfigApi, "remoteConfigApi");
        Intrinsics.checkNotNullParameter(errorHandler, "errorHandler");
        this.remoteConfigApi = remoteConfigApi;
        this.errorHandler = errorHandler;
    }

    @Override // com.iMe.storage.domain.repository.firebase.RemoteConfigRepository
    public Single<Result<Boolean>> getBoolean(String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        Single<Boolean> single = this.remoteConfigApi.getBoolean(key);
        final RemoteConfigRepositoryImpl$getBoolean$1 remoteConfigRepositoryImpl$getBoolean$1 = RemoteConfigRepositoryImpl$getBoolean$1.INSTANCE;
        Single<R> map = single.map(new Function() { // from class: com.iMe.storage.data.repository.firebase.RemoteConfigRepositoryImpl$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                Result boolean$lambda$0;
                boolean$lambda$0 = RemoteConfigRepositoryImpl.getBoolean$lambda$0(Function1.this, obj);
                return boolean$lambda$0;
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "remoteConfigApi\n        …  .map { it.toSuccess() }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Single<Result<Boolean>> onErrorReturn = map.onErrorReturn(new Function() { // from class: com.iMe.storage.data.utils.extentions.RxExtKt$handleError$2
            @Override // io.reactivex.functions.Function
            public final Result<T> apply(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, apiErrorHandler.handleError(it), null, 2, null);
            }
        });
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Result getBoolean$lambda$0(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (Result) tmp0.invoke(obj);
    }
}
