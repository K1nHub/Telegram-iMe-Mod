package com.iMe.storage.data.datasource.cryptobox;

import com.google.protobuf.ByteString;
import com.iMe.storage.data.network.api.own.CryptoBoxApi;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.request.crypto.cryptobox.CryptoBoxCreationExecuteRequest;
import com.iMe.storage.data.network.model.request.crypto.wallet.SendTransactionBodyRequest;
import com.iMe.storage.data.network.model.response.base.ApiBaseResponse;
import com.iMe.storage.data.network.model.response.crypto.cryptobox.CryptoBoxInfoResponse;
import com.iMe.storage.data.network.model.response.crypto.cryptobox.CryptoBoxTokenApprovalExecuteResponse;
import com.iMe.storage.data.utils.crypto.EthTransactionSigner;
import com.iMe.storage.data.utils.extentions.FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.data.utils.extentions.NumberExtKt;
import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.Wallet;
import com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxTransactionArgs;
import com.iMe.storage.domain.model.crypto.send.TransactionArgs;
import com.iMe.storage.domain.utils.extentions.CryptoExtKt;
import com.iMe.storage.domain.utils.extentions.ObservableExtKt$sam$i$io_reactivex_functions_Function$0;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import java.math.BigInteger;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import wallet.core.jni.proto.Ethereum;
/* compiled from: CryptoBoxDataSourceImpl.kt */
/* loaded from: classes3.dex */
public final class CryptoBoxDataSourceImpl implements CryptoBoxDataSource {
    private final CryptoAccessManager cryptoAccessManager;
    private final CryptoBoxApi cryptoBoxApi;
    private final FirebaseFunctionsErrorHandler firebaseErrorHandler;

    public CryptoBoxDataSourceImpl(CryptoAccessManager cryptoAccessManager, CryptoBoxApi cryptoBoxApi, FirebaseFunctionsErrorHandler firebaseErrorHandler) {
        Intrinsics.checkNotNullParameter(cryptoAccessManager, "cryptoAccessManager");
        Intrinsics.checkNotNullParameter(cryptoBoxApi, "cryptoBoxApi");
        Intrinsics.checkNotNullParameter(firebaseErrorHandler, "firebaseErrorHandler");
        this.cryptoAccessManager = cryptoAccessManager;
        this.cryptoBoxApi = cryptoBoxApi;
        this.firebaseErrorHandler = firebaseErrorHandler;
    }

