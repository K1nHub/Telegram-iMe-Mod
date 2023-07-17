package com.iMe.p031ui.wallet.swap.token;

import com.iMe.p031ui.wallet.swap.token.WalletSelectTokenFragment;
import com.iMe.storage.domain.model.wallet.swap.SwapProtocol;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletSelectTokenPresenter.kt */
/* renamed from: com.iMe.ui.wallet.swap.token.WalletSelectTokenPresenter$swapProtocol$2 */
/* loaded from: classes4.dex */
public final class WalletSelectTokenPresenter$swapProtocol$2 extends Lambda implements Function0<SwapProtocol> {
    final /* synthetic */ WalletSelectTokenPresenter this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletSelectTokenPresenter$swapProtocol$2(WalletSelectTokenPresenter walletSelectTokenPresenter) {
        super(0);
        this.this$0 = walletSelectTokenPresenter;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final SwapProtocol invoke() {
        WalletSelectTokenFragment.ScreenType screenType;
        SwapProtocol swapProtocol;
        screenType = this.this$0.screenType;
        WalletSelectTokenFragment.ScreenType.Swap swap = screenType instanceof WalletSelectTokenFragment.ScreenType.Swap ? (WalletSelectTokenFragment.ScreenType.Swap) screenType : null;
        return (swap == null || (swapProtocol = swap.getSwapProtocol()) == null) ? SwapProtocol.ONEINCH : swapProtocol;
    }
}
