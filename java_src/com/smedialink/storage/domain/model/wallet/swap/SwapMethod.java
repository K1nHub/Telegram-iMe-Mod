package com.smedialink.storage.domain.model.wallet.swap;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: SwapMethod.kt */
/* loaded from: classes3.dex */
public enum SwapMethod {
    EXACT_TOKENS_FOR_TOKENS("swapExactTokensForTokens"),
    EXACT_ETH_FOR_TOKENS("swapExactETHForTokens"),
    EXACT_TOKENS_FOR_ETH("swapExactTokensForETH"),
    UNKNOWN("");
    
    public static final Companion Companion = new Companion(null);
    private final String methodName;

    SwapMethod(String str) {
        this.methodName = str;
    }

    public final String getMethodName() {
        return this.methodName;
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
