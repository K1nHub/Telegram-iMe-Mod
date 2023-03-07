package com.smedialink.storage.data.repository.crypto.boost;

import com.smedialink.storage.data.datasource.boost.WalletBoostDataSourceFactory;
import com.smedialink.storage.data.mapper.crypto.BoostMappingKt;
import com.smedialink.storage.data.network.api.own.BoostApi;
import com.smedialink.storage.data.network.handlers.impl.ApiErrorHandler;
import com.smedialink.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.smedialink.storage.data.network.model.request.crypto.cancel.GetDataForCancelOrBoostCryptoTransactionRequest;
import com.smedialink.storage.data.network.model.request.crypto.cancel.SendEthereumCancelOrBoostTransactionRequest;
import com.smedialink.storage.data.network.model.response.base.ApiBaseResponse;
import com.smedialink.storage.data.network.model.response.crypto.boost.GetBoostTransactionDataResponse;
import com.smedialink.storage.data.network.model.response.crypto.wallet.TransactionResponse;
import com.smedialink.storage.data.utils.extentions.RxExtKt$handleError$1;
import com.smedialink.storage.domain.manager.crypto.CryptoAccessManager;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.send.TransactionArgs;
import com.smedialink.storage.domain.repository.crypto.boost.BoostRepository;
import io.reactivex.Observable;
import io.reactivex.functions.Function;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: BoostRepositoryImpl.kt */
/* loaded from: classes3.dex */
public final class BoostRepositoryImpl implements BoostRepository {
    private final BoostApi boostApi;
    private final WalletBoostDataSourceFactory boostDataSourceFactory;
    private final CryptoAccessManager cryptoAccessManager;
    private final ApiErrorHandler errorHandler;
    private final FirebaseFunctionsErrorHandler firebaseErrorHandler;

    public BoostRepositoryImpl(BoostApi boostApi, CryptoAccessManager cryptoAccessManager, WalletBoostDataSourceFactory boostDataSourceFactory, FirebaseFunctionsErrorHandler firebaseErrorHandler, ApiErrorHandler errorHandler) {
        Intrinsics.checkNotNullParameter(boostApi, "boostApi");
        Intrinsics.checkNotNullParameter(cryptoAccessManager, "cryptoAccessManager");
        Intrinsics.checkNotNullParameter(boostDataSourceFactory, "boostDataSourceFactory");
        Intrinsics.checkNotNullParameter(firebaseErrorHandler, "firebaseErrorHandler");
        Intrinsics.checkNotNullParameter(errorHandler, "errorHandler");
        this.boostApi = boostApi;
        this.cryptoAccessManager = cryptoAccessManager;
        this.boostDataSourceFactory = boostDataSourceFactory;
        this.firebaseErrorHandler = firebaseErrorHandler;
        this.errorHandler = errorHandler;
    }

    @Override // com.smedialink.storage.domain.repository.crypto.boost.BoostRepository
    public Observable<Result<TransactionArgs>> getCryptoBoostMetadata(String txHash) {
        Intrinsics.checkNotNullParameter(txHash, "txHash");
        Observable<ApiBaseResponse<GetBoostTransactionDataResponse>> dataForSpeedUpCryptoTransaction = this.boostApi.getDataForSpeedUpCryptoTransaction(new GetDataForCancelOrBoostCryptoTransactionRequest(txHash));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = dataForSpeedUpCryptoTransaction.map(new Function() { // from class: com.smedialink.storage.data.repository.crypto.boost.BoostRepositoryImpl$getCryptoBoostMetadata$$inlined$mapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lcom/smedialink/storage/domain/model/Result<TR;>; */
            @Override // io.reactivex.functions.Function
            public final Result apply(ApiBaseResponse response) {
                CryptoAccessManager cryptoAccessManager;
                Intrinsics.checkNotNullParameter(response, "response");
                if (response.isSuccess()) {
                    cryptoAccessManager = this.cryptoAccessManager;
                    return Result.Companion.success(BoostMappingKt.mapToDomain((GetBoostTransactionDataResponse) response.getPayload(), cryptoAccessManager));
                }
                return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<TransactionArgs>> onErrorReturn = map.onErrorReturn(new RxExtKt$handleError$1(this.errorHandler));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.smedialink.storage.domain.repository.crypto.boost.BoostRepository
    public Observable<Result<String>> signBoostTransaction(TransactionArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        return this.boostDataSourceFactory.getDataSource(args).sign(args);
    }

    @Override // com.smedialink.storage.domain.repository.crypto.boost.BoostRepository
    public Observable<Result<String>> boost(String transactionBody, String oldTxHash) {
        Intrinsics.checkNotNullParameter(transactionBody, "transactionBody");
        Intrinsics.checkNotNullParameter(oldTxHash, "oldTxHash");
        Observable<ApiBaseResponse<TransactionResponse>> sendEthereumSpeedUpTransaction = this.boostApi.sendEthereumSpeedUpTransaction(new SendEthereumCancelOrBoostTransactionRequest(transactionBody, oldTxHash));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = sendEthereumSpeedUpTransaction.map(new Function() { // from class: com.smedialink.storage.data.repository.crypto.boost.BoostRepositoryImpl$boost$$inlined$mapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lcom/smedialink/storage/domain/model/Result<TR;>; */
            @Override // io.reactivex.functions.Function
            public final Result apply(ApiBaseResponse response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (response.isSuccess()) {
                    return Result.Companion.success(((TransactionResponse) response.getPayload()).getTransactionHash());
                }
                return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<String>> onErrorReturn = map.onErrorReturn(new RxExtKt$handleError$1(this.errorHandler));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }
}
