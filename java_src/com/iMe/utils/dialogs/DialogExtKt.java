package com.iMe.utils.dialogs;

import android.content.DialogInterface;
import android.view.View;
import android.widget.TextView;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.utils.extentions.common.ViewExtKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.p044ui.ActionBar.AlertDialog;
import org.telegram.p044ui.ActionBar.Theme;
/* compiled from: DialogExt.kt */
/* loaded from: classes4.dex */
public final class DialogExtKt {
    public static /* synthetic */ void makeClickableDescription$default(AlertDialog alertDialog, TextView textView, String str, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            textView = null;
        }
        makeClickableDescription(alertDialog, textView, str, function1);
    }

    public static final void makeClickableDescription(final AlertDialog alertDialog, final TextView textView, final String clickableText, final Function1<? super DialogInterface, Unit> action) {
        Intrinsics.checkNotNullParameter(alertDialog, "<this>");
        Intrinsics.checkNotNullParameter(clickableText, "clickableText");
        Intrinsics.checkNotNullParameter(action, "action");
        alertDialog.setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.iMe.utils.dialogs.DialogExtKt$$ExternalSyntheticLambda0
            @Override // android.content.DialogInterface.OnShowListener
            public final void onShow(DialogInterface dialogInterface) {
                DialogExtKt.makeClickableDescription$lambda$1(textView, alertDialog, clickableText, action, dialogInterface);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void makeClickableDescription$lambda$1(TextView textView, AlertDialog this_makeClickableDescription, String clickableText, final Function1 action, final DialogInterface dialogInterface) {
        Intrinsics.checkNotNullParameter(this_makeClickableDescription, "$this_makeClickableDescription");
        Intrinsics.checkNotNullParameter(clickableText, "$clickableText");
        Intrinsics.checkNotNullParameter(action, "$action");
        if (textView == null) {
            textView = this_makeClickableDescription.getMessageTextView();
        }
        if (textView != null) {
            ViewExtKt.setSubstringClickListener(textView, clickableText, new Callbacks$Callback() { // from class: com.iMe.utils.dialogs.DialogExtKt$$ExternalSyntheticLambda1
                @Override // com.iMe.fork.utils.Callbacks$Callback
                public final void invoke() {
                    DialogExtKt.makeClickableDescription$lambda$1$lambda$0(Function1.this, dialogInterface);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void makeClickableDescription$lambda$1$lambda$0(Function1 action, DialogInterface dialogInterface) {
        Intrinsics.checkNotNullParameter(action, "$action");
        Intrinsics.checkNotNullExpressionValue(dialogInterface, "dialogInterface");
        action.invoke(dialogInterface);
    }

    public static final void makeRedPositiveButton(AlertDialog alertDialog) {
        Intrinsics.checkNotNullParameter(alertDialog, "<this>");
        setButtonColor(alertDialog, -1, "dialogTextRed");
    }

    public static final void setButtonColor(AlertDialog alertDialog, int i, String colorKey) {
        Intrinsics.checkNotNullParameter(alertDialog, "<this>");
        Intrinsics.checkNotNullParameter(colorKey, "colorKey");
        View button = alertDialog.getButton(i);
        TextView textView = button instanceof TextView ? (TextView) button : null;
        if (textView != null) {
            textView.setTextColor(Theme.getColor(colorKey));
        }
    }
}
