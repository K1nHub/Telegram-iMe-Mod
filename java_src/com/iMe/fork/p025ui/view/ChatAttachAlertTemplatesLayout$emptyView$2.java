package com.iMe.fork.p025ui.view;

import android.widget.LinearLayout;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ChatAttachAlertTemplatesLayout.kt */
/* renamed from: com.iMe.fork.ui.view.ChatAttachAlertTemplatesLayout$emptyView$2 */
/* loaded from: classes3.dex */
public final class ChatAttachAlertTemplatesLayout$emptyView$2 extends Lambda implements Function0<LinearLayout> {
    final /* synthetic */ ChatAttachAlertTemplatesLayout this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChatAttachAlertTemplatesLayout$emptyView$2(ChatAttachAlertTemplatesLayout chatAttachAlertTemplatesLayout) {
        super(0);
        this.this$0 = chatAttachAlertTemplatesLayout;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final LinearLayout invoke() {
        LinearLayout initEmptyView;
        initEmptyView = this.this$0.initEmptyView();
        return initEmptyView;
    }
}
