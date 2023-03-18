package com.smedialink.p031ui.wallet.swap.process;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletSwapProcessPresenter.kt */
/* renamed from: com.smedialink.ui.wallet.swap.process.WalletSwapProcessPresenter$getSwapFeeType$1 */
/* loaded from: classes3.dex */
public final class WalletSwapProcessPresenter$getSwapFeeType$1 extends Lambda implements Function0<Unit> {
    final /* synthetic */ WalletSwapProcessPresenter this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletSwapProcessPresenter$getSwapFeeType$1(WalletSwapProcessPresenter walletSwapProcessPresenter) {
        super(0);
        this.this$0 = walletSwapProcessPresenter;
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() {
        invoke2();
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2() {
        this.this$0.chooseSwapFee();
    }
}
