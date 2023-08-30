package org.telegram.p043ui.Stories.recorder;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.text.Layout;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.ImageSpan;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.LinearInterpolator;
import android.view.animation.OvershootInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3558R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.Utilities;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.AnimatedFloat;
import org.telegram.p043ui.Components.CubicBezierInterpolator;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Stories.recorder.PreviewButtons;
/* renamed from: org.telegram.ui.Stories.recorder.PreviewButtons */
/* loaded from: classes6.dex */
public class PreviewButtons extends FrameLayout {
    private ValueAnimator appearAnimator;
    private float appearT;
    private boolean appearing;
    private ArrayList<View> buttons;
    private boolean isShareEnabled;
    private Utilities.Callback<Integer> onClickListener;
    private View shadowView;
    public ShareButtonView shareButton;
    private String shareText;

    public PreviewButtons(Context context) {
        super(context);
        this.buttons = new ArrayList<>();
        this.isShareEnabled = true;
        View view = new View(context);
        this.shadowView = view;
        view.setBackground(new GradientDrawable(GradientDrawable.Orientation.BOTTOM_TOP, new int[]{1711276032, 0}));
        addView(this.shadowView, LayoutHelper.createFrame(-1, -1, 119));
        addButton(0, C3558R.C3560drawable.msg_draw_pen, LocaleController.getString("AccDescrPaint", C3558R.string.AccDescrPaint));
        addButton(2, C3558R.C3560drawable.msg_photo_sticker, LocaleController.getString("AccDescrStickers", C3558R.string.AccDescrStickers));
        addButton(1, C3558R.C3560drawable.msg_photo_text2, LocaleController.getString("AccDescrPlaceText", C3558R.string.AccDescrPlaceText));
        addButton(3, C3558R.C3560drawable.msg_photo_settings, LocaleController.getString("AccDescrPhotoAdjust", C3558R.string.AccDescrPhotoAdjust));
        int i = C3558R.string.Send;
        String string = LocaleController.getString("Send", i);
        this.shareText = string;
        ShareButtonView shareButtonView = new ShareButtonView(context, string);
        this.shareButton = shareButtonView;
        shareButtonView.setContentDescription(LocaleController.getString("Send", i));
        addView(this.shareButton, LayoutHelper.createFrame(-2, -2));
        updateAppearT();
    }

    public void setShareText(String str) {
        if (TextUtils.equals(str, this.shareText)) {
            return;
        }
        removeView(this.shareButton);
        ShareButtonView shareButtonView = new ShareButtonView(getContext(), str);
        this.shareButton = shareButtonView;
        shareButtonView.setContentDescription(str);
        addView(this.shareButton, LayoutHelper.createFrame(-2, -2));
        updateAppearT();
    }

    private void addButton(int i, int i2, CharSequence charSequence) {
        ButtonView buttonView = new ButtonView(getContext(), i, i2);
        buttonView.setContentDescription(charSequence);
        this.buttons.add(buttonView);
        addView(buttonView);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5 = i3 - i;
        int i6 = i4 - i2;
        this.shadowView.layout(0, 0, i5, i6);
        ShareButtonView shareButtonView = this.shareButton;
        shareButtonView.layout(i5 - shareButtonView.getMeasuredWidth(), (i6 - this.shareButton.getMeasuredHeight()) / 2, i5, (this.shareButton.getMeasuredHeight() + i6) / 2);
        int min = Math.min(AndroidUtilities.m72dp(20), this.buttons.size() < 2 ? 0 : (((i5 - AndroidUtilities.m73dp(32.33f)) - this.shareButton.getMeasuredWidth()) - (this.buttons.size() * AndroidUtilities.m72dp(40))) / (this.buttons.size() - 1));
        int m72dp = (i6 - AndroidUtilities.m72dp(40)) / 2;
        int m72dp2 = (i6 + AndroidUtilities.m72dp(40)) / 2;
        int m73dp = AndroidUtilities.m73dp(12.33f);
        for (int i7 = 0; i7 < this.buttons.size(); i7++) {
            this.buttons.get(i7).layout(m73dp, m72dp, AndroidUtilities.m72dp(40) + m73dp, m72dp2);
            m73dp += AndroidUtilities.m72dp(40) + min;
        }
    }

