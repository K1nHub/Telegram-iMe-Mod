package org.telegram.p043ui.Components.Premium.boosts;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.view.View;
import android.view.animation.OvershootInterpolator;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.AnimatedTextView;
import org.telegram.p043ui.Components.CubicBezierInterpolator;
/* renamed from: org.telegram.ui.Components.Premium.boosts.BoostCounterView */
/* loaded from: classes6.dex */
public class BoostCounterView extends View {
    private final Paint bgPaint;
    private ValueAnimator countAnimator;
    private float countScale;
    private final AnimatedTextView.AnimatedTextDrawable countText;
    private int lastCount;

    public BoostCounterView(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.countScale = 1.0f;
        AnimatedTextView.AnimatedTextDrawable animatedTextDrawable = new AnimatedTextView.AnimatedTextDrawable(false, false, true);
        this.countText = animatedTextDrawable;
        animatedTextDrawable.setAnimationProperties(0.3f, 0L, 250L, CubicBezierInterpolator.EASE_OUT_QUINT);
        animatedTextDrawable.setCallback(this);
        animatedTextDrawable.setTextSize(AndroidUtilities.m104dp(11));
        animatedTextDrawable.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        animatedTextDrawable.setTextColor(-1);
        animatedTextDrawable.setText("");
        animatedTextDrawable.setGravity(17);
        Paint paint = new Paint(1);
        this.bgPaint = paint;
        paint.setColor(-6915073);
        setVisibility(8);
    }

    private void animateCount() {
        ValueAnimator valueAnimator = this.countAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.countAnimator = null;
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
        this.countAnimator = ofFloat;
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.Premium.boosts.BoostCounterView$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                BoostCounterView.this.lambda$animateCount$0(valueAnimator2);
            }
        });
        this.countAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.Premium.boosts.BoostCounterView.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                BoostCounterView.this.countScale = 1.0f;
                BoostCounterView.this.invalidate();
            }
        });
        this.countAnimator.setInterpolator(new OvershootInterpolator(2.0f));
        this.countAnimator.setDuration(200L);
        this.countAnimator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$animateCount$0(ValueAnimator valueAnimator) {
        this.countScale = Math.max(1.0f, ((Float) valueAnimator.getAnimatedValue()).floatValue());
        invalidate();
    }

    public void setCount(int i, boolean z) {
        if (!BoostRepository.isMultiBoostsAvailable()) {
            i = 0;
        }
        if (i > 0) {
            setVisibility(0);
        }
        if (z) {
            this.countText.cancelAnimation();
        }
        if (z && i != this.lastCount && i > 0) {
            animateCount();
        }
        this.lastCount = i;
        this.countText.setText("x" + i, z);
        invalidate();
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m104dp(26), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m104dp(26), 1073741824));
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.save();
        canvas.translate(AndroidUtilities.m104dp(3), AndroidUtilities.m104dp(3));
        Rect rect = AndroidUtilities.rectTmp2;
        rect.set(0, 0, AndroidUtilities.m104dp(20), AndroidUtilities.m104dp(20));
        RectF rectF = AndroidUtilities.rectTmp;
        rectF.set(rect);
        if (this.countScale != 1.0f) {
            canvas.save();
            float f = this.countScale;
            canvas.scale(f, f, rect.centerX(), rect.centerY());
        }
        canvas.drawRoundRect(rectF, AndroidUtilities.m104dp(10), AndroidUtilities.m104dp(10), this.bgPaint);
        this.countText.setBounds(rect);
        this.countText.draw(canvas);
        if (this.countScale != 1.0f) {
            canvas.restore();
        }
        canvas.restore();
    }
}
