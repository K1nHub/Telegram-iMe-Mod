package com.iMe.p032ui.wallet.swap.process;

import com.iMe.model.wallet.crypto.send.fee.GasPriceItem;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletSwapProcessPresenter.kt */
/* renamed from: com.iMe.ui.wallet.swap.process.WalletSwapProcessPresenter$getApproveFeeType$1 */
/* loaded from: classes4.dex */
public final class WalletSwapProcessPresenter$getApproveFeeType$1 extends Lambda implements Function1<GasPriceItem, Unit> {
    final /* synthetic */ WalletSwapProcessPresenter this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletSwapProcessPresenter$getApproveFeeType$1(WalletSwapProcessPresenter walletSwapProcessPresenter) {
        super(1);
        this.this$0 = walletSwapProcessPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(GasPriceItem gasPriceItem) {
        invoke2(gasPriceItem);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(GasPriceItem fee) {
        Intrinsics.checkNotNullParameter(fee, "fee");
        this.this$0.selectApproveFee(fee);
    }
}
