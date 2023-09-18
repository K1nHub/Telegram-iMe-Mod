package com.iMe.i_staking.datasource;

import com.iMe.i_staking.StakingApi;
import com.iMe.i_staking.mapper.StakingOperationsMapperKt;
import com.iMe.i_staking.request.StakingTokenActionExecuteRequest;
import com.iMe.i_staking.response.StakingOperationResponse;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.response.base.ApiBaseResponse;
import com.iMe.storage.data.utils.crypto.EthTransactionSigner;
import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.Wallet;
import com.iMe.storage.domain.model.crypto.send.TransactionArgs;
import com.iMe.storage.domain.model.staking.StakingOperation;
import com.iMe.storage.domain.model.staking.StakingTransactionArgs;
import com.iMe.storage.domain.utils.extentions.CryptoExtKt;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import java.math.BigInteger;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import wallet.core.jni.proto.Ethereum;
/* compiled from: StakingDataSourceImpl.kt */
/* loaded from: classes4.dex */
public final class StakingDataSourceImpl implements StakingDataSource {
    private final CryptoAccessManager cryptoAccessManager;
    private final FirebaseFunctionsErrorHandler firebaseErrorHandler;
    private final StakingApi stakingApi;

    public StakingDataSourceImpl(CryptoAccessManager cryptoAccessManager, FirebaseFunctionsErrorHandler firebaseErrorHandler, StakingApi stakingApi) {
        Intrinsics.checkNotNullParameter(cryptoAccessManager, "cryptoAccessManager");
        Intrinsics.checkNotNullParameter(firebaseErrorHandler, "firebaseErrorHandler");
        Intrinsics.checkNotNullParameter(stakingApi, "stakingApi");
        this.cryptoAccessManager = cryptoAccessManager;
        this.firebaseErrorHandler = firebaseErrorHandler;
        this.stakingApi = stakingApi;
    }

