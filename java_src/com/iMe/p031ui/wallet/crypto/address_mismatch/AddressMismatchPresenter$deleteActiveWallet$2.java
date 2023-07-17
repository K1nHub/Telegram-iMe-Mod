package com.iMe.p031ui.wallet.crypto.address_mismatch;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import timber.log.Timber;
/* compiled from: AddressMismatchPresenter.kt */
/* renamed from: com.iMe.ui.wallet.crypto.address_mismatch.AddressMismatchPresenter$deleteActiveWallet$2 */
/* loaded from: classes.dex */
final class AddressMismatchPresenter$deleteActiveWallet$2 extends Lambda implements Function1<Throwable, Unit> {
    final /* synthetic */ AddressMismatchPresenter this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AddressMismatchPresenter$deleteActiveWallet$2(AddressMismatchPresenter addressMismatchPresenter) {
        super(1);
        this.this$0 = addressMismatchPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
        invoke2(th);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(Throwable th) {
        Timber.m8d(th);
        AddressMismatchView addressMismatchView = (AddressMismatchView) this.this$0.getViewState();
        String message = th.getMessage();
        if (message == null) {
            message = "";
        }
        addressMismatchView.showToast(message);
    }
}
