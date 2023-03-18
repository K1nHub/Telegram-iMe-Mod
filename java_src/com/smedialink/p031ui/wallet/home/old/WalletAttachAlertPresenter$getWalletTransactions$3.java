package com.smedialink.p031ui.wallet.home.old;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
/* compiled from: WalletAttachAlertPresenter.kt */
/* renamed from: com.smedialink.ui.wallet.home.old.WalletAttachAlertPresenter$getWalletTransactions$3 */
/* loaded from: classes3.dex */
final class WalletAttachAlertPresenter$getWalletTransactions$3 extends Lambda implements Function1<Throwable, Unit> {
    final /* synthetic */ WalletAttachAlertPresenter this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletAttachAlertPresenter$getWalletTransactions$3(WalletAttachAlertPresenter walletAttachAlertPresenter) {
        super(1);
        this.this$0 = walletAttachAlertPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
        invoke2(th);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(Throwable th) {
        ((WalletAttachAlertView) this.this$0.getViewState()).onUnexpectedErrorState();
        WalletAttachAlertView walletAttachAlertView = (WalletAttachAlertView) this.this$0.getViewState();
        String message = th.getMessage();
        if (message == null) {
            message = "";
        }
        walletAttachAlertView.showToast(message);
    }
}
