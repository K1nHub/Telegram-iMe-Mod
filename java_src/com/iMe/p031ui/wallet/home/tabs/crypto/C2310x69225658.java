package com.iMe.p031ui.wallet.home.tabs.crypto;

import com.iMe.storage.domain.utils.p030rx.event.DomainRxEvents;
import com.iMe.storage.domain.utils.p030rx.event.RxEvent;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes4.dex */
public final class C2310x69225658 extends Lambda implements Function1<RxEvent, Unit> {
    final /* synthetic */ WalletHomeCryptoPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2310x69225658(WalletHomeCryptoPresenter walletHomeCryptoPresenter) {
        super(1);
        this.this$0 = walletHomeCryptoPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(RxEvent rxEvent) {
        m1498invoke(rxEvent);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1498invoke(RxEvent it) {
        Intrinsics.checkNotNullExpressionValue(it, "it");
        RxEvent rxEvent = it;
        if (rxEvent instanceof DomainRxEvents.TokensSettingsChanged ? true : rxEvent instanceof DomainRxEvents.InterfaceSettingsChanged) {
            WalletHomeCryptoPresenter.loadScreenInfo$default(this.this$0, true, true, 0L, 4, null);
            return;
        }
        if (Intrinsics.areEqual(rxEvent, DomainRxEvents.AllWalletsReset.INSTANCE) ? true : Intrinsics.areEqual(rxEvent, DomainRxEvents.WalletReset.INSTANCE) ? true : Intrinsics.areEqual(rxEvent, DomainRxEvents.NetworkUpdated.INSTANCE)) {
            this.this$0.setLinkedWalletAddress(null);
            WalletHomeCryptoPresenter.loadScreenInfo$default(this.this$0, true, false, 0L, 6, null);
            return;
        }
        if (Intrinsics.areEqual(rxEvent, DomainRxEvents.WalletCreated.INSTANCE) ? true : Intrinsics.areEqual(rxEvent, DomainRxEvents.WalletRestored.INSTANCE) ? true : Intrinsics.areEqual(rxEvent, DomainRxEvents.SuccessSaveBackup.INSTANCE)) {
            WalletHomeCryptoPresenter.loadScreenInfo$default(this.this$0, true, false, 0L, 6, null);
        }
    }
}
