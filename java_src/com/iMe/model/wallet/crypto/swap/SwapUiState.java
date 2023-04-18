package com.iMe.model.wallet.crypto.swap;

import com.iMe.model.wallet.select.SelectableToken;
import com.iMe.p031ui.custom.FeeView;
import com.iMe.storage.domain.model.binancepay.BinanceConvertQuote;
import com.iMe.storage.domain.model.crypto.swap.CryptoSwapMetadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: SwapUiState.kt */
/* loaded from: classes3.dex */
public abstract class SwapUiState {
    public /* synthetic */ SwapUiState(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* compiled from: SwapUiState.kt */
    /* loaded from: classes3.dex */
    public static final class Idle extends SwapUiState {
        public static final Idle INSTANCE = new Idle();

        private Idle() {
            super(null);
        }
    }

    private SwapUiState() {
    }

    /* compiled from: SwapUiState.kt */
    /* loaded from: classes3.dex */
    public static final class NeedApprove extends SwapUiState {
        private final FeeView.ChooseFeeType chooseFeeType;
        private final SelectableToken token;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public NeedApprove(FeeView.ChooseFeeType chooseFeeType, SelectableToken selectableToken) {
            super(null);
            Intrinsics.checkNotNullParameter(chooseFeeType, "chooseFeeType");
            this.chooseFeeType = chooseFeeType;
            this.token = selectableToken;
        }

        public final FeeView.ChooseFeeType getChooseFeeType() {
            return this.chooseFeeType;
        }

        public final SelectableToken getToken() {
            return this.token;
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
    public static final class PrepareSwap extends SwapUiState {
        private final SelectableToken token;

        public PrepareSwap(SelectableToken selectableToken) {
            super(null);
            this.token = selectableToken;
        }

        public final SelectableToken getToken() {
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
            private final FeeView.ChooseFeeType chooseFeeType;
            private final CryptoSwapMetadata metadata;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Crypto(FeeView.ChooseFeeType chooseFeeType, CryptoSwapMetadata metadata) {
                super(null);
                Intrinsics.checkNotNullParameter(chooseFeeType, "chooseFeeType");
                Intrinsics.checkNotNullParameter(metadata, "metadata");
                this.chooseFeeType = chooseFeeType;
                this.metadata = metadata;
            }

            public final FeeView.ChooseFeeType getChooseFeeType() {
                return this.chooseFeeType;
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
