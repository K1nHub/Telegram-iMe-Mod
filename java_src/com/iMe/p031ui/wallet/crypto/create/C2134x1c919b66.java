package com.iMe.p031ui.wallet.crypto.create;

import com.iMe.storage.domain.utils.p030rx.event.DomainRxEvents;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.wallet.crypto.create.CreateWalletFragment$setupEventListeners$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C2134x1c919b66 extends Lambda implements Function1<DomainRxEvents.CryptoEvent, Unit> {
    final /* synthetic */ CreateWalletFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2134x1c919b66(CreateWalletFragment createWalletFragment) {
        super(1);
        this.this$0 = createWalletFragment;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(DomainRxEvents.CryptoEvent cryptoEvent) {
        m1416invoke(cryptoEvent);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1416invoke(DomainRxEvents.CryptoEvent it) {
        Intrinsics.checkNotNullExpressionValue(it, "it");
        DomainRxEvents.CryptoEvent cryptoEvent = it;
        if (Intrinsics.areEqual(cryptoEvent, DomainRxEvents.SuccessRecreateWalletByPassword.INSTANCE) ? true : Intrinsics.areEqual(cryptoEvent, DomainRxEvents.WalletReset.INSTANCE)) {
            this.this$0.removeSelfFromStack();
        }
    }
}
