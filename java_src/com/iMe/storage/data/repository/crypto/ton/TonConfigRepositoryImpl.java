package com.iMe.storage.data.repository.crypto.ton;

import com.iMe.storage.common.AppConfiguration$Ton;
import com.iMe.storage.data.network.handlers.impl.ApiErrorHandler;
import com.iMe.storage.data.utils.extentions.RxExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.repository.crypto.ton.TonConfigRepository;
import io.reactivex.Observable;
import io.reactivex.functions.Function;
import java.util.concurrent.Callable;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
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

    @Override // com.iMe.storage.domain.repository.crypto.ton.TonConfigRepository
    public Observable<Result<String>> getTonConfigJsonString() {
        Observable fromCallable = Observable.fromCallable(new Callable() { // from class: com.iMe.storage.data.repository.crypto.ton.TonConfigRepositoryImpl$$ExternalSyntheticLambda1
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Response tonConfigJsonString$lambda$0;
                tonConfigJsonString$lambda$0 = TonConfigRepositoryImpl.getTonConfigJsonString$lambda$0(TonConfigRepositoryImpl.this);
                return tonConfigJsonString$lambda$0;
            }
        });
        final TonConfigRepositoryImpl$getTonConfigJsonString$2 tonConfigRepositoryImpl$getTonConfigJsonString$2 = TonConfigRepositoryImpl$getTonConfigJsonString$2.INSTANCE;
        Observable map = fromCallable.map(new Function() { // from class: com.iMe.storage.data.repository.crypto.ton.TonConfigRepositoryImpl$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                Result tonConfigJsonString$lambda$1;
                tonConfigJsonString$lambda$1 = TonConfigRepositoryImpl.getTonConfigJsonString$lambda$1(Function1.this, obj);
                return tonConfigJsonString$lambda$1;
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "fromCallable {\n         …s()\n                    }");
        Observable<Result<String>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new C1823xf0d6aff7(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Response getTonConfigJsonString$lambda$0(TonConfigRepositoryImpl this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        return this$0.okHttpClient.newCall(new Request.Builder().url(AppConfiguration$Ton.INSTANCE.getTonConfigFilename()).get().build()).execute();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Result getTonConfigJsonString$lambda$1(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (Result) tmp0.invoke(obj);
    }
}
