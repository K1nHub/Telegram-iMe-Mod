package com.smedialink.p031ui.wallet.home.p032v2;

import com.smedialink.common.AppRxEvents;
import com.smedialink.storage.domain.utils.p030rx.event.RxEvent;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.smedialink.ui.wallet.home.v2.WalletHomePresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C2145x5fff07b7 extends Lambda implements Function1<RxEvent, Unit> {
    final /* synthetic */ WalletHomePresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2145x5fff07b7(WalletHomePresenter walletHomePresenter) {
        super(1);
        this.this$0 = walletHomePresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(RxEvent rxEvent) {
        m1339invoke(rxEvent);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1339invoke(RxEvent it) {
        Intrinsics.checkNotNullExpressionValue(it, "it");
        RxEvent rxEvent = it;
        if (rxEvent instanceof AppRxEvents.UpdateWalletScreen) {
            ((WalletHomeView) this.this$0.getViewState()).loadBalances();
        } else if (rxEvent instanceof AppRxEvents.BinanceOpenAuthScreen) {
            ((WalletHomeView) this.this$0.getViewState()).onTabSelected(1);
        }
    }
}
