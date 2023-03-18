package com.smedialink.storage.data.datasource.approve.impl;

import com.smedialink.storage.data.datasource.approve.WalletApproveDataSource;
import com.smedialink.storage.data.network.api.own.SwapApi;
import com.smedialink.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.smedialink.storage.data.utils.extentions.Web3jExtKt;
import com.smedialink.storage.domain.manager.crypto.CryptoAccessManager;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.Wallet;
import com.smedialink.storage.domain.model.crypto.send.TransactionArgs;
import com.smedialink.storage.domain.model.crypto.swap.ApproveArgs;
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
/* compiled from: EthWalletApproveDataSourceImpl.kt */
/* loaded from: classes3.dex */
public final class EthWalletApproveDataSourceImpl implements WalletApproveDataSource {
    private final CryptoAccessManager cryptoAccessManager;
    private final FirebaseFunctionsErrorHandler firebaseErrorHandler;
    private final SwapApi swapApi;

    static {
        new Companion(null);
    }

    public EthWalletApproveDataSourceImpl(SwapApi swapApi, CryptoAccessManager cryptoAccessManager, FirebaseFunctionsErrorHandler firebaseErrorHandler) {
        Intrinsics.checkNotNullParameter(swapApi, "swapApi");
        Intrinsics.checkNotNullParameter(cryptoAccessManager, "cryptoAccessManager");
        Intrinsics.checkNotNullParameter(firebaseErrorHandler, "firebaseErrorHandler");
        this.swapApi = swapApi;
        this.cryptoAccessManager = cryptoAccessManager;
        this.firebaseErrorHandler = firebaseErrorHandler;
    }

    @Override // com.smedialink.storage.data.datasource.approve.WalletApproveDataSource
    public Observable<Result<String>> approve(TransactionArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        if (args instanceof ApproveArgs.Dex) {
            Observable flatMap = sign(args).flatMap(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new EthWalletApproveDataSourceImpl$approve$$inlined$flatMapSuccess$1(this, args)));
            Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
            return flatMap;
        }
        throw new IllegalStateException("Incorrect approve args passed");
    }

    @Override // com.smedialink.storage.data.datasource.base.SignTransactionDatasource
    public Observable<Result<String>> sign(TransactionArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        if (!(args instanceof ApproveArgs.Dex)) {
            throw new IllegalStateException("Incorrect approve args passed");
        }
        ApproveArgs.Dex dex = (ApproveArgs.Dex) args;
        RawTransaction createTransactionByType = createTransactionByType(dex);
        long chainId = dex.getChainId();
        Wallet.EVM eVMWallet = this.cryptoAccessManager.getEVMWallet();
        Observable<Result<String>> just = Observable.just(Result.Companion.success(Numeric.toHexString(TransactionEncoder.signMessage(createTransactionByType, chainId, eVMWallet != null ? eVMWallet.getCredentials() : null))));
        Intrinsics.checkNotNullExpressionValue(just, "just(this)");
        return just;
    }

    private final RawTransaction createTransactionByType(ApproveArgs.Dex dex) {
        RawTransaction createTransaction = RawTransaction.createTransaction(dex.getNonce(), dex.getGasPrice(), dex.getGasLimit(), dex.getTokenContractAddress(), BigInteger.ZERO, createSmartFunctionParams(dex.getExchangeContractAddress(), dex.getValue()));
        Intrinsics.checkNotNullExpressionValue(createTransaction, "createTransaction(\n     …ss, args.value)\n        )");
        return createTransaction;
    }

    private final String createSmartFunctionParams(String str, BigInteger bigInteger) {
        List listOf;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new Type[]{new Address(str), new Uint256(bigInteger)});
        return Web3jExtKt.createSmartFunctionDataFor$default("approve", listOf, null, 4, null);
    }

    /* compiled from: EthWalletApproveDataSourceImpl.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
