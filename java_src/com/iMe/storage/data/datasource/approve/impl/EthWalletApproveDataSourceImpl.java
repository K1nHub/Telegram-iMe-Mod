package com.iMe.storage.data.datasource.approve.impl;

import com.iMe.storage.data.datasource.approve.WalletApproveDataSource;
import com.iMe.storage.data.network.api.own.SwapApi;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.utils.crypto.EthTransactionSigner;
import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.Wallet;
import com.iMe.storage.domain.model.crypto.send.TransactionArgs;
import com.iMe.storage.domain.model.crypto.swap.ApproveArgs;
import com.iMe.storage.domain.utils.extentions.CryptoExtKt;
import com.iMe.storage.domain.utils.extentions.ObservableExtKt$sam$i$io_reactivex_functions_Function$0;
import io.reactivex.Observable;
import kotlin.jvm.internal.Intrinsics;
import wallet.core.jni.proto.Ethereum;
/* compiled from: EthWalletApproveDataSourceImpl.kt */
/* loaded from: classes3.dex */
public final class EthWalletApproveDataSourceImpl implements WalletApproveDataSource {
    private final CryptoAccessManager cryptoAccessManager;
    private final FirebaseFunctionsErrorHandler firebaseErrorHandler;
    private final SwapApi swapApi;

    public EthWalletApproveDataSourceImpl(SwapApi swapApi, CryptoAccessManager cryptoAccessManager, FirebaseFunctionsErrorHandler firebaseErrorHandler) {
        Intrinsics.checkNotNullParameter(swapApi, "swapApi");
        Intrinsics.checkNotNullParameter(cryptoAccessManager, "cryptoAccessManager");
        Intrinsics.checkNotNullParameter(firebaseErrorHandler, "firebaseErrorHandler");
        this.swapApi = swapApi;
        this.cryptoAccessManager = cryptoAccessManager;
        this.firebaseErrorHandler = firebaseErrorHandler;
    }

    @Override // com.iMe.storage.data.datasource.approve.WalletApproveDataSource
    public Observable<Result<String>> approve(TransactionArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        if (args instanceof ApproveArgs.Dex) {
            Observable flatMap = sign(args).flatMap(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new EthWalletApproveDataSourceImpl$approve$$inlined$flatMapSuccess$1(this, args)));
            Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
            return flatMap;
        }
        throw new IllegalStateException("Incorrect approve args passed");
    }

    @Override // com.iMe.storage.data.datasource.base.SignTransactionDatasource
    public Observable<Result<String>> sign(TransactionArgs args) {
        byte[] bArr;
        Intrinsics.checkNotNullParameter(args, "args");
        if (!(args instanceof ApproveArgs.Dex)) {
            throw new IllegalStateException("Incorrect approve args passed");
        }
        ApproveArgs.Dex dex = (ApproveArgs.Dex) args;
        Ethereum.Transaction createTransaction = createTransaction(dex);
        Wallet.EVM eVMWallet = this.cryptoAccessManager.getEVMWallet();
        if (eVMWallet == null || (bArr = eVMWallet.getPrivateKeyBytes()) == null) {
            bArr = new byte[0];
        }
        Observable<Result<String>> just = Observable.just(Result.Companion.success(EthTransactionSigner.INSTANCE.sign(dex.getChainId(), dex.getGasPrice(), dex.getGasLimit(), dex.getNonce(), dex.getTokenContractAddress(), createTransaction, bArr)));
        Intrinsics.checkNotNullExpressionValue(just, "just(this)");
        return just;
    }

    private final Ethereum.Transaction createTransaction(ApproveArgs.Dex dex) {
        Ethereum.Transaction build = Ethereum.Transaction.newBuilder().setErc20Approve(Ethereum.Transaction.ERC20Approve.newBuilder().setSpender(dex.getExchangeContractAddress()).setAmount(CryptoExtKt.toByteString(dex.getValue())).build()).build();
        Intrinsics.checkNotNullExpressionValue(build, "newBuilder()\n           …                 .build()");
        return build;
    }
}
