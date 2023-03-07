package com.smedialink.p031ui.wallet.swap.process;

import com.smedialink.model.wallet.crypto.swap.SwapUiState;
import com.smedialink.model.wallet.swap.SwapSide;
import com.smedialink.storage.domain.model.crypto.NetworkType;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletSwapProcessPresenter.kt */
/* renamed from: com.smedialink.ui.wallet.swap.process.WalletSwapProcessPresenter$startChooseNetworkDialog$1 */
/* loaded from: classes3.dex */
public final class WalletSwapProcessPresenter$startChooseNetworkDialog$1 extends Lambda implements Function1<NetworkType, Unit> {
    final /* synthetic */ SwapSide $side;
    final /* synthetic */ WalletSwapProcessPresenter this$0;

    /* compiled from: WalletSwapProcessPresenter.kt */
    /* renamed from: com.smedialink.ui.wallet.swap.process.WalletSwapProcessPresenter$startChooseNetworkDialog$1$WhenMappings */
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[SwapSide.values().length];
            iArr[SwapSide.INPUT.ordinal()] = 1;
            iArr[SwapSide.OUTPUT.ordinal()] = 2;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletSwapProcessPresenter$startChooseNetworkDialog$1(SwapSide swapSide, WalletSwapProcessPresenter walletSwapProcessPresenter) {
        super(1);
        this.$side = swapSide;
        this.this$0 = walletSwapProcessPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(NetworkType networkType) {
        invoke2(networkType);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(NetworkType newNetworkType) {
        NetworkType selectedNetworkTypeBySwapSide;
        Intrinsics.checkNotNullParameter(newNetworkType, "newNetworkType");
        int i = WhenMappings.$EnumSwitchMapping$0[this.$side.ordinal()];
        if (i == 1) {
            this.this$0.selectedInputNetworkType = newNetworkType;
        } else if (i == 2) {
            this.this$0.selectedOutputNetworkType = newNetworkType;
        }
        selectedNetworkTypeBySwapSide = this.this$0.getSelectedNetworkTypeBySwapSide(this.$side);
        ((WalletSwapProcessView) this.this$0.getViewState()).setupNetworkType(selectedNetworkTypeBySwapSide, this.$side);
        this.this$0.resetLoadedInformation();
        this.this$0.resolveSwapProtocol();
        this.this$0.setupSwapInformation();
        this.this$0.resetStateTo(SwapUiState.Idle.INSTANCE);
        this.this$0.loadAvailableSwapTokens(this.$side);
    }
}
