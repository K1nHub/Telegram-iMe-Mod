package com.iMe.p031ui.wallet.swap.token;

import com.iMe.p031ui.wallet.swap.token.WalletSelectTokenFragment;
import com.iMe.storage.domain.model.wallet.transaction.TransactionDirection;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletSelectTokenPresenter.kt */
/* renamed from: com.iMe.ui.wallet.swap.token.WalletSelectTokenPresenter$swapDirection$2 */
/* loaded from: classes4.dex */
public final class WalletSelectTokenPresenter$swapDirection$2 extends Lambda implements Function0<TransactionDirection> {
    final /* synthetic */ WalletSelectTokenPresenter this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletSelectTokenPresenter$swapDirection$2(WalletSelectTokenPresenter walletSelectTokenPresenter) {
        super(0);
        this.this$0 = walletSelectTokenPresenter;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final TransactionDirection invoke() {
        WalletSelectTokenFragment.ScreenType screenType;
        TransactionDirection swapDirection;
        screenType = this.this$0.screenType;
        WalletSelectTokenFragment.ScreenType.Swap swap = screenType instanceof WalletSelectTokenFragment.ScreenType.Swap ? (WalletSelectTokenFragment.ScreenType.Swap) screenType : null;
        return (swap == null || (swapDirection = swap.getSwapDirection()) == null) ? TransactionDirection.OUT : swapDirection;
    }
}
