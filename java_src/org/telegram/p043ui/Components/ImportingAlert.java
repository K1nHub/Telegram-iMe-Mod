package org.telegram.p043ui.Components;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.text.TextUtils;
import android.view.View;
import android.view.animation.OvershootInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SendMessagesHelper;
import org.telegram.p043ui.ActionBar.BottomSheet;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.ChatActivity;
/* renamed from: org.telegram.ui.Components.ImportingAlert */
/* loaded from: classes6.dex */
public class ImportingAlert extends BottomSheet implements NotificationCenter.NotificationCenterDelegate {
    private BottomSheetCell cell;
    private boolean completed;
    private RLottieDrawable completedDrawable;
    private RLottieImageView imageView;
    private TextView[] importCountTextView;
    private TextView[] infoTextView;
    private LineProgressView lineProgressView;
    private final Runnable onFinishCallback;
    private ChatActivity parentFragment;
    private TextView percentTextView;
    private String stickersShortName;

    /* renamed from: org.telegram.ui.Components.ImportingAlert$BottomSheetCell */
    /* loaded from: classes6.dex */
    public static class BottomSheetCell extends FrameLayout {
        private View background;
        private RLottieImageView imageView;
        private LinearLayout linearLayout;
        private Theme.ResourcesProvider resourcesProvider;
        private TextView textView;

