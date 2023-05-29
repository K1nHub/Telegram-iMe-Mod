package com.iMe.storage.data.datasource.transfer.impl;

import com.iMe.storage.data.datasource.transfer.WalletTransferDataSource;
import com.iMe.storage.data.network.api.own.CryptoWalletApi;
import com.iMe.storage.data.network.api.own.WalletApi;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.request.crypto.wallet.GetDataForCryptoTransferRequest;
import com.iMe.storage.data.utils.crypto.EthTransactionSigner;
import com.iMe.storage.data.utils.extentions.FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.NetworkType;
import com.iMe.storage.domain.model.crypto.Wallet;
import com.iMe.storage.domain.model.crypto.send.CryptoTransferMetadata;
import com.iMe.storage.domain.model.crypto.send.TransactionArgs;
import com.iMe.storage.domain.model.crypto.send.TransferArgs;
import com.iMe.storage.domain.model.wallet.token.TokenCode;
import com.iMe.storage.domain.utils.extentions.ObservableExtKt$sam$i$io_reactivex_functions_Function$0;
import io.reactivex.Observable;
import kotlin.jvm.internal.Intrinsics;
import wallet.core.jni.proto.Ethereum;
/* compiled from: EVMWalletTransferDataSourceImpl.kt */
/* loaded from: classes3.dex */
public final class EVMWalletTransferDataSourceImpl implements WalletTransferDataSource {
    private final CryptoAccessManager cryptoAccessManager;
    private final CryptoWalletApi cryptoWalletApi;
    private final FirebaseFunctionsErrorHandler firebaseErrorHandler;
    private final WalletApi walletApi;

    public EVMWalletTransferDataSourceImpl(FirebaseFunctionsErrorHandler firebaseErrorHandler, CryptoWalletApi cryptoWalletApi, CryptoAccessManager cryptoAccessManager, WalletApi walletApi) {
        Intrinsics.checkNotNullParameter(firebaseErrorHandler, "firebaseErrorHandler");
        Intrinsics.checkNotNullParameter(cryptoWalletApi, "cryptoWalletApi");
        Intrinsics.checkNotNullParameter(cryptoAccessManager, "cryptoAccessManager");
        Intrinsics.checkNotNullParameter(walletApi, "walletApi");
        this.firebaseErrorHandler = firebaseErrorHandler;
        this.cryptoWalletApi = cryptoWalletApi;
        this.cryptoAccessManager = cryptoAccessManager;
        this.walletApi = walletApi;
    }

    @Override // com.iMe.storage.data.datasource.transfer.WalletTransferDataSource
    public Observable<Result<CryptoTransferMetadata>> getTransferMetadata(TokenCode tokenCode, String str, String str2, NetworkType networkType) {
        Intrinsics.checkNotNullParameter(tokenCode, "tokenCode");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        Observable map = this.walletApi.getEVMCryptoTransferData(new GetDataForCryptoTransferRequest(tokenCode.getName(), str, str2, networkType.name())).map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new C1615xf44f235e(this.firebaseErrorHandler)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        return map;
    }

    @Override // com.iMe.storage.data.datasource.transfer.WalletTransferDataSource
    public Observable<Result<Boolean>> transfer(TransactionArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        Observable flatMap = sign(args).flatMap(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new C1616xd8190810(this)));
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        return flatMap;
    }

    @Override // com.iMe.storage.data.datasource.base.SignTransactionDatasource
    public Observable<Result<String>> sign(TransactionArgs args) {
        byte[] bArr;
        Intrinsics.checkNotNullParameter(args, "args");
        if (!(args instanceof TransferArgs.EVM)) {
            throw new IllegalStateException("Incorrect transfer args passed");
        }
        Wallet.EVM eVMWallet = this.cryptoAccessManager.getEVMWallet();
        boolean z = false;
        if (eVMWallet == null || (bArr = eVMWallet.getPrivateKeyBytes()) == null) {
            bArr = new byte[0];
        }
        byte[] bArr2 = bArr;
        TransferArgs.EVM evm = (TransferArgs.EVM) args;
        EthTransactionSigner ethTransactionSigner = EthTransactionSigner.INSTANCE;
        Ethereum.Transaction createTransferTransactionByType = ethTransactionSigner.createTransferTransactionByType(evm.getConvertedAmount(), evm.getRecipientAddress(), evm.getContractAddress());
        String contractAddress = evm.getContractAddress();
        Observable<Result<String>> just = Observable.just(Result.Companion.success(ethTransactionSigner.sign(evm.getChainId(), evm.getGasPrice(), evm.getGasLimit(), evm.getNonce(), (contractAddress == null || contractAddress.length() == 0) ? true : true ? evm.getRecipientAddress() : evm.getContractAddress(), createTransferTransactionByType, bArr2)));
        Intrinsics.checkNotNullExpressionValue(just, "just(this)");
        return just;
    }
}
