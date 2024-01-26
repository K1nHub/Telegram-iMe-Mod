package org.telegram.p043ui.Stories.recorder;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.OvershootInterpolator;
import android.widget.FrameLayout;
import androidx.core.content.ContextCompat;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.AnimatedFloat;
import org.telegram.p043ui.Components.AnimatedTextView;
import org.telegram.p043ui.Components.CircularProgressDrawable;
import org.telegram.p043ui.Components.CubicBezierInterpolator;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.ScaleStateListAnimator;
/* renamed from: org.telegram.ui.Stories.recorder.ButtonWithCounterView */
/* loaded from: classes6.dex */
public class ButtonWithCounterView extends FrameLayout {
    private float countAlpha;
    private final AnimatedFloat countAlphaAnimated;
    private ValueAnimator countAnimator;
    private boolean countFilled;
    private float countScale;
    private final AnimatedTextView.AnimatedTextDrawable countText;
    private Drawable counterDrawable;
    private boolean enabled;
    private ValueAnimator enabledAnimator;
    private float enabledT;
    private final boolean filled;
    private int globalAlpha;
    private int lastCount;
    private boolean loading;
    private ValueAnimator loadingAnimator;
    private CircularProgressDrawable loadingDrawable;
    private float loadingT;
    private final Paint paint;
    private Theme.ResourcesProvider resourcesProvider;
    private final View rippleView;
    private boolean showZero;
    public final AnimatedTextView.AnimatedTextDrawable subText;
    private float subTextT;
    private boolean subTextVisible;
    private ValueAnimator subTextVisibleAnimator;
    public final AnimatedTextView.AnimatedTextDrawable text;
    private Runnable tick;
    private int timerSeconds;
    private boolean withCounterIcon;

    protected float calculateCounterWidth(float f, float f2) {
        return f * f2;
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j) {
        return false;
    }

    public ButtonWithCounterView(Context context, Theme.ResourcesProvider resourcesProvider) {
        this(context, true, resourcesProvider);
    }

    public ButtonWithCounterView(Context context, boolean z, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
        this.countAlphaAnimated = new AnimatedFloat(350L, cubicBezierInterpolator);
        this.countFilled = true;
        this.timerSeconds = 0;
        this.subTextT = BitmapDescriptorFactory.HUE_RED;
        this.loadingT = BitmapDescriptorFactory.HUE_RED;
        this.countScale = 1.0f;
        this.enabledT = 1.0f;
        this.enabled = true;
        this.globalAlpha = 255;
        this.filled = z;
        this.resourcesProvider = resourcesProvider;
        ScaleStateListAnimator.apply(this, 0.02f, 1.2f);
        View view = new View(context);
        this.rippleView = view;
        view.setBackground(Theme.createRadSelectorDrawable(Theme.getColor(Theme.key_listSelector, resourcesProvider), 8, 8));
        addView(view, LayoutHelper.createFrame(-1, -1));
        if (z) {
            setBackground(Theme.createRoundRectDrawable(AndroidUtilities.m107dp(8), Theme.getColor(Theme.key_featuredStickers_addButton, resourcesProvider)));
        }
        Paint paint = new Paint(1);
        this.paint = paint;
        int i = Theme.key_featuredStickers_buttonText;
        paint.setColor(Theme.getColor(i, resourcesProvider));
        AnimatedTextView.AnimatedTextDrawable animatedTextDrawable = new AnimatedTextView.AnimatedTextDrawable(true, true, false);
        this.text = animatedTextDrawable;
        animatedTextDrawable.setAnimationProperties(0.3f, 0L, 250L, cubicBezierInterpolator);
        animatedTextDrawable.setCallback(this);
        animatedTextDrawable.setTextSize(AndroidUtilities.m107dp(14));
        if (z) {
            animatedTextDrawable.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        }
        animatedTextDrawable.setTextColor(Theme.getColor(z ? i : Theme.key_featuredStickers_addButton, resourcesProvider));
        animatedTextDrawable.setGravity(1);
        AnimatedTextView.AnimatedTextDrawable animatedTextDrawable2 = new AnimatedTextView.AnimatedTextDrawable(true, true, false);
        this.subText = animatedTextDrawable2;
        animatedTextDrawable2.setAnimationProperties(0.3f, 0L, 250L, cubicBezierInterpolator);
        animatedTextDrawable2.setCallback(this);
        animatedTextDrawable2.setTextSize(AndroidUtilities.m107dp(12));
        animatedTextDrawable2.setTextColor(Theme.getColor(z ? i : Theme.key_featuredStickers_addButton, resourcesProvider));
        animatedTextDrawable2.setGravity(1);
        AnimatedTextView.AnimatedTextDrawable animatedTextDrawable3 = new AnimatedTextView.AnimatedTextDrawable(false, false, true);
        this.countText = animatedTextDrawable3;
        animatedTextDrawable3.setAnimationProperties(0.3f, 0L, 250L, cubicBezierInterpolator);
        animatedTextDrawable3.setCallback(this);
        animatedTextDrawable3.setTextSize(AndroidUtilities.m107dp(12));
        animatedTextDrawable3.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        animatedTextDrawable3.setTextColor(Theme.getColor(Theme.key_featuredStickers_addButton, resourcesProvider));
        animatedTextDrawable3.setText("");
        animatedTextDrawable3.setGravity(1);
        setWillNotDraw(false);
    }

