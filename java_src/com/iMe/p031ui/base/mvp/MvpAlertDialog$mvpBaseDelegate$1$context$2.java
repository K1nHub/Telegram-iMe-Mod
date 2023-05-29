package com.iMe.p031ui.base.mvp;

import android.content.Context;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MvpAlertDialog.kt */
/* renamed from: com.iMe.ui.base.mvp.MvpAlertDialog$mvpBaseDelegate$1$context$2 */
/* loaded from: classes.dex */
public final class MvpAlertDialog$mvpBaseDelegate$1$context$2 extends Lambda implements Function0<Context> {
    final /* synthetic */ MvpAlertDialog this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MvpAlertDialog$mvpBaseDelegate$1$context$2(MvpAlertDialog mvpAlertDialog) {
        super(0);
        this.this$0 = mvpAlertDialog;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final Context invoke() {
        Context context = this.this$0.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "this@MvpAlertDialog.context");
        return context;
    }
}
