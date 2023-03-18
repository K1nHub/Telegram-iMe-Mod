package com.smedialink.p031ui.wallet.home.p032v2.tabs.binancepay.history;

import com.smedialink.common.AppRxEvents;
import com.smedialink.storage.domain.utils.p030rx.event.DomainRxEvents;
import com.smedialink.storage.domain.utils.p030rx.event.RxEvent;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.smedialink.ui.wallet.home.v2.tabs.binancepay.history.WalletBinancePayHistoryPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C2176xab042a08 extends Lambda implements Function1<RxEvent, Unit> {
    final /* synthetic */ WalletBinancePayHistoryPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2176xab042a08(WalletBinancePayHistoryPresenter walletBinancePayHistoryPresenter) {
        super(1);
        this.this$0 = walletBinancePayHistoryPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(RxEvent rxEvent) {
        m1354invoke(rxEvent);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1354invoke(RxEvent it) {
        Intrinsics.checkNotNullExpressionValue(it, "it");
        RxEvent rxEvent = it;
        if (rxEvent instanceof AppRxEvents.UpdateWalletScreen ? true : rxEvent instanceof DomainRxEvents.SuccessResetWallet ? true : rxEvent instanceof DomainRxEvents.SuccessCreateWallet ? true : rxEvent instanceof DomainRxEvents.SuccessRestoreWallet) {
            WalletBinancePayHistoryPresenter.loadTransactions$default(this.this$0, true, null, 2, null);
        }
    }
}
