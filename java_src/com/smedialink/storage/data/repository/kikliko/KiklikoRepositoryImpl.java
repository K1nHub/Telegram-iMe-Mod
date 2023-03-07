package com.smedialink.storage.data.repository.kikliko;

import com.smedialink.storage.data.network.api.own.KiklikoApi;
import com.smedialink.storage.data.network.handlers.impl.ApiErrorHandler;
import com.smedialink.storage.data.network.model.request.kikliko.ReportRequest;
import com.smedialink.storage.data.network.model.request.kikliko.ShareRequest;
import com.smedialink.storage.data.network.model.request.kikliko.ViewRequest;
import com.smedialink.storage.data.network.model.response.kikliko.GetTagsResponse;
import com.smedialink.storage.data.network.model.response.kikliko.SearchResponse;
import com.smedialink.storage.data.network.model.response.kikliko.SearchResultResponse;
import com.smedialink.storage.data.network.model.response.kikliko.TagResponse;
import com.smedialink.storage.data.utils.extentions.RxExtKt$handleError$1;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.repository.kikliko.KiklikoRepository;
import com.smedialink.storage.domain.storage.PreferenceHelper;
import io.reactivex.Observable;
import java.util.List;
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

    @Override // com.smedialink.storage.domain.repository.kikliko.KiklikoRepository
    public Observable<Result<List<TagResponse>>> getTags() {
        Observable<R> map = this.api.getTags().map(KiklikoRepositoryImpl$$ExternalSyntheticLambda0.INSTANCE);
        Intrinsics.checkNotNullExpressionValue(map, "api\n                .get…p { it.data.toSuccess() }");
        Observable<Result<List<TagResponse>>> onErrorReturn = map.onErrorReturn(new RxExtKt$handleError$1(this.errorHandler));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: getTags$lambda-0  reason: not valid java name */
    public static final Result m1369getTags$lambda0(GetTagsResponse it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Result.Companion.success(it.getData());
    }

    @Override // com.smedialink.storage.domain.repository.kikliko.KiklikoRepository
    public Observable<Result<SearchResponse>> searchByKeyword(String keyword, int i) {
        Intrinsics.checkNotNullParameter(keyword, "keyword");
        Observable map = KiklikoApi.DefaultImpls.searchByKeyword$default(this.api, keyword, i, this.preferenceHelper.getKiklikoUUID(), 0, 8, null).map(KiklikoRepositoryImpl$$ExternalSyntheticLambda1.INSTANCE);
        Intrinsics.checkNotNullExpressionValue(map, "api\n                .sea…p { it.data.toSuccess() }");
        Observable<Result<SearchResponse>> onErrorReturn = map.onErrorReturn(new RxExtKt$handleError$1(this.errorHandler));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: searchByKeyword$lambda-1  reason: not valid java name */
    public static final Result m1372searchByKeyword$lambda1(SearchResultResponse it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Result.Companion.success(it.getData());
    }

    @Override // com.smedialink.storage.domain.repository.kikliko.KiklikoRepository
    public Observable<Result<SearchResponse>> searchByTag(String tag, int i) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Observable map = KiklikoApi.DefaultImpls.searchByTag$default(this.api, tag, i, this.preferenceHelper.getKiklikoUUID(), 0, 8, null).map(KiklikoRepositoryImpl$$ExternalSyntheticLambda3.INSTANCE);
        Intrinsics.checkNotNullExpressionValue(map, "api\n                .sea…p { it.data.toSuccess() }");
        Observable<Result<SearchResponse>> onErrorReturn = map.onErrorReturn(new RxExtKt$handleError$1(this.errorHandler));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: searchByTag$lambda-2  reason: not valid java name */
    public static final Result m1373searchByTag$lambda2(SearchResultResponse it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Result.Companion.success(it.getData());
    }

    @Override // com.smedialink.storage.domain.repository.kikliko.KiklikoRepository
    public Observable<Result<SearchResponse>> getTrending(int i) {
        Observable map = KiklikoApi.DefaultImpls.getTrending$default(this.api, i, this.preferenceHelper.getKiklikoUUID(), 0, null, 12, null).map(KiklikoRepositoryImpl$$ExternalSyntheticLambda2.INSTANCE);
        Intrinsics.checkNotNullExpressionValue(map, "api\n                .get…p { it.data.toSuccess() }");
        Observable<Result<SearchResponse>> onErrorReturn = map.onErrorReturn(new RxExtKt$handleError$1(this.errorHandler));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: getTrending$lambda-3  reason: not valid java name */
    public static final Result m1370getTrending$lambda3(SearchResultResponse it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Result.Companion.success(it.getData());
    }

    @Override // com.smedialink.storage.domain.repository.kikliko.KiklikoRepository
    public Observable<Result<Boolean>> share(String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        Observable<R> map = this.api.share(id, new ShareRequest(this.preferenceHelper.getKiklikoUUID())).map(KiklikoRepositoryImpl$$ExternalSyntheticLambda5.INSTANCE);
        Intrinsics.checkNotNullExpressionValue(map, "api\n                .sha….map { true.toSuccess() }");
        Observable<Result<Boolean>> onErrorReturn = map.onErrorReturn(new RxExtKt$handleError$1(this.errorHandler));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: share$lambda-4  reason: not valid java name */
    public static final Result m1374share$lambda4(Object it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Result.Companion.success(Boolean.TRUE);
    }

    @Override // com.smedialink.storage.domain.repository.kikliko.KiklikoRepository
    public Observable<Result<Boolean>> view(String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        Observable<R> map = this.api.view(id, new ViewRequest(this.preferenceHelper.getKiklikoUUID())).map(KiklikoRepositoryImpl$$ExternalSyntheticLambda4.INSTANCE);
        Intrinsics.checkNotNullExpressionValue(map, "api\n                .vie….map { true.toSuccess() }");
        Observable<Result<Boolean>> onErrorReturn = map.onErrorReturn(new RxExtKt$handleError$1(this.errorHandler));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: view$lambda-5  reason: not valid java name */
    public static final Result m1375view$lambda5(Object it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Result.Companion.success(Boolean.TRUE);
    }

    @Override // com.smedialink.storage.domain.repository.kikliko.KiklikoRepository
    public Observable<Result<Boolean>> report(String id, String reason) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(reason, "reason");
        Observable<R> map = this.api.report(id, new ReportRequest(this.preferenceHelper.getKiklikoUUID(), reason)).map(KiklikoRepositoryImpl$$ExternalSyntheticLambda6.INSTANCE);
        Intrinsics.checkNotNullExpressionValue(map, "api\n                .rep….map { true.toSuccess() }");
        Observable<Result<Boolean>> onErrorReturn = map.onErrorReturn(new RxExtKt$handleError$1(this.errorHandler));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: report$lambda-6  reason: not valid java name */
    public static final Result m1371report$lambda6(Object it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Result.Companion.success(Boolean.TRUE);
    }
}
