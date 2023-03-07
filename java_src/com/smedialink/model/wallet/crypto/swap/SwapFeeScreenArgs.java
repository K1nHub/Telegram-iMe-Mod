package com.smedialink.model.wallet.crypto.swap;

import com.smedialink.model.wallet.crypto.send.fee.GasPriceItem;
import com.smedialink.storage.domain.model.crypto.NetworkType;
import com.smedialink.storage.domain.model.crypto.swap.CryptoSwapMetadata;
import com.smedialink.storage.domain.model.wallet.swap.SwapDeadline;
import com.smedialink.storage.domain.model.wallet.swap.SwapProtocol;
import com.smedialink.storage.domain.model.wallet.swap.SwapSlippage;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: SwapFeeScreenArgs.kt */
/* loaded from: classes3.dex */
public final class SwapFeeScreenArgs {
    private final CryptoSwapMetadata metadata;
    private final NetworkType networkType;
    private final NetworkType outputNetworkType;
    private final SwapProtocol protocol;
    private final SwapDeadline selectedDeadline;
    private final GasPriceItem selectedFee;
    private final SwapSlippage selectedSlippage;

    public static /* synthetic */ SwapFeeScreenArgs copy$default(SwapFeeScreenArgs swapFeeScreenArgs, CryptoSwapMetadata cryptoSwapMetadata, SwapDeadline swapDeadline, SwapSlippage swapSlippage, GasPriceItem gasPriceItem, NetworkType networkType, NetworkType networkType2, SwapProtocol swapProtocol, int i, Object obj) {
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
            networkType = swapFeeScreenArgs.networkType;
        }
        NetworkType networkType3 = networkType;
        if ((i & 32) != 0) {
            networkType2 = swapFeeScreenArgs.outputNetworkType;
        }
        NetworkType networkType4 = networkType2;
        if ((i & 64) != 0) {
            swapProtocol = swapFeeScreenArgs.protocol;
        }
        return swapFeeScreenArgs.copy(cryptoSwapMetadata, swapDeadline2, swapSlippage2, gasPriceItem2, networkType3, networkType4, swapProtocol);
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

    public final NetworkType component5() {
        return this.networkType;
    }

    public final NetworkType component6() {
        return this.outputNetworkType;
    }

    public final SwapProtocol component7() {
        return this.protocol;
    }

    public final SwapFeeScreenArgs copy(CryptoSwapMetadata metadata, SwapDeadline selectedDeadline, SwapSlippage selectedSlippage, GasPriceItem selectedFee, NetworkType networkType, NetworkType networkType2, SwapProtocol protocol) {
        Intrinsics.checkNotNullParameter(metadata, "metadata");
        Intrinsics.checkNotNullParameter(selectedDeadline, "selectedDeadline");
        Intrinsics.checkNotNullParameter(selectedSlippage, "selectedSlippage");
        Intrinsics.checkNotNullParameter(selectedFee, "selectedFee");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        Intrinsics.checkNotNullParameter(protocol, "protocol");
        return new SwapFeeScreenArgs(metadata, selectedDeadline, selectedSlippage, selectedFee, networkType, networkType2, protocol);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SwapFeeScreenArgs) {
            SwapFeeScreenArgs swapFeeScreenArgs = (SwapFeeScreenArgs) obj;
            return Intrinsics.areEqual(this.metadata, swapFeeScreenArgs.metadata) && this.selectedDeadline == swapFeeScreenArgs.selectedDeadline && this.selectedSlippage == swapFeeScreenArgs.selectedSlippage && Intrinsics.areEqual(this.selectedFee, swapFeeScreenArgs.selectedFee) && this.networkType == swapFeeScreenArgs.networkType && this.outputNetworkType == swapFeeScreenArgs.outputNetworkType && this.protocol == swapFeeScreenArgs.protocol;
        }
        return false;
    }

    public int hashCode() {
        int hashCode = ((((((((this.metadata.hashCode() * 31) + this.selectedDeadline.hashCode()) * 31) + this.selectedSlippage.hashCode()) * 31) + this.selectedFee.hashCode()) * 31) + this.networkType.hashCode()) * 31;
        NetworkType networkType = this.outputNetworkType;
        return ((hashCode + (networkType == null ? 0 : networkType.hashCode())) * 31) + this.protocol.hashCode();
    }

    public String toString() {
        return "SwapFeeScreenArgs(metadata=" + this.metadata + ", selectedDeadline=" + this.selectedDeadline + ", selectedSlippage=" + this.selectedSlippage + ", selectedFee=" + this.selectedFee + ", networkType=" + this.networkType + ", outputNetworkType=" + this.outputNetworkType + ", protocol=" + this.protocol + ')';
    }

    public SwapFeeScreenArgs(CryptoSwapMetadata metadata, SwapDeadline selectedDeadline, SwapSlippage selectedSlippage, GasPriceItem selectedFee, NetworkType networkType, NetworkType networkType2, SwapProtocol protocol) {
        Intrinsics.checkNotNullParameter(metadata, "metadata");
        Intrinsics.checkNotNullParameter(selectedDeadline, "selectedDeadline");
        Intrinsics.checkNotNullParameter(selectedSlippage, "selectedSlippage");
        Intrinsics.checkNotNullParameter(selectedFee, "selectedFee");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        Intrinsics.checkNotNullParameter(protocol, "protocol");
        this.metadata = metadata;
        this.selectedDeadline = selectedDeadline;
        this.selectedSlippage = selectedSlippage;
        this.selectedFee = selectedFee;
        this.networkType = networkType;
        this.outputNetworkType = networkType2;
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

    public final NetworkType getNetworkType() {
        return this.networkType;
    }

    public final NetworkType getOutputNetworkType() {
        return this.outputNetworkType;
    }

    public final SwapProtocol getProtocol() {
        return this.protocol;
    }
}
