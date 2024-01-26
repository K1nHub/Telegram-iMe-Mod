package com.iMe.storage.data.repository.kikliko;

import com.iMe.storage.data.network.api.own.KiklikoApi;
import com.iMe.storage.data.network.handlers.ErrorHandler;
import com.iMe.storage.data.network.handlers.impl.ApiErrorHandler;
import com.iMe.storage.data.network.model.request.kikliko.ReportRequest;
import com.iMe.storage.data.network.model.request.kikliko.ShareRequest;
import com.iMe.storage.data.network.model.request.kikliko.ViewRequest;
import com.iMe.storage.data.network.model.response.kikliko.GetTagsResponse;
import com.iMe.storage.data.network.model.response.kikliko.SearchResponse;
import com.iMe.storage.data.network.model.response.kikliko.SearchResultResponse;
import com.iMe.storage.data.network.model.response.kikliko.TagResponse;
import com.iMe.storage.data.utils.extentions.RxExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.repository.kikliko.KiklikoRepository;
import com.iMe.storage.domain.storage.PreferenceHelper;
import io.reactivex.Observable;
import io.reactivex.functions.Function;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: KiklikoRepositoryImpl.kt */
/* loaded from: classes3.dex */
public final class KiklikoRepositoryImpl implements KiklikoRepository {
    private final KiklikoApi api;
    private final ApiErrorHandler errorHandler;
    private final PreferenceHelper preferenceHelper;

    public KiklikoRepositoryImpl(KiklikoApi api, ApiErrorHandler errorHandler, PreferenceHelper preferenceHelper) {
        Intrinsics.checkNotNullParameter(api, "api");
        Intrinsics.checkNotNullParameter(errorHandler, "errorHandler");
        Intrinsics.checkNotNullParameter(preferenceHelper, "preferenceHelper");
        this.api = api;
        this.errorHandler = errorHandler;
        this.preferenceHelper = preferenceHelper;
    }

