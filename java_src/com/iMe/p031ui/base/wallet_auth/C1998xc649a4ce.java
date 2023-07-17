package com.iMe.p031ui.base.wallet_auth;

import com.iMe.storage.domain.utils.p030rx.event.DomainRxEvents;
import com.iMe.storage.domain.utils.p030rx.event.RxEvent;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.base.wallet_auth.WalletAuthBaseFragment$listenGlobalRxEvents$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes.dex */
public final class C1998xc649a4ce extends Lambda implements Function1<RxEvent, Unit> {
    final /* synthetic */ WalletAuthBaseFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1998xc649a4ce(WalletAuthBaseFragment walletAuthBaseFragment) {
        super(1);
        this.this$0 = walletAuthBaseFragment;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(RxEvent rxEvent) {
        m1327invoke(rxEvent);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1327invoke(RxEvent it) {
        Intrinsics.checkNotNullExpressionValue(it, "it");
        RxEvent rxEvent = it;
        if (rxEvent instanceof DomainRxEvents.ForceWalletLogout ? true : rxEvent instanceof DomainRxEvents.AppUpdateRequired) {
            WalletAuthBaseFragment walletAuthBaseFragment = this.this$0;
            walletAuthBaseFragment.closeAllWalletFragments(new WalletAuthBaseFragment$listenGlobalRxEvents$1$1(walletAuthBaseFragment));
        }
    }
}