    public void updateColors() {
        this.rippleView.setBackground(Theme.createRadSelectorDrawable(Theme.getColor(Theme.key_listSelector, this.resourcesProvider), 8, 8));
        this.text.setTextColor(Theme.getColor(this.filled ? Theme.key_featuredStickers_buttonText : Theme.key_featuredStickers_addButton, this.resourcesProvider));
        this.subText.setTextColor(Theme.getColor(this.filled ? Theme.key_featuredStickers_buttonText : Theme.key_featuredStickers_addButton, this.resourcesProvider));
        this.countText.setTextColor(Theme.getColor(Theme.key_featuredStickers_addButton, this.resourcesProvider));
    }

    public void setCounterColor(int i) {
        this.countText.setTextColor(i);
        this.counterDrawable.setColorFilter(new PorterDuffColorFilter(i, PorterDuff.Mode.SRC_IN));
    }

    public void setCountFilled(boolean z) {
        int textColor;
        this.countFilled = z;
        this.countText.setTextSize(AndroidUtilities.m107dp(z ? 12 : 14));
        AnimatedTextView.AnimatedTextDrawable animatedTextDrawable = this.countText;
        if (this.countFilled) {
            textColor = Theme.getColor(Theme.key_featuredStickers_addButton, this.resourcesProvider);
        } else {
            textColor = this.text.getTextColor();
        }
        animatedTextDrawable.setTextColor(textColor);
    }

