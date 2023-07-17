package com.iMe.p031ui.wallet.crypto.settings;

import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.utils.p030rx.event.DomainRxEvents;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.wallet.crypto.settings.WalletAccountSettingsPresenter$subscribeToRxEvents$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes4.dex */
public final class C2172x57c2a9f4 extends Lambda implements Function1<DomainRxEvents.CryptoEvent, Unit> {
    final /* synthetic */ WalletAccountSettingsPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2172x57c2a9f4(WalletAccountSettingsPresenter walletAccountSettingsPresenter) {
        super(1);
        this.this$0 = walletAccountSettingsPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(DomainRxEvents.CryptoEvent cryptoEvent) {
        m1434invoke(cryptoEvent);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1434invoke(DomainRxEvents.CryptoEvent it) {
        CryptoAccessManager cryptoAccessManager;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        DomainRxEvents.CryptoEvent cryptoEvent = it;
        if (Intrinsics.areEqual(cryptoEvent, DomainRxEvents.AllWalletsReset.INSTANCE)) {
            cryptoAccessManager = this.this$0.cryptoAccessManager;
            if (cryptoAccessManager.getAllWallets().isEmpty()) {
                ((WalletAccountSettingsView) this.this$0.getViewState()).removeSelfFromStackImmediately();
            }
        } else if (Intrinsics.areEqual(cryptoEvent, DomainRxEvents.WalletReset.INSTANCE)) {
            this.this$0.renderSettingsItems();
        }
    }
}
