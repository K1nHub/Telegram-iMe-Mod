package com.iMe.storage.data.repository.crypto.boost;

import com.iMe.storage.data.datasource.boost.WalletBoostDataSourceFactory;
import com.iMe.storage.data.mapper.crypto.BoostMappingKt;
import com.iMe.storage.data.network.api.own.BoostApi;
import com.iMe.storage.data.network.handlers.ErrorHandler;
import com.iMe.storage.data.network.handlers.impl.ApiErrorHandler;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.request.crypto.cancel.PrepareSpeedUpOrCancelTransactionRequest;
import com.iMe.storage.data.network.model.request.crypto.cancel.SendCancelOrBoostTransactionRequest;
import com.iMe.storage.data.network.model.response.base.ApiBaseResponse;
import com.iMe.storage.data.network.model.response.crypto.boost.SpeedUpTransactionDataResponse;
import com.iMe.storage.data.network.model.response.crypto.wallet.TransactionResponse;
import com.iMe.storage.data.utils.extentions.FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.data.utils.extentions.RxExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.send.TransactionArgs;
import com.iMe.storage.domain.repository.crypto.boost.BoostRepository;
import io.reactivex.Observable;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: BoostRepositoryImpl.kt */
/* loaded from: classes3.dex */
public final class BoostRepositoryImpl implements BoostRepository {
    private final BoostApi boostApi;
    private final WalletBoostDataSourceFactory boostDataSourceFactory;
    private final ApiErrorHandler errorHandler;
    private final FirebaseFunctionsErrorHandler firebaseErrorHandler;

    public BoostRepositoryImpl(BoostApi boostApi, WalletBoostDataSourceFactory boostDataSourceFactory, FirebaseFunctionsErrorHandler firebaseErrorHandler, ApiErrorHandler errorHandler) {
        Intrinsics.checkNotNullParameter(boostApi, "boostApi");
        Intrinsics.checkNotNullParameter(boostDataSourceFactory, "boostDataSourceFactory");
        Intrinsics.checkNotNullParameter(firebaseErrorHandler, "firebaseErrorHandler");
        Intrinsics.checkNotNullParameter(errorHandler, "errorHandler");
        this.boostApi = boostApi;
        this.boostDataSourceFactory = boostDataSourceFactory;
        this.firebaseErrorHandler = firebaseErrorHandler;
        this.errorHandler = errorHandler;
    }

    @Override // com.iMe.storage.domain.repository.crypto.boost.BoostRepository
    public Observable<Result<TransactionArgs>> getCryptoBoostMetadata(String txHash) {
        Intrinsics.checkNotNullParameter(txHash, "txHash");
        Observable<ApiBaseResponse<SpeedUpTransactionDataResponse>> speedUpTransactionData = this.boostApi.getSpeedUpTransactionData(new PrepareSpeedUpOrCancelTransactionRequest(txHash));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = speedUpTransactionData.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<SpeedUpTransactionDataResponse>, Result<? extends TransactionArgs>>() { // from class: com.iMe.storage.data.repository.crypto.boost.BoostRepositoryImpl$getCryptoBoostMetadata$$inlined$mapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<TransactionArgs> invoke(ApiBaseResponse<SpeedUpTransactionDataResponse> response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                return Result.Companion.success(BoostMappingKt.mapToDomain(response.getPayload()));
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<TransactionArgs>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends TransactionArgs>>() { // from class: com.iMe.storage.data.repository.crypto.boost.BoostRepositoryImpl$getCryptoBoostMetadata$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<TransactionArgs> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.crypto.boost.BoostRepository
    public Observable<Result<String>> signBoostTransaction(TransactionArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        return this.boostDataSourceFactory.getDataSource(args).sign(args);
    }

    @Override // com.iMe.storage.domain.repository.crypto.boost.BoostRepository
    public Observable<Result<String>> boost(String transactionBody, String oldTxHash) {
        Intrinsics.checkNotNullParameter(transactionBody, "transactionBody");
        Intrinsics.checkNotNullParameter(oldTxHash, "oldTxHash");
        Observable<ApiBaseResponse<TransactionResponse>> sendEthereumSpeedUpTransaction = this.boostApi.sendEthereumSpeedUpTransaction(new SendCancelOrBoostTransactionRequest(transactionBody, oldTxHash));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = sendEthereumSpeedUpTransaction.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<TransactionResponse>, Result<? extends String>>() { // from class: com.iMe.storage.data.repository.crypto.boost.BoostRepositoryImpl$boost$$inlined$mapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<String> invoke(ApiBaseResponse<TransactionResponse> response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (response.isSuccess()) {
                    return Result.Companion.success(response.getPayload().getTransactionHash());
                }
                return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<String>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends String>>() { // from class: com.iMe.storage.data.repository.crypto.boost.BoostRepositoryImpl$boost$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<String> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }
}