    @Override // com.iMe.i_staking.datasource.StakingDataSource
    public Observable<Result<StakingOperation>> sendApprovalExecute(final String wrappedAction, TransactionArgs args) {
        Intrinsics.checkNotNullParameter(wrappedAction, "wrappedAction");
        Intrinsics.checkNotNullParameter(args, "args");
        Observable flatMap = sign(args).flatMap(new C1577xdf81e200(new Function1<Result<? extends String>, ObservableSource<? extends Result<? extends StakingOperation>>>() { // from class: com.iMe.i_staking.datasource.StakingDataSourceImpl$sendApprovalExecute$$inlined$flatMapSuccess$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final ObservableSource<? extends Result<? extends StakingOperation>> invoke(Result<? extends String> result) {
                StakingApi stakingApi;
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
                stakingApi = StakingDataSourceImpl.this.stakingApi;
                String str = wrappedAction;
                String data = result.getData();
                if (data == null) {
                    data = "";
                }
                Observable<ApiBaseResponse<StakingOperationResponse>> sendApprovalExecute = stakingApi.sendApprovalExecute(new StakingTokenActionExecuteRequest(str, data));
                firebaseFunctionsErrorHandler = StakingDataSourceImpl.this.firebaseErrorHandler;
                ObservableSource map = sendApprovalExecute.map(new C1577xdf81e200(new Function1<ApiBaseResponse<StakingOperationResponse>, Result<? extends StakingOperation>>() { // from class: com.iMe.i_staking.datasource.StakingDataSourceImpl$sendApprovalExecute$lambda$1$$inlined$mapSuccess$1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Result<StakingOperation> invoke(ApiBaseResponse<StakingOperationResponse> response) {
                        Intrinsics.checkNotNullParameter(response, "response");
                        if (!response.isSuccess()) {
                            return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                        }
                        return Result.Companion.success(StakingOperationsMapperKt.mapToDomain(response.getPayload()));
                    }
                }));
                Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
                return map;
            }
        }));
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        return flatMap;
    }

    @Override // com.iMe.i_staking.datasource.StakingDataSource
    public Observable<Result<StakingOperation>> sendDepositExecute(final String wrappedAction, TransactionArgs args) {
        Intrinsics.checkNotNullParameter(wrappedAction, "wrappedAction");
        Intrinsics.checkNotNullParameter(args, "args");
        Observable flatMap = sign(args).flatMap(new C1577xdf81e200(new Function1<Result<? extends String>, ObservableSource<? extends Result<? extends StakingOperation>>>() { // from class: com.iMe.i_staking.datasource.StakingDataSourceImpl$sendDepositExecute$$inlined$flatMapSuccess$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final ObservableSource<? extends Result<? extends StakingOperation>> invoke(Result<? extends String> result) {
                StakingApi stakingApi;
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
                stakingApi = StakingDataSourceImpl.this.stakingApi;
                String str = wrappedAction;
                String data = result.getData();
                if (data == null) {
                    data = "";
                }
                Observable<ApiBaseResponse<StakingOperationResponse>> sendDepositExecute = stakingApi.sendDepositExecute(new StakingTokenActionExecuteRequest(str, data));
                firebaseFunctionsErrorHandler = StakingDataSourceImpl.this.firebaseErrorHandler;
                ObservableSource map = sendDepositExecute.map(new C1577xdf81e200(new Function1<ApiBaseResponse<StakingOperationResponse>, Result<? extends StakingOperation>>() { // from class: com.iMe.i_staking.datasource.StakingDataSourceImpl$sendDepositExecute$lambda$3$$inlined$mapSuccess$1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Result<StakingOperation> invoke(ApiBaseResponse<StakingOperationResponse> response) {
                        Intrinsics.checkNotNullParameter(response, "response");
                        if (!response.isSuccess()) {
                            return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                        }
                        return Result.Companion.success(StakingOperationsMapperKt.mapToDomain(response.getPayload()));
                    }
                }));
                Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
                return map;
            }
        }));
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        return flatMap;
    }

    @Override // com.iMe.i_staking.datasource.StakingDataSource
    public Observable<Result<StakingOperation>> sendClaimExecute(final String wrappedAction, TransactionArgs args) {
        Intrinsics.checkNotNullParameter(wrappedAction, "wrappedAction");
        Intrinsics.checkNotNullParameter(args, "args");
        Observable flatMap = sign(args).flatMap(new C1577xdf81e200(new Function1<Result<? extends String>, ObservableSource<? extends Result<? extends StakingOperation>>>() { // from class: com.iMe.i_staking.datasource.StakingDataSourceImpl$sendClaimExecute$$inlined$flatMapSuccess$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final ObservableSource<? extends Result<? extends StakingOperation>> invoke(Result<? extends String> result) {
                StakingApi stakingApi;
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
                stakingApi = StakingDataSourceImpl.this.stakingApi;
                String str = wrappedAction;
                String data = result.getData();
                if (data == null) {
                    data = "";
                }
                Observable<ApiBaseResponse<StakingOperationResponse>> sendClaimExecute = stakingApi.sendClaimExecute(new StakingTokenActionExecuteRequest(str, data));
                firebaseFunctionsErrorHandler = StakingDataSourceImpl.this.firebaseErrorHandler;
                ObservableSource map = sendClaimExecute.map(new C1577xdf81e200(new Function1<ApiBaseResponse<StakingOperationResponse>, Result<? extends StakingOperation>>() { // from class: com.iMe.i_staking.datasource.StakingDataSourceImpl$sendClaimExecute$lambda$5$$inlined$mapSuccess$1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Result<StakingOperation> invoke(ApiBaseResponse<StakingOperationResponse> response) {
                        Intrinsics.checkNotNullParameter(response, "response");
                        if (!response.isSuccess()) {
                            return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                        }
                        return Result.Companion.success(StakingOperationsMapperKt.mapToDomain(response.getPayload()));
                    }
                }));
                Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
                return map;
            }
        }));
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        return flatMap;
    }

    @Override // com.iMe.i_staking.datasource.StakingDataSource
    public Observable<Result<StakingOperation>> sendWithdrawExecute(final String wrappedAction, TransactionArgs args) {
        Intrinsics.checkNotNullParameter(wrappedAction, "wrappedAction");
        Intrinsics.checkNotNullParameter(args, "args");
        Observable flatMap = sign(args).flatMap(new C1577xdf81e200(new Function1<Result<? extends String>, ObservableSource<? extends Result<? extends StakingOperation>>>() { // from class: com.iMe.i_staking.datasource.StakingDataSourceImpl$sendWithdrawExecute$$inlined$flatMapSuccess$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final ObservableSource<? extends Result<? extends StakingOperation>> invoke(Result<? extends String> result) {
                StakingApi stakingApi;
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
                stakingApi = StakingDataSourceImpl.this.stakingApi;
                String str = wrappedAction;
                String data = result.getData();
                if (data == null) {
                    data = "";
                }
                Observable<ApiBaseResponse<StakingOperationResponse>> sendWithdrawExecute = stakingApi.sendWithdrawExecute(new StakingTokenActionExecuteRequest(str, data));
                firebaseFunctionsErrorHandler = StakingDataSourceImpl.this.firebaseErrorHandler;
                ObservableSource map = sendWithdrawExecute.map(new C1577xdf81e200(new Function1<ApiBaseResponse<StakingOperationResponse>, Result<? extends StakingOperation>>() { // from class: com.iMe.i_staking.datasource.StakingDataSourceImpl$sendWithdrawExecute$lambda$7$$inlined$mapSuccess$1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Result<StakingOperation> invoke(ApiBaseResponse<StakingOperationResponse> response) {
                        Intrinsics.checkNotNullParameter(response, "response");
                        if (!response.isSuccess()) {
                            return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                        }
                        return Result.Companion.success(StakingOperationsMapperKt.mapToDomain(response.getPayload()));
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
        Intrinsics.checkNotNullParameter(args, "args");
        if (!(args instanceof StakingTransactionArgs)) {
            throw new IllegalStateException("Incorrect staking args passed");
        }
        Wallet.EVM eVMWallet = this.cryptoAccessManager.getEVMWallet();
        if (eVMWallet == null || (bArr = eVMWallet.getPrivateKeyBytes()) == null) {
            bArr = new byte[0];
        }
        byte[] bArr2 = bArr;
        StakingTransactionArgs stakingTransactionArgs = (StakingTransactionArgs) args;
        Ethereum.Transaction.Builder newBuilder = Ethereum.Transaction.newBuilder();
        Ethereum.Transaction.ContractGeneric.Builder data = Ethereum.Transaction.ContractGeneric.newBuilder().setData(CryptoExtKt.hexToByteString(stakingTransactionArgs.getData()));
        BigInteger valueOf = BigInteger.valueOf(stakingTransactionArgs.getValue());
        Intrinsics.checkNotNullExpressionValue(valueOf, "valueOf(this.toLong())");
        Ethereum.Transaction transaction = newBuilder.setContractGeneric(data.setAmount(CryptoExtKt.toByteString(valueOf)).build()).build();
        EthTransactionSigner ethTransactionSigner = EthTransactionSigner.INSTANCE;
        long chainId = stakingTransactionArgs.getChainId();
        BigInteger gasPrice = stakingTransactionArgs.getGasPrice();
        BigInteger gasLimit = stakingTransactionArgs.getGasLimit();
        BigInteger nonce = stakingTransactionArgs.getNonce();
        String to = stakingTransactionArgs.getTo();
        Intrinsics.checkNotNullExpressionValue(transaction, "transaction");
        Observable<Result<String>> just = Observable.just(Result.Companion.success(ethTransactionSigner.sign(chainId, gasPrice, gasLimit, nonce, to, transaction, bArr2)));
        Intrinsics.checkNotNullExpressionValue(just, "just(this)");
        return just;
    }
}
