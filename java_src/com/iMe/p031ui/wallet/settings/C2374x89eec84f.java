package com.iMe.p031ui.wallet.settings;

import com.iMe.storage.domain.utils.p030rx.event.DomainRxEvents;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.wallet.settings.WalletSettingsPresenter$subscribeToRxEvents$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes4.dex */
public final class C2374x89eec84f extends Lambda implements Function1<DomainRxEvents.CryptoEvent, Unit> {
    final /* synthetic */ WalletSettingsPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2374x89eec84f(WalletSettingsPresenter walletSettingsPresenter) {
        super(1);
        this.this$0 = walletSettingsPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(DomainRxEvents.CryptoEvent cryptoEvent) {
        m1518invoke(cryptoEvent);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1518invoke(DomainRxEvents.CryptoEvent it) {
        Intrinsics.checkNotNullExpressionValue(it, "it");
        DomainRxEvents.CryptoEvent cryptoEvent = it;
        if (Intrinsics.areEqual(cryptoEvent, DomainRxEvents.AllWalletsReset.INSTANCE) ? true : Intrinsics.areEqual(cryptoEvent, DomainRxEvents.WalletReset.INSTANCE) ? true : Intrinsics.areEqual(cryptoEvent, DomainRxEvents.WalletCreated.INSTANCE) ? true : Intrinsics.areEqual(cryptoEvent, DomainRxEvents.WalletRestored.INSTANCE)) {
            this.this$0.renderSettingsMenu();
        }
    }
}
