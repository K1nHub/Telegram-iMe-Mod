package com.iMe.p032ui.wallet.swap.process;

import android.view.View;
import com.iMe.model.wallet.swap.SwapSide;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletSwapProcessFragment.kt */
/* renamed from: com.iMe.ui.wallet.swap.process.WalletSwapProcessFragment$setupListeners$1$3$1 */
/* loaded from: classes4.dex */
public final class WalletSwapProcessFragment$setupListeners$1$3$1 extends Lambda implements Function1<View, Unit> {
    final /* synthetic */ WalletSwapProcessFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletSwapProcessFragment$setupListeners$1$3$1(WalletSwapProcessFragment walletSwapProcessFragment) {
        super(1);
        this.this$0 = walletSwapProcessFragment;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(View view) {
        invoke2(view);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(View it) {
        WalletSwapProcessPresenter presenter;
        Intrinsics.checkNotNullParameter(it, "it");
        presenter = this.this$0.getPresenter();
        presenter.startSelectTokenDialog(SwapSide.OUTPUT);
    }
}
