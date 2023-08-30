package com.iMe.model.wallet.crypto.swap;

import com.iMe.model.wallet.crypto.send.fee.FeeType;
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
    public static final class Idle extends SwapUiState {
        public static final Idle INSTANCE = new Idle();

        private Idle() {
            super(null);
        }
    }

    /* compiled from: SwapUiState.kt */
    /* loaded from: classes3.dex */
    public static final class ApproveInProgress extends SwapUiState {
        public static final ApproveInProgress INSTANCE = new ApproveInProgress();

        private ApproveInProgress() {
            super(null);
        }
    }

    /* compiled from: SwapUiState.kt */
    /* loaded from: classes3.dex */
    public static final class NeedApprove extends SwapUiState {
        private final FeeType feeType;
        private final TokenDetailed token;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public NeedApprove(FeeType feeType, TokenDetailed tokenDetailed) {
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
    public static final class PrepareSwap extends SwapUiState {
        private final TokenDetailed token;

        public PrepareSwap(TokenDetailed tokenDetailed) {
            super(null);
            this.token = tokenDetailed;
        }

        public final TokenDetailed getToken() {
            return this.token;
        }
    }

    /* compiled from: SwapUiState.kt */
    /* loaded from: classes3.dex */
    public static abstract class Swap extends SwapUiState {
        public /* synthetic */ Swap(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* compiled from: SwapUiState.kt */
        /* loaded from: classes3.dex */
        public static final class Crypto extends Swap {
            private final FeeType feeType;
            private final CryptoSwapMetadata metadata;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Crypto(FeeType feeType, CryptoSwapMetadata metadata) {
                super(null);
                Intrinsics.checkNotNullParameter(feeType, "feeType");
                Intrinsics.checkNotNullParameter(metadata, "metadata");
                this.feeType = feeType;
                this.metadata = metadata;
            }

            public final FeeType getFeeType() {
                return this.feeType;
            }

            public final CryptoSwapMetadata getMetadata() {
                return this.metadata;
            }
        }

        private Swap() {
            super(null);
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
}
