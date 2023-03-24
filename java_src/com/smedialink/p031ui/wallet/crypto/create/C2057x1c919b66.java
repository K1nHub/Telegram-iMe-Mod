package com.smedialink.p031ui.wallet.crypto.create;

import com.smedialink.model.wallet.crypto.create.CreateWalletScreenType;
import com.smedialink.storage.domain.utils.p030rx.event.DomainRxEvents;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.smedialink.ui.wallet.crypto.create.CreateWalletFragment$setupEventListeners$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C2057x1c919b66 extends Lambda implements Function1<DomainRxEvents.CryptoEvent, Unit> {
    final /* synthetic */ CreateWalletFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2057x1c919b66(CreateWalletFragment createWalletFragment) {
        super(1);
        this.this$0 = createWalletFragment;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(DomainRxEvents.CryptoEvent cryptoEvent) {
        m1323invoke(cryptoEvent);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1323invoke(DomainRxEvents.CryptoEvent it) {
        Intrinsics.checkNotNullExpressionValue(it, "it");
        DomainRxEvents.CryptoEvent cryptoEvent = it;
        if (cryptoEvent instanceof DomainRxEvents.SuccessRecreateWalletByPassword ? true : cryptoEvent instanceof DomainRxEvents.SuccessResetWallet ? true : cryptoEvent instanceof DomainRxEvents.SuccessRestoreWallet) {
            if (((CreateWalletScreenType.Import) this.this$0.currentType).getPassword().length() == 0) {
                this.this$0.removeSelfFromStack();
            }
        }
    }
}
