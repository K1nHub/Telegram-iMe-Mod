package com.iMe.p032ui.wallet.home.p033v2.tabs.binancepay.history;

import com.iMe.common.AppRxEvents;
import com.iMe.storage.domain.utils.p031rx.event.DomainRxEvents;
import com.iMe.storage.domain.utils.p031rx.event.RxEvent;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.wallet.home.v2.tabs.binancepay.history.WalletBinancePayHistoryPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C2248xab042a08 extends Lambda implements Function1<RxEvent, Unit> {
    final /* synthetic */ WalletBinancePayHistoryPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2248xab042a08(WalletBinancePayHistoryPresenter walletBinancePayHistoryPresenter) {
        super(1);
        this.this$0 = walletBinancePayHistoryPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(RxEvent rxEvent) {
        m1465invoke(rxEvent);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1465invoke(RxEvent it) {
        Intrinsics.checkNotNullExpressionValue(it, "it");
        RxEvent rxEvent = it;
        if (rxEvent instanceof AppRxEvents.UpdateWalletScreen ? true : rxEvent instanceof DomainRxEvents.SuccessResetWallet ? true : rxEvent instanceof DomainRxEvents.SuccessCreateWallet ? true : rxEvent instanceof DomainRxEvents.SuccessRestoreWallet) {
            WalletBinancePayHistoryPresenter.loadTransactions$default(this.this$0, true, null, 2, null);
        }
    }
}
