package com.smedialink.p031ui.wallet.settings;

import com.smedialink.storage.domain.utils.p030rx.event.DomainRxEvents;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.smedialink.ui.wallet.settings.WalletSettingsFragment$setupListeners$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C2241x3106d7dd extends Lambda implements Function1<DomainRxEvents.CryptoEvent, Unit> {
    final /* synthetic */ WalletSettingsFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2241x3106d7dd(WalletSettingsFragment walletSettingsFragment) {
        super(1);
        this.this$0 = walletSettingsFragment;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(DomainRxEvents.CryptoEvent cryptoEvent) {
        m1399invoke(cryptoEvent);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1399invoke(DomainRxEvents.CryptoEvent it) {
        WalletSettingsPresenter presenter;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        DomainRxEvents.CryptoEvent cryptoEvent = it;
        if (cryptoEvent instanceof DomainRxEvents.SuccessResetWallet ? true : Intrinsics.areEqual(cryptoEvent, DomainRxEvents.SuccessCreateWallet.INSTANCE) ? true : Intrinsics.areEqual(cryptoEvent, DomainRxEvents.SuccessRestoreWallet.INSTANCE)) {
            presenter = this.this$0.getPresenter();
            presenter.loadSettingsMenu();
        }
    }
}
