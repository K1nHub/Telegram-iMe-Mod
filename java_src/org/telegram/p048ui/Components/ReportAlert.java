package org.telegram.p048ui.Components;

import android.content.Context;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import com.iMe.p032ui.common.SimpleTextWatcher;
import com.iMe.utils.extentions.common.ViewExtKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3316R;
import org.telegram.messenger.LocaleController;
import org.telegram.p048ui.ActionBar.BottomSheet;
import org.telegram.p048ui.ActionBar.Theme;
/* renamed from: org.telegram.ui.Components.ReportAlert */
/* loaded from: classes6.dex */
public class ReportAlert extends BottomSheet {
    private BottomSheetCell clearButton;
    private EditTextBoldCursor editText;

    protected void onSend(int i, String str) {
        throw null;
    }

    public ReportAlert(Context context, int i) {
        this(context, i, false, null);
    }

    public void makeFocusable(boolean z) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.ReportAlert$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                ReportAlert.this.lambda$makeFocusable$1();
            }
        }, z ? 200L : 0L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$makeFocusable$1() {
        this.editText.setEnabled(true);
        this.editText.setClickable(true);
        setFocusable(true);
        this.editText.requestFocus();
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.ReportAlert$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                ReportAlert.this.lambda$makeFocusable$0();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$makeFocusable$0() {
        AndroidUtilities.showKeyboard(this.editText);
    }

    /* renamed from: org.telegram.ui.Components.ReportAlert$BottomSheetCell */
    /* loaded from: classes6.dex */
    public static class BottomSheetCell extends FrameLayout {
        private View background;
        private TextView textView;

        public View getBackgroundPublic() {
            return this.background;
        }

        public BottomSheetCell(Context context) {
            super(context);
            View view = new View(context);
            this.background = view;
            view.setBackground(Theme.AdaptiveRipple.filledRect("featuredStickers_addButton", 4.0f));
            addView(this.background, LayoutHelper.createFrame(-1, -1, 0, 16, 16, 16, 16));
            TextView textView = new TextView(context);
            this.textView = textView;
            textView.setLines(1);
            this.textView.setSingleLine(true);
            this.textView.setGravity(1);
            this.textView.setEllipsize(TextUtils.TruncateAt.END);
            this.textView.setGravity(17);
            this.textView.setTextColor(Theme.getColor("featuredStickers_buttonText"));
            this.textView.setTextSize(1, 14.0f);
            this.textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            addView(this.textView, LayoutHelper.createFrame(-2, -2, 17));
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(80), 1073741824));
        }

        public void setText(CharSequence charSequence) {
            this.textView.setText(charSequence);
        }
    }

    public ReportAlert(Context context, final int i, final boolean z, String str) {
        super(context, true);
        setApplyBottomPadding(false);
        setApplyTopPadding(false);
        ScrollView scrollView = new ScrollView(context);
        scrollView.setFillViewport(true);
        setCustomView(scrollView);
        FrameLayout frameLayout = new FrameLayout(context);
        scrollView.addView(frameLayout, LayoutHelper.createScroll(-1, -2, 51));
        RLottieImageView rLottieImageView = new RLottieImageView(context);
        if (z) {
            rLottieImageView.setAutoRepeat(true);
            rLottieImageView.setAnimation(C3316R.C3321raw.fork_template_name_input, 120, 120);
        } else {
            rLottieImageView.setAnimation(C3316R.C3321raw.report_police, 120, 120);
        }
        rLottieImageView.playAnimation();
        frameLayout.addView(rLottieImageView, LayoutHelper.createFrame(160, 160, 49, 17, 14, 17, 0));
        TextView textView = new TextView(context);
        textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        textView.setTextSize(1, 24.0f);
        textView.setTextColor(Theme.getColor("dialogTextBlack"));
        if (z) {
            if (str != null) {
                textView.setText(LocaleController.getString("EditName", C3316R.string.EditName));
            } else {
                textView.setText(LocaleController.getInternalString(C3316R.string.create_chat_template));
            }
        } else if (i == 0) {
            textView.setText(LocaleController.getString("ReportTitleSpam", C3316R.string.ReportTitleSpam));
        } else if (i == 6) {
            textView.setText(LocaleController.getString("ReportTitleFake", C3316R.string.ReportTitleFake));
        } else if (i == 1) {
            textView.setText(LocaleController.getString("ReportTitleViolence", C3316R.string.ReportTitleViolence));
        } else if (i == 2) {
            textView.setText(LocaleController.getString("ReportTitleChild", C3316R.string.ReportTitleChild));
        } else if (i == 5) {
            textView.setText(LocaleController.getString("ReportTitlePornography", C3316R.string.ReportTitlePornography));
        } else if (i == 100) {
            textView.setText(LocaleController.getString("ReportChat", C3316R.string.ReportChat));
        }
        frameLayout.addView(textView, LayoutHelper.createFrame(-2, -2, 49, 17, 197, 17, 0));
        TextView textView2 = new TextView(context);
        textView2.setTextSize(1, 14.0f);
        textView2.setTextColor(Theme.getColor("dialogTextGray3"));
        textView2.setGravity(1);
        if (z) {
            textView2.setText(LocaleController.getInternalString(C3316R.string.chat_template_name_info));
        } else {
            textView2.setText(LocaleController.getString("ReportInfo", C3316R.string.ReportInfo));
        }
        frameLayout.addView(textView2, LayoutHelper.createFrame(-2, -2, 49, 30, 235, 30, 44));
        EditTextBoldCursor editTextBoldCursor = new EditTextBoldCursor(context);
        this.editText = editTextBoldCursor;
        editTextBoldCursor.setTextSize(1, 18.0f);
        this.editText.setHintTextColor(Theme.getColor("windowBackgroundWhiteHintText"));
        this.editText.setTextColor(Theme.getColor("windowBackgroundWhiteBlackText"));
        this.editText.setBackgroundDrawable(null);
        this.editText.setLineColors(getThemedColor("windowBackgroundWhiteInputField"), getThemedColor("windowBackgroundWhiteInputFieldActivated"), getThemedColor("windowBackgroundWhiteRedText3"));
        this.editText.setMaxLines(1);
        this.editText.setLines(1);
        this.editText.setPadding(0, 0, 0, 0);
        this.editText.setSingleLine(true);
        this.editText.setGravity(LocaleController.isRTL ? 5 : 3);
        this.editText.setInputType(180225);
        this.editText.setImeOptions(6);
        if (z) {
            if (str != null) {
                this.editText.setText(str);
                this.editText.setSelection(str.length());
            }
            this.editText.addTextChangedListener(new C50621(this, rLottieImageView));
            this.editText.setHint(LocaleController.getInternalString(C3316R.string.chat_template_name_hint));
        } else {
            this.editText.setHint(LocaleController.getString("ReportHint", C3316R.string.ReportHint));
        }
        this.editText.setCursorColor(Theme.getColor("windowBackgroundWhiteBlackText"));
        this.editText.setCursorSize(AndroidUtilities.m50dp(20));
        this.editText.setCursorWidth(1.5f);
        this.editText.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: org.telegram.ui.Components.ReportAlert$$ExternalSyntheticLambda1
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView3, int i2, KeyEvent keyEvent) {
                boolean lambda$new$2;
                lambda$new$2 = ReportAlert.this.lambda$new$2(textView3, i2, keyEvent);
                return lambda$new$2;
            }
        });
        frameLayout.addView(this.editText, LayoutHelper.createFrame(-1, 36, 51, 17, 305, 17, 0));
        BottomSheetCell bottomSheetCell = new BottomSheetCell(context);
        this.clearButton = bottomSheetCell;
        bottomSheetCell.setBackground(null);
        if (z) {
            this.clearButton.setText(LocaleController.getString("Done", C3316R.string.Done));
        } else {
            this.clearButton.setText(LocaleController.getString("ReportSend", C3316R.string.ReportSend));
        }
        this.clearButton.background.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ReportAlert$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ReportAlert.this.lambda$new$3(z, i, view);
            }
        });
        frameLayout.addView(this.clearButton, LayoutHelper.createFrame(-1, 50, 51, 0, 357, 0, 0));
        this.smoothKeyboardAnimationEnabled = true;
    }

    /* renamed from: org.telegram.ui.Components.ReportAlert$1 */
    /* loaded from: classes6.dex */
    class C50621 extends SimpleTextWatcher {
        private Runnable playAnimationRunnable;
        final /* synthetic */ RLottieImageView val$imageView;

        C50621(ReportAlert reportAlert, final RLottieImageView rLottieImageView) {
            this.val$imageView = rLottieImageView;
            this.playAnimationRunnable = new Runnable() { // from class: org.telegram.ui.Components.ReportAlert$1$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    RLottieImageView.this.playAnimation();
                }
            };
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            if (i3 > i2) {
                this.val$imageView.stopAnimation();
                AndroidUtilities.cancelRunOnUIThread(this.playAnimationRunnable);
                AndroidUtilities.runOnUIThread(this.playAnimationRunnable, 1000L);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$new$2(TextView textView, int i, KeyEvent keyEvent) {
        if (i == 6) {
            this.clearButton.background.callOnClick();
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$3(boolean z, int i, View view) {
        String trim = this.editText.getText().toString().trim();
        if (z && trim.isEmpty()) {
            this.editText.setText((CharSequence) null);
            ViewExtKt.shake(this.editText, true);
            return;
        }
        AndroidUtilities.hideKeyboard(this.editText);
        onSend(i, trim);
        dismiss();
    }
}
