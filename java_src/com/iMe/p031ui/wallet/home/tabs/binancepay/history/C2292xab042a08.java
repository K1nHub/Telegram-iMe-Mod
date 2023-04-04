package com.iMe.p031ui.wallet.home.tabs.binancepay.history;

import com.iMe.common.AppRxEvents;
import com.iMe.storage.domain.utils.p030rx.event.DomainRxEvents;
import com.iMe.storage.domain.utils.p030rx.event.RxEvent;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.wallet.home.tabs.binancepay.history.WalletBinancePayHistoryPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes4.dex */
public final class C2292xab042a08 extends Lambda implements Function1<RxEvent, Unit> {
    final /* synthetic */ WalletBinancePayHistoryPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2292xab042a08(WalletBinancePayHistoryPresenter walletBinancePayHistoryPresenter) {
        super(1);
        this.this$0 = walletBinancePayHistoryPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(RxEvent rxEvent) {
        m1485invoke(rxEvent);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1485invoke(RxEvent it) {
        Intrinsics.checkNotNullExpressionValue(it, "it");
        RxEvent rxEvent = it;
        if (Intrinsics.areEqual(rxEvent, AppRxEvents.UpdateWalletScreen.INSTANCE) ? true : Intrinsics.areEqual(rxEvent, DomainRxEvents.WalletReset.INSTANCE) ? true : Intrinsics.areEqual(rxEvent, DomainRxEvents.WalletCreated.INSTANCE) ? true : Intrinsics.areEqual(rxEvent, DomainRxEvents.WalletRestored.INSTANCE)) {
            WalletBinancePayHistoryPresenter.loadTransactions$default(this.this$0, true, null, 2, null);
        }
    }
}