package com.iMe.model.wallet.swap;

import com.iMe.storage.domain.model.wallet.swap.SwapProtocol;
import com.iMe.storage.domain.model.wallet.swap.SwapProtocolInfo;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: WalletSwapScreenType.kt */
/* loaded from: classes3.dex */
public abstract class WalletSwapScreenType {
    public /* synthetic */ WalletSwapScreenType(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* compiled from: WalletSwapScreenType.kt */
    /* loaded from: classes3.dex */
    public static final class Crypto extends WalletSwapScreenType {
        private final String forcedNetworkId;
        private final TokenDetailed fromToken;
        private final SwapProtocol swapProtocol;
        private final SwapProtocolInfo swapProtocolInfo;
        private final TokenDetailed toToken;

        public /* synthetic */ Crypto(SwapProtocol swapProtocol, TokenDetailed tokenDetailed, TokenDetailed tokenDetailed2, String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(swapProtocol, (i & 2) != 0 ? null : tokenDetailed, (i & 4) != 0 ? null : tokenDetailed2, (i & 8) != 0 ? null : str);
        }

        public final SwapProtocol getSwapProtocol() {
            return this.swapProtocol;
        }

        public final TokenDetailed getFromToken() {
            return this.fromToken;
        }

        public final TokenDetailed getToToken() {
            return this.toToken;
        }

        public final String getForcedNetworkId() {
            return this.forcedNetworkId;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Crypto(SwapProtocol swapProtocol, TokenDetailed tokenDetailed, TokenDetailed tokenDetailed2, String str) {
            super(null);
            Intrinsics.checkNotNullParameter(swapProtocol, "swapProtocol");
            this.swapProtocol = swapProtocol;
            this.fromToken = tokenDetailed;
            this.toToken = tokenDetailed2;
            this.forcedNetworkId = str;
            this.swapProtocolInfo = SwapProtocolInfo.Companion.map(swapProtocol);
        }

        public final SwapProtocolInfo getSwapProtocolInfo() {
            return this.swapProtocolInfo;
        }
    }

    private WalletSwapScreenType() {
    }

    /* compiled from: WalletSwapScreenType.kt */
    /* loaded from: classes3.dex */
    public static final class Binance extends WalletSwapScreenType {
        private final TokenDetailed fromToken;
        private final TokenDetailed toToken;

        public Binance() {
            this(null, null, 3, null);
        }

        public /* synthetic */ Binance(TokenDetailed tokenDetailed, TokenDetailed tokenDetailed2, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? null : tokenDetailed, (i & 2) != 0 ? null : tokenDetailed2);
        }

        public final TokenDetailed getFromToken() {
            return this.fromToken;
        }

        public final TokenDetailed getToToken() {
            return this.toToken;
        }

        public Binance(TokenDetailed tokenDetailed, TokenDetailed tokenDetailed2) {
            super(null);
            this.fromToken = tokenDetailed;
            this.toToken = tokenDetailed2;
        }
    }
}
