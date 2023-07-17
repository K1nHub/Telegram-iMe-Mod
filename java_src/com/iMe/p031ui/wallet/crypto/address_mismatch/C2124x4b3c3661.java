package com.iMe.p031ui.wallet.crypto.address_mismatch;

import com.iMe.storage.domain.utils.p030rx.event.DomainRxEvents;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.wallet.crypto.address_mismatch.AddressMismatchPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes.dex */
public final class C2124x4b3c3661 extends Lambda implements Function1<DomainRxEvents.CryptoEvent, Unit> {
    final /* synthetic */ AddressMismatchPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2124x4b3c3661(AddressMismatchPresenter addressMismatchPresenter) {
        super(1);
        this.this$0 = addressMismatchPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(DomainRxEvents.CryptoEvent cryptoEvent) {
        m1411invoke(cryptoEvent);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1411invoke(DomainRxEvents.CryptoEvent it) {
        Intrinsics.checkNotNullExpressionValue(it, "it");
        DomainRxEvents.CryptoEvent cryptoEvent = it;
        if (Intrinsics.areEqual(cryptoEvent, DomainRxEvents.SuccessSaveBackup.INSTANCE)) {
            this.this$0.deleteActiveWallet(250L);
        } else if (Intrinsics.areEqual(cryptoEvent, DomainRxEvents.WalletReset.INSTANCE)) {
            ((AddressMismatchView) this.this$0.getViewState()).closeScreen(250L);
        }
    }
}
