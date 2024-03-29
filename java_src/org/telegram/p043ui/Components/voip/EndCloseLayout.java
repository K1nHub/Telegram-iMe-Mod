package org.telegram.p043ui.Components.voip;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ArgbEvaluator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.transition.ChangeBounds;
import android.transition.TransitionManager;
import android.transition.TransitionSet;
import android.transition.TransitionValues;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.core.content.ContextCompat;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.LocaleController;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.CubicBezierInterpolator;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.voip.EndCloseLayout;
/* renamed from: org.telegram.ui.Components.voip.EndCloseLayout */
/* loaded from: classes6.dex */
public class EndCloseLayout extends FrameLayout {
    private final EndCloseView endCloseView;
    private boolean isClosedState;
    private final TransitionSet transitionSet;

    public EndCloseLayout(Context context) {
        super(context);
        this.isClosedState = false;
        setWillNotDraw(false);
        EndCloseView endCloseView = new EndCloseView(context);
        this.endCloseView = endCloseView;
        addView(endCloseView, LayoutHelper.createFrame(52, 52, 5));
        TransitionSet transitionSet = new TransitionSet();
        this.transitionSet = transitionSet;
        transitionSet.setOrdering(0);
        transitionSet.addTransition(new C59311(this));
        transitionSet.setDuration(500L);
        transitionSet.setInterpolator((TimeInterpolator) CubicBezierInterpolator.DEFAULT);
    }

    /* renamed from: org.telegram.ui.Components.voip.EndCloseLayout$1 */
    /* loaded from: classes6.dex */
    class C59311 extends ChangeBounds {
        C59311(EndCloseLayout endCloseLayout) {
        }

        @Override // android.transition.ChangeBounds, android.transition.Transition
        public void captureStartValues(TransitionValues transitionValues) {
            super.captureStartValues(transitionValues);
            View view = transitionValues.view;
            if (view instanceof EndCloseView) {
                int i = ((EndCloseView) view).backColor;
                int i2 = ((EndCloseView) view).round;
                int i3 = ((EndCloseView) view).callDeclineAlpha;
                int i4 = ((EndCloseView) view).closeTextAlpha;
                transitionValues.values.put("back_color_end_close", Integer.valueOf(i));
                transitionValues.values.put("round_end_close", Integer.valueOf(i2));
                transitionValues.values.put("decline_call_alpha_end_close", Integer.valueOf(i3));
                transitionValues.values.put("close_text_alpha_end_close", Integer.valueOf(i4));
            }
        }

        @Override // android.transition.ChangeBounds, android.transition.Transition
        public void captureEndValues(TransitionValues transitionValues) {
            super.captureEndValues(transitionValues);
            View view = transitionValues.view;
            if (view instanceof EndCloseView) {
                int i = ((EndCloseView) view).backColor;
                int i2 = ((EndCloseView) view).round;
                int i3 = ((EndCloseView) view).callDeclineAlpha;
                int i4 = ((EndCloseView) view).closeTextAlpha;
                transitionValues.values.put("back_color_end_close", Integer.valueOf(i));
                transitionValues.values.put("round_end_close", Integer.valueOf(i2));
                transitionValues.values.put("decline_call_alpha_end_close", Integer.valueOf(i3));
                transitionValues.values.put("close_text_alpha_end_close", Integer.valueOf(i4));
            }
        }