    public void setTimer(int i, final Runnable runnable) {
        AndroidUtilities.cancelRunOnUIThread(this.tick);
        setCountFilled(false);
        this.timerSeconds = i;
        setCount(i, false);
        setShowZero(false);
        Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.Stories.recorder.ButtonWithCounterView$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                ButtonWithCounterView.this.lambda$setTimer$0(runnable);
            }
        };
        this.tick = runnable2;
        AndroidUtilities.runOnUIThread(runnable2, 1000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setTimer$0(Runnable runnable) {
        int i = this.timerSeconds - 1;
        this.timerSeconds = i;
        setCount(i, true);
        if (this.timerSeconds > 0) {
            AndroidUtilities.runOnUIThread(this.tick, 1000L);
            return;
        }
        setClickable(true);
        if (runnable != null) {
            runnable.run();
        }
    }

    public boolean isTimerActive() {
        return this.timerSeconds > 0;
    }

    public void setText(CharSequence charSequence, boolean z) {
        setText(charSequence, z, true);
    }

    public void setText(CharSequence charSequence, boolean z, boolean z2) {
        if (z) {
            this.text.cancelAnimation();
        }
        this.text.setText(charSequence, z, z2);
        setContentDescription(charSequence);
        invalidate();
    }

    private void cleanSubTextVisibleAnimator() {
        ValueAnimator valueAnimator = this.subTextVisibleAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.subTextVisibleAnimator = null;
        }
    }

    public void setSubText(CharSequence charSequence, boolean z) {
        boolean z2 = charSequence != null;
        if (z) {
            this.subText.cancelAnimation();
        }
        setContentDescription(charSequence);
        invalidate();
        if (this.subTextVisible && !z2) {
            cleanSubTextVisibleAnimator();
            ValueAnimator ofFloat = ValueAnimator.ofFloat(this.subTextT, BitmapDescriptorFactory.HUE_RED);
            this.subTextVisibleAnimator = ofFloat;
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stories.recorder.ButtonWithCounterView$$ExternalSyntheticLambda2
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    ButtonWithCounterView.this.lambda$setSubText$1(valueAnimator);
                }
            });
            this.subTextVisibleAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Stories.recorder.ButtonWithCounterView.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    ButtonWithCounterView.this.subTextVisible = false;
                    ButtonWithCounterView.this.subText.setText(null, false);
                }
            });
            this.subTextVisibleAnimator.setDuration(200L);
            this.subTextVisibleAnimator.setInterpolator(CubicBezierInterpolator.DEFAULT);
            this.subTextVisibleAnimator.start();
        } else {
            this.subText.setText(charSequence, z);
        }
        if (this.subTextVisible || !z2) {
            return;
        }
        this.subTextVisible = true;
        cleanSubTextVisibleAnimator();
        ValueAnimator ofFloat2 = ValueAnimator.ofFloat(this.subTextT, 1.0f);
        this.subTextVisibleAnimator = ofFloat2;
        ofFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stories.recorder.ButtonWithCounterView$$ExternalSyntheticLambda3
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                ButtonWithCounterView.this.lambda$setSubText$2(valueAnimator);
            }
        });
        this.subTextVisibleAnimator.setDuration(200L);
        this.subTextVisibleAnimator.setInterpolator(CubicBezierInterpolator.DEFAULT);
        this.subTextVisibleAnimator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setSubText$1(ValueAnimator valueAnimator) {
        this.subTextT = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setSubText$2(ValueAnimator valueAnimator) {
        this.subTextT = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        invalidate();
    }

    public void setLoading(final boolean z) {
        if (this.loading != z) {
            ValueAnimator valueAnimator = this.loadingAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
                this.loadingAnimator = null;
            }
            float[] fArr = new float[2];
            fArr[0] = this.loadingT;
            this.loading = z;
            fArr[1] = z ? 1.0f : BitmapDescriptorFactory.HUE_RED;
            ValueAnimator ofFloat = ValueAnimator.ofFloat(fArr);
            this.loadingAnimator = ofFloat;
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stories.recorder.ButtonWithCounterView$$ExternalSyntheticLambda1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    ButtonWithCounterView.this.lambda$setLoading$3(valueAnimator2);
                }
            });
            this.loadingAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Stories.recorder.ButtonWithCounterView.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    ButtonWithCounterView.this.loadingT = z ? 1.0f : BitmapDescriptorFactory.HUE_RED;
                    ButtonWithCounterView.this.invalidate();
                }
            });
            this.loadingAnimator.setDuration(320L);
            this.loadingAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
            this.loadingAnimator.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setLoading$3(ValueAnimator valueAnimator) {
        this.loadingT = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        invalidate();
    }

    public boolean isLoading() {
        return this.loading;
    }

    private void animateCount() {
        ValueAnimator valueAnimator = this.countAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.countAnimator = null;
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
        this.countAnimator = ofFloat;
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stories.recorder.ButtonWithCounterView$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                ButtonWithCounterView.this.lambda$animateCount$4(valueAnimator2);
            }
        });
        this.countAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Stories.recorder.ButtonWithCounterView.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                ButtonWithCounterView.this.countScale = 1.0f;
                ButtonWithCounterView.this.invalidate();
            }
        });
        this.countAnimator.setInterpolator(new OvershootInterpolator(2.0f));
        this.countAnimator.setDuration(200L);
        this.countAnimator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$animateCount$4(ValueAnimator valueAnimator) {
        this.countScale = Math.max(1.0f, ((Float) valueAnimator.getAnimatedValue()).floatValue());
        invalidate();
    }

    public void withCounterIcon() {
        this.withCounterIcon = true;
        Drawable mutate = ContextCompat.getDrawable(getContext(), C3632R.C3634drawable.mini_boost_button).mutate();
        this.counterDrawable = mutate;
        mutate.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_featuredStickers_addButton, this.resourcesProvider), PorterDuff.Mode.SRC_IN));
    }

    public void setShowZero(boolean z) {
        this.showZero = z;
    }

    public void setCount(int i, boolean z) {
        int i2;
        if (z) {
            this.countText.cancelAnimation();
        }
        if (z && i != (i2 = this.lastCount) && i > 0 && i2 > 0) {
            animateCount();
        }
        this.lastCount = i;
        this.countAlpha = (i != 0 || this.showZero) ? 1.0f : BitmapDescriptorFactory.HUE_RED;
        AnimatedTextView.AnimatedTextDrawable animatedTextDrawable = this.countText;
        animatedTextDrawable.setText("" + i, z);
        invalidate();
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        if (this.enabled != z) {
            ValueAnimator valueAnimator = this.enabledAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
                this.enabledAnimator = null;
            }
            float[] fArr = new float[2];
            fArr[0] = this.enabledT;
            this.enabled = z;
            fArr[1] = z ? 1.0f : BitmapDescriptorFactory.HUE_RED;
            ValueAnimator ofFloat = ValueAnimator.ofFloat(fArr);
            this.enabledAnimator = ofFloat;
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stories.recorder.ButtonWithCounterView$$ExternalSyntheticLambda4
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    ButtonWithCounterView.this.lambda$setEnabled$5(valueAnimator2);
                }
            });
            this.enabledAnimator.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setEnabled$5(ValueAnimator valueAnimator) {
        this.enabledT = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        invalidate();
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return this.text == drawable || this.subText == drawable || this.countText == drawable || super.verifyDrawable(drawable);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        boolean z;
        float f;
        this.rippleView.draw(canvas);
        if (this.loadingT > BitmapDescriptorFactory.HUE_RED) {
            if (this.loadingDrawable == null) {
                this.loadingDrawable = new CircularProgressDrawable(this.text.getTextColor());
            }
            int m107dp = (int) ((1.0f - this.loadingT) * AndroidUtilities.m107dp(24));
            this.loadingDrawable.setBounds(0, m107dp, getWidth(), getHeight() + m107dp);
            this.loadingDrawable.setAlpha((int) (this.loadingT * 255.0f));
            this.loadingDrawable.draw(canvas);
            invalidate();
        }
        float f2 = this.loadingT;
        if (f2 < 1.0f) {
            if (f2 != BitmapDescriptorFactory.HUE_RED) {
                canvas.save();
                canvas.translate(BitmapDescriptorFactory.HUE_RED, (int) (this.loadingT * AndroidUtilities.m107dp(-24)));
                canvas.scale(1.0f, 1.0f - (this.loadingT * 0.4f));
                z = true;
            } else {
                z = false;
            }
            float currentWidth = this.text.getCurrentWidth();
            float f3 = this.countAlphaAnimated.set(this.countAlpha);
            float m107dp2 = this.withCounterIcon ? AndroidUtilities.m107dp(12) : 0.0f;
            float calculateCounterWidth = currentWidth + m107dp2 + calculateCounterWidth(AndroidUtilities.m108dp(15.66f) + this.countText.getCurrentWidth(), f3);
            Rect rect = AndroidUtilities.rectTmp2;
            rect.set((int) (((getMeasuredWidth() - calculateCounterWidth) - getWidth()) / 2.0f), (int) (((getMeasuredHeight() - this.text.getHeight()) / 2.0f) - AndroidUtilities.m107dp(1)), (int) ((((getMeasuredWidth() - calculateCounterWidth) + getWidth()) / 2.0f) + currentWidth), (int) (((getMeasuredHeight() + this.text.getHeight()) / 2.0f) - AndroidUtilities.m107dp(1)));
            rect.offset(0, (int) ((-AndroidUtilities.m107dp(7)) * this.subTextT));
            this.text.setAlpha((int) (this.globalAlpha * (1.0f - this.loadingT) * AndroidUtilities.lerp(0.5f, 1.0f, this.enabledT)));
            this.text.setBounds(rect);
            this.text.draw(canvas);
            if (this.subTextVisible) {
                calculateCounterWidth = this.subText.getCurrentWidth();
                rect.set((int) (((getMeasuredWidth() - calculateCounterWidth) - getWidth()) / 2.0f), (int) (((getMeasuredHeight() - this.subText.getHeight()) / 2.0f) - AndroidUtilities.m107dp(1)), (int) ((((getMeasuredWidth() - calculateCounterWidth) + getWidth()) / 2.0f) + calculateCounterWidth), (int) (((getMeasuredHeight() + this.subText.getHeight()) / 2.0f) - AndroidUtilities.m107dp(1)));
                rect.offset(0, AndroidUtilities.m107dp(11));
                canvas.save();
                float lerp = AndroidUtilities.lerp(0.1f, 1.0f, this.subTextT);
                canvas.scale(lerp, lerp, rect.centerX(), rect.bottom);
                this.subText.setAlpha((int) ((1.0f - this.loadingT) * 200.0f * this.subTextT * AndroidUtilities.lerp(0.5f, 1.0f, this.enabledT)));
                this.subText.setBounds(rect);
                this.subText.draw(canvas);
                canvas.restore();
            }
            rect.set((int) (((getMeasuredWidth() - calculateCounterWidth) / 2.0f) + currentWidth + AndroidUtilities.m107dp(this.countFilled ? 5 : 2)), (int) ((getMeasuredHeight() - AndroidUtilities.m107dp(18)) / 2.0f), (int) (((getMeasuredWidth() - calculateCounterWidth) / 2.0f) + currentWidth + AndroidUtilities.m107dp((this.countFilled ? 5 : 2) + 4 + 4) + Math.max(AndroidUtilities.m107dp(9), this.countText.getCurrentWidth() + m107dp2)), (int) ((getMeasuredHeight() + AndroidUtilities.m107dp(18)) / 2.0f));
            RectF rectF = AndroidUtilities.rectTmp;
            rectF.set(rect);
            if (this.countScale != 1.0f) {
                canvas.save();
                float f4 = this.countScale;
                canvas.scale(f4, f4, rect.centerX(), rect.centerY());
            }
            if (this.countFilled) {
                f = 0.5f;
                this.paint.setAlpha((int) (this.globalAlpha * (1.0f - this.loadingT) * f3 * f3 * AndroidUtilities.lerp(0.5f, 1.0f, this.enabledT)));
                float m107dp3 = this.withCounterIcon ? AndroidUtilities.m107dp(4) : AndroidUtilities.m107dp(10);
                canvas.drawRoundRect(rectF, m107dp3, m107dp3, this.paint);
            } else {
                f = 0.5f;
            }
            rect.offset(-AndroidUtilities.m108dp((this.countText.getText() != null ? this.countText.getText().length() : 0) > 1 ? 0.3f : BitmapDescriptorFactory.HUE_RED), -AndroidUtilities.m108dp(0.4f));
            AnimatedTextView.AnimatedTextDrawable animatedTextDrawable = this.countText;
            float f5 = this.globalAlpha * (1.0f - this.loadingT) * f3;
            if (this.countFilled) {
                f = 1.0f;
            }
            animatedTextDrawable.setAlpha((int) (f5 * f));
            this.countText.setBounds(rect);
            canvas.save();
            if (this.countFilled && this.withCounterIcon) {
                this.counterDrawable.setAlpha((int) (this.globalAlpha * (1.0f - this.loadingT) * f3 * 1.0f));
                this.counterDrawable.setBounds(AndroidUtilities.m107dp(1) + rect.left, AndroidUtilities.m107dp(2) + rect.top, AndroidUtilities.m107dp(1) + rect.left + this.counterDrawable.getIntrinsicWidth(), AndroidUtilities.m107dp(2) + rect.top + this.counterDrawable.getIntrinsicHeight());
                this.counterDrawable.draw(canvas);
                canvas.translate(m107dp2 / 2.0f, BitmapDescriptorFactory.HUE_RED);
            }
            this.countText.draw(canvas);
            canvas.restore();
            if (this.countScale != 1.0f) {
                canvas.restore();
            }
            if (z) {
                canvas.restore();
            }
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("android.widget.Button");
    }

    public void setTextAlpha(float f) {
        this.text.setAlpha((int) (f * 255.0f));
    }

    public void setGlobalAlpha(float f) {
        this.globalAlpha = (int) (f * 255.0f);
    }
}
