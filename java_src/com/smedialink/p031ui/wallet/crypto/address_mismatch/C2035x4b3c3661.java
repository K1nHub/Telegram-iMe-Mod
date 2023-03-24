package com.smedialink.p031ui.wallet.crypto.address_mismatch;

import com.smedialink.storage.domain.utils.p030rx.event.DomainRxEvents;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.smedialink.ui.wallet.crypto.address_mismatch.AddressMismatchPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C2035x4b3c3661 extends Lambda implements Function1<DomainRxEvents.CryptoEvent, Unit> {
    final /* synthetic */ AddressMismatchPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2035x4b3c3661(AddressMismatchPresenter addressMismatchPresenter) {
        super(1);
        this.this$0 = addressMismatchPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(DomainRxEvents.CryptoEvent cryptoEvent) {
        m1315invoke(cryptoEvent);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1315invoke(DomainRxEvents.CryptoEvent it) {
        Intrinsics.checkNotNullExpressionValue(it, "it");
        DomainRxEvents.CryptoEvent cryptoEvent = it;
        if (cryptoEvent instanceof DomainRxEvents.SuccessSaveBackup) {
            this.this$0.deleteActiveWallet(250L);
        } else if (cryptoEvent instanceof DomainRxEvents.SuccessResetWallet) {
            ((AddressMismatchView) this.this$0.getViewState()).closeScreen(250L);
        }
    }
}
