package com.smedialink.p031ui.base.mvp.base;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.p048ui.ActionBar.AlertDialog;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MvpBaseDelegate.kt */
/* renamed from: com.smedialink.ui.base.mvp.base.MvpBaseDelegate$progressDialog$2 */
/* loaded from: classes3.dex */
public final class MvpBaseDelegate$progressDialog$2 extends Lambda implements Function0<AlertDialog> {
    final /* synthetic */ MvpBaseDelegate<T> this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MvpBaseDelegate$progressDialog$2(MvpBaseDelegate<T> mvpBaseDelegate) {
        super(0);
        this.this$0 = mvpBaseDelegate;
    }

    @Override // kotlin.jvm.functions.Function0
    public final AlertDialog invoke() {
        AlertDialog alertDialog = new AlertDialog(this.this$0.getContext(), 3);
        alertDialog.setCanCancel(false);
        return alertDialog;
    }
}
