package com.smedialink.storage.data.datasource.wallet_connect.impl;

import com.smedialink.storage.data.datasource.wallet_connect.WalletConnectDataSource;
import com.smedialink.storage.data.network.api.own.WalletConnectApi;
import com.smedialink.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.smedialink.storage.data.network.model.request.crypto.wallet.SendCryptoTransferTransactionRequest;
import com.smedialink.storage.data.network.model.response.base.ApiBaseResponse;
import com.smedialink.storage.data.network.model.response.crypto.wallet.TransactionResponse;
import com.smedialink.storage.domain.manager.crypto.CryptoAccessManager;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.Wallet;
import com.smedialink.storage.domain.model.crypto.send.TransactionArgs;
import com.smedialink.storage.domain.model.crypto.wallet_connect.WalletConnectTransactionArgs;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.functions.Function;
import kotlin.jvm.internal.Intrinsics;
import org.web3j.crypto.RawTransaction;
import org.web3j.crypto.TransactionEncoder;
import org.web3j.utils.Numeric;
/* compiled from: WalletConnectDataSourceImpl.kt */
/* loaded from: classes3.dex */
public final class WalletConnectDataSourceImpl implements WalletConnectDataSource {
    private final CryptoAccessManager cryptoAccessManager;
    private final FirebaseFunctionsErrorHandler firebaseErrorHandler;
    private final WalletConnectApi walletConnectApi;

    public WalletConnectDataSourceImpl(CryptoAccessManager cryptoAccessManager, FirebaseFunctionsErrorHandler firebaseErrorHandler, WalletConnectApi walletConnectApi) {
        Intrinsics.checkNotNullParameter(cryptoAccessManager, "cryptoAccessManager");
        Intrinsics.checkNotNullParameter(firebaseErrorHandler, "firebaseErrorHandler");
        Intrinsics.checkNotNullParameter(walletConnectApi, "walletConnectApi");
        this.cryptoAccessManager = cryptoAccessManager;
        this.firebaseErrorHandler = firebaseErrorHandler;
        this.walletConnectApi = walletConnectApi;
    }

    @Override // com.smedialink.storage.data.datasource.wallet_connect.WalletConnectDataSource
    public Observable<Result<String>> sendTransaction(TransactionArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        Observable flatMap = sign(args).flatMap(new Function() { // from class: com.smedialink.storage.data.datasource.wallet_connect.impl.WalletConnectDataSourceImpl$sendTransaction$$inlined$flatMapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lio/reactivex/ObservableSource<+TR;>; */
            @Override // io.reactivex.functions.Function
            public final ObservableSource apply(Result result) {
                WalletConnectApi walletConnectApi;
                final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler;
                Intrinsics.checkNotNullParameter(result, "result");
                if (!(result instanceof Result.Success)) {
                    return result instanceof Result.Error ? Observable.just(Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null)) : Observable.empty();
                }
                walletConnectApi = WalletConnectDataSourceImpl.this.walletConnectApi;
                String str = (String) result.getData();
                if (str == null) {
                    str = "";
                }
                Observable<ApiBaseResponse<TransactionResponse>> sendWalletConnectCryptoTransaction = walletConnectApi.sendWalletConnectCryptoTransaction(new SendCryptoTransferTransactionRequest(str));
                firebaseFunctionsErrorHandler = WalletConnectDataSourceImpl.this.firebaseErrorHandler;
                Observable<R> map = sendWalletConnectCryptoTransaction.map(new Function() { // from class: com.smedialink.storage.data.datasource.wallet_connect.impl.WalletConnectDataSourceImpl$sendTransaction$lambda-1$$inlined$mapSuccess$1
                    /* JADX WARN: Incorrect types in method signature: (TT;)Lcom/smedialink/storage/domain/model/Result<TR;>; */
                    @Override // io.reactivex.functions.Function
                    public final Result apply(ApiBaseResponse response) {
                        Intrinsics.checkNotNullParameter(response, "response");
                        if (!response.isSuccess()) {
                            return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                        }
                        return Result.Companion.success(((TransactionResponse) response.getPayload()).getTransactionHash());
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
        if (!(args instanceof WalletConnectTransactionArgs)) {
            throw new IllegalStateException("Incorrect transfer args passed");
        }
        WalletConnectTransactionArgs walletConnectTransactionArgs = (WalletConnectTransactionArgs) args;
        RawTransaction createTransactionByType = createTransactionByType(walletConnectTransactionArgs);
        long chainId = walletConnectTransactionArgs.getChainId();
        Wallet.EVM eVMWallet = this.cryptoAccessManager.getEVMWallet();
        Observable<Result<String>> just = Observable.just(Result.Companion.success(Numeric.toHexString(TransactionEncoder.signMessage(createTransactionByType, chainId, eVMWallet == null ? null : eVMWallet.getCredentials()))));
        Intrinsics.checkNotNullExpressionValue(just, "just(this)");
        return just;
    }

    private final RawTransaction createTransactionByType(WalletConnectTransactionArgs walletConnectTransactionArgs) {
        if (Intrinsics.areEqual(walletConnectTransactionArgs.getData(), "0x")) {
            RawTransaction createEtherTransaction = RawTransaction.createEtherTransaction(walletConnectTransactionArgs.getNonce(), walletConnectTransactionArgs.getGasPrice(), walletConnectTransactionArgs.getGasLimit(), walletConnectTransactionArgs.getRecipientAddress(), walletConnectTransactionArgs.getAmount());
            Intrinsics.checkNotNullExpressionValue(createEtherTransaction, "{\n            RawTransac…t\n            )\n        }");
            return createEtherTransaction;
        }
        RawTransaction createTransaction = RawTransaction.createTransaction(walletConnectTransactionArgs.getNonce(), walletConnectTransactionArgs.getGasPrice(), walletConnectTransactionArgs.getGasLimit(), walletConnectTransactionArgs.getRecipientAddress(), walletConnectTransactionArgs.getAmount(), walletConnectTransactionArgs.getData());
        Intrinsics.checkNotNullExpressionValue(createTransaction, "{\n            RawTransac…a\n            )\n        }");
        return createTransaction;
    }
}
