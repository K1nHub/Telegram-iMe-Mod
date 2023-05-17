package com.iMe.storage.data.datasource.wallet_connect.impl;

import com.iMe.storage.data.datasource.wallet_connect.WalletConnectDataSource;
import com.iMe.storage.data.network.api.own.WalletConnectApi;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.utils.crypto.EthTransactionSigner;
import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.Wallet;
import com.iMe.storage.domain.model.crypto.send.TransactionArgs;
import com.iMe.storage.domain.model.crypto.wallet_connect.WalletConnectTransactionArgs;
import com.iMe.storage.domain.utils.extentions.CryptoExtKt;
import com.iMe.storage.domain.utils.extentions.ObservableExtKt$sam$i$io_reactivex_functions_Function$0;
import io.reactivex.Observable;
import java.math.BigInteger;
import kotlin.jvm.internal.Intrinsics;
import wallet.core.jni.proto.Ethereum;
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
        Observable flatMap = sign(args).flatMap(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new C1619x2f0ca7ae(this)));
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        return flatMap;
    }

    @Override // com.iMe.storage.data.datasource.base.SignTransactionDatasource
    public Observable<Result<String>> sign(TransactionArgs args) {
        byte[] bArr;
        Intrinsics.checkNotNullParameter(args, "args");
        if (!(args instanceof WalletConnectTransactionArgs)) {
            throw new IllegalStateException("Incorrect transfer args passed");
        }
        Wallet.EVM eVMWallet = this.cryptoAccessManager.getEVMWallet();
        if (eVMWallet == null || (bArr = eVMWallet.getPrivateKeyBytes()) == null) {
            bArr = new byte[0];
        }
        WalletConnectTransactionArgs walletConnectTransactionArgs = (WalletConnectTransactionArgs) args;
        Ethereum.Transaction transaction = Ethereum.Transaction.newBuilder().setContractGeneric(Ethereum.Transaction.ContractGeneric.newBuilder().setData(CryptoExtKt.hexToByteString(walletConnectTransactionArgs.getData())).setAmount(CryptoExtKt.toByteString(walletConnectTransactionArgs.getAmount())).build()).build();
        EthTransactionSigner ethTransactionSigner = EthTransactionSigner.INSTANCE;
        long chainId = walletConnectTransactionArgs.getChainId();
        BigInteger gasPrice = walletConnectTransactionArgs.getGasPrice();
        BigInteger gasLimit = walletConnectTransactionArgs.getGasLimit();
        BigInteger nonce = walletConnectTransactionArgs.getNonce();
        String recipientAddress = walletConnectTransactionArgs.getRecipientAddress();
        Intrinsics.checkNotNullExpressionValue(transaction, "transaction");
        Observable<Result<String>> just = Observable.just(Result.Companion.success(ethTransactionSigner.sign(chainId, gasPrice, gasLimit, nonce, recipientAddress, transaction, bArr)));
        Intrinsics.checkNotNullExpressionValue(just, "just(this)");
        return just;
    }
}
