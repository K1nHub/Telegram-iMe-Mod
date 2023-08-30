package org.telegram.p043ui.Components.Premium;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.core.graphics.ColorUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BuildVars;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.AnimatedFloat;
import org.telegram.p043ui.Components.AnimatedTextView;
import org.telegram.p043ui.Components.CounterView;
import org.telegram.p043ui.Components.CubicBezierInterpolator;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.RLottieImageView;
import org.telegram.p043ui.Components.voip.CellFlickerDrawable;
/* renamed from: org.telegram.ui.Components.Premium.PremiumButtonView */
/* loaded from: classes6.dex */
public class PremiumButtonView extends FrameLayout {
    public FrameLayout buttonLayout;
    public AnimatedTextView buttonTextView;
    AnimatedFloat counterOffset;
    AnimatedFloat counterOffset2;
    CounterView counterView;
    public boolean drawGradient;
    private boolean drawOverlayColor;
    CellFlickerDrawable flickerDrawable;
    RLottieImageView iconView;
    private boolean inc;
    private boolean isButtonTextSet;
    private boolean isFlickerDisabled;
    ValueAnimator overlayAnimator;
    private float overlayProgress;
    public AnimatedTextView overlayTextView;
    private Paint paintOverlayPaint;
    Path path;
    private float progress;
    private int radius;
    private boolean showOverlay;

    public void setOverlayColor(int i) {
        this.paintOverlayPaint.setColor(i);
    }

    public PremiumButtonView(Context context, boolean z) {
        this(context, AndroidUtilities.m72dp(8), z);
    }

