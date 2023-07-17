package com.iMe.storage.data.repository.crypto.boost;

import com.iMe.storage.data.datasource.boost.WalletBoostDataSourceFactory;
import com.iMe.storage.data.network.api.own.BoostApi;
import com.iMe.storage.data.network.handlers.impl.ApiErrorHandler;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.request.crypto.cancel.PrepareSpeedUpOrCancelTransactionRequest;
import com.iMe.storage.data.network.model.request.crypto.cancel.SendCancelOrBoostTransactionRequest;
import com.iMe.storage.data.utils.extentions.FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.data.utils.extentions.RxExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.send.TransactionArgs;
import com.iMe.storage.domain.repository.crypto.boost.BoostRepository;
import io.reactivex.Observable;
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
        Observable<R> map = this.boostApi.getSpeedUpTransactionData(new PrepareSpeedUpOrCancelTransactionRequest(txHash)).map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new BoostRepositoryImpl$getCryptoBoostMetadata$$inlined$mapSuccess$1(this.firebaseErrorHandler)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<TransactionArgs>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new C1879xe2766782(this.errorHandler)));
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
        Observable<R> map = this.boostApi.sendEthereumSpeedUpTransaction(new SendCancelOrBoostTransactionRequest(transactionBody, oldTxHash)).map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new BoostRepositoryImpl$boost$$inlined$mapSuccess$1(this.firebaseErrorHandler)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<String>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new BoostRepositoryImpl$boost$$inlined$handleError$1(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }
}
