package com.iMe.p031ui.wallet.home.p032v2.tabs.crypto;

import com.iMe.common.AppRxEvents;
import com.iMe.storage.domain.utils.p030rx.event.DomainRxEvents;
import com.iMe.storage.domain.utils.p030rx.event.RxEvent;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.wallet.home.v2.tabs.crypto.WalletHomeCryptoPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes4.dex */
public final class C2290x69225658 extends Lambda implements Function1<RxEvent, Unit> {
    final /* synthetic */ WalletHomeCryptoPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2290x69225658(WalletHomeCryptoPresenter walletHomeCryptoPresenter) {
        super(1);
        this.this$0 = walletHomeCryptoPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(RxEvent rxEvent) {
        m1480invoke(rxEvent);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1480invoke(RxEvent it) {
        Intrinsics.checkNotNullExpressionValue(it, "it");
        RxEvent rxEvent = it;
        if (rxEvent instanceof DomainRxEvents.TokensSettingsChanged ? true : rxEvent instanceof DomainRxEvents.InterfaceSettingsChanged) {
            WalletHomeCryptoPresenter.loadScreenInfo$default(this.this$0, false, 0L, 3, null);
            return;
        }
        if (rxEvent instanceof DomainRxEvents.SuccessResetWallet ? true : rxEvent instanceof DomainRxEvents.SuccessCreateWallet ? true : rxEvent instanceof DomainRxEvents.SuccessRestoreWallet ? true : rxEvent instanceof DomainRxEvents.NetworkUpdated) {
            WalletHomeCryptoPresenter.loadScreenInfo$default(this.this$0, true, 0L, 2, null);
        } else if (rxEvent instanceof AppRxEvents.HiddenBalanceSettingChanged) {
            ((WalletHomeCryptoView) this.this$0.getViewState()).notifyDataSetChanged();
        }
    }
}
