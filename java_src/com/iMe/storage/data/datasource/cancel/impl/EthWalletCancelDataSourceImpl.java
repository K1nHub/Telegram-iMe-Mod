package com.iMe.storage.data.datasource.cancel.impl;

import com.iMe.storage.data.datasource.cancel.WalletCancelDataSource;
import com.iMe.storage.data.network.api.own.CancelApi;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.utils.crypto.EthTransactionSigner;
import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.Wallet;
import com.iMe.storage.domain.model.crypto.cancel.CancelArgs;
import com.iMe.storage.domain.model.crypto.send.TransactionArgs;
import com.iMe.storage.domain.model.crypto.send.TransferArgs;
import com.iMe.storage.domain.utils.extentions.ObservableExtKt$sam$i$io_reactivex_functions_Function$0;
import io.reactivex.Observable;
import kotlin.jvm.internal.Intrinsics;
import wallet.core.jni.proto.Ethereum;
/* compiled from: EthWalletCancelDataSourceImpl.kt */
/* loaded from: classes3.dex */
public final class EthWalletCancelDataSourceImpl implements WalletCancelDataSource {
    private final CancelApi cancelApi;
    private final CryptoAccessManager cryptoAccessManager;
    private final FirebaseFunctionsErrorHandler firebaseErrorHandler;

    public EthWalletCancelDataSourceImpl(CancelApi cancelApi, CryptoAccessManager cryptoAccessManager, FirebaseFunctionsErrorHandler firebaseErrorHandler) {
        Intrinsics.checkNotNullParameter(cancelApi, "cancelApi");
        Intrinsics.checkNotNullParameter(cryptoAccessManager, "cryptoAccessManager");
        Intrinsics.checkNotNullParameter(firebaseErrorHandler, "firebaseErrorHandler");
        this.cancelApi = cancelApi;
        this.cryptoAccessManager = cryptoAccessManager;
        this.firebaseErrorHandler = firebaseErrorHandler;
    }

    @Override // com.iMe.storage.data.datasource.cancel.WalletCancelDataSource
    public Observable<Result<String>> cancel(TransactionArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        if (args instanceof CancelArgs.Ethereum) {
            Observable flatMap = sign(args).flatMap(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new EthWalletCancelDataSourceImpl$cancel$$inlined$flatMapSuccess$1(this, args)));
            Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
            return flatMap;
        }
        throw new IllegalStateException("Incorrect cancel args passed");
    }

    @Override // com.iMe.storage.data.datasource.base.SignTransactionDatasource
    public Observable<Result<String>> sign(TransactionArgs args) {
        byte[] bArr;
        Intrinsics.checkNotNullParameter(args, "args");
        if (!(args instanceof CancelArgs.Ethereum)) {
            throw new IllegalStateException("Incorrect cancel args passed");
        }
        Wallet.EVM eVMWallet = this.cryptoAccessManager.getEVMWallet();
        boolean z = false;
        if (eVMWallet == null || (bArr = eVMWallet.getPrivateKeyBytes()) == null) {
            bArr = new byte[0];
        }
        byte[] bArr2 = bArr;
        TransferArgs.EVM transferArgs = ((CancelArgs.Ethereum) args).getTransferArgs();
        EthTransactionSigner ethTransactionSigner = EthTransactionSigner.INSTANCE;
        Ethereum.Transaction createTransferTransactionByType = ethTransactionSigner.createTransferTransactionByType(transferArgs.getConvertedAmount(), transferArgs.getRecipientAddress(), transferArgs.getContractAddress());
        String contractAddress = transferArgs.getContractAddress();
        Observable<Result<String>> just = Observable.just(Result.Companion.success(ethTransactionSigner.sign(transferArgs.getChainId(), transferArgs.getGasPrice(), transferArgs.getGasLimit(), transferArgs.getNonce(), (contractAddress == null || contractAddress.length() == 0) ? true : true ? transferArgs.getRecipientAddress() : transferArgs.getContractAddress(), createTransferTransactionByType, bArr2)));
        Intrinsics.checkNotNullExpressionValue(just, "just(this)");
        return just;
    }
}
