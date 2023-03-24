package com.smedialink.storage.data.datasource.transfer.impl;

import com.smedialink.storage.data.datasource.transfer.WalletTransferDataSource;
import com.smedialink.storage.data.network.api.own.CryptoWalletApi;
import com.smedialink.storage.data.network.api.own.WalletApi;
import com.smedialink.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.smedialink.storage.data.network.model.request.crypto.wallet.GetDataForCryptoTransferRequest;
import com.smedialink.storage.data.utils.extentions.FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;
import com.smedialink.storage.data.utils.extentions.NumberExtKt;
import com.smedialink.storage.data.utils.extentions.Web3jExtKt;
import com.smedialink.storage.domain.manager.crypto.CryptoAccessManager;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.NetworkType;
import com.smedialink.storage.domain.model.crypto.Wallet;
import com.smedialink.storage.domain.model.crypto.send.CryptoTransferMetadata;
import com.smedialink.storage.domain.model.crypto.send.TransactionArgs;
import com.smedialink.storage.domain.model.crypto.send.TransferArgs;
import com.smedialink.storage.domain.model.wallet.token.TokenCode;
import com.smedialink.storage.domain.utils.extentions.ObservableExtKt$sam$i$io_reactivex_functions_Function$0;
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
/* compiled from: EVMWalletTransferDataSourceImpl.kt */
/* loaded from: classes3.dex */
public final class EVMWalletTransferDataSourceImpl implements WalletTransferDataSource {
    private final CryptoAccessManager cryptoAccessManager;
    private final CryptoWalletApi cryptoWalletApi;
    private final FirebaseFunctionsErrorHandler firebaseErrorHandler;
    private final WalletApi walletApi;

    static {
        new Companion(null);
    }

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

    @Override // com.smedialink.storage.data.datasource.transfer.WalletTransferDataSource
    public Observable<Result<CryptoTransferMetadata>> getTransferMetadata(TokenCode tokenCode, String str, String str2, NetworkType networkType) {
        Intrinsics.checkNotNullParameter(tokenCode, "tokenCode");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        Observable map = this.walletApi.getEVMCryptoTransferData(new GetDataForCryptoTransferRequest(tokenCode.getName(), str, str2, networkType.name())).map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new C1499xf44f235e(this.firebaseErrorHandler)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        return map;
    }

    @Override // com.smedialink.storage.data.datasource.transfer.WalletTransferDataSource
    public Observable<Result<Boolean>> transfer(TransactionArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        Observable flatMap = sign(args).flatMap(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new C1500xd8190810(this)));
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        return flatMap;
    }

    @Override // com.smedialink.storage.data.datasource.base.SignTransactionDatasource
    public Observable<Result<String>> sign(TransactionArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        if (!(args instanceof TransferArgs.EVM)) {
            throw new IllegalStateException("Incorrect transfer args passed");
        }
        TransferArgs.EVM evm = (TransferArgs.EVM) args;
        RawTransaction createTransactionByType = createTransactionByType(evm);
        long chainId = evm.getChainId();
        Wallet.EVM eVMWallet = this.cryptoAccessManager.getEVMWallet();
        String hexString = Numeric.toHexString(TransactionEncoder.signMessage(createTransactionByType, chainId, eVMWallet != null ? eVMWallet.getCredentials() : null));
        Intrinsics.checkNotNullExpressionValue(hexString, "toHexString(signedTransaction)");
        Observable<Result<String>> just = Observable.just(Result.Companion.success(hexString));
        Intrinsics.checkNotNullExpressionValue(just, "just(this)");
        return just;
    }

    private final RawTransaction createTransactionByType(TransferArgs.EVM evm) {
        String contractAddress = evm.getContractAddress();
        if (contractAddress == null || contractAddress.length() == 0) {
            RawTransaction createEtherTransaction = RawTransaction.createEtherTransaction(evm.getNonce(), evm.getGasPrice(), evm.getGasLimit(), evm.getRecipientAddress(), NumberExtKt.convertToWei(Double.valueOf(evm.getAmount()), evm.getWeiConvertUnit()));
            Intrinsics.checkNotNullExpressionValue(createEtherTransaction, "{\n                RawTra…          )\n            }");
            return createEtherTransaction;
        }
        RawTransaction createTransaction = RawTransaction.createTransaction(evm.getNonce(), evm.getGasPrice(), evm.getGasLimit(), evm.getContractAddress(), createSmartFunctionParams(evm.getRecipientAddress(), NumberExtKt.convertToWei(Double.valueOf(evm.getAmount()), evm.getWeiConvertUnit())));
        Intrinsics.checkNotNullExpressionValue(createTransaction, "{\n                RawTra…          )\n            }");
        return createTransaction;
    }

    private final String createSmartFunctionParams(String str, BigInteger bigInteger) {
        List listOf;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new Type[]{new Address(str), new Uint256(bigInteger)});
        return Web3jExtKt.createSmartFunctionDataFor$default("transfer", listOf, null, 4, null);
    }

    /* compiled from: EVMWalletTransferDataSourceImpl.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
