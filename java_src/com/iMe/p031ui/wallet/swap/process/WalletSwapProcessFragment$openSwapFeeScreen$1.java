package com.iMe.p031ui.wallet.swap.process;

import com.iMe.model.wallet.crypto.swap.SwapFeeScreenArgs;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: WalletSwapProcessFragment.kt */
/* renamed from: com.iMe.ui.wallet.swap.process.WalletSwapProcessFragment$openSwapFeeScreen$1 */
/* loaded from: classes4.dex */
final class WalletSwapProcessFragment$openSwapFeeScreen$1 extends Lambda implements Function1<SwapFeeScreenArgs, Unit> {
    final /* synthetic */ WalletSwapProcessFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletSwapProcessFragment$openSwapFeeScreen$1(WalletSwapProcessFragment walletSwapProcessFragment) {
        super(1);
        this.this$0 = walletSwapProcessFragment;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(SwapFeeScreenArgs swapFeeScreenArgs) {
        invoke2(swapFeeScreenArgs);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(SwapFeeScreenArgs args) {
        WalletSwapProcessPresenter presenter;
        Intrinsics.checkNotNullParameter(args, "args");
        presenter = this.this$0.getPresenter();
        presenter.processSwapFee(args);
    }
}
