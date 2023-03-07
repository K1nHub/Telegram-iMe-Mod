package org.fork.p046ui.view;

import android.content.Context;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.fork.p046ui.view.ChatAttachAlertWalletLayout;
/* compiled from: ChatAttachAlertWalletLayout.kt */
/* renamed from: org.fork.ui.view.ChatAttachAlertWalletLayout$listAdapter$2 */
/* loaded from: classes4.dex */
final class ChatAttachAlertWalletLayout$listAdapter$2 extends Lambda implements Function0<ChatAttachAlertWalletLayout.ListAdapter> {
    final /* synthetic */ ChatAttachAlertWalletLayout this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChatAttachAlertWalletLayout$listAdapter$2(ChatAttachAlertWalletLayout chatAttachAlertWalletLayout) {
        super(0);
        this.this$0 = chatAttachAlertWalletLayout;
    }

    @Override // kotlin.jvm.functions.Function0
    public final ChatAttachAlertWalletLayout.ListAdapter invoke() {
        ChatAttachAlertWalletLayout chatAttachAlertWalletLayout = this.this$0;
        Context context = chatAttachAlertWalletLayout.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "context");
        return new ChatAttachAlertWalletLayout.ListAdapter(chatAttachAlertWalletLayout, context);
    }
}
