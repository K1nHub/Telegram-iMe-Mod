package com.iMe.storage.data.datasource.swap.impl;

import com.google.protobuf.ByteString;
import com.iMe.storage.data.datasource.swap.WalletSwapDataSource;
import com.iMe.storage.data.network.api.own.SwapApi;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.utils.crypto.EthTransactionSigner;
import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.Wallet;
import com.iMe.storage.domain.model.crypto.send.TransactionArgs;
import com.iMe.storage.domain.model.crypto.swap.SwapArgs;
import com.iMe.storage.domain.model.wallet.swap.SwapMethod;
import com.iMe.storage.domain.utils.extentions.CryptoExtKt;
import com.iMe.storage.domain.utils.extentions.ObservableExtKt$sam$i$io_reactivex_functions_Function$0;
import io.reactivex.Observable;
import java.math.BigInteger;
import kotlin.jvm.internal.Intrinsics;
import wallet.core.jni.proto.Ethereum;
/* compiled from: DexWalletSwapDataSourceImpl.kt */
/* loaded from: classes3.dex */
public final class DexWalletSwapDataSourceImpl implements WalletSwapDataSource {
    private final CryptoAccessManager cryptoAccessManager;
    private final FirebaseFunctionsErrorHandler firebaseErrorHandler;
    private final SwapApi swapApi;

    /* compiled from: DexWalletSwapDataSourceImpl.kt */
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[SwapMethod.values().length];
            try {
                iArr[SwapMethod.EXACT_ETH_FOR_TOKENS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public DexWalletSwapDataSourceImpl(SwapApi swapApi, CryptoAccessManager cryptoAccessManager, FirebaseFunctionsErrorHandler firebaseErrorHandler) {
        Intrinsics.checkNotNullParameter(swapApi, "swapApi");
        Intrinsics.checkNotNullParameter(cryptoAccessManager, "cryptoAccessManager");
        Intrinsics.checkNotNullParameter(firebaseErrorHandler, "firebaseErrorHandler");
        this.swapApi = swapApi;
        this.cryptoAccessManager = cryptoAccessManager;
        this.firebaseErrorHandler = firebaseErrorHandler;
    }

    @Override // com.iMe.storage.data.datasource.swap.WalletSwapDataSource
    public Observable<Result<String>> swap(TransactionArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        if (args instanceof SwapArgs.Dex) {
            Observable flatMap = sign(args).flatMap(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new DexWalletSwapDataSourceImpl$swap$$inlined$flatMapSuccess$1(this, args)));
            Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
            return flatMap;
        }
        throw new IllegalStateException("Incorrect swap args passed");
    }

    @Override // com.iMe.storage.data.datasource.base.SignTransactionDatasource
    public Observable<Result<String>> sign(TransactionArgs args) {
        byte[] bArr;
        BigInteger value;
        Intrinsics.checkNotNullParameter(args, "args");
        if (!(args instanceof SwapArgs.Dex)) {
            throw new IllegalStateException("Incorrect swap args passed");
        }
        Wallet.EVM eVMWallet = this.cryptoAccessManager.getEVMWallet();
        if (eVMWallet == null || (bArr = eVMWallet.getPrivateKeyBytes()) == null) {
            bArr = new byte[0];
        }
        byte[] bArr2 = bArr;
        SwapArgs.Dex dex = (SwapArgs.Dex) args;
        SwapMethod swapMethod = dex.getSwapMethod();
        String address = eVMWallet != null ? eVMWallet.getAddress() : null;
        if (address == null) {
            address = "";
        }
        ByteString createSmartFunctionParams = swapMethod.createSmartFunctionParams(dex, address);
        Ethereum.Transaction.Builder newBuilder = Ethereum.Transaction.newBuilder();
        Ethereum.Transaction.ContractGeneric.Builder data = Ethereum.Transaction.ContractGeneric.newBuilder().setData(createSmartFunctionParams);
        if (WhenMappings.$EnumSwitchMapping$0[dex.getSwapMethod().ordinal()] == 1) {
            value = dex.getConvertedAmount();
        } else {
            value = dex.getValue();
        }
        Ethereum.Transaction transaction = newBuilder.setContractGeneric(data.setAmount(CryptoExtKt.toByteString(value)).build()).build();
        EthTransactionSigner ethTransactionSigner = EthTransactionSigner.INSTANCE;
        long chainId = dex.getChainId();
        BigInteger gasPrice = dex.getGasPrice();
        BigInteger gasLimit = dex.getGasLimit();
        BigInteger nonce = dex.getNonce();
        String contractAddress = dex.getContractAddress();
        Intrinsics.checkNotNullExpressionValue(transaction, "transaction");
        Observable<Result<String>> just = Observable.just(Result.Companion.success(ethTransactionSigner.sign(chainId, gasPrice, gasLimit, nonce, contractAddress, transaction, bArr2)));
        Intrinsics.checkNotNullExpressionValue(just, "just(this)");
        return just;
    }
}
