package com.smedialink.p031ui.wallet.swap.fee;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletSwapFeePresenter.kt */
/* renamed from: com.smedialink.ui.wallet.swap.fee.WalletSwapFeePresenter$deadlineOptionsTitles$2 */
/* loaded from: classes3.dex */
public final class WalletSwapFeePresenter$deadlineOptionsTitles$2 extends Lambda implements Function0<String[]> {
    final /* synthetic */ WalletSwapFeePresenter this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletSwapFeePresenter$deadlineOptionsTitles$2(WalletSwapFeePresenter walletSwapFeePresenter) {
        super(0);
        this.this$0 = walletSwapFeePresenter;
    }

    @Override // kotlin.jvm.functions.Function0
    public final String[] invoke() {
        String[] initDeadlineTitles;
        initDeadlineTitles = this.this$0.initDeadlineTitles();
        return initDeadlineTitles;
    }
}
