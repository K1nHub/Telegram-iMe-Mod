package com.iMe.p031ui.wallet.common;

import com.iMe.common.AppRxEvents;
import com.iMe.storage.domain.utils.p030rx.event.DomainRxEvents;
import com.iMe.storage.domain.utils.p030rx.event.RxEvent;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.C3242R;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.wallet.common.WalletRootPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C2073xb1f506fa extends Lambda implements Function1<RxEvent, Unit> {
    final /* synthetic */ WalletRootPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2073xb1f506fa(WalletRootPresenter walletRootPresenter) {
        super(1);
        this.this$0 = walletRootPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(RxEvent rxEvent) {
        m1376invoke(rxEvent);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1376invoke(RxEvent it) {
        Intrinsics.checkNotNullExpressionValue(it, "it");
        RxEvent rxEvent = it;
        if (rxEvent instanceof DomainRxEvents.SuccessCreateWallet ? true : rxEvent instanceof DomainRxEvents.SuccessRestoreWallet ? true : rxEvent instanceof DomainRxEvents.SuccessResetWallet ? true : rxEvent instanceof DomainRxEvents.SuccessSaveBackup) {
            this.this$0.setupNavigation();
            this.this$0.updateWalletConnectItemVisibility();
        } else if (rxEvent instanceof DomainRxEvents.NetworkUpdated) {
            this.this$0.updateWalletConnectItemVisibility();
        } else if (rxEvent instanceof AppRxEvents.BinanceOpenAuthScreen) {
            this.this$0.selectTab(C3242R.C3245id.wallet_root_bottom_navigation_home);
        }
    }
}