    @Override // com.iMe.storage.data.datasource.cryptobox.CryptoBoxDataSource
    public Observable<Result<String>> sendApprovalExecute(TransactionArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        Observable flatMap = sign(args).flatMap(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Result<? extends String>, ObservableSource<? extends Result<? extends String>>>() { // from class: com.iMe.storage.data.datasource.cryptobox.CryptoBoxDataSourceImpl$sendApprovalExecute$$inlined$flatMapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final ObservableSource<? extends Result<? extends String>> invoke(Result<? extends String> result) {
                CryptoBoxApi cryptoBoxApi;
                final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler;
                Intrinsics.checkNotNullParameter(result, "result");
                if (!(result instanceof Result.Success)) {
                    if (result instanceof Result.Error) {
                        Result error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                        Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extentions.ObservableExtKt.flatMapSuccess");
                        return Observable.just(error$default);
                    }
                    return Observable.empty();
                }
                cryptoBoxApi = CryptoBoxDataSourceImpl.this.cryptoBoxApi;
                String data = result.getData();
                if (data == null) {
                    data = "";
                }
                Observable<ApiBaseResponse<CryptoBoxTokenApprovalExecuteResponse>> sendApprovalExecute = cryptoBoxApi.sendApprovalExecute(new SendTransactionBodyRequest(data));
                firebaseFunctionsErrorHandler = CryptoBoxDataSourceImpl.this.firebaseErrorHandler;
                ObservableSource map = sendApprovalExecute.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<CryptoBoxTokenApprovalExecuteResponse>, Result<? extends String>>() { // from class: com.iMe.storage.data.datasource.cryptobox.CryptoBoxDataSourceImpl$sendApprovalExecute$lambda$1$$inlined$mapSuccess$1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Result<String> invoke(ApiBaseResponse<CryptoBoxTokenApprovalExecuteResponse> response) {
                        Intrinsics.checkNotNullParameter(response, "response");
                        if (!response.isSuccess()) {
                            return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                        }
                        return Result.Companion.success(response.getPayload().getTransactionUrl());
                    }
                }));
                Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
                return map;
            }
        }));
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        return flatMap;
    }

    @Override // com.iMe.storage.data.datasource.cryptobox.CryptoBoxDataSource
    public Observable<Result<String>> sendSuspensionExecute(TransactionArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        Observable flatMap = sign(args).flatMap(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Result<? extends String>, ObservableSource<? extends Result<? extends String>>>() { // from class: com.iMe.storage.data.datasource.cryptobox.CryptoBoxDataSourceImpl$sendSuspensionExecute$$inlined$flatMapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final ObservableSource<? extends Result<? extends String>> invoke(Result<? extends String> result) {
                CryptoBoxApi cryptoBoxApi;
                final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler;
                Intrinsics.checkNotNullParameter(result, "result");
                if (!(result instanceof Result.Success)) {
                    if (result instanceof Result.Error) {
                        Result error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                        Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extentions.ObservableExtKt.flatMapSuccess");
                        return Observable.just(error$default);
                    }
                    return Observable.empty();
                }
                cryptoBoxApi = CryptoBoxDataSourceImpl.this.cryptoBoxApi;
                String data = result.getData();
                if (data == null) {
                    data = "";
                }
                Observable<ApiBaseResponse<CryptoBoxTokenApprovalExecuteResponse>> sendSuspensionExecute = cryptoBoxApi.sendSuspensionExecute(new SendTransactionBodyRequest(data));
                firebaseFunctionsErrorHandler = CryptoBoxDataSourceImpl.this.firebaseErrorHandler;
                ObservableSource map = sendSuspensionExecute.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<CryptoBoxTokenApprovalExecuteResponse>, Result<? extends String>>() { // from class: com.iMe.storage.data.datasource.cryptobox.CryptoBoxDataSourceImpl$sendSuspensionExecute$lambda$3$$inlined$mapSuccess$1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Result<String> invoke(ApiBaseResponse<CryptoBoxTokenApprovalExecuteResponse> response) {
                        Intrinsics.checkNotNullParameter(response, "response");
                        if (!response.isSuccess()) {
                            return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                        }
                        return Result.Companion.success(response.getPayload().getTransactionUrl());
                    }
                }));
                Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
                return map;
            }
        }));
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        return flatMap;
    }

    @Override // com.iMe.storage.data.datasource.cryptobox.CryptoBoxDataSource
    public Observable<Result<String>> sendCreationExecute(final long j, final String description, TransactionArgs args) {
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(args, "args");
        Observable flatMap = sign(args).flatMap(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Result<? extends String>, ObservableSource<? extends Result<? extends String>>>() { // from class: com.iMe.storage.data.datasource.cryptobox.CryptoBoxDataSourceImpl$sendCreationExecute$$inlined$flatMapSuccess$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final ObservableSource<? extends Result<? extends String>> invoke(Result<? extends String> result) {
                CryptoBoxApi cryptoBoxApi;
                final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler;
                Intrinsics.checkNotNullParameter(result, "result");
                if (!(result instanceof Result.Success)) {
                    if (result instanceof Result.Error) {
                        Result error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                        Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extentions.ObservableExtKt.flatMapSuccess");
                        return Observable.just(error$default);
                    }
                    return Observable.empty();
                }
                cryptoBoxApi = CryptoBoxDataSourceImpl.this.cryptoBoxApi;
                long j2 = j;
                String str = description;
                String data = result.getData();
                if (data == null) {
                    data = "";
                }
                Observable<ApiBaseResponse<CryptoBoxInfoResponse>> sendCreationExecute = cryptoBoxApi.sendCreationExecute(new CryptoBoxCreationExecuteRequest(j2, str, data));
                firebaseFunctionsErrorHandler = CryptoBoxDataSourceImpl.this.firebaseErrorHandler;
                ObservableSource map = sendCreationExecute.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<CryptoBoxInfoResponse>, Result<? extends String>>() { // from class: com.iMe.storage.data.datasource.cryptobox.CryptoBoxDataSourceImpl$sendCreationExecute$lambda$5$$inlined$mapSuccess$1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Result<String> invoke(ApiBaseResponse<CryptoBoxInfoResponse> response) {
                        Intrinsics.checkNotNullParameter(response, "response");
                        if (!response.isSuccess()) {
                            return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                        }
                        return Result.Companion.success(response.getPayload().toString());
                    }
                }));
                Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
                return map;
            }
        }));
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        return flatMap;
    }

    @Override // com.iMe.storage.data.datasource.base.SignTransactionDatasource
    public Observable<Result<String>> sign(TransactionArgs args) {
        byte[] bArr;
        Ethereum.Transaction build;
        Intrinsics.checkNotNullParameter(args, "args");
        if (!(args instanceof CryptoBoxTransactionArgs)) {
            throw new IllegalStateException("Incorrect cryptoBox args passed");
        }
        Wallet.EVM eVMWallet = this.cryptoAccessManager.getEVMWallet();
        if (eVMWallet == null || (bArr = eVMWallet.getPrivateKeyBytes()) == null) {
            bArr = new byte[0];
        }
        byte[] bArr2 = bArr;
        CryptoBoxTransactionArgs cryptoBoxTransactionArgs = (CryptoBoxTransactionArgs) args;
        String value = cryptoBoxTransactionArgs.getValue();
        ByteString byteString = CryptoExtKt.toByteString(NumberExtKt.orZero(value != null ? new BigInteger(value) : null));
        if (cryptoBoxTransactionArgs.getData() == null) {
            build = Ethereum.Transaction.newBuilder().setTransfer(Ethereum.Transaction.Transfer.newBuilder().setAmount(byteString)).build();
        } else {
            build = Ethereum.Transaction.newBuilder().setContractGeneric(Ethereum.Transaction.ContractGeneric.newBuilder().setData(CryptoExtKt.hexToByteString(cryptoBoxTransactionArgs.getData())).setAmount(byteString).build()).build();
        }
        Ethereum.Transaction transaction = build;
        EthTransactionSigner ethTransactionSigner = EthTransactionSigner.INSTANCE;
        long chainId = cryptoBoxTransactionArgs.getChainId();
        BigInteger gasPrice = cryptoBoxTransactionArgs.getGasPrice();
        BigInteger gasLimit = cryptoBoxTransactionArgs.getGasLimit();
        BigInteger nonce = cryptoBoxTransactionArgs.getNonce();
        String to = cryptoBoxTransactionArgs.getTo();
        Intrinsics.checkNotNullExpressionValue(transaction, "transaction");
        Observable<Result<String>> just = Observable.just(Result.Companion.success(ethTransactionSigner.sign(chainId, gasPrice, gasLimit, nonce, to, transaction, bArr2)));
        Intrinsics.checkNotNullExpressionValue(just, "just(this)");
        return just;
    }
}
