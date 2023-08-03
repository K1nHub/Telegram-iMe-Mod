package com.iMe.storage.data.repository.firebase;

import com.google.firebase.dynamiclinks.PendingDynamicLinkData;
import com.iMe.storage.data.network.api.google.DynamicLinksApi;
import com.iMe.storage.data.network.handlers.ErrorHandler;
import com.iMe.storage.data.network.handlers.impl.ApiErrorHandler;
import com.iMe.storage.data.utils.extentions.RxExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.data.utils.system.AndroidActivityHolder;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.google.DynamicLinkData;
import com.iMe.storage.domain.repository.firebase.DynamicLinksRepository;
import io.reactivex.Observable;
import io.reactivex.functions.Function;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: DynamicLinksRepositoryImpl.kt */
/* loaded from: classes3.dex */
public final class DynamicLinksRepositoryImpl implements DynamicLinksRepository {
    private final DynamicLinksApi dynamicLinksApi;
    private final ApiErrorHandler errorHandler;

    public DynamicLinksRepositoryImpl(DynamicLinksApi dynamicLinksApi, ApiErrorHandler errorHandler) {
        Intrinsics.checkNotNullParameter(dynamicLinksApi, "dynamicLinksApi");
        Intrinsics.checkNotNullParameter(errorHandler, "errorHandler");
        this.dynamicLinksApi = dynamicLinksApi;
        this.errorHandler = errorHandler;
    }

    @Override // com.iMe.storage.domain.repository.firebase.DynamicLinksRepository
    public Observable<Result<DynamicLinkData>> getLink(AndroidActivityHolder holder, String url) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(url, "url");
        Observable<PendingDynamicLinkData> link = this.dynamicLinksApi.getLink(holder, url);
        final DynamicLinksRepositoryImpl$getLink$1 dynamicLinksRepositoryImpl$getLink$1 = new Function1<PendingDynamicLinkData, Result<? extends DynamicLinkData>>() { // from class: com.iMe.storage.data.repository.firebase.DynamicLinksRepositoryImpl$getLink$1
            @Override // kotlin.jvm.functions.Function1
            public final Result<DynamicLinkData> invoke(PendingDynamicLinkData response) {
                Intrinsics.checkNotNullParameter(response, "response");
                return Result.Companion.success(DynamicLinkData.Companion.parseDynamicLink(response.getLink()));
            }
        };
        Observable<R> map = link.map(new Function() { // from class: com.iMe.storage.data.repository.firebase.DynamicLinksRepositoryImpl$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                Result link$lambda$0;
                link$lambda$0 = DynamicLinksRepositoryImpl.getLink$lambda$0(Function1.this, obj);
                return link$lambda$0;
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "dynamicLinksApi\n        …ponse.link).toSuccess() }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<DynamicLinkData>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends DynamicLinkData>>() { // from class: com.iMe.storage.data.repository.firebase.DynamicLinksRepositoryImpl$getLink$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<DynamicLinkData> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Result getLink$lambda$0(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (Result) tmp0.invoke(obj);
    }
}
