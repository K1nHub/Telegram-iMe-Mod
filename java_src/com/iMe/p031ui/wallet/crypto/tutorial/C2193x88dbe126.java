package com.iMe.p031ui.wallet.crypto.tutorial;

import com.iMe.model.wallet.crypto.tutorial.TutorialType;
import com.iMe.storage.domain.utils.p030rx.event.DomainRxEvents;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.wallet.crypto.tutorial.CreateWalletTutorialFragment$setupListeners$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C2193x88dbe126 extends Lambda implements Function1<DomainRxEvents.CryptoEvent, Unit> {
    final /* synthetic */ CreateWalletTutorialFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2193x88dbe126(CreateWalletTutorialFragment createWalletTutorialFragment) {
        super(1);
        this.this$0 = createWalletTutorialFragment;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(DomainRxEvents.CryptoEvent cryptoEvent) {
        m1427invoke(cryptoEvent);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1427invoke(DomainRxEvents.CryptoEvent it) {
        TutorialType tutorialType;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        DomainRxEvents.CryptoEvent cryptoEvent = it;
        if (cryptoEvent instanceof DomainRxEvents.SuccessCreateWallet ? true : cryptoEvent instanceof DomainRxEvents.SuccessRestoreWallet) {
            this.this$0.removeSelfFromStack();
        } else if (cryptoEvent instanceof DomainRxEvents.BackupFlowStarted) {
            tutorialType = this.this$0.tutorialType;
            if (tutorialType instanceof TutorialType.Backup) {
                return;
            }
            this.this$0.removeSelfFromStack();
        }
    }
}
