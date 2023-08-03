package org.telegram.p043ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.animation.OvershootInterpolator;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* renamed from: org.telegram.ui.Components.ButtonBounce */
/* loaded from: classes6.dex */
public class ButtonBounce {
    private ValueAnimator animator;
    private final float durationMultiplier;
    private boolean isPressed;
    private float pressedT;
    private View view;

    public ButtonBounce(View view) {
        this.view = view;
        this.durationMultiplier = 1.0f;
    }

    public ButtonBounce(View view, float f) {
        this.view = view;
        this.durationMultiplier = f;
    }

    public void setView(View view) {
        this.view = view;
    }

    public void setPressed(final boolean z) {
        if (this.isPressed != z) {
            this.isPressed = z;
            ValueAnimator valueAnimator = this.animator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            float[] fArr = new float[2];
            fArr[0] = this.pressedT;
            fArr[1] = z ? 1.0f : BitmapDescriptorFactory.HUE_RED;
            ValueAnimator ofFloat = ValueAnimator.ofFloat(fArr);
            this.animator = ofFloat;
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.ButtonBounce$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    ButtonBounce.this.lambda$setPressed$0(valueAnimator2);
                }
            });
            this.animator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ButtonBounce.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    ButtonBounce.this.animator = null;
                    ButtonBounce.this.pressedT = z ? 1.0f : BitmapDescriptorFactory.HUE_RED;
                    ButtonBounce.this.invalidate();
                }
            });
            if (this.isPressed) {
                this.animator.setInterpolator(CubicBezierInterpolator.DEFAULT);
                this.animator.setDuration(this.durationMultiplier * 60.0f);
            } else {
                this.animator.setInterpolator(new OvershootInterpolator(5.0f));
                this.animator.setDuration(this.durationMultiplier * 350.0f);
            }
            this.animator.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setPressed$0(ValueAnimator valueAnimator) {
        this.pressedT = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        invalidate();
    }

    public float getScale(float f) {
        return (1.0f - f) + (f * (1.0f - this.pressedT));
    }

    public boolean isPressed() {
        return this.isPressed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void invalidate() {
        View view = this.view;
        if (view != null) {
            view.invalidate();
        }
    }
}
