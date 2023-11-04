package org.telegram.p043ui;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Build;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.exoplayer2.util.Consumer;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3634R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.browser.Browser;
import org.telegram.p043ui.ActionBar.AlertDialog;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Cells.CheckBoxCell;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.tgnet.TLRPC$User;
/* renamed from: org.telegram.ui.WebAppDisclaimerAlert */
/* loaded from: classes5.dex */
public class WebAppDisclaimerAlert {
    private AlertDialog alert;
    private CheckBoxCell cell;
    private TextView positiveButton;

    public static void show(final Context context, final Consumer<Boolean> consumer, TLRPC$User tLRPC$User) {
        final WebAppDisclaimerAlert webAppDisclaimerAlert = new WebAppDisclaimerAlert();
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setTitle(LocaleController.getString("TermsOfUse", C3634R.string.TermsOfUse));
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        TextView textView = new TextView(context);
        if (Build.VERSION.SDK_INT >= 21) {
            textView.setLetterSpacing(0.025f);
        }
        textView.setTextColor(Theme.getColor(Theme.key_dialogTextBlack));
        textView.setTextSize(1, 14.0f);
        linearLayout.addView(textView, LayoutHelper.createLinear(-1, -2, 0, 24, 0, 24, 0));
        CheckBoxCell checkBoxCell = new CheckBoxCell(context, 1, null);
        webAppDisclaimerAlert.cell = checkBoxCell;
        checkBoxCell.getTextView().getLayoutParams().width = -1;
        webAppDisclaimerAlert.cell.getTextView().setTextSize(1, 14.0f);
        linearLayout.addView(webAppDisclaimerAlert.cell, LayoutHelper.createLinear(-1, 48, 3, 8, 0, 8, 0));
        textView.setText(AndroidUtilities.replaceTags(LocaleController.getString("BotWebAppDisclaimerSubtitle", C3634R.string.BotWebAppDisclaimerSubtitle)));
        webAppDisclaimerAlert.cell.setText(AndroidUtilities.replaceSingleTag(LocaleController.getString("BotWebAppDisclaimerCheck", C3634R.string.BotWebAppDisclaimerCheck), new Runnable() { // from class: org.telegram.ui.WebAppDisclaimerAlert$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                WebAppDisclaimerAlert.lambda$show$0(context);
            }
        }), "", false, false);
        builder.setView(linearLayout);
        builder.setPositiveButton(LocaleController.getString("Continue", C3634R.string.Continue), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.WebAppDisclaimerAlert$$ExternalSyntheticLambda0
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                WebAppDisclaimerAlert.lambda$show$1(Consumer.this, dialogInterface, i);
            }
        });
        builder.setNegativeButton(LocaleController.getString("Cancel", C3634R.string.Cancel), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.WebAppDisclaimerAlert$$ExternalSyntheticLambda1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        });
        AlertDialog create = builder.create();
        webAppDisclaimerAlert.alert = create;
        create.show();
        TextView textView2 = (TextView) webAppDisclaimerAlert.alert.getButton(-1);
        webAppDisclaimerAlert.positiveButton = textView2;
        textView2.setEnabled(false);
        webAppDisclaimerAlert.positiveButton.setAlpha(0.5f);
        webAppDisclaimerAlert.cell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.WebAppDisclaimerAlert$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                WebAppDisclaimerAlert.lambda$show$3(WebAppDisclaimerAlert.this, view);
            }
        });
        webAppDisclaimerAlert.cell.setBackground(Theme.createSelectorDrawable(Theme.getColor(Theme.key_listSelector), 7));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$show$0(Context context) {
        Browser.openUrl(context, LocaleController.getString("WebAppDisclaimerUrl", C3634R.string.WebAppDisclaimerUrl));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$show$1(Consumer consumer, DialogInterface dialogInterface, int i) {
        consumer.accept(Boolean.TRUE);
        dialogInterface.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$show$3(WebAppDisclaimerAlert webAppDisclaimerAlert, View view) {
        CheckBoxCell checkBoxCell = webAppDisclaimerAlert.cell;
        checkBoxCell.setChecked(!checkBoxCell.isChecked(), true);
        webAppDisclaimerAlert.positiveButton.setEnabled(webAppDisclaimerAlert.cell.isChecked());
        webAppDisclaimerAlert.positiveButton.animate().alpha(webAppDisclaimerAlert.cell.isChecked() ? 1.0f : 0.5f).start();
    }
}
