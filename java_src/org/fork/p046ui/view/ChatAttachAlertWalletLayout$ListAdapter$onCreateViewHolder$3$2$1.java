package org.fork.p046ui.view;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* compiled from: ChatAttachAlertWalletLayout.kt */
/* renamed from: org.fork.ui.view.ChatAttachAlertWalletLayout$ListAdapter$onCreateViewHolder$3$2$1 */
/* loaded from: classes4.dex */
final class ChatAttachAlertWalletLayout$ListAdapter$onCreateViewHolder$3$2$1 extends Lambda implements Function0<Unit> {
    final /* synthetic */ ChatAttachAlertWalletLayout this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChatAttachAlertWalletLayout$ListAdapter$onCreateViewHolder$3$2$1(ChatAttachAlertWalletLayout chatAttachAlertWalletLayout) {
        super(0);
        this.this$0 = chatAttachAlertWalletLayout;
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() {
        invoke2();
        return Unit.INSTANCE;
    }

    @Override // kotlin.jvm.functions.Function0
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2() {
        this.this$0.getPresenter().getWalletData(true);
    }
}
