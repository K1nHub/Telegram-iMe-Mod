package com.iMe.utils.dialogs;

import android.view.View;
import android.widget.TextView;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.p043ui.ActionBar.AlertDialog;
import org.telegram.p043ui.ActionBar.Theme;
/* compiled from: DialogExt.kt */
/* loaded from: classes4.dex */
public final class DialogExtKt {
    public static final void makeRedPositiveButton(AlertDialog alertDialog) {
        Intrinsics.checkNotNullParameter(alertDialog, "<this>");
        setButtonColor(alertDialog, -1, Theme.key_text_RedRegular);
    }

    public static final void setButtonColor(AlertDialog alertDialog, int i, int i2) {
        Intrinsics.checkNotNullParameter(alertDialog, "<this>");
        View button = alertDialog.getButton(i);
        TextView textView = button instanceof TextView ? (TextView) button : null;
        if (textView != null) {
            textView.setTextColor(Theme.getColor(i2));
        }
    }
}