    @Override // com.iMe.storage.domain.repository.kikliko.KiklikoRepository
    public Observable<Result<List<TagResponse>>> getTags() {
        Observable<GetTagsResponse> tags = this.api.getTags();
        final KiklikoRepositoryImpl$getTags$1 kiklikoRepositoryImpl$getTags$1 = new Function1<GetTagsResponse, Result<? extends List<? extends TagResponse>>>() { // from class: com.iMe.storage.data.repository.kikliko.KiklikoRepositoryImpl$getTags$1
            @Override // kotlin.jvm.functions.Function1
            public final Result<List<TagResponse>> invoke(GetTagsResponse it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.success(it.getData());
            }
        };
        Observable<R> map = tags.map(new Function() { // from class: com.iMe.storage.data.repository.kikliko.KiklikoRepositoryImpl$$ExternalSyntheticLambda3
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                Result tags$lambda$0;
                tags$lambda$0 = KiklikoRepositoryImpl.getTags$lambda$0(Function1.this, obj);
                return tags$lambda$0;
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "api\n            .getTags…p { it.data.toSuccess() }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<List<TagResponse>>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends List<? extends TagResponse>>>() { // from class: com.iMe.storage.data.repository.kikliko.KiklikoRepositoryImpl$getTags$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<List<? extends TagResponse>> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Result getTags$lambda$0(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (Result) tmp0.invoke(obj);
    }

    @Override // com.iMe.storage.domain.repository.kikliko.KiklikoRepository
    public Observable<Result<SearchResponse>> searchByKeyword(String keyword, int i) {
        Intrinsics.checkNotNullParameter(keyword, "keyword");
        Observable searchByKeyword$default = KiklikoApi.CC.searchByKeyword$default(this.api, keyword, i, this.preferenceHelper.getKiklikoUUID(), 0, 8, null);
        final KiklikoRepositoryImpl$searchByKeyword$1 kiklikoRepositoryImpl$searchByKeyword$1 = new Function1<SearchResultResponse, Result<? extends SearchResponse>>() { // from class: com.iMe.storage.data.repository.kikliko.KiklikoRepositoryImpl$searchByKeyword$1
            @Override // kotlin.jvm.functions.Function1
            public final Result<SearchResponse> invoke(SearchResultResponse it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.success(it.getData());
            }
        };
        Observable map = searchByKeyword$default.map(new Function() { // from class: com.iMe.storage.data.repository.kikliko.KiklikoRepositoryImpl$$ExternalSyntheticLambda2
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                Result searchByKeyword$lambda$1;
                searchByKeyword$lambda$1 = KiklikoRepositoryImpl.searchByKeyword$lambda$1(Function1.this, obj);
                return searchByKeyword$lambda$1;
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "api\n            .searchB…p { it.data.toSuccess() }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<SearchResponse>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends SearchResponse>>() { // from class: com.iMe.storage.data.repository.kikliko.KiklikoRepositoryImpl$searchByKeyword$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<SearchResponse> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Result searchByKeyword$lambda$1(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (Result) tmp0.invoke(obj);
    }

    @Override // com.iMe.storage.domain.repository.kikliko.KiklikoRepository
    public Observable<Result<SearchResponse>> searchByTag(String tag, int i) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Observable searchByTag$default = KiklikoApi.CC.searchByTag$default(this.api, tag, i, this.preferenceHelper.getKiklikoUUID(), 0, 8, null);
        final KiklikoRepositoryImpl$searchByTag$1 kiklikoRepositoryImpl$searchByTag$1 = new Function1<SearchResultResponse, Result<? extends SearchResponse>>() { // from class: com.iMe.storage.data.repository.kikliko.KiklikoRepositoryImpl$searchByTag$1
            @Override // kotlin.jvm.functions.Function1
            public final Result<SearchResponse> invoke(SearchResultResponse it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.success(it.getData());
            }
        };
        Observable map = searchByTag$default.map(new Function() { // from class: com.iMe.storage.data.repository.kikliko.KiklikoRepositoryImpl$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                Result searchByTag$lambda$2;
                searchByTag$lambda$2 = KiklikoRepositoryImpl.searchByTag$lambda$2(Function1.this, obj);
                return searchByTag$lambda$2;
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "api\n            .searchB…p { it.data.toSuccess() }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<SearchResponse>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends SearchResponse>>() { // from class: com.iMe.storage.data.repository.kikliko.KiklikoRepositoryImpl$searchByTag$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<SearchResponse> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Result searchByTag$lambda$2(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (Result) tmp0.invoke(obj);
    }

    @Override // com.iMe.storage.domain.repository.kikliko.KiklikoRepository
    public Observable<Result<SearchResponse>> getTrending(int i) {
        Observable trending$default = KiklikoApi.CC.getTrending$default(this.api, i, this.preferenceHelper.getKiklikoUUID(), 0, null, 12, null);
        final KiklikoRepositoryImpl$getTrending$1 kiklikoRepositoryImpl$getTrending$1 = new Function1<SearchResultResponse, Result<? extends SearchResponse>>() { // from class: com.iMe.storage.data.repository.kikliko.KiklikoRepositoryImpl$getTrending$1
            @Override // kotlin.jvm.functions.Function1
            public final Result<SearchResponse> invoke(SearchResultResponse it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.success(it.getData());
            }
        };
        Observable map = trending$default.map(new Function() { // from class: com.iMe.storage.data.repository.kikliko.KiklikoRepositoryImpl$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                Result trending$lambda$3;
                trending$lambda$3 = KiklikoRepositoryImpl.getTrending$lambda$3(Function1.this, obj);
                return trending$lambda$3;
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "api\n            .getTren…p { it.data.toSuccess() }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<SearchResponse>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends SearchResponse>>() { // from class: com.iMe.storage.data.repository.kikliko.KiklikoRepositoryImpl$getTrending$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<SearchResponse> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Result getTrending$lambda$3(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (Result) tmp0.invoke(obj);
    }

    @Override // com.iMe.storage.domain.repository.kikliko.KiklikoRepository
    public Observable<Result<Boolean>> share(String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        Observable<R> map = this.api.share(id, new ShareRequest(this.preferenceHelper.getKiklikoUUID())).map(new Function() { // from class: com.iMe.storage.data.repository.kikliko.KiklikoRepositoryImpl$$ExternalSyntheticLambda5
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                Result share$lambda$4;
                share$lambda$4 = KiklikoRepositoryImpl.share$lambda$4(obj);
                return share$lambda$4;
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "api\n            .share(i….map { true.toSuccess() }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<Boolean>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends Boolean>>() { // from class: com.iMe.storage.data.repository.kikliko.KiklikoRepositoryImpl$share$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<Boolean> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Result share$lambda$4(Object it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Result.Companion.success(Boolean.TRUE);
    }

    @Override // com.iMe.storage.domain.repository.kikliko.KiklikoRepository
    public Observable<Result<Boolean>> view(String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        Observable<R> map = this.api.view(id, new ViewRequest(this.preferenceHelper.getKiklikoUUID())).map(new Function() { // from class: com.iMe.storage.data.repository.kikliko.KiklikoRepositoryImpl$$ExternalSyntheticLambda6
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                Result view$lambda$5;
                view$lambda$5 = KiklikoRepositoryImpl.view$lambda$5(obj);
                return view$lambda$5;
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "api\n            .view(id….map { true.toSuccess() }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<Boolean>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends Boolean>>() { // from class: com.iMe.storage.data.repository.kikliko.KiklikoRepositoryImpl$view$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<Boolean> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Result view$lambda$5(Object it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Result.Companion.success(Boolean.TRUE);
    }

    @Override // com.iMe.storage.domain.repository.kikliko.KiklikoRepository
    public Observable<Result<Boolean>> report(String id, String reason) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(reason, "reason");
        Observable<R> map = this.api.report(id, new ReportRequest(this.preferenceHelper.getKiklikoUUID(), reason)).map(new Function() { // from class: com.iMe.storage.data.repository.kikliko.KiklikoRepositoryImpl$$ExternalSyntheticLambda4
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                Result report$lambda$6;
                report$lambda$6 = KiklikoRepositoryImpl.report$lambda$6(obj);
                return report$lambda$6;
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "api\n            .report(….map { true.toSuccess() }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<Boolean>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends Boolean>>() { // from class: com.iMe.storage.data.repository.kikliko.KiklikoRepositoryImpl$report$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<Boolean> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Result report$lambda$6(Object it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Result.Companion.success(Boolean.TRUE);
    }
}
