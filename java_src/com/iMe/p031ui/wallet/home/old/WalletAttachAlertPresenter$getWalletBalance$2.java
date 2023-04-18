package com.iMe.p031ui.wallet.home.old;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
/* compiled from: WalletAttachAlertPresenter.kt */
/* renamed from: com.iMe.ui.wallet.home.old.WalletAttachAlertPresenter$getWalletBalance$2 */
/* loaded from: classes.dex */
final class WalletAttachAlertPresenter$getWalletBalance$2 extends Lambda implements Function1<Throwable, Unit> {
    final /* synthetic */ WalletAttachAlertPresenter this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletAttachAlertPresenter$getWalletBalance$2(WalletAttachAlertPresenter walletAttachAlertPresenter) {
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
        WalletAttachAlertView walletAttachAlertView = (WalletAttachAlertView) this.this$0.getViewState();
        String message = th.getMessage();
        if (message == null) {
            message = "";
        }
        walletAttachAlertView.showToast(message);
    }
}
