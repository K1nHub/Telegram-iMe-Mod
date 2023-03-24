package com.smedialink.storage.data.repository.crypto.boost;

import com.smedialink.storage.data.datasource.boost.WalletBoostDataSourceFactory;
import com.smedialink.storage.data.network.api.own.BoostApi;
import com.smedialink.storage.data.network.handlers.impl.ApiErrorHandler;
import com.smedialink.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.smedialink.storage.data.network.model.request.crypto.cancel.GetDataForCancelOrBoostCryptoTransactionRequest;
import com.smedialink.storage.data.network.model.request.crypto.cancel.SendEthereumCancelOrBoostTransactionRequest;
import com.smedialink.storage.data.utils.extentions.FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;
import com.smedialink.storage.data.utils.extentions.RxExtKt$sam$i$io_reactivex_functions_Function$0;
import com.smedialink.storage.domain.manager.crypto.CryptoAccessManager;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.send.TransactionArgs;
import com.smedialink.storage.domain.repository.crypto.boost.BoostRepository;
import io.reactivex.Observable;
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
        Observable<R> map = this.boostApi.getDataForSpeedUpCryptoTransaction(new GetDataForCancelOrBoostCryptoTransactionRequest(txHash)).map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new BoostRepositoryImpl$getCryptoBoostMetadata$$inlined$mapSuccess$1(this.firebaseErrorHandler, this)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<TransactionArgs>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new C1743xe2766782(this.errorHandler)));
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
        Observable<R> map = this.boostApi.sendEthereumSpeedUpTransaction(new SendEthereumCancelOrBoostTransactionRequest(transactionBody, oldTxHash)).map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new BoostRepositoryImpl$boost$$inlined$mapSuccess$1(this.firebaseErrorHandler)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<String>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new BoostRepositoryImpl$boost$$inlined$handleError$1(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }
}
