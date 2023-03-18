package org.telegram.p048ui.Cells;

import android.content.Context;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import org.telegram.PhoneFormat.C3204PhoneFormat;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3286R;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.UserConfig;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.Components.LayoutHelper;
import org.telegram.p048ui.Components.URLSpanNoUnderline;
import org.telegram.tgnet.TLRPC$User;
/* renamed from: org.telegram.ui.Cells.SettingsSuggestionCell */
/* loaded from: classes5.dex */
public class SettingsSuggestionCell extends LinearLayout {
    private int currentAccount;
    private int currentType;
    private TextView detailTextView;
    private TextView noButton;
    private Theme.ResourcesProvider resourcesProvider;
    private TextView textView;
    private TextView yesButton;

    protected void onNoClick(int i) {
    }

    protected void onYesClick(int i) {
    }

    public SettingsSuggestionCell(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.currentAccount = UserConfig.selectedAccount;
        this.resourcesProvider = resourcesProvider;
        setOrientation(1);
        TextView textView = new TextView(context);
        this.textView = textView;
        textView.setTextSize(1, 15.0f);
        this.textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.textView.setEllipsize(TextUtils.TruncateAt.END);
        this.textView.setGravity((LocaleController.isRTL ? 5 : 3) | 16);
        this.textView.setTextColor(Theme.getColor("windowBackgroundWhiteBlueHeader", resourcesProvider));
        addView(this.textView, LayoutHelper.createLinear(-1, -2, (LocaleController.isRTL ? 5 : 3) | 48, 21, 15, 21, 0));
        TextView textView2 = new TextView(context);
        this.detailTextView = textView2;
        textView2.setTextColor(Theme.getColor("windowBackgroundWhiteGrayText2", resourcesProvider));
        this.detailTextView.setTextSize(1, 13.0f);
        this.detailTextView.setLinkTextColor(Theme.getColor("windowBackgroundWhiteLinkText", resourcesProvider));
        this.detailTextView.setHighlightColor(Theme.getColor("windowBackgroundWhiteLinkSelection", resourcesProvider));
        this.detailTextView.setMovementMethod(new AndroidUtilities.LinkMovementMethodMy());
        this.detailTextView.setGravity(LocaleController.isRTL ? 5 : 3);
        addView(this.detailTextView, LayoutHelper.createLinear(-2, -2, LocaleController.isRTL ? 5 : 3, 21, 8, 21, 0));
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(0);
        addView(linearLayout, LayoutHelper.createLinear(-1, 40, 21, 17, 21, 20));
        int i = 0;
        while (i < 2) {
            TextView textView3 = new TextView(context);
            textView3.setBackground(Theme.AdaptiveRipple.filledRect("featuredStickers_addButton", 4.0f));
            textView3.setLines(1);
            textView3.setSingleLine(true);
            textView3.setGravity(1);
            textView3.setEllipsize(TextUtils.TruncateAt.END);
            textView3.setGravity(17);
            textView3.setTextColor(Theme.getColor("featuredStickers_buttonText", resourcesProvider));
            textView3.setTextSize(1, 14.0f);
            textView3.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            linearLayout.addView(textView3, LayoutHelper.createLinear(0, 40, 0.5f, i == 0 ? 0 : 4, 0, i == 0 ? 4 : 0, 0));
            if (i == 0) {
                this.yesButton = textView3;
                textView3.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Cells.SettingsSuggestionCell$$ExternalSyntheticLambda1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        SettingsSuggestionCell.this.lambda$new$0(view);
                    }
                });
            } else {
                this.noButton = textView3;
                textView3.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Cells.SettingsSuggestionCell$$ExternalSyntheticLambda0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        SettingsSuggestionCell.this.lambda$new$1(view);
                    }
                });
            }
            i++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view) {
        onYesClick(this.currentType);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(View view) {
        onNoClick(this.currentType);
    }

    public void setType(int i) {
        this.currentType = i;
        if (i != 0) {
            if (i == 1) {
                this.textView.setText(LocaleController.getString("YourPasswordHeader", C3286R.string.YourPasswordHeader));
                this.detailTextView.setText(LocaleController.getString("YourPasswordRemember", C3286R.string.YourPasswordRemember));
                this.yesButton.setText(LocaleController.getString("YourPasswordRememberYes", C3286R.string.YourPasswordRememberYes));
                this.noButton.setText(LocaleController.getString("YourPasswordRememberNo", C3286R.string.YourPasswordRememberNo));
                return;
            }
            return;
        }
        TLRPC$User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(UserConfig.getInstance(this.currentAccount).clientUserId));
        TextView textView = this.textView;
        int i2 = C3286R.string.CheckPhoneNumber;
        C3204PhoneFormat c3204PhoneFormat = C3204PhoneFormat.getInstance();
        textView.setText(LocaleController.formatString("CheckPhoneNumber", i2, c3204PhoneFormat.format("+" + user.phone)));
        String string = LocaleController.getString("CheckPhoneNumberInfo", C3286R.string.CheckPhoneNumberInfo);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(string);
        int indexOf = string.indexOf("**");
        int lastIndexOf = string.lastIndexOf("**");
        if (indexOf >= 0 && lastIndexOf >= 0 && indexOf != lastIndexOf) {
            spannableStringBuilder.replace(lastIndexOf, lastIndexOf + 2, (CharSequence) "");
            spannableStringBuilder.replace(indexOf, indexOf + 2, (CharSequence) "");
            try {
                spannableStringBuilder.setSpan(new URLSpanNoUnderline(LocaleController.getString("CheckPhoneNumberLearnMoreUrl", C3286R.string.CheckPhoneNumberLearnMoreUrl)), indexOf, lastIndexOf - 2, 33);
            } catch (Exception e) {
                FileLog.m45e(e);
            }
        }
        this.detailTextView.setText(spannableStringBuilder);
        this.yesButton.setText(LocaleController.getString("CheckPhoneNumberYes", C3286R.string.CheckPhoneNumberYes));
        this.noButton.setText(LocaleController.getString("CheckPhoneNumberNo", C3286R.string.CheckPhoneNumberNo));
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), i2);
    }
}
