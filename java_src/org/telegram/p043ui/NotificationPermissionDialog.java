package org.telegram.p043ui;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.View;
import android.view.animation.OvershootInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.exoplayer2.C0483C;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.Utilities;
import org.telegram.p043ui.ActionBar.BottomSheet;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.AnimatedFloat;
import org.telegram.p043ui.Components.AnimatedTextView;
import org.telegram.p043ui.Components.CubicBezierInterpolator;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.RLottieImageView;
import org.telegram.p043ui.NotificationPermissionDialog;
/* renamed from: org.telegram.ui.NotificationPermissionDialog */
/* loaded from: classes5.dex */
public class NotificationPermissionDialog extends BottomSheet implements NotificationCenter.NotificationCenterDelegate {
    private CounterView counterView;
    private boolean mayBeAccidentalDismiss;
    private RLottieImageView rLottieImageView;
    private long showTime;
    private Utilities.Callback<Boolean> whenGranted;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NotificationPermissionDialog(Context context, Utilities.Callback<Boolean> callback) {
        super(context, false);
        this.whenGranted = callback;
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        FrameLayout frameLayout = new FrameLayout(context);
        RLottieImageView rLottieImageView = new RLottieImageView(context);
        this.rLottieImageView = rLottieImageView;
        rLottieImageView.setScaleType(ImageView.ScaleType.CENTER);
        this.rLottieImageView.setAnimation(C3632R.raw.silent_unmute, 46, 46);
        this.rLottieImageView.playAnimation();
        RLottieImageView rLottieImageView2 = this.rLottieImageView;
        int m107dp = AndroidUtilities.m107dp(72);
        int i = Theme.key_featuredStickers_addButton;
        rLottieImageView2.setBackground(Theme.createCircleDrawable(m107dp, Theme.getColor(i)));
        frameLayout.addView(this.rLottieImageView, LayoutHelper.createFrame(72, 72, 17));
        CounterView counterView = new CounterView(context);
        this.counterView = counterView;
        frameLayout.addView(counterView, LayoutHelper.createFrame(64, 32, 49, 29, 16, 0, 0));
        this.counterView.setCount(0);
        frameLayout.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.NotificationPermissionDialog$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NotificationPermissionDialog.this.lambda$new$0(view);
            }
        });
        linearLayout.addView(frameLayout, LayoutHelper.createLinear(-1, 110));
        TextView textView = new TextView(context);
        int i2 = Theme.key_dialogTextBlack;
        textView.setTextColor(Theme.getColor(i2));
        textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        textView.setTextSize(1, 20.0f);
        textView.setGravity(1);
        textView.setText(LocaleController.getString("NotificationsPermissionAlertTitle"));
        textView.setPadding(AndroidUtilities.m107dp(30), 0, AndroidUtilities.m107dp(30), 0);
        linearLayout.addView(textView, LayoutHelper.createLinear(-1, -2));
        TextView textView2 = new TextView(context);
        textView2.setTextColor(Theme.getColor(i2));
        textView2.setTextSize(1, 14.0f);
        textView2.setGravity(1);
        textView2.setText(LocaleController.getString("NotificationsPermissionAlertSubtitle"));
        textView2.setPadding(AndroidUtilities.m107dp(30), AndroidUtilities.m107dp(10), AndroidUtilities.m107dp(30), AndroidUtilities.m107dp(21));
        linearLayout.addView(textView2, LayoutHelper.createLinear(-1, -2));
        linearLayout.addView(new SectionView(context, C3632R.C3634drawable.msg_message_s, LocaleController.getString("NotificationsPermissionAlert1")), LayoutHelper.createLinear(-1, -2));
        linearLayout.addView(new SectionView(context, C3632R.C3634drawable.msg_members_list2, LocaleController.getString("NotificationsPermissionAlert2")), LayoutHelper.createLinear(-1, -2));
        linearLayout.addView(new SectionView(context, C3632R.C3634drawable.msg_customize_s, LocaleController.getString("NotificationsPermissionAlert3")), LayoutHelper.createLinear(-1, -2));
        setCustomView(linearLayout);
        fixNavigationBar(getThemedColor(Theme.key_dialogBackground));
        TextView textView3 = new TextView(context);
        textView3.setText(LocaleController.getString("NotificationsPermissionContinue"));
        textView3.setGravity(17);
        textView3.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        textView3.setTextSize(1, 14.0f);
        textView3.setTextColor(Theme.getColor(Theme.key_featuredStickers_buttonText));
        textView3.setBackground(Theme.AdaptiveRipple.filledRect(Theme.getColor(i), 8.0f));
        textView3.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.NotificationPermissionDialog$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NotificationPermissionDialog.this.lambda$new$1(view);
            }
        });
        linearLayout.addView(textView3, LayoutHelper.createLinear(-1, 48, 14, 14, 14, 10));
        for (int i3 = 0; i3 < 5; i3++) {
            try {
                NotificationCenter.getInstance(i3).addObserver(this, NotificationCenter.updateInterfaces);
            } catch (Exception unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view) {
        if (this.rLottieImageView.isPlaying()) {
            return;
        }
        this.rLottieImageView.setProgress(BitmapDescriptorFactory.HUE_RED);
        this.rLottieImageView.playAnimation();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(View view) {
        Utilities.Callback<Boolean> callback = this.whenGranted;
        if (callback != null) {
            callback.run(Boolean.TRUE);
            this.whenGranted = null;
        }
        dismiss();
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i != NotificationCenter.updateInterfaces || (((Integer) objArr[0]).intValue() & MessagesController.UPDATE_MASK_READ_DIALOG_MESSAGE) < 0) {
            return;
        }
        updateCounter();
    }

    public void updateCounter() {
        int i = 0;
        for (int i2 = 0; i2 < 5; i2++) {
            MessagesStorage messagesStorage = MessagesStorage.getInstance(i2);
            if (messagesStorage != null) {
                i += messagesStorage.getMainUnreadCount();
            }
        }
        if (!this.counterView.setCount(i) || this.rLottieImageView.isPlaying()) {
            return;
        }
        this.rLottieImageView.setProgress(BitmapDescriptorFactory.HUE_RED);
        this.rLottieImageView.playAnimation();
    }

    @Override // org.telegram.p043ui.ActionBar.BottomSheet, android.app.Dialog
    public void show() {
        super.show();
        this.showTime = System.currentTimeMillis();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.telegram.p043ui.ActionBar.BottomSheet
    public void onDismissWithTouchOutside() {
        this.mayBeAccidentalDismiss = System.currentTimeMillis() - this.showTime < C0483C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS;
        super.onDismissWithTouchOutside();
    }

    @Override // org.telegram.p043ui.ActionBar.BottomSheet, android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        Utilities.Callback<Boolean> callback = this.whenGranted;
        if (callback != null) {
            callback.run(Boolean.FALSE);
            this.whenGranted = null;
            if (!this.mayBeAccidentalDismiss) {
                askLater();
            }
        }
        for (int i = 0; i < 5; i++) {
            try {
                NotificationCenter.getInstance(i).removeObserver(this, NotificationCenter.updateInterfaces);
            } catch (Exception unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.NotificationPermissionDialog$CounterView */
    /* loaded from: classes5.dex */
    public static class CounterView extends View {
        private final AnimatedFloat alpha;
        private ValueAnimator countAnimator;
        private float countScale;
        private final Paint fillPaint;
        private int lastCount;
        private final Paint strokePaint;
        AnimatedTextView.AnimatedTextDrawable textDrawable;

        public CounterView(Context context) {
            super(context);
            Paint paint = new Paint(1);
            this.fillPaint = paint;
            Paint paint2 = new Paint(1);
            this.strokePaint = paint2;
            CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
            this.alpha = new AnimatedFloat(this, 0L, 320L, cubicBezierInterpolator);
            this.textDrawable = new AnimatedTextView.AnimatedTextDrawable(false, true, true);
            this.countScale = 1.0f;
            paint.setColor(Theme.getColor(Theme.key_featuredStickers_addButton));
            paint2.setColor(Theme.getColor(Theme.key_dialogBackground));
            paint2.setStyle(Paint.Style.STROKE);
            paint2.setStrokeWidth(AndroidUtilities.m107dp(4));
            this.textDrawable.setCallback(this);
            this.textDrawable.setAnimationProperties(0.35f, 0L, 200L, cubicBezierInterpolator);
            this.textDrawable.getPaint().setStyle(Paint.Style.FILL_AND_STROKE);
            this.textDrawable.getPaint().setStrokeWidth(AndroidUtilities.m108dp(0.24f));
            this.textDrawable.getPaint().setStrokeJoin(Paint.Join.ROUND);
            this.textDrawable.setTextSize(AndroidUtilities.m108dp(13.3f));
            this.textDrawable.setTextColor(Theme.getColor(Theme.key_featuredStickers_buttonText));
            this.textDrawable.setOverrideFullWidth(AndroidUtilities.m107dp(64));
            this.textDrawable.setGravity(1);
        }

        public boolean setCount(int i) {
            int i2 = this.lastCount;
            if (i2 != i) {
                r1 = i2 < i;
                this.lastCount = i;
                AnimatedTextView.AnimatedTextDrawable animatedTextDrawable = this.textDrawable;
                String str = "";
                if (i > 0) {
                    str = "" + this.lastCount;
                }
                animatedTextDrawable.setText(str, true);
                if (r1) {
                    animateBounce();
                }
            }
            return r1;
        }

        private void animateBounce() {
            ValueAnimator valueAnimator = this.countAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
                this.countAnimator = null;
            }
            ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
            this.countAnimator = ofFloat;
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.NotificationPermissionDialog$CounterView$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    NotificationPermissionDialog.CounterView.this.lambda$animateBounce$0(valueAnimator2);
                }
            });
            this.countAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.NotificationPermissionDialog.CounterView.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    CounterView.this.countScale = 1.0f;
                    CounterView.this.invalidate();
                }
            });
            this.countAnimator.setInterpolator(new OvershootInterpolator(2.0f));
            this.countAnimator.setDuration(200L);
            this.countAnimator.start();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$animateBounce$0(ValueAnimator valueAnimator) {
            this.countScale = Math.max(1.0f, ((Float) valueAnimator.getAnimatedValue()).floatValue());
            invalidate();
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            float f = this.alpha.set(this.lastCount > 0 ? 1.0f : 0.0f);
            canvas.save();
            float f2 = this.countScale;
            canvas.scale(f2 * f, f2 * f, getWidth() / 2.0f, getHeight() / 2.0f);
            float currentWidth = this.textDrawable.getCurrentWidth() + AndroidUtilities.dpf2(12.66f);
            float dpf2 = AndroidUtilities.dpf2(20.3f);
            RectF rectF = AndroidUtilities.rectTmp;
            rectF.set((getWidth() - currentWidth) / 2.0f, (getHeight() - dpf2) / 2.0f, (getWidth() + currentWidth) / 2.0f, (getHeight() + dpf2) / 2.0f);
            int i = (int) (f * 255.0f);
            this.strokePaint.setAlpha(i);
            canvas.drawRoundRect(rectF, AndroidUtilities.m107dp(30), AndroidUtilities.m107dp(30), this.strokePaint);
            this.fillPaint.setAlpha(i);
            canvas.drawRoundRect(rectF, AndroidUtilities.m107dp(30), AndroidUtilities.m107dp(30), this.fillPaint);
            canvas.save();
            canvas.translate(BitmapDescriptorFactory.HUE_RED, -AndroidUtilities.m107dp(1));
            this.textDrawable.setBounds(0, 0, getWidth(), getHeight());
            this.textDrawable.draw(canvas);
            canvas.restore();
            canvas.restore();
        }

        @Override // android.view.View
        protected boolean verifyDrawable(Drawable drawable) {
            return drawable == this.textDrawable || super.verifyDrawable(drawable);
        }
    }

    /* renamed from: org.telegram.ui.NotificationPermissionDialog$SectionView */
    /* loaded from: classes5.dex */
    private static class SectionView extends FrameLayout {
        public SectionView(Context context, int i, CharSequence charSequence) {
            super(context);
            setPadding(0, AndroidUtilities.m107dp(7), 0, AndroidUtilities.m107dp(7));
            ImageView imageView = new ImageView(context);
            imageView.setImageResource(i);
            imageView.setScaleType(ImageView.ScaleType.CENTER);
            int i2 = Theme.key_dialogTextBlack;
            imageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor(i2), PorterDuff.Mode.MULTIPLY));
            boolean z = LocaleController.isRTL;
            addView(imageView, LayoutHelper.createFrame(24, 24, (z ? 5 : 3) | 16, z ? 0 : 22, 0, z ? 22 : 0, 0));
            TextView textView = new TextView(context);
            textView.setTextColor(Theme.getColor(i2));
            textView.setTextSize(1, 14.0f);
            textView.setGravity(LocaleController.isRTL ? 5 : 3);
            textView.setText(charSequence);
            boolean z2 = LocaleController.isRTL;
            addView(textView, LayoutHelper.createFrame(-1, -2, 23, z2 ? 0 : 61, 0, z2 ? 61 : 0, 0));
        }
    }

    public static boolean shouldAsk(Activity activity) {
        if (activity == null || Build.VERSION.SDK_INT < 23 || activity.checkSelfPermission("android.permission.POST_NOTIFICATIONS") == 0) {
            return false;
        }
        long j = MessagesController.getGlobalMainSettings().getLong("askNotificationsAfter", -1L);
        if (j != -2) {
            return j < 0 || System.currentTimeMillis() >= j;
        }
        return false;
    }

    public static void askLater() {
        long j = MessagesController.getGlobalMainSettings().getLong("askNotificationsDuration", 86400000L);
        MessagesController.getGlobalMainSettings().edit().putLong("askNotificationsAfter", System.currentTimeMillis() + j).putLong("askNotificationsDuration", j >= 259200000 ? j < 604800000 ? 604800000L : 2592000000L : 259200000L).apply();
    }
}
