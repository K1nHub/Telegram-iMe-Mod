package org.telegram.p044ui.Cells;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.RectF;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.Set;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.UserConfig;
import org.telegram.p044ui.ActionBar.Theme;
import org.telegram.p044ui.Components.AnimatedTextView;
import org.telegram.p044ui.Components.CombinedDrawable;
import org.telegram.p044ui.Components.CubicBezierInterpolator;
import org.telegram.p044ui.Components.LayoutHelper;
import org.telegram.p044ui.Components.RLottieImageView;
import timber.log.Timber;
/* renamed from: org.telegram.ui.Cells.DrawerActionCell */
/* loaded from: classes5.dex */
public class DrawerActionCell extends FrameLayout {
    private int currentId;
    private int currentLottieId;
    private ImageView imageView;
    private RLottieImageView lottieImageView;
    private RectF rect;
    private AnimatedTextView textView;

    public void setTextAndRectIcon(int i, String str, int i2, int i3, int i4) {
        this.currentId = i;
        try {
            this.textView.setText(str);
            CombinedDrawable combinedDrawable = (CombinedDrawable) Theme.createRoundRectDrawableWithIcon(AndroidUtilities.m50dp(10), i2);
            combinedDrawable.setCustomSize(AndroidUtilities.m50dp(32), AndroidUtilities.m50dp(32));
            combinedDrawable.setIconSize(AndroidUtilities.m50dp(20), AndroidUtilities.m50dp(20));
            Theme.setCombinedDrawableColor(combinedDrawable, i3, false);
            Theme.setCombinedDrawableColor(combinedDrawable, i4, true);
            this.lottieImageView.setBackground(combinedDrawable);
        } catch (Throwable th) {
            Timber.m4e(th);
        }
    }

    public DrawerActionCell(Context context) {
        super(context);
        this.rect = new RectF();
        ImageView imageView = new ImageView(context);
        this.imageView = imageView;
        imageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor("chats_menuItemIcon"), PorterDuff.Mode.SRC_IN));
        addView(this.imageView, LayoutHelper.createFrame(24, 24, 51, 19, 12, 0, 0));
        RLottieImageView rLottieImageView = new RLottieImageView(context);
        this.lottieImageView = rLottieImageView;
        rLottieImageView.setAutoRepeat(false);
        this.lottieImageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor("chats_menuItemIcon"), PorterDuff.Mode.SRC_IN));
        addView(this.lottieImageView, LayoutHelper.createFrame(28, 28, 51, 17, 10, 0, 0));
        AnimatedTextView animatedTextView = new AnimatedTextView(context, true, true, true);
        this.textView = animatedTextView;
        animatedTextView.setAnimationProperties(0.6f, 0L, 350L, CubicBezierInterpolator.EASE_OUT_QUINT);
        this.textView.setTextColor(Theme.getColor("chats_menuItemText"));
        this.textView.setTextSize(AndroidUtilities.m50dp(15));
        this.textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.textView.setIgnoreRTL(true);
        addView(this.textView, LayoutHelper.createFrame(-1, -1, 51, 72, 0, 16, 0));
        setWillNotDraw(false);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int m50dp;
        int measuredWidth;
        super.onDraw(canvas);
        if (this.currentId == 8) {
            Set<String> set = MessagesController.getInstance(UserConfig.selectedAccount).pendingSuggestions;
            if (set.contains("VALIDATE_PHONE_NUMBER") || set.contains("VALIDATE_PASSWORD")) {
                int m51dp = AndroidUtilities.m51dp(12.5f);
                this.rect.set(((getMeasuredWidth() - AndroidUtilities.m50dp(9)) - AndroidUtilities.m50dp(25)) - AndroidUtilities.m51dp(5.5f), m51dp, measuredWidth + m50dp + AndroidUtilities.m50dp(14), m51dp + AndroidUtilities.m50dp(23));
                Theme.chat_docBackPaint.setColor(Theme.getColor("chats_archiveBackground"));
                RectF rectF = this.rect;
                float f = AndroidUtilities.density;
                canvas.drawRoundRect(rectF, f * 11.5f, f * 11.5f, Theme.chat_docBackPaint);
                float intrinsicWidth = Theme.dialogs_errorDrawable.getIntrinsicWidth() / 2;
                float intrinsicHeight = Theme.dialogs_errorDrawable.getIntrinsicHeight() / 2;
                Theme.dialogs_errorDrawable.setBounds((int) (this.rect.centerX() - intrinsicWidth), (int) (this.rect.centerY() - intrinsicHeight), (int) (this.rect.centerX() + intrinsicWidth), (int) (this.rect.centerY() + intrinsicHeight));
                Theme.dialogs_errorDrawable.draw(canvas);
            }
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(48), 1073741824));
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.textView.setTextColor(Theme.getColor("chats_menuItemText"));
    }

    public void setTextAndIcon(int i, String str, int i2, int i3) {
        this.currentId = i;
        try {
            this.textView.setText(str, false);
            if (i3 != 0) {
                this.imageView.setImageDrawable(null);
                RLottieImageView rLottieImageView = this.lottieImageView;
                this.currentLottieId = i3;
                rLottieImageView.setAnimation(i3, 28, 28);
            } else {
                this.imageView.setImageResource(i2);
                this.lottieImageView.clearAnimationDrawable();
                this.currentLottieId = 0;
            }
        } catch (Throwable th) {
            FileLog.m45e(th);
        }
    }

    public void updateText(String str) {
        this.textView.setText(str);
    }

    public void updateIcon(final int i) {
        try {
            if (i != this.currentLottieId) {
                this.lottieImageView.setOnAnimationEndListener(new Runnable() { // from class: org.telegram.ui.Cells.DrawerActionCell$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        DrawerActionCell.this.lambda$updateIcon$0(i);
                    }
                });
                this.lottieImageView.playAnimation();
            }
        } catch (Throwable th) {
            FileLog.m45e(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateIcon$0(int i) {
        RLottieImageView rLottieImageView = this.lottieImageView;
        this.currentLottieId = i;
        rLottieImageView.setAnimation(i, 28, 28);
        this.lottieImageView.setOnAnimationEndListener(null);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("android.widget.Button");
        accessibilityNodeInfo.addAction(16);
        accessibilityNodeInfo.addAction(32);
        accessibilityNodeInfo.setText(this.textView.getText());
        accessibilityNodeInfo.setClassName(TextView.class.getName());
    }
}