    public void setOnClickListener(Utilities.Callback<Integer> callback) {
        this.onClickListener = callback;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m72dp(52), 1073741824));
    }

    public void setShareEnabled(boolean z) {
        if (this.isShareEnabled != z) {
            this.isShareEnabled = z;
            ShareButtonView shareButtonView = this.shareButton;
            shareButtonView.enabled = z;
            shareButtonView.invalidate();
        }
    }

    public boolean isShareEnabled() {
        return this.isShareEnabled;
    }

    public void appear(boolean z, boolean z2) {
        if (this.appearing == z) {
            return;
        }
        ValueAnimator valueAnimator = this.appearAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        this.appearing = z;
        if (z2) {
            float[] fArr = new float[2];
            fArr[0] = this.appearT;
            fArr[1] = z ? 1.0f : 0.0f;
            ValueAnimator ofFloat = ValueAnimator.ofFloat(fArr);
            this.appearAnimator = ofFloat;
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stories.recorder.PreviewButtons$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    PreviewButtons.this.lambda$appear$0(valueAnimator2);
                }
            });
            if (this.appearing) {
                this.appearAnimator.setDuration(450L);
                this.appearAnimator.setInterpolator(new LinearInterpolator());
            } else {
                this.appearAnimator.setDuration(350L);
                this.appearAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
            }
            this.appearAnimator.start();
            return;
        }
        this.appearT = z ? 1.0f : 0.0f;
        updateAppearT();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$appear$0(ValueAnimator valueAnimator) {
        this.appearT = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        updateAppearT();
    }

    private void updateAppearT() {
        this.shadowView.setAlpha(this.appearT);
        this.shadowView.setTranslationY((1.0f - this.appearT) * AndroidUtilities.m72dp(16));
        for (int i = 1; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            float f = this.appearT;
            if (this.appearing) {
                f = CubicBezierInterpolator.EASE_OUT_QUINT.getInterpolation(AndroidUtilities.cascade(f, i - 1, getChildCount() - 1, 3.0f));
            }
            childAt.setAlpha(f);
            childAt.setTranslationY((1.0f - f) * AndroidUtilities.m72dp(24));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Stories.recorder.PreviewButtons$ShareButtonView */
    /* loaded from: classes6.dex */
    public class ShareButtonView extends View {
        ValueAnimator backAnimator;
        private final Paint buttonPaint;
        private final Paint darkenPaint;
        public boolean enabled;
        private AnimatedFloat enabledT;

        /* renamed from: h */
        private final int f1909h;
        private float left;
        float pressedProgress;
        private final StaticLayout staticLayout;
        private final TextPaint textPaint;

        /* renamed from: w */
        private final int f1910w;
        private float width;

        public ShareButtonView(Context context, String str) {
            super(context);
            SpannableStringBuilder append;
            TextPaint textPaint = new TextPaint(1);
            this.textPaint = textPaint;
            Paint paint = new Paint(1);
            this.buttonPaint = paint;
            Paint paint2 = new Paint(1);
            this.darkenPaint = paint2;
            this.enabledT = new AnimatedFloat(this, 0L, 220L, CubicBezierInterpolator.EASE_OUT_QUINT);
            this.enabled = true;
            paint.setColor(-15098625);
            paint2.setColor(1610612736);
            textPaint.setTextSize(AndroidUtilities.m72dp(13));
            textPaint.setColor(-1);
            textPaint.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            SpannableString spannableString = new SpannableString(">");
            Drawable mutate = getResources().getDrawable(C3558R.C3560drawable.attach_arrow_right).mutate();
            mutate.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.SRC_IN));
            mutate.setBounds(0, 0, AndroidUtilities.m72dp(12), AndroidUtilities.m72dp(12));
            spannableString.setSpan(new ImageSpan(mutate, 2), 0, spannableString.length(), 33);
            if (LocaleController.isRTL) {
                append = new SpannableStringBuilder(spannableString).append((CharSequence) "\u2009").append((CharSequence) str.toUpperCase());
            } else {
                append = new SpannableStringBuilder(str.toUpperCase()).append((CharSequence) "\u2009").append((CharSequence) spannableString);
            }
            StaticLayout staticLayout = new StaticLayout(append, textPaint, AndroidUtilities.m72dp(180), Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
            this.staticLayout = staticLayout;
            int lineCount = staticLayout.getLineCount();
            float f = BitmapDescriptorFactory.HUE_RED;
            this.left = lineCount > 0 ? staticLayout.getLineLeft(0) : 0.0f;
            f = staticLayout.getLineCount() > 0 ? staticLayout.getLineWidth(0) : f;
            this.width = f;
            this.f1910w = ((int) f) + AndroidUtilities.m72dp(48);
            this.f1909h = AndroidUtilities.m72dp(40);
            setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stories.recorder.PreviewButtons$ShareButtonView$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    PreviewButtons.ShareButtonView.this.lambda$new$0(view);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(View view) {
            if (!PreviewButtons.this.appearing || PreviewButtons.this.onClickListener == null) {
                return;
            }
            PreviewButtons.this.onClickListener.run(4);
        }

        @Override // android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(this.f1910w, 1073741824), View.MeasureSpec.makeMeasureSpec(this.f1909h, 1073741824));
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            if (isPressed()) {
                float f = this.pressedProgress;
                if (f != 1.0f) {
                    float min = f + (Math.min(40.0f, 1000.0f / AndroidUtilities.screenRefreshRate) / 80.0f);
                    this.pressedProgress = min;
                    this.pressedProgress = Utilities.clamp(min, 1.0f, (float) BitmapDescriptorFactory.HUE_RED);
                    invalidate();
                }
            }
            float f2 = this.enabledT.set(this.enabled ? 1.0f : 0.5f);
            int saveCount = canvas.getSaveCount();
            if (f2 < 1.0f) {
                canvas.saveLayerAlpha(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getWidth(), getHeight(), (int) (f2 * 255.0f), 31);
            }
            float f3 = ((1.0f - this.pressedProgress) * 0.1f) + 0.9f;
            canvas.save();
            canvas.scale(f3, f3, getWidth() / 2.0f, getHeight() / 2.0f);
            canvas.drawRect(AndroidUtilities.m72dp(25), AndroidUtilities.m72dp(4), getWidth() - AndroidUtilities.m72dp(25), getHeight() - AndroidUtilities.m72dp(4), this.darkenPaint);
            canvas.saveLayerAlpha(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getWidth(), getHeight(), 255, 31);
            RectF rectF = AndroidUtilities.rectTmp;
            rectF.set(AndroidUtilities.m72dp(10), AndroidUtilities.m72dp(4), getWidth() - AndroidUtilities.m72dp(10), getHeight() - AndroidUtilities.m72dp(4));
            canvas.drawRoundRect(rectF, AndroidUtilities.m72dp(20), AndroidUtilities.m72dp(20), this.buttonPaint);
            canvas.save();
            canvas.translate(AndroidUtilities.m72dp(26) - this.left, (getHeight() - this.staticLayout.getHeight()) / 2.0f);
            this.staticLayout.draw(canvas);
            canvas.restore();
            canvas.restoreToCount(saveCount);
        }

        @Override // android.view.View
        public void setPressed(boolean z) {
            ValueAnimator valueAnimator;
            if (isPressed() != z) {
                super.setPressed(z);
                invalidate();
                if (z && (valueAnimator = this.backAnimator) != null) {
                    valueAnimator.removeAllListeners();
                    this.backAnimator.cancel();
                }
                if (z) {
                    return;
                }
                float f = this.pressedProgress;
                if (f != BitmapDescriptorFactory.HUE_RED) {
                    ValueAnimator ofFloat = ValueAnimator.ofFloat(f, BitmapDescriptorFactory.HUE_RED);
                    this.backAnimator = ofFloat;
                    ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stories.recorder.PreviewButtons$ShareButtonView$$ExternalSyntheticLambda0
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                            PreviewButtons.ShareButtonView.this.lambda$setPressed$1(valueAnimator2);
                        }
                    });
                    this.backAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Stories.recorder.PreviewButtons.ShareButtonView.1
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            super.onAnimationEnd(animator);
                            ShareButtonView.this.backAnimator = null;
                        }
                    });
                    this.backAnimator.setInterpolator(new OvershootInterpolator(1.5f));
                    this.backAnimator.setDuration(350L);
                    this.backAnimator.start();
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setPressed$1(ValueAnimator valueAnimator) {
            this.pressedProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            invalidate();
        }

        @Override // android.view.View
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.setClassName("android.widget.Button");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Stories.recorder.PreviewButtons$ButtonView */
    /* loaded from: classes6.dex */
    public class ButtonView extends ImageView {
        public ButtonView(Context context, final int i, int i2) {
            super(context);
            setBackground(Theme.createSelectorDrawable(1090519039));
            setScaleType(ImageView.ScaleType.CENTER);
            setImageResource(i2);
            setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.MULTIPLY));
            setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stories.recorder.PreviewButtons$ButtonView$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    PreviewButtons.ButtonView.this.lambda$new$0(i, view);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(int i, View view) {
            if (!PreviewButtons.this.appearing || PreviewButtons.this.onClickListener == null) {
                return;
            }
            PreviewButtons.this.onClickListener.run(Integer.valueOf(i));
        }

        @Override // android.widget.ImageView, android.view.View
        protected void onMeasure(int i, int i2) {
            setMeasuredDimension(AndroidUtilities.m72dp(40), AndroidUtilities.m72dp(40));
        }

        @Override // android.view.View
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.setClassName("android.widget.Button");
        }
    }
}
