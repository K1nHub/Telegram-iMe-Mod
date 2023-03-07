package com.smedialink.storage.data.repository.firebase;

import com.google.firebase.dynamiclinks.PendingDynamicLinkData;
import com.smedialink.storage.data.network.api.google.DynamicLinksApi;
import com.smedialink.storage.data.network.handlers.impl.ApiErrorHandler;
import com.smedialink.storage.data.utils.extentions.RxExtKt$handleError$1;
import com.smedialink.storage.data.utils.system.AndroidActivityHolder;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.google.DynamicLinkData;
import com.smedialink.storage.domain.repository.firebase.DynamicLinksRepository;
import io.reactivex.Observable;
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

    @Override // com.smedialink.storage.domain.repository.firebase.DynamicLinksRepository
    public Observable<Result<DynamicLinkData>> getLink(AndroidActivityHolder holder, String url) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(url, "url");
        Observable<R> map = this.dynamicLinksApi.getLink(holder, url).map(DynamicLinksRepositoryImpl$$ExternalSyntheticLambda0.INSTANCE);
        Intrinsics.checkNotNullExpressionValue(map, "dynamicLinksApi\n        …ponse.link).toSuccess() }");
        Observable<Result<DynamicLinkData>> onErrorReturn = map.onErrorReturn(new RxExtKt$handleError$1(this.errorHandler));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: getLink$lambda-0  reason: not valid java name */
    public static final Result m1366getLink$lambda0(PendingDynamicLinkData response) {
        Intrinsics.checkNotNullParameter(response, "response");
        return Result.Companion.success(DynamicLinkData.Companion.parseDynamicLink(response.getLink()));
    }
}
