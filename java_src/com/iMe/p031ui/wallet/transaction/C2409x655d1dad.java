package com.iMe.p031ui.wallet.transaction;

import com.iMe.common.AppRxEvents;
import com.iMe.storage.domain.utils.p030rx.event.DomainRxEvents;
import com.iMe.storage.domain.utils.p030rx.event.RxEvent;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.wallet.transaction.WalletTransactionsPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes4.dex */
public final class C2409x655d1dad extends Lambda implements Function1<RxEvent, Unit> {
    final /* synthetic */ WalletTransactionsPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2409x655d1dad(WalletTransactionsPresenter walletTransactionsPresenter) {
        super(1);
        this.this$0 = walletTransactionsPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(RxEvent rxEvent) {
        m1546invoke(rxEvent);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1546invoke(RxEvent it) {
        Intrinsics.checkNotNullExpressionValue(it, "it");
        RxEvent rxEvent = it;
        if (rxEvent instanceof AppRxEvents.UpdateWalletScreen ? true : rxEvent instanceof DomainRxEvents.SuccessResetWallet ? true : rxEvent instanceof DomainRxEvents.SuccessCreateWallet ? true : rxEvent instanceof DomainRxEvents.SuccessRestoreWallet ? true : rxEvent instanceof DomainRxEvents.RefreshTransactions) {
            WalletTransactionsPresenter.load$default(this.this$0, true, false, null, 6, null);
        } else if (rxEvent instanceof DomainRxEvents.StakingOperationsReload) {
            this.this$0.selectedNetworkType = ((DomainRxEvents.StakingOperationsReload) rxEvent).getNetworkType();
            WalletTransactionsPresenter.load$default(this.this$0, true, false, null, 6, null);
        }
    }
}