package com.smedialink.storage.data.repository.crypto.ton;

import com.smedialink.storage.common.AppConfiguration$Ton;
import com.smedialink.storage.data.network.handlers.impl.ApiErrorHandler;
import com.smedialink.storage.data.utils.extentions.RxExtKt$handleError$1;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.repository.crypto.ton.TonConfigRepository;
import io.reactivex.Observable;
import java.util.concurrent.Callable;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
/* compiled from: TonConfigRepositoryImpl.kt */
/* loaded from: classes3.dex */
public final class TonConfigRepositoryImpl implements TonConfigRepository {
    private final ApiErrorHandler errorHandler;
    private final OkHttpClient okHttpClient;

    public TonConfigRepositoryImpl(ApiErrorHandler errorHandler, OkHttpClient okHttpClient) {
        Intrinsics.checkNotNullParameter(errorHandler, "errorHandler");
        Intrinsics.checkNotNullParameter(okHttpClient, "okHttpClient");
        this.errorHandler = errorHandler;
        this.okHttpClient = okHttpClient;
    }

    @Override // com.smedialink.storage.domain.repository.crypto.ton.TonConfigRepository
    public Observable<Result<String>> getTonConfigJsonString() {
        Observable map = Observable.fromCallable(new Callable() { // from class: com.smedialink.storage.data.repository.crypto.ton.TonConfigRepositoryImpl$$ExternalSyntheticLambda1
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Response m1363getTonConfigJsonString$lambda0;
                m1363getTonConfigJsonString$lambda0 = TonConfigRepositoryImpl.m1363getTonConfigJsonString$lambda0(TonConfigRepositoryImpl.this);
                return m1363getTonConfigJsonString$lambda0;
            }
        }).map(TonConfigRepositoryImpl$$ExternalSyntheticLambda0.INSTANCE);
        Intrinsics.checkNotNullExpressionValue(map, "fromCallable {\n         …s()\n                    }");
        Observable<Result<String>> onErrorReturn = map.onErrorReturn(new RxExtKt$handleError$1(this.errorHandler));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: getTonConfigJsonString$lambda-0  reason: not valid java name */
    public static final Response m1363getTonConfigJsonString$lambda0(TonConfigRepositoryImpl this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        return this$0.okHttpClient.newCall(new Request.Builder().url(AppConfiguration$Ton.INSTANCE.getTonConfigFilename()).get().build()).execute();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: getTonConfigJsonString$lambda-1  reason: not valid java name */
    public static final Result m1364getTonConfigJsonString$lambda1(Response response) {
        Intrinsics.checkNotNullParameter(response, "response");
        ResponseBody body = response.body();
        String string = body == null ? null : body.string();
        if (string == null) {
            string = "";
        }
        return Result.Companion.success(string);
    }
}