        @Override // android.transition.ChangeBounds, android.transition.Transition
        public Animator createAnimator(ViewGroup viewGroup, final TransitionValues transitionValues, TransitionValues transitionValues2) {
            if (transitionValues != null && transitionValues2 != null && (transitionValues.view instanceof EndCloseView)) {
                AnimatorSet animatorSet = new AnimatorSet();
                Animator createAnimator = super.createAnimator(viewGroup, transitionValues, transitionValues2);
                if (createAnimator != null) {
                    animatorSet.playTogether(createAnimator);
                }
                Integer num = (Integer) transitionValues2.values.get("decline_call_alpha_end_close");
                Integer num2 = (Integer) transitionValues.values.get("close_text_alpha_end_close");
                Integer num3 = (Integer) transitionValues2.values.get("close_text_alpha_end_close");
                ValueAnimator valueAnimator = new ValueAnimator();
                valueAnimator.setIntValues(((Integer) transitionValues.values.get("back_color_end_close")).intValue(), ((Integer) transitionValues2.values.get("back_color_end_close")).intValue());
                valueAnimator.setEvaluator(new ArgbEvaluator());
                valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.voip.EndCloseLayout$1$$ExternalSyntheticLambda0
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                        EndCloseLayout.C59311.lambda$createAnimator$0(transitionValues, valueAnimator2);
                    }
                });
                animatorSet.playTogether(valueAnimator);
                ValueAnimator ofInt = ValueAnimator.ofInt(((Integer) transitionValues.values.get("round_end_close")).intValue(), ((Integer) transitionValues2.values.get("round_end_close")).intValue());
                ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.voip.EndCloseLayout$1$$ExternalSyntheticLambda3
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                        EndCloseLayout.C59311.lambda$createAnimator$1(transitionValues, valueAnimator2);
                    }
                });
                animatorSet.playTogether(ofInt);
                ValueAnimator ofInt2 = ValueAnimator.ofInt(((Integer) transitionValues.values.get("decline_call_alpha_end_close")).intValue(), num.intValue(), num.intValue(), num.intValue(), num.intValue(), num.intValue(), num.intValue());
                ofInt2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.voip.EndCloseLayout$1$$ExternalSyntheticLambda1
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                        EndCloseLayout.C59311.lambda$createAnimator$2(transitionValues, valueAnimator2);
                    }
                });
                animatorSet.playTogether(ofInt2);
                ValueAnimator ofInt3 = ValueAnimator.ofInt(num2.intValue(), num2.intValue(), (int) (num3.intValue() * 0.25f), (int) (num3.intValue() * 0.5f), (int) (num3.intValue() * 0.75f), num3.intValue());
                ofInt3.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.voip.EndCloseLayout$1$$ExternalSyntheticLambda2
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                        EndCloseLayout.C59311.lambda$createAnimator$3(transitionValues, valueAnimator2);
                    }
                });
                animatorSet.playTogether(ofInt3);
                animatorSet.addListener(new AnimatorListenerAdapter(this) { // from class: org.telegram.ui.Components.voip.EndCloseLayout.1.1
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationStart(Animator animator) {
                        super.onAnimationStart(animator);
                        transitionValues.view.setEnabled(false);
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        super.onAnimationEnd(animator);
                        transitionValues.view.setEnabled(true);
                    }
                });
                return animatorSet;
            }
            return super.createAnimator(viewGroup, transitionValues, transitionValues2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$createAnimator$0(TransitionValues transitionValues, ValueAnimator valueAnimator) {
            ((EndCloseView) transitionValues.view).backColor = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$createAnimator$1(TransitionValues transitionValues, ValueAnimator valueAnimator) {
            ((EndCloseView) transitionValues.view).round = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$createAnimator$2(TransitionValues transitionValues, ValueAnimator valueAnimator) {
            ((EndCloseView) transitionValues.view).callDeclineAlpha = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$createAnimator$3(TransitionValues transitionValues, ValueAnimator valueAnimator) {
            ((EndCloseView) transitionValues.view).closeTextAlpha = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        }
    }

    public EndCloseView getEndCloseView() {
        return this.endCloseView;
    }

    public void switchToClose(final View.OnClickListener onClickListener, boolean z) {
        if (this.isClosedState) {
            return;
        }
        this.isClosedState = true;
        if (z) {
            TransitionManager.beginDelayedTransition(this, this.transitionSet);
        }
        EndCloseView endCloseView = this.endCloseView;
        endCloseView.closeTextAlpha = 255;
        endCloseView.backColor = -1;
        endCloseView.callDeclineAlpha = 0;
        endCloseView.round = AndroidUtilities.m107dp(8);
        ViewGroup.LayoutParams layoutParams = this.endCloseView.getLayoutParams();
        layoutParams.width = -1;
        this.endCloseView.setLayoutParams(layoutParams);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.voip.EndCloseLayout$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                EndCloseLayout.this.lambda$switchToClose$0(onClickListener);
            }
        }, 500L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$switchToClose$0(View.OnClickListener onClickListener) {
        this.endCloseView.setOnClickListener(onClickListener);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.Components.voip.EndCloseLayout$EndCloseView */
    /* loaded from: classes6.dex */
    public static class EndCloseView extends View {
        public int backColor;
        private final Paint backgroundPaint;
        private final RectF backgroundRect;
        public int callDeclineAlpha;
        private final Drawable callDeclineDrawable;
        private final String closeText;
        public int closeTextAlpha;
        private Drawable rippleDrawable;
        public int round;
        private final Paint textPaint;
        private final Paint textPaintMask;

        public EndCloseView(Context context) {
            super(context);
            this.backgroundPaint = new Paint(1);
            Paint paint = new Paint(1);
            this.textPaintMask = paint;
            Paint paint2 = new Paint(1);
            this.textPaint = paint2;
            this.backgroundRect = new RectF();
            this.backColor = -761748;
            this.round = AndroidUtilities.m107dp(26);
            this.callDeclineAlpha = 255;
            this.closeTextAlpha = 0;
            Drawable mutate = ContextCompat.getDrawable(getContext(), C3632R.C3634drawable.calls_decline).mutate();
            this.callDeclineDrawable = mutate;
            mutate.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.MULTIPLY));
            paint.setTextSize(AndroidUtilities.m107dp(18));
            paint.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            paint.setTextAlign(Paint.Align.CENTER);
            paint.setColor(-16777216);
            paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
            paint2.setTextSize(AndroidUtilities.m107dp(18));
            paint2.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            paint2.setTextAlign(Paint.Align.CENTER);
            paint2.setColor(-16777216);
            setLayerType(2, null);
            setClickable(true);
            this.closeText = LocaleController.getString("Close", C3632R.string.Close);
        }

        @Override // android.view.View
        protected void drawableStateChanged() {
            super.drawableStateChanged();
            Drawable drawable = this.rippleDrawable;
            if (drawable != null) {
                drawable.setState(getDrawableState());
            }
        }

        @Override // android.view.View
        public boolean verifyDrawable(Drawable drawable) {
            return this.rippleDrawable == drawable || super.verifyDrawable(drawable);
        }

        @Override // android.view.View
        public void jumpDrawablesToCurrentState() {
            super.jumpDrawablesToCurrentState();
            Drawable drawable = this.rippleDrawable;
            if (drawable != null) {
                drawable.jumpToCurrentState();
            }
        }

        @Override // android.view.View
        public boolean dispatchTouchEvent(MotionEvent motionEvent) {
            if (isEnabled()) {
                return super.dispatchTouchEvent(motionEvent);
            }
            return false;
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            float width = getWidth() / 2.0f;
            float height = getHeight() / 2.0f;
            this.backgroundPaint.setColor(this.backColor);
            this.backgroundRect.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getWidth(), getHeight());
            RectF rectF = this.backgroundRect;
            int i = this.round;
            canvas.drawRoundRect(rectF, i, i, this.backgroundPaint);
            Drawable drawable = this.callDeclineDrawable;
            drawable.setBounds((int) (width - (drawable.getIntrinsicWidth() / 2.0f)), (int) (height - (this.callDeclineDrawable.getIntrinsicHeight() / 2)), (int) ((this.callDeclineDrawable.getIntrinsicWidth() / 2) + width), (int) ((this.callDeclineDrawable.getIntrinsicHeight() / 2) + height));
            this.callDeclineDrawable.setAlpha(this.callDeclineAlpha);
            this.callDeclineDrawable.draw(canvas);
            this.textPaintMask.setAlpha(this.closeTextAlpha);
            this.textPaint.setAlpha((this.closeTextAlpha / 255) * 38);
            canvas.drawText(this.closeText, width, AndroidUtilities.m107dp(6) + height, this.textPaintMask);
            canvas.drawText(this.closeText, width, height + AndroidUtilities.m107dp(6), this.textPaint);
            if (this.rippleDrawable == null) {
                Drawable createRadSelectorDrawable = Theme.createRadSelectorDrawable(Theme.getColor(Theme.key_listSelector), 8, 8);
                this.rippleDrawable = createRadSelectorDrawable;
                createRadSelectorDrawable.setCallback(this);
            }
            this.rippleDrawable.setBounds(0, 0, getWidth(), getHeight());
            this.rippleDrawable.draw(canvas);
        }
    }
}
