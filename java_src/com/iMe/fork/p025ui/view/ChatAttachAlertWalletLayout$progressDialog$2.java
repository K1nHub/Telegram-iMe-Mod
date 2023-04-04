package com.iMe.fork.p025ui.view;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.p048ui.ActionBar.AlertDialog;
import org.telegram.p048ui.Components.ChatAttachAlert;
/* compiled from: ChatAttachAlertWalletLayout.kt */
/* renamed from: com.iMe.fork.ui.view.ChatAttachAlertWalletLayout$progressDialog$2 */
/* loaded from: classes3.dex */
final class ChatAttachAlertWalletLayout$progressDialog$2 extends Lambda implements Function0<AlertDialog> {
    final /* synthetic */ ChatAttachAlert $alert;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChatAttachAlertWalletLayout$progressDialog$2(ChatAttachAlert chatAttachAlert) {
        super(0);
        this.$alert = chatAttachAlert;
    }

    @Override // kotlin.jvm.functions.Function0
    public final AlertDialog invoke() {
        AlertDialog alertDialog = new AlertDialog(this.$alert.getBaseFragment().getParentActivity(), 3);
        alertDialog.setCanCancel(false);
        return alertDialog;
    }
}
