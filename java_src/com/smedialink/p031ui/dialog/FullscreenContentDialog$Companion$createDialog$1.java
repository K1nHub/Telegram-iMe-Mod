package com.smedialink.p031ui.dialog;

import android.view.View;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.fork.utils.Callbacks$Callback;
import org.telegram.p048ui.ActionBar.AlertDialog;
/* compiled from: FullscreenContentDialog.kt */
/* renamed from: com.smedialink.ui.dialog.FullscreenContentDialog$Companion$createDialog$1 */
/* loaded from: classes3.dex */
final class FullscreenContentDialog$Companion$createDialog$1 extends Lambda implements Function1<View, Unit> {
    final /* synthetic */ Callbacks$Callback $buttonActionListener;
    final /* synthetic */ AlertDialog $dialog;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FullscreenContentDialog$Companion$createDialog$1(AlertDialog alertDialog, Callbacks$Callback callbacks$Callback) {
        super(1);
        this.$dialog = alertDialog;
        this.$buttonActionListener = callbacks$Callback;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(View view) {
        invoke2(view);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(View it) {
        Intrinsics.checkNotNullParameter(it, "it");
        this.$dialog.dismiss();
        Callbacks$Callback callbacks$Callback = this.$buttonActionListener;
        if (callbacks$Callback == null) {
            return;
        }
        callbacks$Callback.invoke();
    }
}
