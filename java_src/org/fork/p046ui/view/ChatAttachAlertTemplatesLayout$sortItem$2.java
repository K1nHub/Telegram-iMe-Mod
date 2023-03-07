package org.fork.p046ui.view;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.p048ui.ActionBar.ActionBarMenuItem;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ChatAttachAlertTemplatesLayout.kt */
/* renamed from: org.fork.ui.view.ChatAttachAlertTemplatesLayout$sortItem$2 */
/* loaded from: classes4.dex */
public final class ChatAttachAlertTemplatesLayout$sortItem$2 extends Lambda implements Function0<ActionBarMenuItem> {
    final /* synthetic */ ChatAttachAlertTemplatesLayout this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChatAttachAlertTemplatesLayout$sortItem$2(ChatAttachAlertTemplatesLayout chatAttachAlertTemplatesLayout) {
        super(0);
        this.this$0 = chatAttachAlertTemplatesLayout;
    }

    @Override // kotlin.jvm.functions.Function0
    public final ActionBarMenuItem invoke() {
        ActionBarMenuItem initSortItem;
        initSortItem = this.this$0.initSortItem();
        return initSortItem;
    }
}
