package com.smedialink.storage.data.datasource.cancel.impl;

import com.smedialink.storage.data.datasource.cancel.WalletCancelDataSource;
import com.smedialink.storage.data.network.api.own.CancelApi;
import com.smedialink.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.smedialink.storage.data.network.model.request.crypto.cancel.SendEthereumCancelOrBoostTransactionRequest;
import com.smedialink.storage.data.utils.extentions.FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;
import com.smedialink.storage.data.utils.extentions.NumberExtKt;
import com.smedialink.storage.data.utils.extentions.Web3jExtKt;
import com.smedialink.storage.domain.manager.crypto.CryptoAccessManager;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.Wallet;
import com.smedialink.storage.domain.model.crypto.cancel.CancelArgs;
import com.smedialink.storage.domain.model.crypto.send.TransferArgs;
import io.reactivex.Observable;
import java.math.BigInteger;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.web3j.abi.datatypes.Address;
import org.web3j.abi.datatypes.Type;
import org.web3j.abi.datatypes.generated.Uint256;
import org.web3j.crypto.RawTransaction;
import org.web3j.crypto.TransactionEncoder;
import org.web3j.utils.Numeric;
/* compiled from: EthWalletCancelDataSourceImpl.kt */
/* loaded from: classes3.dex */
public final class EthWalletCancelDataSourceImpl implements WalletCancelDataSource {
    private final CancelApi cancelApi;
    private final CryptoAccessManager cryptoAccessManager;
    private final FirebaseFunctionsErrorHandler firebaseErrorHandler;

    static {
        new Companion(null);
    }

    public EthWalletCancelDataSourceImpl(CancelApi cancelApi, CryptoAccessManager cryptoAccessManager, FirebaseFunctionsErrorHandler firebaseErrorHandler) {
        Intrinsics.checkNotNullParameter(cancelApi, "cancelApi");
        Intrinsics.checkNotNullParameter(cryptoAccessManager, "cryptoAccessManager");
        Intrinsics.checkNotNullParameter(firebaseErrorHandler, "firebaseErrorHandler");
        this.cancelApi = cancelApi;
        this.cryptoAccessManager = cryptoAccessManager;
        this.firebaseErrorHandler = firebaseErrorHandler;
    }

    @Override // com.smedialink.storage.data.datasource.cancel.WalletCancelDataSource
    public Observable<Result<String>> cancel(CancelArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        if (!(args instanceof CancelArgs.Ethereum)) {
            Observable<Result<String>> error = Observable.error(new IllegalStateException("Incorrect cancel args passed"));
            Intrinsics.checkNotNullExpressionValue(error, "error(IllegalStateExcept…elDataSource.ARGS_ERROR))");
            return error;
        }
        CancelArgs.Ethereum ethereum = (CancelArgs.Ethereum) args;
        RawTransaction createTransactionByType = createTransactionByType(ethereum.getTransferArgs());
        long chainId = ethereum.getTransferArgs().getChainId();
        Wallet.EVM eVMWallet = this.cryptoAccessManager.getEVMWallet();
        String hexString = Numeric.toHexString(TransactionEncoder.signMessage(createTransactionByType, chainId, eVMWallet != null ? eVMWallet.getCredentials() : null));
        Intrinsics.checkNotNullExpressionValue(hexString, "toHexString(signedTransaction)");
        Observable map = this.cancelApi.sendEthereumCancelTransaction(new SendEthereumCancelOrBoostTransactionRequest(hexString, ethereum.getOldTxHash())).map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new EthWalletCancelDataSourceImpl$cancel$$inlined$mapSuccess$1(this.firebaseErrorHandler)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        return map;
    }

    private final RawTransaction createTransactionByType(TransferArgs.EVM evm) {
        String contractAddress = evm.getContractAddress();
        if (contractAddress == null || contractAddress.length() == 0) {
            RawTransaction createEtherTransaction = RawTransaction.createEtherTransaction(evm.getNonce(), evm.getGasPrice(), evm.getGasLimit(), evm.getRecipientAddress(), NumberExtKt.convertToWei(Double.valueOf(evm.getAmount()), evm.getWeiConvertUnit()));
            Intrinsics.checkNotNullExpressionValue(createEtherTransaction, "{\n            RawTransac…)\n            )\n        }");
            return createEtherTransaction;
        }
        RawTransaction createTransaction = RawTransaction.createTransaction(evm.getNonce(), evm.getGasPrice(), evm.getGasLimit(), evm.getContractAddress(), createSmartFunctionParams(evm.getRecipientAddress(), NumberExtKt.convertToWei(Double.valueOf(evm.getAmount()), evm.getWeiConvertUnit())));
        Intrinsics.checkNotNullExpressionValue(createTransaction, "{\n            RawTransac…)\n            )\n        }");
        return createTransaction;
    }

    private final String createSmartFunctionParams(String str, BigInteger bigInteger) {
        List listOf;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new Type[]{new Address(str), new Uint256(bigInteger)});
        return Web3jExtKt.createSmartFunctionDataFor$default("transfer", listOf, null, 4, null);
    }

    /* compiled from: EthWalletCancelDataSourceImpl.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