        public BottomSheetCell(Context context, Theme.ResourcesProvider resourcesProvider) {
            super(context);
            this.resourcesProvider = resourcesProvider;
            View view = new View(context);
            this.background = view;
            int m107dp = AndroidUtilities.m107dp(4);
            int i = Theme.key_featuredStickers_addButton;
            view.setBackground(Theme.createSimpleSelectorRoundRectDrawable(m107dp, getThemedColor(i), getThemedColor(Theme.key_featuredStickers_addButtonPressed)));
            addView(this.background, LayoutHelper.createFrame(-1, -1, 0, 16, 16, 16, 16));
            LinearLayout linearLayout = new LinearLayout(context);
            this.linearLayout = linearLayout;
            linearLayout.setOrientation(0);
            addView(this.linearLayout, LayoutHelper.createFrame(-2, -2, 17));
            RLottieImageView rLottieImageView = new RLottieImageView(context);
            this.imageView = rLottieImageView;
            int m107dp2 = AndroidUtilities.m107dp(20);
            int i2 = Theme.key_featuredStickers_buttonText;
            rLottieImageView.setBackground(Theme.createCircleDrawable(m107dp2, getThemedColor(i2)));
            this.imageView.setScaleType(ImageView.ScaleType.CENTER);
            this.imageView.setColorFilter(new PorterDuffColorFilter(getThemedColor(i), PorterDuff.Mode.MULTIPLY));
            this.imageView.setAnimation(C3632R.raw.import_check, 26, 26);
            this.imageView.setScaleX(0.8f);
            this.imageView.setScaleY(0.8f);
            this.linearLayout.addView(this.imageView, LayoutHelper.createLinear(20, 20, 16));
            TextView textView = new TextView(context);
            this.textView = textView;
            textView.setLines(1);
            this.textView.setSingleLine(true);
            this.textView.setGravity(1);
            this.textView.setEllipsize(TextUtils.TruncateAt.END);
            this.textView.setGravity(17);
            this.textView.setTextColor(getThemedColor(i2));
            this.textView.setTextSize(1, 14.0f);
            this.textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            this.linearLayout.addView(this.textView, LayoutHelper.createLinear(-2, -2, 16, 10, 0, 0, 0));
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(80), 1073741824));
        }

        public void setTextColor(int i) {
            this.textView.setTextColor(i);
        }

        public void setGravity(int i) {
            this.textView.setGravity(i);
        }

        public void setText(CharSequence charSequence) {
            this.textView.setText(charSequence);
        }

        protected int getThemedColor(int i) {
            return Theme.getColor(i, this.resourcesProvider);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0() {
        if (this.completed) {
            this.imageView.getAnimatedDrawable().setAutoRepeat(0);
            this.imageView.setAnimation(this.completedDrawable);
            this.imageView.playAnimation();
        }
    }

    public ImportingAlert(Context context, String str, ChatActivity chatActivity, Theme.ResourcesProvider resourcesProvider) {
        super(context, false, resourcesProvider);
        this.importCountTextView = new TextView[2];
        this.infoTextView = new TextView[2];
        Runnable runnable = new Runnable() { // from class: org.telegram.ui.Components.ImportingAlert$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                ImportingAlert.this.lambda$new$0();
            }
        };
        this.onFinishCallback = runnable;
        setApplyBottomPadding(false);
        setApplyTopPadding(false);
        this.parentFragment = chatActivity;
        this.stickersShortName = str;
        FrameLayout frameLayout = new FrameLayout(context);
        setCustomView(frameLayout);
        TextView textView = new TextView(context);
        textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        textView.setTextSize(1, 20.0f);
        int i = Theme.key_dialogTextBlack;
        textView.setTextColor(getThemedColor(i));
        textView.setSingleLine(true);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        frameLayout.addView(textView, LayoutHelper.createFrame(-2, -2, 51, 17, 20, 17, 0));
        int i2 = C3632R.raw.import_finish;
        RLottieDrawable rLottieDrawable = new RLottieDrawable(i2, "" + i2, AndroidUtilities.m107dp(120), AndroidUtilities.m107dp(120), false, null);
        this.completedDrawable = rLottieDrawable;
        rLottieDrawable.setAllowDecodeSingleFrame(true);
        RLottieImageView rLottieImageView = new RLottieImageView(context);
        this.imageView = rLottieImageView;
        rLottieImageView.setAutoRepeat(true);
        this.imageView.setAnimation(C3632R.raw.import_loop, 120, 120);
        this.imageView.playAnimation();
        frameLayout.addView(this.imageView, LayoutHelper.createFrame(160, 160, 49, 17, 79, 17, 0));
        this.imageView.getAnimatedDrawable().setOnFinishCallback(runnable, 178);
        TextView textView2 = new TextView(context);
        this.percentTextView = textView2;
        textView2.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.percentTextView.setTextSize(1, 24.0f);
        this.percentTextView.setTextColor(getThemedColor(i));
        frameLayout.addView(this.percentTextView, LayoutHelper.createFrame(-2, -2, 49, 17, 262, 17, 0));
        LineProgressView lineProgressView = new LineProgressView(getContext());
        this.lineProgressView = lineProgressView;
        lineProgressView.setProgressColor(getThemedColor(Theme.key_featuredStickers_addButton));
        this.lineProgressView.setBackColor(getThemedColor(Theme.key_dialogLineProgressBackground));
        frameLayout.addView(this.lineProgressView, LayoutHelper.createFrame(-1, 4, 51, 50, 307, 50, 0));
        BottomSheetCell bottomSheetCell = new BottomSheetCell(context, resourcesProvider);
        this.cell = bottomSheetCell;
        bottomSheetCell.setBackground(null);
        this.cell.setText(LocaleController.getString("ImportDone", C3632R.string.ImportDone));
        this.cell.setVisibility(4);
        this.cell.background.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ImportingAlert$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ImportingAlert.this.lambda$new$1(view);
            }
        });
        this.cell.background.setPivotY(AndroidUtilities.m107dp(48));
        this.cell.background.setScaleY(0.04f);
        frameLayout.addView(this.cell, LayoutHelper.createFrame(-1, 50, 51, 34, 247, 34, 0));
        for (int i3 = 0; i3 < 2; i3++) {
            this.importCountTextView[i3] = new TextView(context);
            this.importCountTextView[i3].setTextSize(1, 16.0f);
            this.importCountTextView[i3].setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            this.importCountTextView[i3].setTextColor(getThemedColor(Theme.key_dialogTextBlack));
            frameLayout.addView(this.importCountTextView[i3], LayoutHelper.createFrame(-2, -2, 49, 17, 340, 17, 0));
            this.infoTextView[i3] = new TextView(context);
            this.infoTextView[i3].setTextSize(1, 14.0f);
            this.infoTextView[i3].setTextColor(getThemedColor(Theme.key_dialogTextGray3));
            this.infoTextView[i3].setGravity(1);
            frameLayout.addView(this.infoTextView[i3], LayoutHelper.createFrame(-2, -2, 49, 30, 368, 30, 44));
            if (i3 == 0) {
                this.infoTextView[i3].setText(LocaleController.getString("ImportImportingInfo", C3632R.string.ImportImportingInfo));
            } else {
                this.infoTextView[i3].setAlpha(BitmapDescriptorFactory.HUE_RED);
                this.infoTextView[i3].setTranslationY(AndroidUtilities.m107dp(10));
                this.importCountTextView[i3].setAlpha(BitmapDescriptorFactory.HUE_RED);
                this.importCountTextView[i3].setTranslationY(AndroidUtilities.m107dp(10));
            }
        }
        if (this.parentFragment != null) {
            textView.setText(LocaleController.getString("ImportImportingTitle", C3632R.string.ImportImportingTitle));
            SendMessagesHelper.ImportingHistory importingHistory = this.parentFragment.getSendMessagesHelper().getImportingHistory(this.parentFragment.getDialogId());
            this.percentTextView.setText(String.format("%d%%", Integer.valueOf(importingHistory.uploadProgress)));
            this.lineProgressView.setProgress(importingHistory.uploadProgress / 100.0f, false);
            this.importCountTextView[0].setText(LocaleController.formatString("ImportCount", C3632R.string.ImportCount, AndroidUtilities.formatFileSize(importingHistory.getUploadedCount()), AndroidUtilities.formatFileSize(importingHistory.getTotalCount())));
            this.infoTextView[1].setText(LocaleController.getString("ImportDoneInfo", C3632R.string.ImportDoneInfo));
            this.importCountTextView[1].setText(LocaleController.getString("ImportDoneTitle", C3632R.string.ImportDoneTitle));
            this.parentFragment.getNotificationCenter().addObserver(this, NotificationCenter.historyImportProgressChanged);
            return;
        }
        textView.setText(LocaleController.getString("ImportStickersImportingTitle", C3632R.string.ImportStickersImportingTitle));
        SendMessagesHelper.ImportingStickers importingStickers = SendMessagesHelper.getInstance(this.currentAccount).getImportingStickers(str);
        this.percentTextView.setText(String.format("%d%%", Integer.valueOf(importingStickers.uploadProgress)));
        this.lineProgressView.setProgress(importingStickers.uploadProgress / 100.0f, false);
        this.importCountTextView[0].setText(LocaleController.formatString("ImportCount", C3632R.string.ImportCount, AndroidUtilities.formatFileSize(importingStickers.getUploadedCount()), AndroidUtilities.formatFileSize(importingStickers.getTotalCount())));
        this.infoTextView[1].setText(LocaleController.getString("ImportStickersDoneInfo", C3632R.string.ImportStickersDoneInfo));
        this.importCountTextView[1].setText(LocaleController.getString("ImportStickersDoneTitle", C3632R.string.ImportStickersDoneTitle));
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.stickersImportProgressChanged);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(View view) {
        dismiss();
    }

    public void setCompleted() {
        this.completed = true;
        this.imageView.setAutoRepeat(false);
        this.cell.setVisibility(0);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.setDuration(250L);
        animatorSet.setInterpolator(CubicBezierInterpolator.EASE_OUT);
        animatorSet.playTogether(ObjectAnimator.ofFloat(this.percentTextView, View.ALPHA, BitmapDescriptorFactory.HUE_RED), ObjectAnimator.ofFloat(this.percentTextView, View.TRANSLATION_Y, -AndroidUtilities.m107dp(10)), ObjectAnimator.ofFloat(this.infoTextView[0], View.ALPHA, BitmapDescriptorFactory.HUE_RED), ObjectAnimator.ofFloat(this.infoTextView[0], View.TRANSLATION_Y, -AndroidUtilities.m107dp(10)), ObjectAnimator.ofFloat(this.importCountTextView[0], View.ALPHA, BitmapDescriptorFactory.HUE_RED), ObjectAnimator.ofFloat(this.importCountTextView[0], View.TRANSLATION_Y, -AndroidUtilities.m107dp(10)), ObjectAnimator.ofFloat(this.infoTextView[1], View.ALPHA, 1.0f), ObjectAnimator.ofFloat(this.infoTextView[1], View.TRANSLATION_Y, BitmapDescriptorFactory.HUE_RED), ObjectAnimator.ofFloat(this.importCountTextView[1], View.ALPHA, 1.0f), ObjectAnimator.ofFloat(this.importCountTextView[1], View.TRANSLATION_Y, BitmapDescriptorFactory.HUE_RED), ObjectAnimator.ofFloat(this.lineProgressView, View.ALPHA, BitmapDescriptorFactory.HUE_RED), ObjectAnimator.ofFloat(this.cell.linearLayout, View.TRANSLATION_Y, AndroidUtilities.m107dp(8), BitmapDescriptorFactory.HUE_RED));
        this.cell.background.animate().scaleY(1.0f).setInterpolator(new OvershootInterpolator(1.02f)).setDuration(250L).start();
        this.cell.imageView.animate().scaleY(1.0f).scaleX(1.0f).setInterpolator(new OvershootInterpolator(1.02f)).setDuration(250L).start();
        this.cell.imageView.playAnimation();
        animatorSet.start();
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.historyImportProgressChanged) {
            if (objArr.length > 1) {
                dismiss();
                return;
            }
            SendMessagesHelper.ImportingHistory importingHistory = this.parentFragment.getSendMessagesHelper().getImportingHistory(this.parentFragment.getDialogId());
            if (importingHistory == null) {
                setCompleted();
                return;
            }
            if (!this.completed && ((180 - this.imageView.getAnimatedDrawable().getCurrentFrame()) * 16.6d) + 3000.0d >= importingHistory.timeUntilFinish) {
                this.imageView.setAutoRepeat(false);
                this.completed = true;
            }
            this.percentTextView.setText(String.format("%d%%", Integer.valueOf(importingHistory.uploadProgress)));
            this.importCountTextView[0].setText(LocaleController.formatString("ImportCount", C3632R.string.ImportCount, AndroidUtilities.formatFileSize(importingHistory.getUploadedCount()), AndroidUtilities.formatFileSize(importingHistory.getTotalCount())));
            this.lineProgressView.setProgress(importingHistory.uploadProgress / 100.0f, true);
        } else if (i == NotificationCenter.stickersImportProgressChanged) {
            if (objArr.length > 1) {
                dismiss();
                return;
            }
            SendMessagesHelper.ImportingStickers importingStickers = SendMessagesHelper.getInstance(this.currentAccount).getImportingStickers(this.stickersShortName);
            if (importingStickers == null) {
                setCompleted();
                return;
            }
            if (!this.completed && ((180 - this.imageView.getAnimatedDrawable().getCurrentFrame()) * 16.6d) + 3000.0d >= importingStickers.timeUntilFinish) {
                this.imageView.setAutoRepeat(false);
                this.completed = true;
            }
            this.percentTextView.setText(String.format("%d%%", Integer.valueOf(importingStickers.uploadProgress)));
            this.importCountTextView[0].setText(LocaleController.formatString("ImportCount", C3632R.string.ImportCount, AndroidUtilities.formatFileSize(importingStickers.getUploadedCount()), AndroidUtilities.formatFileSize(importingStickers.getTotalCount())));
            this.lineProgressView.setProgress(importingStickers.uploadProgress / 100.0f, true);
        }
    }

    @Override // org.telegram.p043ui.ActionBar.BottomSheet
    public void dismissInternal() {
        super.dismissInternal();
        ChatActivity chatActivity = this.parentFragment;
        if (chatActivity != null) {
            chatActivity.getNotificationCenter().removeObserver(this, NotificationCenter.historyImportProgressChanged);
        } else {
            NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.stickersImportProgressChanged);
        }
    }
}
