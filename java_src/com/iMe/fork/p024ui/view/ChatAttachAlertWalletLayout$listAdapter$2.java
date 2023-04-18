package com.iMe.fork.p024ui.view;

import android.content.Context;
import com.iMe.fork.p024ui.view.ChatAttachAlertWalletLayout;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: ChatAttachAlertWalletLayout.kt */
/* renamed from: com.iMe.fork.ui.view.ChatAttachAlertWalletLayout$listAdapter$2 */
/* loaded from: classes3.dex */
final class ChatAttachAlertWalletLayout$listAdapter$2 extends Lambda implements Function0<ChatAttachAlertWalletLayout.ListAdapter> {
    final /* synthetic */ ChatAttachAlertWalletLayout this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChatAttachAlertWalletLayout$listAdapter$2(ChatAttachAlertWalletLayout chatAttachAlertWalletLayout) {
        super(0);
        this.this$0 = chatAttachAlertWalletLayout;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final ChatAttachAlertWalletLayout.ListAdapter invoke() {
        ChatAttachAlertWalletLayout chatAttachAlertWalletLayout = this.this$0;
        Context context = chatAttachAlertWalletLayout.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "context");
        return new ChatAttachAlertWalletLayout.ListAdapter(chatAttachAlertWalletLayout, context);
    }
}
