package com.smedialink.utils.dialogs;

import android.widget.TextView;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.p048ui.ActionBar.AlertDialog;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DialogsFactory.kt */
/* loaded from: classes3.dex */
public final class DialogsFactoryKt$showErrorAlert$2 extends Lambda implements Function2<TextView, AlertDialog, Unit> {
    public static final DialogsFactoryKt$showErrorAlert$2 INSTANCE = new DialogsFactoryKt$showErrorAlert$2();

    DialogsFactoryKt$showErrorAlert$2() {
        super(2);
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(TextView textView, AlertDialog alertDialog) {
        Intrinsics.checkNotNullParameter(textView, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(alertDialog, "<anonymous parameter 1>");
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Unit invoke(TextView textView, AlertDialog alertDialog) {
        invoke2(textView, alertDialog);
        return Unit.INSTANCE;
    }
}
