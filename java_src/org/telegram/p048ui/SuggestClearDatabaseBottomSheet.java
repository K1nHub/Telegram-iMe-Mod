package org.telegram.p048ui;

import android.app.Activity;
import android.content.DialogInterface;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.core.graphics.ColorUtils;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3301R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.p048ui.ActionBar.AlertDialog;
import org.telegram.p048ui.ActionBar.BaseFragment;
import org.telegram.p048ui.ActionBar.BottomSheet;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.Components.LayoutHelper;
import org.telegram.p048ui.Components.StickerImageView;
/* renamed from: org.telegram.ui.SuggestClearDatabaseBottomSheet */
/* loaded from: classes5.dex */
public class SuggestClearDatabaseBottomSheet extends BottomSheet {
    private static SuggestClearDatabaseBottomSheet dialog;

    public static void show(BaseFragment baseFragment) {
        if (dialog == null) {
            SuggestClearDatabaseBottomSheet suggestClearDatabaseBottomSheet = new SuggestClearDatabaseBottomSheet(baseFragment);
            dialog = suggestClearDatabaseBottomSheet;
            suggestClearDatabaseBottomSheet.show();
        }
    }

    private SuggestClearDatabaseBottomSheet(final BaseFragment baseFragment) {
        super(baseFragment.getParentActivity(), false);
        Activity parentActivity = baseFragment.getParentActivity();
        LinearLayout linearLayout = new LinearLayout(parentActivity);
        linearLayout.setOrientation(1);
        StickerImageView stickerImageView = new StickerImageView(parentActivity, this.currentAccount);
        stickerImageView.setStickerNum(7);
        stickerImageView.getImageReceiver().setAutoRepeat(1);
        linearLayout.addView(stickerImageView, LayoutHelper.createLinear(144, 144, 1, 0, 16, 0, 0));
        TextView textView = new TextView(parentActivity);
        textView.setGravity(8388611);
        textView.setTextColor(Theme.getColor("dialogTextBlack"));
        textView.setTextSize(1, 20.0f);
        textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        textView.setText(LocaleController.getString("SuggestClearDatabaseTitle", C3301R.string.SuggestClearDatabaseTitle));
        linearLayout.addView(textView, LayoutHelper.createFrame(-1, -2, 0, 21, 30, 21, 0));
        TextView textView2 = new TextView(parentActivity);
        textView2.setGravity(8388611);
        textView2.setTextSize(1, 15.0f);
        textView2.setTextColor(Theme.getColor("dialogTextBlack"));
        textView2.setText(AndroidUtilities.replaceTags(LocaleController.formatString("SuggestClearDatabaseMessage", C3301R.string.SuggestClearDatabaseMessage, AndroidUtilities.formatFileSize(baseFragment.getMessagesStorage().getDatabaseSize()))));
        linearLayout.addView(textView2, LayoutHelper.createFrame(-1, -2, 0, 21, 15, 21, 16));
        TextView textView3 = new TextView(parentActivity);
        textView3.setPadding(AndroidUtilities.m50dp(34), 0, AndroidUtilities.m50dp(34), 0);
        textView3.setGravity(17);
        textView3.setTextSize(1, 14.0f);
        textView3.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        textView3.setText(LocaleController.getString("ClearLocalDatabase", C3301R.string.ClearLocalDatabase));
        textView3.setTextColor(Theme.getColor("featuredStickers_buttonText"));
        textView3.setBackgroundDrawable(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.m50dp(6), Theme.getColor("featuredStickers_addButton"), ColorUtils.setAlphaComponent(Theme.getColor("windowBackgroundWhite"), 120)));
        linearLayout.addView(textView3, LayoutHelper.createFrame(-1, 48, 0, 16, 15, 16, 16));
        textView3.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.SuggestClearDatabaseBottomSheet$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SuggestClearDatabaseBottomSheet.this.lambda$new$1(baseFragment, view);
            }
        });
        ScrollView scrollView = new ScrollView(parentActivity);
        scrollView.addView(linearLayout);
        setCustomView(scrollView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(final BaseFragment baseFragment, View view) {
        AlertDialog.Builder builder = new AlertDialog.Builder(baseFragment.getParentActivity());
        builder.setTitle(LocaleController.getString("LocalDatabaseClearTextTitle", C3301R.string.LocalDatabaseClearTextTitle));
        builder.setMessage(LocaleController.getString("LocalDatabaseClearText", C3301R.string.LocalDatabaseClearText));
        builder.setNegativeButton(LocaleController.getString("Cancel", C3301R.string.Cancel), null);
        builder.setPositiveButton(LocaleController.getString("CacheClear", C3301R.string.CacheClear), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.SuggestClearDatabaseBottomSheet$$ExternalSyntheticLambda0
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                SuggestClearDatabaseBottomSheet.this.lambda$new$0(baseFragment, dialogInterface, i);
            }
        });
        AlertDialog create = builder.create();
        baseFragment.showDialog(create);
        TextView textView = (TextView) create.getButton(-1);
        if (textView != null) {
            textView.setTextColor(Theme.getColor("dialogTextRed"));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(BaseFragment baseFragment, DialogInterface dialogInterface, int i) {
        if (baseFragment.getParentActivity() == null) {
            return;
        }
        MessagesController.getInstance(this.currentAccount).clearQueryTime();
        baseFragment.getMessagesStorage().clearLocalDatabase();
    }

    @Override // org.telegram.p048ui.ActionBar.BottomSheet, android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        dialog = null;
    }

    public static void dismissDialog() {
        SuggestClearDatabaseBottomSheet suggestClearDatabaseBottomSheet = dialog;
        if (suggestClearDatabaseBottomSheet != null) {
            suggestClearDatabaseBottomSheet.dismiss();
            dialog = null;
        }
    }
}
