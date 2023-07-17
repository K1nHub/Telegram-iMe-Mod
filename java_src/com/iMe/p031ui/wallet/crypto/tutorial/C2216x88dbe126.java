package com.iMe.p031ui.wallet.crypto.tutorial;

import com.iMe.model.wallet.crypto.tutorial.TutorialType;
import com.iMe.storage.domain.utils.p030rx.event.DomainRxEvents;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.wallet.crypto.tutorial.CreateWalletTutorialFragment$setupListeners$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes4.dex */
public final class C2216x88dbe126 extends Lambda implements Function1<DomainRxEvents.BackupFlowStarted, Unit> {
    final /* synthetic */ CreateWalletTutorialFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2216x88dbe126(CreateWalletTutorialFragment createWalletTutorialFragment) {
        super(1);
        this.this$0 = createWalletTutorialFragment;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(DomainRxEvents.BackupFlowStarted backupFlowStarted) {
        m1453invoke(backupFlowStarted);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1453invoke(DomainRxEvents.BackupFlowStarted it) {
        TutorialType tutorialType;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        tutorialType = this.this$0.tutorialType;
        if (tutorialType instanceof TutorialType.WalletIntro) {
            return;
        }
        this.this$0.removeSelfFromStack();
    }
}
