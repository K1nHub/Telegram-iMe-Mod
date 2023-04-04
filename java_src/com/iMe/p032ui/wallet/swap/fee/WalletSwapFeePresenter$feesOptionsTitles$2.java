package com.iMe.p032ui.wallet.swap.fee;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletSwapFeePresenter.kt */
/* renamed from: com.iMe.ui.wallet.swap.fee.WalletSwapFeePresenter$feesOptionsTitles$2 */
/* loaded from: classes4.dex */
public final class WalletSwapFeePresenter$feesOptionsTitles$2 extends Lambda implements Function0<String[]> {
    final /* synthetic */ WalletSwapFeePresenter this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletSwapFeePresenter$feesOptionsTitles$2(WalletSwapFeePresenter walletSwapFeePresenter) {
        super(0);
        this.this$0 = walletSwapFeePresenter;
    }

    @Override // kotlin.jvm.functions.Function0
    public final String[] invoke() {
        String[] initFeesTitles;
        initFeesTitles = this.this$0.initFeesTitles();
        return initFeesTitles;
    }
}
