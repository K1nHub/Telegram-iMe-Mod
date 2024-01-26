package com.iMe.storage.domain.model.wallet.swap;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: SwapProtocol.kt */
/* loaded from: classes3.dex */
public enum SwapProtocol {
    ONEINCH,
    ONEINCH_FUSION,
    SYMBIOSIS,
    UNKNOWN;
    
    public static final Companion Companion = new Companion(null);

    public final boolean isCrossChain() {
        return this == SYMBIOSIS;
    }

    /* compiled from: SwapProtocol.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final SwapProtocol map(String code) {
            SwapProtocol swapProtocol;
            Intrinsics.checkNotNullParameter(code, "code");
            SwapProtocol[] values = SwapProtocol.values();
            int length = values.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    swapProtocol = null;
                    break;
                }
                swapProtocol = values[i];
                if (Intrinsics.areEqual(swapProtocol.name(), code)) {
                    break;
                }
                i++;
            }
            return swapProtocol == null ? SwapProtocol.UNKNOWN : swapProtocol;
        }

        public final SwapProtocol resolveByNetworkId(String networkId) {
            Intrinsics.checkNotNullParameter(networkId, "networkId");
            return SwapProtocol.ONEINCH_FUSION;
        }
    }
}
