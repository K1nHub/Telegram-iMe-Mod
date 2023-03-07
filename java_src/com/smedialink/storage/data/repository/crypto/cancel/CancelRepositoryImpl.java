package com.smedialink.storage.data.repository.crypto.cancel;

import com.smedialink.storage.data.datasource.cancel.WalletCancelDataSourceFactory;
import com.smedialink.storage.data.mapper.crypto.CancelMappingKt;
import com.smedialink.storage.data.network.api.own.CancelApi;
import com.smedialink.storage.data.network.handlers.impl.ApiErrorHandler;
import com.smedialink.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.smedialink.storage.data.network.model.request.crypto.cancel.GetDataForCancelOrBoostCryptoTransactionRequest;
import com.smedialink.storage.data.network.model.response.base.ApiBaseResponse;
import com.smedialink.storage.data.network.model.response.crypto.cancel.GetCancelTransactionDataResponse;
import com.smedialink.storage.data.utils.extentions.RxExtKt$handleError$1;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.cancel.CancelArgs;
import com.smedialink.storage.domain.model.crypto.cancel.CryptoCancelMetadata;
import com.smedialink.storage.domain.repository.crypto.cancel.CancelRepository;
import io.reactivex.Observable;
import io.reactivex.functions.Function;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CancelRepositoryImpl.kt */
/* loaded from: classes3.dex */
public final class CancelRepositoryImpl implements CancelRepository {
    private final CancelApi cancelApi;
    private final WalletCancelDataSourceFactory cancelDataSourceFactory;
    private final ApiErrorHandler errorHandler;
    private final FirebaseFunctionsErrorHandler firebaseErrorHandler;

    public CancelRepositoryImpl(CancelApi cancelApi, WalletCancelDataSourceFactory cancelDataSourceFactory, FirebaseFunctionsErrorHandler firebaseErrorHandler, ApiErrorHandler errorHandler) {
        Intrinsics.checkNotNullParameter(cancelApi, "cancelApi");
        Intrinsics.checkNotNullParameter(cancelDataSourceFactory, "cancelDataSourceFactory");
        Intrinsics.checkNotNullParameter(firebaseErrorHandler, "firebaseErrorHandler");
        Intrinsics.checkNotNullParameter(errorHandler, "errorHandler");
        this.cancelApi = cancelApi;
        this.cancelDataSourceFactory = cancelDataSourceFactory;
        this.firebaseErrorHandler = firebaseErrorHandler;
        this.errorHandler = errorHandler;
    }

    @Override // com.smedialink.storage.domain.repository.crypto.cancel.CancelRepository
    public Observable<Result<CryptoCancelMetadata>> getCryptoCancelMetadata(String txHash) {
        Intrinsics.checkNotNullParameter(txHash, "txHash");
        Observable<ApiBaseResponse<GetCancelTransactionDataResponse>> dataForCancelCryptoTransaction = this.cancelApi.getDataForCancelCryptoTransaction(new GetDataForCancelOrBoostCryptoTransactionRequest(txHash));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = dataForCancelCryptoTransaction.map(new Function() { // from class: com.smedialink.storage.data.repository.crypto.cancel.CancelRepositoryImpl$getCryptoCancelMetadata$$inlined$mapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lcom/smedialink/storage/domain/model/Result<TR;>; */
            @Override // io.reactivex.functions.Function
            public final Result apply(ApiBaseResponse response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                return Result.Companion.success(CancelMappingKt.mapToDomain((GetCancelTransactionDataResponse) response.getPayload()));
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<CryptoCancelMetadata>> onErrorReturn = map.onErrorReturn(new RxExtKt$handleError$1(this.errorHandler));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.smedialink.storage.domain.repository.crypto.cancel.CancelRepository
    public Observable<Result<String>> cancel(CancelArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        Observable<Result<String>> onErrorReturn = this.cancelDataSourceFactory.getDataSource(args.getToken()).cancel(args).onErrorReturn(new RxExtKt$handleError$1(this.errorHandler));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }
}
