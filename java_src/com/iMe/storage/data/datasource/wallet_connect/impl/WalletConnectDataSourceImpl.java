package com.iMe.storage.data.datasource.wallet_connect.impl;

import com.iMe.storage.data.datasource.wallet_connect.WalletConnectDataSource;
import com.iMe.storage.data.network.api.own.WalletConnectApi;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.Wallet;
import com.iMe.storage.domain.model.crypto.send.TransactionArgs;
import com.iMe.storage.domain.model.crypto.wallet_connect.WalletConnectTransactionArgs;
import com.iMe.storage.domain.utils.extentions.ObservableExtKt$sam$i$io_reactivex_functions_Function$0;
import io.reactivex.Observable;
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

    @Override // com.iMe.storage.data.datasource.wallet_connect.WalletConnectDataSource
    public Observable<Result<String>> sendTransaction(TransactionArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        Observable flatMap = sign(args).flatMap(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new C1564x2f0ca7ae(this)));
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        return flatMap;
    }

    @Override // com.iMe.storage.data.datasource.base.SignTransactionDatasource
    public Observable<Result<String>> sign(TransactionArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        if (!(args instanceof WalletConnectTransactionArgs)) {
            throw new IllegalStateException("Incorrect transfer args passed");
        }
        WalletConnectTransactionArgs walletConnectTransactionArgs = (WalletConnectTransactionArgs) args;
        RawTransaction createTransactionByType = createTransactionByType(walletConnectTransactionArgs);
        long chainId = walletConnectTransactionArgs.getChainId();
        Wallet.EVM eVMWallet = this.cryptoAccessManager.getEVMWallet();
        String hexString = Numeric.toHexString(TransactionEncoder.signMessage(createTransactionByType, chainId, eVMWallet != null ? eVMWallet.getCredentials() : null));
        Intrinsics.checkNotNullExpressionValue(hexString, "toHexString(signedTransaction)");
        Observable<Result<String>> just = Observable.just(Result.Companion.success(hexString));
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
