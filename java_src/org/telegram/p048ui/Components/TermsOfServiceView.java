package org.telegram.p048ui.Components;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Build;
import android.text.SpannableStringBuilder;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import com.google.android.exoplayer2.source.rtsp.RtspHeaders;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3301R;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.p048ui.ActionBar.AlertDialog;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$TL_account_deleteAccount;
import org.telegram.tgnet.TLRPC$TL_boolTrue;
import org.telegram.tgnet.TLRPC$TL_error;
import org.telegram.tgnet.TLRPC$TL_help_acceptTermsOfService;
import org.telegram.tgnet.TLRPC$TL_help_termsOfService;
/* renamed from: org.telegram.ui.Components.TermsOfServiceView */
/* loaded from: classes6.dex */
public class TermsOfServiceView extends FrameLayout {
    private int currentAccount;
    private TLRPC$TL_help_termsOfService currentTos;
    private TermsOfServiceViewDelegate delegate;
    private ScrollView scrollView;
    private TextView textView;
    private TextView titleTextView;

    /* renamed from: org.telegram.ui.Components.TermsOfServiceView$TermsOfServiceViewDelegate */
    /* loaded from: classes6.dex */
    public interface TermsOfServiceViewDelegate {
        void onAcceptTerms(int i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$accept$7(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
    }

    public TermsOfServiceView(Context context) {
        super(context);
        setBackgroundColor(Theme.getColor("windowBackgroundWhite"));
        int i = Build.VERSION.SDK_INT >= 21 ? AndroidUtilities.statusBarHeight : 0;
        if (i > 0) {
            View view = new View(context);
            view.setBackgroundColor(-16777216);
            addView(view, new FrameLayout.LayoutParams(-1, i));
        }
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        ImageView imageView = new ImageView(context);
        imageView.setImageResource(C3301R.C3303drawable.logo_middle);
        linearLayout.addView(imageView, LayoutHelper.createLinear(-2, -2, 3, 0, 28, 0, 0));
        TextView textView = new TextView(context);
        this.titleTextView = textView;
        textView.setTextColor(Theme.getColor("windowBackgroundWhiteBlackText"));
        this.titleTextView.setTextSize(1, 17.0f);
        this.titleTextView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.titleTextView.setText(LocaleController.getString("PrivacyPolicyAndTerms", C3301R.string.PrivacyPolicyAndTerms));
        linearLayout.addView(this.titleTextView, LayoutHelper.createLinear(-2, -2, 3, 0, 20, 0, 0));
        TextView textView2 = new TextView(context);
        this.textView = textView2;
        textView2.setTextColor(Theme.getColor("windowBackgroundWhiteBlackText"));
        this.textView.setLinkTextColor(Theme.getColor("windowBackgroundWhiteLinkText"));
        this.textView.setTextSize(1, 15.0f);
        this.textView.setMovementMethod(new AndroidUtilities.LinkMovementMethodMy());
        this.textView.setGravity(51);
        this.textView.setLineSpacing(AndroidUtilities.m50dp(2), 1.0f);
        linearLayout.addView(this.textView, LayoutHelper.createLinear(-1, -2, 3, 0, 15, 0, 15));
        ScrollView scrollView = new ScrollView(context);
        this.scrollView = scrollView;
        scrollView.setVerticalScrollBarEnabled(false);
        this.scrollView.setOverScrollMode(2);
        this.scrollView.setPadding(AndroidUtilities.m51dp(24.0f), i, AndroidUtilities.m51dp(24.0f), AndroidUtilities.m51dp(75.0f));
        this.scrollView.addView(linearLayout, new FrameLayout.LayoutParams(-1, -2));
        addView(this.scrollView, LayoutHelper.createLinear(-1, -2));
        TextView textView3 = new TextView(context);
        textView3.setText(LocaleController.getString("Decline", C3301R.string.Decline).toUpperCase());
        textView3.setGravity(17);
        textView3.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        textView3.setTextColor(Theme.getColor("windowBackgroundWhiteGrayText"));
        textView3.setTextSize(1, 14.0f);
        textView3.setBackground(Theme.getRoundRectSelectorDrawable(Theme.getColor("windowBackgroundWhiteGrayText")));
        textView3.setPadding(AndroidUtilities.m50dp(20), AndroidUtilities.m50dp(10), AndroidUtilities.m50dp(20), AndroidUtilities.m50dp(10));
        addView(textView3, LayoutHelper.createFrame(-2, -2, 83, 16, 0, 16, 16));
        textView3.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.TermsOfServiceView$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                TermsOfServiceView.this.lambda$new$4(view2);
            }
        });
        TextView textView4 = new TextView(context);
        textView4.setText(LocaleController.getString(RtspHeaders.ACCEPT, C3301R.string.Accept));
        textView4.setGravity(17);
        textView4.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        textView4.setTextColor(-1);
        textView4.setTextSize(1, 14.0f);
        textView4.setBackgroundDrawable(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.m50dp(4), -11491093, -12346402));
        textView4.setPadding(AndroidUtilities.m50dp(34), 0, AndroidUtilities.m50dp(34), 0);
        addView(textView4, LayoutHelper.createFrame(-2, 42, 85, 16, 0, 16, 16));
        textView4.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.TermsOfServiceView$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                TermsOfServiceView.this.lambda$new$6(view2);
            }
        });
        View view2 = new View(context);
        view2.setBackgroundColor(Theme.getColor("divider"));
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, 1);
        layoutParams.bottomMargin = AndroidUtilities.m51dp(75.0f);
        layoutParams.gravity = 80;
        addView(view2, layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$4(View view) {
        AlertDialog.Builder builder = new AlertDialog.Builder(view.getContext());
        builder.setTitle(LocaleController.getString("TermsOfService", C3301R.string.TermsOfService));
        builder.setPositiveButton(LocaleController.getString("DeclineDeactivate", C3301R.string.DeclineDeactivate), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.TermsOfServiceView$$ExternalSyntheticLambda2
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                TermsOfServiceView.this.lambda$new$3(dialogInterface, i);
            }
        });
        builder.setNegativeButton(LocaleController.getString("Back", C3301R.string.Back), null);
        builder.setMessage(LocaleController.getString("TosUpdateDecline", C3301R.string.TosUpdateDecline));
        builder.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$3(DialogInterface dialogInterface, int i) {
        AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
        builder.setMessage(LocaleController.getString("TosDeclineDeleteAccount", C3301R.string.TosDeclineDeleteAccount));
        builder.setTitle(LocaleController.getString("AppName", C3301R.string.AppName));
        builder.setPositiveButton(LocaleController.getString("Deactivate", C3301R.string.Deactivate), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.TermsOfServiceView$$ExternalSyntheticLambda0
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface2, int i2) {
                TermsOfServiceView.this.lambda$new$2(dialogInterface2, i2);
            }
        });
        builder.setNegativeButton(LocaleController.getString("Cancel", C3301R.string.Cancel), null);
        builder.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(DialogInterface dialogInterface, int i) {
        final AlertDialog alertDialog = new AlertDialog(getContext(), 3);
        alertDialog.setCanCancel(false);
        TLRPC$TL_account_deleteAccount tLRPC$TL_account_deleteAccount = new TLRPC$TL_account_deleteAccount();
        tLRPC$TL_account_deleteAccount.reason = "Decline ToS update";
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tLRPC$TL_account_deleteAccount, new RequestDelegate() { // from class: org.telegram.ui.Components.TermsOfServiceView$$ExternalSyntheticLambda6
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                TermsOfServiceView.this.lambda$new$1(alertDialog, tLObject, tLRPC$TL_error);
            }
        });
        alertDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(final AlertDialog alertDialog, final TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.TermsOfServiceView$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                TermsOfServiceView.this.lambda$new$0(alertDialog, tLObject, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(AlertDialog alertDialog, TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        try {
            alertDialog.dismiss();
        } catch (Exception e) {
            FileLog.m45e(e);
        }
        if (tLObject instanceof TLRPC$TL_boolTrue) {
            MessagesController.getInstance(this.currentAccount).performLogout(0);
        } else if (tLRPC$TL_error == null || tLRPC$TL_error.code != -1000) {
            String string = LocaleController.getString("ErrorOccurred", C3301R.string.ErrorOccurred);
            if (tLRPC$TL_error != null) {
                string = string + "\n" + tLRPC$TL_error.text;
            }
            AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
            builder.setTitle(LocaleController.getString("AppName", C3301R.string.AppName));
            builder.setMessage(string);
            builder.setPositiveButton(LocaleController.getString("OK", C3301R.string.OK), null);
            builder.show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$6(View view) {
        if (this.currentTos.min_age_confirm != 0) {
            AlertDialog.Builder builder = new AlertDialog.Builder(view.getContext());
            builder.setTitle(LocaleController.getString("TosAgeTitle", C3301R.string.TosAgeTitle));
            builder.setPositiveButton(LocaleController.getString("Agree", C3301R.string.Agree), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.TermsOfServiceView$$ExternalSyntheticLambda1
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    TermsOfServiceView.this.lambda$new$5(dialogInterface, i);
                }
            });
            builder.setNegativeButton(LocaleController.getString("Cancel", C3301R.string.Cancel), null);
            builder.setMessage(LocaleController.formatString("TosAgeText", C3301R.string.TosAgeText, LocaleController.formatPluralString("Years", this.currentTos.min_age_confirm, new Object[0])));
            builder.show();
            return;
        }
        accept();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$5(DialogInterface dialogInterface, int i) {
        accept();
    }

    private void accept() {
        this.delegate.onAcceptTerms(this.currentAccount);
        TLRPC$TL_help_acceptTermsOfService tLRPC$TL_help_acceptTermsOfService = new TLRPC$TL_help_acceptTermsOfService();
        tLRPC$TL_help_acceptTermsOfService.f1556id = this.currentTos.f1558id;
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tLRPC$TL_help_acceptTermsOfService, TermsOfServiceView$$ExternalSyntheticLambda7.INSTANCE);
    }

    public void show(int i, TLRPC$TL_help_termsOfService tLRPC$TL_help_termsOfService) {
        if (getVisibility() != 0) {
            setVisibility(0);
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(tLRPC$TL_help_termsOfService.text);
        MessageObject.addEntitiesToText(spannableStringBuilder, tLRPC$TL_help_termsOfService.entities, false, false, false, false);
        addBulletsToText(spannableStringBuilder, '-', AndroidUtilities.m51dp(10.0f), -11491093, AndroidUtilities.m51dp(4.0f));
        this.textView.setText(spannableStringBuilder);
        this.currentTos = tLRPC$TL_help_termsOfService;
        this.currentAccount = i;
    }

    public void setDelegate(TermsOfServiceViewDelegate termsOfServiceViewDelegate) {
        this.delegate = termsOfServiceViewDelegate;
    }

    private static void addBulletsToText(SpannableStringBuilder spannableStringBuilder, char c, int i, int i2, int i3) {
        int length = spannableStringBuilder.length() - 2;
        for (int i4 = 0; i4 < length; i4++) {
            if (spannableStringBuilder.charAt(i4) == '\n') {
                int i5 = i4 + 1;
                if (spannableStringBuilder.charAt(i5) == c) {
                    int i6 = i4 + 2;
                    if (spannableStringBuilder.charAt(i6) == ' ') {
                        BulletSpan bulletSpan = new BulletSpan(i, i2, i3);
                        spannableStringBuilder.replace(i5, i4 + 3, "\u0000\u0000");
                        spannableStringBuilder.setSpan(bulletSpan, i5, i6, 33);
                    }
                }
            }
        }
    }
}
