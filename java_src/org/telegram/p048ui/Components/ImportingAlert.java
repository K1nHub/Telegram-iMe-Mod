package org.telegram.p048ui.Components;

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
import org.telegram.messenger.C3158R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SendMessagesHelper;
import org.telegram.p048ui.ActionBar.BottomSheet;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.ChatActivity;
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
            view.setBackground(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.m50dp(4), getThemedColor("featuredStickers_addButton"), getThemedColor("featuredStickers_addButtonPressed")));
            addView(this.background, LayoutHelper.createFrame(-1, -1, 0, 16, 16, 16, 16));
            LinearLayout linearLayout = new LinearLayout(context);
            this.linearLayout = linearLayout;
            linearLayout.setOrientation(0);
            addView(this.linearLayout, LayoutHelper.createFrame(-2, -2, 17));
            RLottieImageView rLottieImageView = new RLottieImageView(context);
            this.imageView = rLottieImageView;
            rLottieImageView.setBackground(Theme.createCircleDrawable(AndroidUtilities.m50dp(20), getThemedColor("featuredStickers_buttonText")));
            this.imageView.setScaleType(ImageView.ScaleType.CENTER);
            this.imageView.setColorFilter(new PorterDuffColorFilter(getThemedColor("featuredStickers_addButton"), PorterDuff.Mode.MULTIPLY));
            this.imageView.setAnimation(C3158R.C3164raw.import_check, 26, 26);
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
            this.textView.setTextColor(getThemedColor("featuredStickers_buttonText"));
            this.textView.setTextSize(1, 14.0f);
            this.textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            this.linearLayout.addView(this.textView, LayoutHelper.createLinear(-2, -2, 16, 10, 0, 0, 0));
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(80), 1073741824));
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

        private int getThemedColor(String str) {
            Theme.ResourcesProvider resourcesProvider = this.resourcesProvider;
            Integer color = resourcesProvider != null ? resourcesProvider.getColor(str) : null;
            return color != null ? color.intValue() : Theme.getColor(str);
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
        textView.setTextColor(getThemedColor("dialogTextBlack"));
        textView.setSingleLine(true);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        frameLayout.addView(textView, LayoutHelper.createFrame(-2, -2, 51, 17, 20, 17, 0));
        int i = C3158R.C3164raw.import_finish;
        RLottieDrawable rLottieDrawable = new RLottieDrawable(i, "" + i, AndroidUtilities.m50dp(120), AndroidUtilities.m50dp(120), false, null);
        this.completedDrawable = rLottieDrawable;
        rLottieDrawable.setAllowDecodeSingleFrame(true);
        RLottieImageView rLottieImageView = new RLottieImageView(context);
        this.imageView = rLottieImageView;
        rLottieImageView.setAutoRepeat(true);
        this.imageView.setAnimation(C3158R.C3164raw.import_loop, 120, 120);
        this.imageView.playAnimation();
        frameLayout.addView(this.imageView, LayoutHelper.createFrame(160, 160, 49, 17, 79, 17, 0));
        this.imageView.getAnimatedDrawable().setOnFinishCallback(runnable, 178);
        TextView textView2 = new TextView(context);
        this.percentTextView = textView2;
        textView2.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.percentTextView.setTextSize(1, 24.0f);
        this.percentTextView.setTextColor(getThemedColor("dialogTextBlack"));
        frameLayout.addView(this.percentTextView, LayoutHelper.createFrame(-2, -2, 49, 17, 262, 17, 0));
        LineProgressView lineProgressView = new LineProgressView(getContext());
        this.lineProgressView = lineProgressView;
        lineProgressView.setProgressColor(getThemedColor("featuredStickers_addButton"));
        this.lineProgressView.setBackColor(getThemedColor("dialogLineProgressBackground"));
        frameLayout.addView(this.lineProgressView, LayoutHelper.createFrame(-1, 4, 51, 50, 307, 50, 0));
        BottomSheetCell bottomSheetCell = new BottomSheetCell(context, resourcesProvider);
        this.cell = bottomSheetCell;
        bottomSheetCell.setBackground(null);
        this.cell.setText(LocaleController.getString("ImportDone", C3158R.string.ImportDone));
        this.cell.setVisibility(4);
        this.cell.background.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ImportingAlert$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ImportingAlert.this.lambda$new$1(view);
            }
        });
        this.cell.background.setPivotY(AndroidUtilities.m50dp(48));
        this.cell.background.setScaleY(0.04f);
        frameLayout.addView(this.cell, LayoutHelper.createFrame(-1, 50, 51, 34, 247, 34, 0));
        for (int i2 = 0; i2 < 2; i2++) {
            this.importCountTextView[i2] = new TextView(context);
            this.importCountTextView[i2].setTextSize(1, 16.0f);
            this.importCountTextView[i2].setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            this.importCountTextView[i2].setTextColor(getThemedColor("dialogTextBlack"));
            frameLayout.addView(this.importCountTextView[i2], LayoutHelper.createFrame(-2, -2, 49, 17, 340, 17, 0));
            this.infoTextView[i2] = new TextView(context);
            this.infoTextView[i2].setTextSize(1, 14.0f);
            this.infoTextView[i2].setTextColor(getThemedColor("dialogTextGray3"));
            this.infoTextView[i2].setGravity(1);
            frameLayout.addView(this.infoTextView[i2], LayoutHelper.createFrame(-2, -2, 49, 30, 368, 30, 44));
            if (i2 == 0) {
                this.infoTextView[i2].setText(LocaleController.getString("ImportImportingInfo", C3158R.string.ImportImportingInfo));
            } else {
                this.infoTextView[i2].setAlpha(BitmapDescriptorFactory.HUE_RED);
                this.infoTextView[i2].setTranslationY(AndroidUtilities.m50dp(10));
                this.importCountTextView[i2].setAlpha(BitmapDescriptorFactory.HUE_RED);
                this.importCountTextView[i2].setTranslationY(AndroidUtilities.m50dp(10));
            }
        }
        if (this.parentFragment != null) {
            textView.setText(LocaleController.getString("ImportImportingTitle", C3158R.string.ImportImportingTitle));
            SendMessagesHelper.ImportingHistory importingHistory = this.parentFragment.getSendMessagesHelper().getImportingHistory(this.parentFragment.getDialogId());
            this.percentTextView.setText(String.format("%d%%", Integer.valueOf(importingHistory.uploadProgress)));
            this.lineProgressView.setProgress(importingHistory.uploadProgress / 100.0f, false);
            this.importCountTextView[0].setText(LocaleController.formatString("ImportCount", C3158R.string.ImportCount, AndroidUtilities.formatFileSize(importingHistory.getUploadedCount()), AndroidUtilities.formatFileSize(importingHistory.getTotalCount())));
            this.infoTextView[1].setText(LocaleController.getString("ImportDoneInfo", C3158R.string.ImportDoneInfo));
            this.importCountTextView[1].setText(LocaleController.getString("ImportDoneTitle", C3158R.string.ImportDoneTitle));
            this.parentFragment.getNotificationCenter().addObserver(this, NotificationCenter.historyImportProgressChanged);
            return;
        }
        textView.setText(LocaleController.getString("ImportStickersImportingTitle", C3158R.string.ImportStickersImportingTitle));
        SendMessagesHelper.ImportingStickers importingStickers = SendMessagesHelper.getInstance(this.currentAccount).getImportingStickers(str);
        this.percentTextView.setText(String.format("%d%%", Integer.valueOf(importingStickers.uploadProgress)));
        this.lineProgressView.setProgress(importingStickers.uploadProgress / 100.0f, false);
        this.importCountTextView[0].setText(LocaleController.formatString("ImportCount", C3158R.string.ImportCount, AndroidUtilities.formatFileSize(importingStickers.getUploadedCount()), AndroidUtilities.formatFileSize(importingStickers.getTotalCount())));
        this.infoTextView[1].setText(LocaleController.getString("ImportStickersDoneInfo", C3158R.string.ImportStickersDoneInfo));
        this.importCountTextView[1].setText(LocaleController.getString("ImportStickersDoneTitle", C3158R.string.ImportStickersDoneTitle));
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
        animatorSet.playTogether(ObjectAnimator.ofFloat(this.percentTextView, View.ALPHA, BitmapDescriptorFactory.HUE_RED), ObjectAnimator.ofFloat(this.percentTextView, View.TRANSLATION_Y, -AndroidUtilities.m50dp(10)), ObjectAnimator.ofFloat(this.infoTextView[0], View.ALPHA, BitmapDescriptorFactory.HUE_RED), ObjectAnimator.ofFloat(this.infoTextView[0], View.TRANSLATION_Y, -AndroidUtilities.m50dp(10)), ObjectAnimator.ofFloat(this.importCountTextView[0], View.ALPHA, BitmapDescriptorFactory.HUE_RED), ObjectAnimator.ofFloat(this.importCountTextView[0], View.TRANSLATION_Y, -AndroidUtilities.m50dp(10)), ObjectAnimator.ofFloat(this.infoTextView[1], View.ALPHA, 1.0f), ObjectAnimator.ofFloat(this.infoTextView[1], View.TRANSLATION_Y, BitmapDescriptorFactory.HUE_RED), ObjectAnimator.ofFloat(this.importCountTextView[1], View.ALPHA, 1.0f), ObjectAnimator.ofFloat(this.importCountTextView[1], View.TRANSLATION_Y, BitmapDescriptorFactory.HUE_RED), ObjectAnimator.ofFloat(this.lineProgressView, View.ALPHA, BitmapDescriptorFactory.HUE_RED), ObjectAnimator.ofFloat(this.cell.linearLayout, View.TRANSLATION_Y, AndroidUtilities.m50dp(8), BitmapDescriptorFactory.HUE_RED));
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
            this.importCountTextView[0].setText(LocaleController.formatString("ImportCount", C3158R.string.ImportCount, AndroidUtilities.formatFileSize(importingHistory.getUploadedCount()), AndroidUtilities.formatFileSize(importingHistory.getTotalCount())));
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
            this.importCountTextView[0].setText(LocaleController.formatString("ImportCount", C3158R.string.ImportCount, AndroidUtilities.formatFileSize(importingStickers.getUploadedCount()), AndroidUtilities.formatFileSize(importingStickers.getTotalCount())));
            this.lineProgressView.setProgress(importingStickers.uploadProgress / 100.0f, true);
        }
    }

    @Override // org.telegram.p048ui.ActionBar.BottomSheet
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
