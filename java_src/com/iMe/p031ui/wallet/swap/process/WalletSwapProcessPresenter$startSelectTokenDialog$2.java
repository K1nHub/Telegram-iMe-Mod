package com.iMe.p031ui.wallet.swap.process;

import com.iMe.model.wallet.select.SelectableToken;
import com.iMe.model.wallet.swap.SwapSide;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletSwapProcessPresenter.kt */
/* renamed from: com.iMe.ui.wallet.swap.process.WalletSwapProcessPresenter$startSelectTokenDialog$2 */
/* loaded from: classes4.dex */
public final class WalletSwapProcessPresenter$startSelectTokenDialog$2 extends Lambda implements Function1<SelectableToken, Unit> {
    final /* synthetic */ SwapSide $side;
    final /* synthetic */ WalletSwapProcessPresenter this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletSwapProcessPresenter$startSelectTokenDialog$2(WalletSwapProcessPresenter walletSwapProcessPresenter, SwapSide swapSide) {
        super(1);
        this.this$0 = walletSwapProcessPresenter;
        this.$side = swapSide;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(SelectableToken selectableToken) {
        invoke2(selectableToken);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(SelectableToken token) {
        Intrinsics.checkNotNullParameter(token, "token");
        this.this$0.selectToken(this.$side, token);
    }
}
