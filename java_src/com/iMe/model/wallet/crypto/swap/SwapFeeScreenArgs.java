package com.iMe.model.wallet.crypto.swap;

import com.iMe.model.wallet.crypto.send.fee.GasPriceItem;
import com.iMe.storage.domain.model.crypto.swap.CryptoSwapMetadata;
import com.iMe.storage.domain.model.wallet.swap.SwapDeadline;
import com.iMe.storage.domain.model.wallet.swap.SwapProtocol;
import com.iMe.storage.domain.model.wallet.swap.SwapSlippage;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: SwapFeeScreenArgs.kt */
/* loaded from: classes4.dex */
public final class SwapFeeScreenArgs {
    private final CryptoSwapMetadata metadata;
    private final SwapProtocol protocol;
    private final SwapDeadline selectedDeadline;
    private final GasPriceItem selectedFee;
    private final SwapSlippage selectedSlippage;

    public static /* synthetic */ SwapFeeScreenArgs copy$default(SwapFeeScreenArgs swapFeeScreenArgs, CryptoSwapMetadata cryptoSwapMetadata, SwapDeadline swapDeadline, SwapSlippage swapSlippage, GasPriceItem gasPriceItem, SwapProtocol swapProtocol, int i, Object obj) {
        if ((i & 1) != 0) {
            cryptoSwapMetadata = swapFeeScreenArgs.metadata;
        }
        if ((i & 2) != 0) {
            swapDeadline = swapFeeScreenArgs.selectedDeadline;
        }
        SwapDeadline swapDeadline2 = swapDeadline;
        if ((i & 4) != 0) {
            swapSlippage = swapFeeScreenArgs.selectedSlippage;
        }
        SwapSlippage swapSlippage2 = swapSlippage;
        if ((i & 8) != 0) {
            gasPriceItem = swapFeeScreenArgs.selectedFee;
        }
        GasPriceItem gasPriceItem2 = gasPriceItem;
        if ((i & 16) != 0) {
            swapProtocol = swapFeeScreenArgs.protocol;
        }
        return swapFeeScreenArgs.copy(cryptoSwapMetadata, swapDeadline2, swapSlippage2, gasPriceItem2, swapProtocol);
    }

    public final CryptoSwapMetadata component1() {
        return this.metadata;
    }

    public final SwapDeadline component2() {
        return this.selectedDeadline;
    }

    public final SwapSlippage component3() {
        return this.selectedSlippage;
    }

    public final GasPriceItem component4() {
        return this.selectedFee;
    }

    public final SwapProtocol component5() {
        return this.protocol;
    }

    public final SwapFeeScreenArgs copy(CryptoSwapMetadata metadata, SwapDeadline selectedDeadline, SwapSlippage selectedSlippage, GasPriceItem selectedFee, SwapProtocol protocol) {
        Intrinsics.checkNotNullParameter(metadata, "metadata");
        Intrinsics.checkNotNullParameter(selectedDeadline, "selectedDeadline");
        Intrinsics.checkNotNullParameter(selectedSlippage, "selectedSlippage");
        Intrinsics.checkNotNullParameter(selectedFee, "selectedFee");
        Intrinsics.checkNotNullParameter(protocol, "protocol");
        return new SwapFeeScreenArgs(metadata, selectedDeadline, selectedSlippage, selectedFee, protocol);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SwapFeeScreenArgs) {
            SwapFeeScreenArgs swapFeeScreenArgs = (SwapFeeScreenArgs) obj;
            return Intrinsics.areEqual(this.metadata, swapFeeScreenArgs.metadata) && this.selectedDeadline == swapFeeScreenArgs.selectedDeadline && this.selectedSlippage == swapFeeScreenArgs.selectedSlippage && Intrinsics.areEqual(this.selectedFee, swapFeeScreenArgs.selectedFee) && this.protocol == swapFeeScreenArgs.protocol;
        }
        return false;
    }

    public int hashCode() {
        return (((((((this.metadata.hashCode() * 31) + this.selectedDeadline.hashCode()) * 31) + this.selectedSlippage.hashCode()) * 31) + this.selectedFee.hashCode()) * 31) + this.protocol.hashCode();
    }

    public String toString() {
        return "SwapFeeScreenArgs(metadata=" + this.metadata + ", selectedDeadline=" + this.selectedDeadline + ", selectedSlippage=" + this.selectedSlippage + ", selectedFee=" + this.selectedFee + ", protocol=" + this.protocol + ')';
    }

    public SwapFeeScreenArgs(CryptoSwapMetadata metadata, SwapDeadline selectedDeadline, SwapSlippage selectedSlippage, GasPriceItem selectedFee, SwapProtocol protocol) {
        Intrinsics.checkNotNullParameter(metadata, "metadata");
        Intrinsics.checkNotNullParameter(selectedDeadline, "selectedDeadline");
        Intrinsics.checkNotNullParameter(selectedSlippage, "selectedSlippage");
        Intrinsics.checkNotNullParameter(selectedFee, "selectedFee");
        Intrinsics.checkNotNullParameter(protocol, "protocol");
        this.metadata = metadata;
        this.selectedDeadline = selectedDeadline;
        this.selectedSlippage = selectedSlippage;
        this.selectedFee = selectedFee;
        this.protocol = protocol;
    }

    public final CryptoSwapMetadata getMetadata() {
        return this.metadata;
    }

    public final SwapDeadline getSelectedDeadline() {
        return this.selectedDeadline;
    }

    public final SwapSlippage getSelectedSlippage() {
        return this.selectedSlippage;
    }

    public final GasPriceItem getSelectedFee() {
        return this.selectedFee;
    }

    public final SwapProtocol getProtocol() {
        return this.protocol;
    }
}
