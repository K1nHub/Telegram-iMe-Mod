package com.iMe.i_staking.datasource;

import com.iMe.i_staking.StakingApi;
import com.iMe.i_staking.mapper.StakingOperationsMapperKt;
import com.iMe.i_staking.request.StakingTokenActionExecuteRequest;
import com.iMe.i_staking.response.StakingOperationResponse;
import com.smedialink.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.smedialink.storage.data.network.model.response.base.ApiBaseResponse;
import com.smedialink.storage.domain.manager.crypto.CryptoAccessManager;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.Wallet;
import com.smedialink.storage.domain.model.crypto.send.TransactionArgs;
import com.smedialink.storage.domain.model.staking.StakingOperation;
import com.smedialink.storage.domain.model.staking.StakingTransactionArgs;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.functions.Function;
import java.math.BigInteger;
import kotlin.jvm.internal.Intrinsics;
import org.web3j.crypto.RawTransaction;
import org.web3j.crypto.TransactionEncoder;
import org.web3j.utils.Numeric;
/* compiled from: StakingDataSourceImpl.kt */
/* loaded from: classes3.dex */
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
        Observable flatMap = sign(args).flatMap(new Function() { // from class: com.iMe.i_staking.datasource.StakingDataSourceImpl$sendApprovalExecute$$inlined$flatMapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lio/reactivex/ObservableSource<+TR;>; */
            @Override // io.reactivex.functions.Function
            public final ObservableSource apply(Result result) {
                StakingApi stakingApi;
                final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler;
                Intrinsics.checkNotNullParameter(result, "result");
                if (!(result instanceof Result.Success)) {
                    return result instanceof Result.Error ? Observable.just(Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null)) : Observable.empty();
                }
                stakingApi = StakingDataSourceImpl.this.stakingApi;
                String str = wrappedAction;
                String str2 = (String) result.getData();
                if (str2 == null) {
                    str2 = "";
                }
                Observable<ApiBaseResponse<StakingOperationResponse>> sendApprovalExecute = stakingApi.sendApprovalExecute(new StakingTokenActionExecuteRequest(str, str2));
                firebaseFunctionsErrorHandler = StakingDataSourceImpl.this.firebaseErrorHandler;
                Observable<R> map = sendApprovalExecute.map(new Function() { // from class: com.iMe.i_staking.datasource.StakingDataSourceImpl$sendApprovalExecute$lambda-1$$inlined$mapSuccess$1
                    /* JADX WARN: Incorrect types in method signature: (TT;)Lcom/smedialink/storage/domain/model/Result<TR;>; */
                    @Override // io.reactivex.functions.Function
                    public final Result apply(ApiBaseResponse response) {
                        Intrinsics.checkNotNullParameter(response, "response");
                        if (!response.isSuccess()) {
                            return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                        }
                        return Result.Companion.success(StakingOperationsMapperKt.mapToDomain((StakingOperationResponse) response.getPayload()));
                    }
                });
                Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
                return map;
            }
        });
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        return flatMap;
    }

    @Override // com.iMe.i_staking.datasource.StakingDataSource
    public Observable<Result<StakingOperation>> sendDepositExecute(final String wrappedAction, TransactionArgs args) {
        Intrinsics.checkNotNullParameter(wrappedAction, "wrappedAction");
        Intrinsics.checkNotNullParameter(args, "args");
        Observable flatMap = sign(args).flatMap(new Function() { // from class: com.iMe.i_staking.datasource.StakingDataSourceImpl$sendDepositExecute$$inlined$flatMapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lio/reactivex/ObservableSource<+TR;>; */
            @Override // io.reactivex.functions.Function
            public final ObservableSource apply(Result result) {
                StakingApi stakingApi;
                final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler;
                Intrinsics.checkNotNullParameter(result, "result");
                if (!(result instanceof Result.Success)) {
                    return result instanceof Result.Error ? Observable.just(Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null)) : Observable.empty();
                }
                stakingApi = StakingDataSourceImpl.this.stakingApi;
                String str = wrappedAction;
                String str2 = (String) result.getData();
                if (str2 == null) {
                    str2 = "";
                }
                Observable<ApiBaseResponse<StakingOperationResponse>> sendDepositExecute = stakingApi.sendDepositExecute(new StakingTokenActionExecuteRequest(str, str2));
                firebaseFunctionsErrorHandler = StakingDataSourceImpl.this.firebaseErrorHandler;
                Observable<R> map = sendDepositExecute.map(new Function() { // from class: com.iMe.i_staking.datasource.StakingDataSourceImpl$sendDepositExecute$lambda-3$$inlined$mapSuccess$1
                    /* JADX WARN: Incorrect types in method signature: (TT;)Lcom/smedialink/storage/domain/model/Result<TR;>; */
                    @Override // io.reactivex.functions.Function
                    public final Result apply(ApiBaseResponse response) {
                        Intrinsics.checkNotNullParameter(response, "response");
                        if (!response.isSuccess()) {
                            return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                        }
                        return Result.Companion.success(StakingOperationsMapperKt.mapToDomain((StakingOperationResponse) response.getPayload()));
                    }
                });
                Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
                return map;
            }
        });
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        return flatMap;
    }

    @Override // com.iMe.i_staking.datasource.StakingDataSource
    public Observable<Result<StakingOperation>> sendClaimExecute(final String wrappedAction, TransactionArgs args) {
        Intrinsics.checkNotNullParameter(wrappedAction, "wrappedAction");
        Intrinsics.checkNotNullParameter(args, "args");
        Observable flatMap = sign(args).flatMap(new Function() { // from class: com.iMe.i_staking.datasource.StakingDataSourceImpl$sendClaimExecute$$inlined$flatMapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lio/reactivex/ObservableSource<+TR;>; */
            @Override // io.reactivex.functions.Function
            public final ObservableSource apply(Result result) {
                StakingApi stakingApi;
                final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler;
                Intrinsics.checkNotNullParameter(result, "result");
                if (!(result instanceof Result.Success)) {
                    return result instanceof Result.Error ? Observable.just(Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null)) : Observable.empty();
                }
                stakingApi = StakingDataSourceImpl.this.stakingApi;
                String str = wrappedAction;
                String str2 = (String) result.getData();
                if (str2 == null) {
                    str2 = "";
                }
                Observable<ApiBaseResponse<StakingOperationResponse>> sendClaimExecute = stakingApi.sendClaimExecute(new StakingTokenActionExecuteRequest(str, str2));
                firebaseFunctionsErrorHandler = StakingDataSourceImpl.this.firebaseErrorHandler;
                Observable<R> map = sendClaimExecute.map(new Function() { // from class: com.iMe.i_staking.datasource.StakingDataSourceImpl$sendClaimExecute$lambda-5$$inlined$mapSuccess$1
                    /* JADX WARN: Incorrect types in method signature: (TT;)Lcom/smedialink/storage/domain/model/Result<TR;>; */
                    @Override // io.reactivex.functions.Function
                    public final Result apply(ApiBaseResponse response) {
                        Intrinsics.checkNotNullParameter(response, "response");
                        if (!response.isSuccess()) {
                            return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                        }
                        return Result.Companion.success(StakingOperationsMapperKt.mapToDomain((StakingOperationResponse) response.getPayload()));
                    }
                });
                Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
                return map;
            }
        });
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        return flatMap;
    }

    @Override // com.iMe.i_staking.datasource.StakingDataSource
    public Observable<Result<StakingOperation>> sendWithdrawExecute(final String wrappedAction, TransactionArgs args) {
        Intrinsics.checkNotNullParameter(wrappedAction, "wrappedAction");
        Intrinsics.checkNotNullParameter(args, "args");
        Observable flatMap = sign(args).flatMap(new Function() { // from class: com.iMe.i_staking.datasource.StakingDataSourceImpl$sendWithdrawExecute$$inlined$flatMapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lio/reactivex/ObservableSource<+TR;>; */
            @Override // io.reactivex.functions.Function
            public final ObservableSource apply(Result result) {
                StakingApi stakingApi;
                final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler;
                Intrinsics.checkNotNullParameter(result, "result");
                if (!(result instanceof Result.Success)) {
                    return result instanceof Result.Error ? Observable.just(Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null)) : Observable.empty();
                }
                stakingApi = StakingDataSourceImpl.this.stakingApi;
                String str = wrappedAction;
                String str2 = (String) result.getData();
                if (str2 == null) {
                    str2 = "";
                }
                Observable<ApiBaseResponse<StakingOperationResponse>> sendWithdrawExecute = stakingApi.sendWithdrawExecute(new StakingTokenActionExecuteRequest(str, str2));
                firebaseFunctionsErrorHandler = StakingDataSourceImpl.this.firebaseErrorHandler;
                Observable<R> map = sendWithdrawExecute.map(new Function() { // from class: com.iMe.i_staking.datasource.StakingDataSourceImpl$sendWithdrawExecute$lambda-7$$inlined$mapSuccess$1
                    /* JADX WARN: Incorrect types in method signature: (TT;)Lcom/smedialink/storage/domain/model/Result<TR;>; */
                    @Override // io.reactivex.functions.Function
                    public final Result apply(ApiBaseResponse response) {
                        Intrinsics.checkNotNullParameter(response, "response");
                        if (!response.isSuccess()) {
                            return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                        }
                        return Result.Companion.success(StakingOperationsMapperKt.mapToDomain((StakingOperationResponse) response.getPayload()));
                    }
                });
                Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
                return map;
            }
        });
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        return flatMap;
    }

    @Override // com.smedialink.storage.data.datasource.base.SignTransactionDatasource
    public Observable<Result<String>> sign(TransactionArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        if (!(args instanceof StakingTransactionArgs)) {
            throw new IllegalStateException("Incorrect staking args passed");
        }
        StakingTransactionArgs stakingTransactionArgs = (StakingTransactionArgs) args;
        RawTransaction createTransactionByType = createTransactionByType(stakingTransactionArgs);
        long chainId = stakingTransactionArgs.getChainId();
        Wallet.EVM eVMWallet = this.cryptoAccessManager.getEVMWallet();
        Observable<Result<String>> just = Observable.just(Result.Companion.success(Numeric.toHexString(TransactionEncoder.signMessage(createTransactionByType, chainId, eVMWallet == null ? null : eVMWallet.getCredentials()))));
        Intrinsics.checkNotNullExpressionValue(just, "just(this)");
        return just;
    }

    private final RawTransaction createTransactionByType(StakingTransactionArgs stakingTransactionArgs) {
        if (Intrinsics.areEqual(stakingTransactionArgs.getData(), "0x")) {
            RawTransaction createEtherTransaction = RawTransaction.createEtherTransaction(stakingTransactionArgs.getNonce(), stakingTransactionArgs.getGasPrice(), stakingTransactionArgs.getGasLimit(), stakingTransactionArgs.getTo(), BigInteger.ZERO);
            Intrinsics.checkNotNullExpressionValue(createEtherTransaction, "{\n                RawTra…          )\n            }");
            return createEtherTransaction;
        }
        RawTransaction createTransaction = RawTransaction.createTransaction(stakingTransactionArgs.getNonce(), stakingTransactionArgs.getGasPrice(), stakingTransactionArgs.getGasLimit(), stakingTransactionArgs.getTo(), BigInteger.ZERO, stakingTransactionArgs.getData());
        Intrinsics.checkNotNullExpressionValue(createTransaction, "{\n                RawTra…          )\n            }");
        return createTransaction;
    }
}
