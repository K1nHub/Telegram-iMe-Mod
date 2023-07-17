package com.iMe.p031ui.base.wallet_creation;

import com.iMe.storage.domain.utils.p030rx.event.DomainRxEvents;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.base.wallet_creation.WalletCreationBaseFragment$listenGlobalRxEvents$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes.dex */
public final class C2000xdc037177 extends Lambda implements Function1<DomainRxEvents, Unit> {
    final /* synthetic */ WalletCreationBaseFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2000xdc037177(WalletCreationBaseFragment walletCreationBaseFragment) {
        super(1);
        this.this$0 = walletCreationBaseFragment;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(DomainRxEvents domainRxEvents) {
        m1328invoke(domainRxEvents);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1328invoke(DomainRxEvents it) {
        Intrinsics.checkNotNullExpressionValue(it, "it");
        DomainRxEvents domainRxEvents = it;
        if (domainRxEvents instanceof DomainRxEvents.WalletCreated ? true : domainRxEvents instanceof DomainRxEvents.WalletRestored) {
            this.this$0.closeWalletCreationFragment();
        }
    }
}
