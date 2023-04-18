package com.iMe.storage.domain.model.wallet.swap;

import com.google.protobuf.ByteString;
import com.iMe.storage.domain.model.crypto.swap.SwapArgs;
import com.iMe.storage.domain.utils.extentions.CryptoExtKt;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import wallet.core.jni.EthereumAbi;
import wallet.core.jni.EthereumAbiFunction;
/* compiled from: SwapMethod.kt */
/* loaded from: classes3.dex */
public enum SwapMethod {
    EXACT_TOKENS_FOR_TOKENS("swapExactTokensForTokens"),
    EXACT_ETH_FOR_TOKENS("swapExactETHForTokens"),
    EXACT_TOKENS_FOR_ETH("swapExactTokensForETH"),
    UNKNOWN("");
    
    public static final Companion Companion = new Companion(null);
    private static final String UNSUPPORTED_SWAP_METHOD = "Swap method is not supported yet";
    private final String methodName;

    /* compiled from: SwapMethod.kt */
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

    SwapMethod(String str) {
        this.methodName = str;
    }

    public final String getMethodName() {
        return this.methodName;
    }

    public final ByteString createSmartFunctionParams(SwapArgs.Dex args, String senderAddress) {
        Intrinsics.checkNotNullParameter(args, "args");
        Intrinsics.checkNotNullParameter(senderAddress, "senderAddress");
        int i = WhenMappings.$EnumSwitchMapping$1[ordinal()];
        if (i == 1 || i == 2) {
            EthereumAbiFunction ethereumAbiFunction = new EthereumAbiFunction(this.methodName);
            ethereumAbiFunction.addParamUInt256(args.getConvertedAmount().toByteArray(), false);
            ethereumAbiFunction.addParamUInt256(args.getAmountOutBound().toByteArray(), false);
            int addParamArray = ethereumAbiFunction.addParamArray(false);
            for (String str : args.getPath()) {
                ethereumAbiFunction.addInArrayParamAddress(addParamArray, CryptoExtKt.hexToByteArray$default(str, false, 1, null));
            }
            ethereumAbiFunction.addParamAddress(CryptoExtKt.hexToByteArray$default(senderAddress, false, 1, null), false);
            ethereumAbiFunction.addParamUInt256(args.getDeadline().toByteArray(), false);
            byte[] encode = EthereumAbi.encode(ethereumAbiFunction);
            Intrinsics.checkNotNullExpressionValue(encode, "encode(function)");
            return CryptoExtKt.toByteString(encode);
        } else if (i == 3) {
            EthereumAbiFunction ethereumAbiFunction2 = new EthereumAbiFunction(this.methodName);
            ethereumAbiFunction2.addParamUInt256(args.getAmountOutBound().toByteArray(), false);
            int addParamArray2 = ethereumAbiFunction2.addParamArray(false);
            for (String str2 : args.getPath()) {
                ethereumAbiFunction2.addInArrayParamAddress(addParamArray2, CryptoExtKt.hexToByteArray$default(str2, false, 1, null));
            }
            ethereumAbiFunction2.addParamAddress(CryptoExtKt.hexToByteArray$default(senderAddress, false, 1, null), false);
            ethereumAbiFunction2.addParamUInt256(args.getDeadline().toByteArray(), false);
            byte[] encode2 = EthereumAbi.encode(ethereumAbiFunction2);
            Intrinsics.checkNotNullExpressionValue(encode2, "encode(function)");
            return CryptoExtKt.toByteString(encode2);
        } else {
            if (i == 4) {
                int i2 = WhenMappings.$EnumSwitchMapping$0[args.getSwapProtocol().ordinal()];
                if (i2 == 1 || i2 == 2 || i2 == 3) {
                    return CryptoExtKt.hexToByteString(args.getData());
                }
                throw new IllegalStateException(UNSUPPORTED_SWAP_METHOD);
            }
            throw new NoWhenBranchMatchedException();
        }
    }

    /* compiled from: SwapMethod.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final SwapMethod map(String method) {
            SwapMethod swapMethod;
            Intrinsics.checkNotNullParameter(method, "method");
            SwapMethod[] values = SwapMethod.values();
            int length = values.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    swapMethod = null;
                    break;
                }
                swapMethod = values[i];
                if (Intrinsics.areEqual(swapMethod.getMethodName(), method)) {
                    break;
                }
                i++;
            }
            return swapMethod == null ? SwapMethod.UNKNOWN : swapMethod;
        }
    }
}