    public PremiumButtonView(Context context, int i, boolean z) {
        super(context);
        this.paintOverlayPaint = new Paint(1);
        this.path = new Path();
        this.drawGradient = true;
        this.counterOffset = new AnimatedFloat(this);
        this.counterOffset2 = new AnimatedFloat(this);
        this.radius = i;
        CellFlickerDrawable cellFlickerDrawable = new CellFlickerDrawable();
        this.flickerDrawable = cellFlickerDrawable;
        cellFlickerDrawable.animationSpeedScale = 1.2f;
        cellFlickerDrawable.drawFrame = false;
        cellFlickerDrawable.repeatProgress = 4.0f;
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(0);
        AnimatedTextView animatedTextView = new AnimatedTextView(context);
        this.buttonTextView = animatedTextView;
        animatedTextView.setAnimationProperties(0.35f, 0L, 350L, CubicBezierInterpolator.EASE_OUT_QUINT);
        this.buttonTextView.setGravity(17);
        this.buttonTextView.setTextColor(-1);
        this.buttonTextView.setTextSize(AndroidUtilities.m72dp(14));
        this.buttonTextView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        RLottieImageView rLottieImageView = new RLottieImageView(context);
        this.iconView = rLottieImageView;
        rLottieImageView.setColorFilter(-1);
        this.iconView.setVisibility(8);
        FrameLayout frameLayout = new FrameLayout(context);
        this.buttonLayout = frameLayout;
        frameLayout.addView(linearLayout, LayoutHelper.createFrame(-2, -2, 17));
        this.buttonLayout.setBackground(Theme.createSimpleSelectorRoundRectDrawable(i, 0, ColorUtils.setAlphaComponent(-1, 120)));
        linearLayout.addView(this.buttonTextView, LayoutHelper.createLinear(-2, -2, 16));
        linearLayout.addView(this.iconView, LayoutHelper.createLinear(24, 24, BitmapDescriptorFactory.HUE_RED, 16, 4, 0, 0, 0));
        addView(this.buttonLayout);
        if (z) {
            AnimatedTextView animatedTextView2 = new AnimatedTextView(context, true, true, true);
            this.overlayTextView = animatedTextView2;
            animatedTextView2.setPadding(AndroidUtilities.m72dp(34), 0, AndroidUtilities.m72dp(34), 0);
            this.overlayTextView.setGravity(17);
            this.overlayTextView.setTextColor(Theme.getColor(Theme.key_featuredStickers_buttonText));
            this.overlayTextView.setTextSize(AndroidUtilities.m72dp(14));
            this.overlayTextView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            this.overlayTextView.getDrawable().setAllowCancel(true);
            this.overlayTextView.setBackground(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.m72dp(8), 0, ColorUtils.setAlphaComponent(-1, 120)));
            addView(this.overlayTextView);
            this.paintOverlayPaint.setColor(Theme.getColor(Theme.key_featuredStickers_addButton));
            updateOverlayProgress();
        }
    }

    public RLottieImageView getIconView() {
        return this.iconView;
    }

    public AnimatedTextView getTextView() {
        return this.buttonTextView;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        CounterView counterView = this.counterView;
        if (counterView != null) {
            this.counterOffset.set(((counterView.counterDrawable.getWidth() * 0.85f) + AndroidUtilities.m72dp(3)) / 2.0f);
            this.counterOffset2.set((getMeasuredWidth() / 2.0f) + (this.overlayTextView.getDrawable().getWidth() / 2.0f) + AndroidUtilities.m72dp(3));
            this.overlayTextView.setTranslationX(-this.counterOffset.get());
            this.counterView.setTranslationX(this.counterOffset2.get() - this.counterOffset.get());
        } else {
            AnimatedTextView animatedTextView = this.overlayTextView;
            if (animatedTextView != null) {
                animatedTextView.setTranslationX(BitmapDescriptorFactory.HUE_RED);
            }
        }
        RectF rectF = AndroidUtilities.rectTmp;
        rectF.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), getMeasuredHeight());
        if (this.overlayProgress != 1.0f || !this.drawOverlayColor) {
            if (this.inc) {
                float f = this.progress + 0.016f;
                this.progress = f;
                if (f > 3.0f) {
                    this.inc = false;
                }
            } else {
                float f2 = this.progress - 0.016f;
                this.progress = f2;
                if (f2 < 1.0f) {
                    this.inc = true;
                }
            }
            if (this.drawGradient) {
                PremiumGradient.getInstance().updateMainGradientMatrix(0, 0, getMeasuredWidth(), getMeasuredHeight(), this.progress * (-getMeasuredWidth()) * 0.1f, BitmapDescriptorFactory.HUE_RED);
                int i = this.radius;
                canvas.drawRoundRect(rectF, i, i, PremiumGradient.getInstance().getMainGradientPaint());
            } else {
                this.paintOverlayPaint.setAlpha(255);
                int i2 = this.radius;
                canvas.drawRoundRect(rectF, i2, i2, this.paintOverlayPaint);
            }
            invalidate();
        }
        if (!BuildVars.IS_BILLING_UNAVAILABLE && !this.isFlickerDisabled) {
            this.flickerDrawable.setParentWidth(getMeasuredWidth());
            this.flickerDrawable.draw(canvas, rectF, this.radius, null);
        }
        float f3 = this.overlayProgress;
        if (f3 != BitmapDescriptorFactory.HUE_RED && this.drawOverlayColor) {
            this.paintOverlayPaint.setAlpha((int) (f3 * 255.0f));
            if (this.overlayProgress != 1.0f) {
                this.path.rewind();
                this.path.addCircle(getMeasuredWidth() / 2.0f, getMeasuredHeight() / 2.0f, Math.max(getMeasuredWidth(), getMeasuredHeight()) * 1.4f * this.overlayProgress, Path.Direction.CW);
                canvas.save();
                canvas.clipPath(this.path);
                int i3 = this.radius;
                canvas.drawRoundRect(rectF, i3, i3, this.paintOverlayPaint);
                canvas.restore();
            } else {
                int i4 = this.radius;
                canvas.drawRoundRect(rectF, i4, i4, this.paintOverlayPaint);
            }
        }
        super.dispatchDraw(canvas);
    }

    public void setOverlayText(String str, boolean z, boolean z2) {
        this.showOverlay = true;
        this.drawOverlayColor = z;
        this.overlayTextView.setText(str, z2);
        updateOverlay(z2);
    }

    private void updateOverlay(boolean z) {
        ValueAnimator valueAnimator = this.overlayAnimator;
        if (valueAnimator != null) {
            valueAnimator.removeAllListeners();
            this.overlayAnimator.cancel();
        }
        if (!z) {
            this.overlayProgress = this.showOverlay ? 1.0f : 0.0f;
            updateOverlayProgress();
            return;
        }
        float[] fArr = new float[2];
        fArr[0] = this.overlayProgress;
        fArr[1] = this.showOverlay ? 1.0f : 0.0f;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(fArr);
        this.overlayAnimator = ofFloat;
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.Premium.PremiumButtonView.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                PremiumButtonView.this.overlayProgress = ((Float) valueAnimator2.getAnimatedValue()).floatValue();
                PremiumButtonView.this.updateOverlayProgress();
            }
        });
        this.overlayAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.Premium.PremiumButtonView.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                PremiumButtonView premiumButtonView = PremiumButtonView.this;
                premiumButtonView.overlayProgress = premiumButtonView.showOverlay ? 1.0f : BitmapDescriptorFactory.HUE_RED;
                PremiumButtonView.this.updateOverlayProgress();
            }
        });
        this.overlayAnimator.setDuration(250L);
        this.overlayAnimator.setInterpolator(CubicBezierInterpolator.DEFAULT);
        this.overlayAnimator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateOverlayProgress() {
        this.overlayTextView.setAlpha(this.overlayProgress);
        this.overlayTextView.setTranslationY(AndroidUtilities.m72dp(12) * (1.0f - this.overlayProgress));
        this.buttonLayout.setAlpha(1.0f - this.overlayProgress);
        this.buttonLayout.setTranslationY((-AndroidUtilities.m72dp(12)) * this.overlayProgress);
        this.buttonLayout.setVisibility(this.overlayProgress == 1.0f ? 4 : 0);
        this.overlayTextView.setVisibility(this.overlayProgress != BitmapDescriptorFactory.HUE_RED ? 0 : 4);
        invalidate();
    }

    public void clearOverlayText() {
        this.showOverlay = false;
        updateOverlay(true);
    }

    public void setIcon(int i) {
        this.iconView.setAnimation(i, 24, 24);
        CellFlickerDrawable cellFlickerDrawable = this.flickerDrawable;
        cellFlickerDrawable.progress = 2.0f;
        cellFlickerDrawable.setOnRestartCallback(new Runnable() { // from class: org.telegram.ui.Components.Premium.PremiumButtonView$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                PremiumButtonView.this.lambda$setIcon$0();
            }
        });
        invalidate();
        this.iconView.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setIcon$0() {
        this.iconView.getAnimatedDrawable().setCurrentFrame(0, true);
        this.iconView.playAnimation();
    }

    public void hideIcon() {
        this.flickerDrawable.setOnRestartCallback(null);
        this.iconView.setVisibility(8);
    }

    public void setFlickerDisabled(boolean z) {
        this.isFlickerDisabled = z;
        invalidate();
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        this.buttonLayout.setEnabled(z);
    }

    @Override // android.view.View
    public boolean isEnabled() {
        return this.buttonLayout.isEnabled();
    }

    public void setButton(String str, View.OnClickListener onClickListener) {
        setButton(str, onClickListener, false);
    }

    public void setButton(String str, View.OnClickListener onClickListener, boolean z) {
        if (!this.isButtonTextSet && z) {
            z = true;
        }
        this.isButtonTextSet = true;
        if (z && this.buttonTextView.isAnimating()) {
            this.buttonTextView.cancelAnimation();
        }
        this.buttonTextView.setText(str, z);
        this.buttonLayout.setOnClickListener(onClickListener);
    }

    public void checkCounterView() {
        if (this.counterView == null) {
            CounterView counterView = new CounterView(getContext(), null);
            this.counterView = counterView;
            counterView.setGravity(3);
            this.counterView.setColors(Theme.key_featuredStickers_addButton, Theme.key_featuredStickers_buttonText);
            this.counterView.counterDrawable.circleScale = 0.8f;
            setClipChildren(false);
            addView(this.counterView, LayoutHelper.createFrame(-1, 24, 16));
        }
    }
}
