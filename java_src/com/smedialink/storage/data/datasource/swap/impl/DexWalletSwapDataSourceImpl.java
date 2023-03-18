package com.smedialink.storage.data.datasource.swap.impl;

import com.smedialink.storage.data.datasource.swap.WalletSwapDataSource;
import com.smedialink.storage.data.network.api.own.SwapApi;
import com.smedialink.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.smedialink.storage.data.utils.extentions.DateExtKt;
import com.smedialink.storage.data.utils.extentions.NumberExtKt;
import com.smedialink.storage.data.utils.extentions.Web3jExtKt;
import com.smedialink.storage.domain.manager.crypto.CryptoAccessManager;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.Wallet;
import com.smedialink.storage.domain.model.crypto.send.TransactionArgs;
import com.smedialink.storage.domain.model.crypto.swap.SwapArgs;
import com.smedialink.storage.domain.model.wallet.swap.SwapMethod;
import com.smedialink.storage.domain.model.wallet.swap.SwapProtocol;
import com.smedialink.storage.domain.utils.extentions.ObservableExtKt$sam$i$io_reactivex_functions_Function$0;
import com.smedialink.storage.domain.utils.extentions.model.TokenInfoExtKt;
import io.reactivex.Observable;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.web3j.abi.datatypes.Address;
import org.web3j.abi.datatypes.DynamicArray;
import org.web3j.abi.datatypes.Type;
import org.web3j.abi.datatypes.generated.Uint256;
import org.web3j.crypto.RawTransaction;
import org.web3j.crypto.TransactionEncoder;
import org.web3j.utils.Numeric;
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
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[SwapProtocol.values().length];
            try {
                iArr[SwapProtocol.UNISWAP_V3.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[SwapProtocol.ONEINCH.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[SwapProtocol.SYMBIOSIS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[SwapMethod.values().length];
            try {
                iArr2[SwapMethod.EXACT_TOKENS_FOR_TOKENS.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[SwapMethod.EXACT_TOKENS_FOR_ETH.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[SwapMethod.EXACT_ETH_FOR_TOKENS.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr2[SwapMethod.UNKNOWN.ordinal()] = 4;
            } catch (NoSuchFieldError unused7) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    static {
        new Companion(null);
    }

    public DexWalletSwapDataSourceImpl(SwapApi swapApi, CryptoAccessManager cryptoAccessManager, FirebaseFunctionsErrorHandler firebaseErrorHandler) {
        Intrinsics.checkNotNullParameter(swapApi, "swapApi");
        Intrinsics.checkNotNullParameter(cryptoAccessManager, "cryptoAccessManager");
        Intrinsics.checkNotNullParameter(firebaseErrorHandler, "firebaseErrorHandler");
        this.swapApi = swapApi;
        this.cryptoAccessManager = cryptoAccessManager;
        this.firebaseErrorHandler = firebaseErrorHandler;
    }

    @Override // com.smedialink.storage.data.datasource.swap.WalletSwapDataSource
    public Observable<Result<String>> swap(TransactionArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        if (args instanceof SwapArgs.Dex) {
            Observable flatMap = sign(args).flatMap(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new DexWalletSwapDataSourceImpl$swap$$inlined$flatMapSuccess$1(this, args)));
            Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
            return flatMap;
        }
        throw new IllegalStateException("Incorrect swap args passed");
    }

    @Override // com.smedialink.storage.data.datasource.base.SignTransactionDatasource
    public Observable<Result<String>> sign(TransactionArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        if (!(args instanceof SwapArgs.Dex)) {
            throw new IllegalStateException("Incorrect swap args passed");
        }
        SwapArgs.Dex dex = (SwapArgs.Dex) args;
        RawTransaction createTransactionByType = createTransactionByType(dex);
        long chainId = dex.getChainId();
        Wallet.EVM eVMWallet = this.cryptoAccessManager.getEVMWallet();
        Observable<Result<String>> just = Observable.just(Result.Companion.success(Numeric.toHexString(TransactionEncoder.signMessage(createTransactionByType, chainId, eVMWallet != null ? eVMWallet.getCredentials() : null))));
        Intrinsics.checkNotNullExpressionValue(just, "just(this)");
        return just;
    }

    private final RawTransaction createTransactionByType(SwapArgs.Dex dex) {
        int i = WhenMappings.$EnumSwitchMapping$1[dex.getSwapMethod().ordinal()];
        if (i == 1 || i == 2) {
            RawTransaction createTransaction = RawTransaction.createTransaction(dex.getNonce(), dex.getGasPrice(), dex.getGasLimit(), dex.getContractAddress(), BigInteger.ZERO, createSmartFunctionParams(dex));
            Intrinsics.checkNotNullExpressionValue(createTransaction, "{\n                RawTra…          )\n            }");
            return createTransaction;
        } else if (i == 3) {
            RawTransaction createTransaction2 = RawTransaction.createTransaction(dex.getNonce(), dex.getGasPrice(), dex.getGasLimit(), dex.getContractAddress(), NumberExtKt.convertToWei(dex.getAmount(), TokenInfoExtKt.getWeiConvertUnit(dex.getInputToken(), dex.getNetworkType())), createSmartFunctionParams(dex));
            Intrinsics.checkNotNullExpressionValue(createTransaction2, "{\n                RawTra…          )\n            }");
            return createTransaction2;
        } else if (i == 4) {
            int i2 = WhenMappings.$EnumSwitchMapping$0[dex.getSwapProtocol().ordinal()];
            if (i2 == 1 || i2 == 2 || i2 == 3) {
                RawTransaction createTransaction3 = RawTransaction.createTransaction(dex.getNonce(), dex.getGasPrice(), dex.getGasLimit(), dex.getContractAddress(), dex.getValue(), dex.getData());
                Intrinsics.checkNotNullExpressionValue(createTransaction3, "{\n                when (…          }\n            }");
                return createTransaction3;
            }
            throw new IllegalStateException("Swap method is not supported yet");
        } else {
            throw new NoWhenBranchMatchedException();
        }
    }

    private final String createSmartFunctionParams(SwapArgs.Dex dex) {
        int collectionSizeOrDefault;
        List listOf;
        List listOf2;
        BigInteger calculateDeadline = calculateDeadline(dex.getDeadline());
        BigInteger convertToWei = NumberExtKt.convertToWei(dex.getAmount(), TokenInfoExtKt.getWeiConvertUnit(dex.getInputToken(), dex.getNetworkType()));
        List<String> path = dex.getPath();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(path, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (String str : path) {
            arrayList.add(new Address(str));
        }
        SwapMethod swapMethod = dex.getSwapMethod();
        int i = WhenMappings.$EnumSwitchMapping$1[swapMethod.ordinal()];
        if (i == 1 || i == 2) {
            String methodName = swapMethod.getMethodName();
            Type[] typeArr = new Type[5];
            typeArr[0] = new Uint256(convertToWei);
            typeArr[1] = new Uint256(dex.getAmountOutBound());
            typeArr[2] = new DynamicArray(Address.class, arrayList);
            Wallet.EVM eVMWallet = this.cryptoAccessManager.getEVMWallet();
            typeArr[3] = new Address(eVMWallet != null ? eVMWallet.getAddress() : null);
            typeArr[4] = new Uint256(calculateDeadline);
            listOf = CollectionsKt__CollectionsKt.listOf((Object[]) typeArr);
            return Web3jExtKt.createSmartFunctionDataFor$default(methodName, listOf, null, 4, null);
        } else if (i == 3) {
            String methodName2 = swapMethod.getMethodName();
            Type[] typeArr2 = new Type[4];
            typeArr2[0] = new Uint256(dex.getAmountOutBound());
            typeArr2[1] = new DynamicArray(Address.class, arrayList);
            Wallet.EVM eVMWallet2 = this.cryptoAccessManager.getEVMWallet();
            typeArr2[2] = new Address(eVMWallet2 != null ? eVMWallet2.getAddress() : null);
            typeArr2[3] = new Uint256(calculateDeadline);
            listOf2 = CollectionsKt__CollectionsKt.listOf((Object[]) typeArr2);
            return Web3jExtKt.createSmartFunctionDataFor$default(methodName2, listOf2, null, 4, null);
        } else {
            throw new IllegalStateException("Swap method is not supported yet");
        }
    }

    private final BigInteger calculateDeadline(int i) {
        BigInteger bigIntegerExact = new BigDecimal(String.valueOf(Math.floor(DateExtKt.now() / 1000.0d) + (i * 60))).toBigIntegerExact();
        Intrinsics.checkNotNullExpressionValue(bigIntegerExact, "floor(now / 1000.0) + 60…mal().toBigIntegerExact()");
        return bigIntegerExact;
    }

    /* compiled from: DexWalletSwapDataSourceImpl.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
