package com.iMe.storage.data.repository.crypto.cancel;

import com.iMe.storage.data.datasource.cancel.WalletCancelDataSourceFactory;
import com.iMe.storage.data.network.api.own.CancelApi;
import com.iMe.storage.data.network.handlers.impl.ApiErrorHandler;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.request.crypto.cancel.GetDataForCancelOrBoostCryptoTransactionRequest;
import com.iMe.storage.data.utils.extentions.FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.data.utils.extentions.RxExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.cancel.CancelArgs;
import com.iMe.storage.domain.model.crypto.cancel.CryptoCancelMetadata;
import com.iMe.storage.domain.repository.crypto.cancel.CancelRepository;
import io.reactivex.Observable;
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

    @Override // com.iMe.storage.domain.repository.crypto.cancel.CancelRepository
    public Observable<Result<CryptoCancelMetadata>> getCryptoCancelMetadata(String txHash) {
        Intrinsics.checkNotNullParameter(txHash, "txHash");
        Observable<R> map = this.cancelApi.getDataForCancelCryptoTransaction(new GetDataForCancelOrBoostCryptoTransactionRequest(txHash)).map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new C1790xd0a5ed(this.firebaseErrorHandler)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<CryptoCancelMetadata>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new C1789xfc4bd054(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.crypto.cancel.CancelRepository
    public Observable<Result<String>> cancel(CancelArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        Observable<Result<String>> onErrorReturn = this.cancelDataSourceFactory.getDataSource(args.getToken()).cancel(args).onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new CancelRepositoryImpl$cancel$$inlined$handleError$1(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }
}
