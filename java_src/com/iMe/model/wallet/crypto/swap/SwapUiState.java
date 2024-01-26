package com.iMe.model.wallet.crypto.swap;

import com.iMe.model.wallet.crypto.send.fee.FeeType;
import com.iMe.model.wallet.swap.SwapSide;
import com.iMe.storage.domain.model.binancepay.BinanceConvertQuote;
import com.iMe.storage.domain.model.crypto.swap.CryptoSwapMetadata;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: SwapUiState.kt */
/* loaded from: classes3.dex */
public abstract class SwapUiState {
    public /* synthetic */ SwapUiState(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private SwapUiState() {
    }

    /* compiled from: SwapUiState.kt */
    /* loaded from: classes3.dex */
    public static final class ApprovalPending extends SwapUiState {
        public static final ApprovalPending INSTANCE = new ApprovalPending();

        private ApprovalPending() {
            super(null);
        }
    }

    /* compiled from: SwapUiState.kt */
    /* loaded from: classes3.dex */
    public static final class Approval extends SwapUiState {
        private final FeeType feeType;
        private final TokenDetailed token;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Approval(FeeType feeType, TokenDetailed tokenDetailed) {
            super(null);
            Intrinsics.checkNotNullParameter(feeType, "feeType");
            this.feeType = feeType;
            this.token = tokenDetailed;
        }

        public final FeeType getFeeType() {
            return this.feeType;
        }

        public final TokenDetailed getToken() {
            return this.token;
        }
    }

    /* compiled from: SwapUiState.kt */
    /* loaded from: classes3.dex */
    public static final class Loading extends SwapUiState {
        public static final Loading INSTANCE = new Loading();

        private Loading() {
            super(null);
        }
    }

    /* compiled from: SwapUiState.kt */
    /* loaded from: classes3.dex */
    public static final class Idle extends SwapUiState {
        private final boolean isReset;
        private final SwapSide keepSide;

        public Idle() {
            this(false, null, 3, null);
        }

        public /* synthetic */ Idle(boolean z, SwapSide swapSide, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? false : z, (i & 2) != 0 ? null : swapSide);
        }

        public final boolean isReset() {
            return this.isReset;
        }

        public final SwapSide getKeepSide() {
            return this.keepSide;
        }

        public Idle(boolean z, SwapSide swapSide) {
            super(null);
            this.isReset = z;
            this.keepSide = swapSide;
        }
    }

    /* compiled from: SwapUiState.kt */
    /* loaded from: classes3.dex */
    public static abstract class Swap extends SwapUiState {
        public /* synthetic */ Swap(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Swap() {
            super(null);
        }

        /* compiled from: SwapUiState.kt */
        /* loaded from: classes3.dex */
        public static final class Crypto extends Swap {
            private final FeeType feeType;
            private final CryptoSwapMetadata metadata;
            private final String outputFiatAmountText;

            public final FeeType getFeeType() {
                return this.feeType;
            }

            public final CryptoSwapMetadata getMetadata() {
                return this.metadata;
            }

            public final String getOutputFiatAmountText() {
                return this.outputFiatAmountText;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Crypto(FeeType feeType, CryptoSwapMetadata metadata, String str) {
                super(null);
                Intrinsics.checkNotNullParameter(feeType, "feeType");
                Intrinsics.checkNotNullParameter(metadata, "metadata");
                this.feeType = feeType;
                this.metadata = metadata;
                this.outputFiatAmountText = str;
            }
        }

        /* compiled from: SwapUiState.kt */
        /* loaded from: classes3.dex */
        public static final class Binance extends Swap {
            private final BinanceConvertQuote quote;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Binance(BinanceConvertQuote quote) {
                super(null);
                Intrinsics.checkNotNullParameter(quote, "quote");
                this.quote = quote;
            }

            public final BinanceConvertQuote getQuote() {
                return this.quote;
            }
        }
    }

    public final boolean isApproving() {
        return (this instanceof Approval) || (this instanceof ApprovalPending);
    }
}
