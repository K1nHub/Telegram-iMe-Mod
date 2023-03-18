package com.fxn.util;

import android.animation.Animator;
import android.animation.ArgbEvaluator;
import android.animation.StateListAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.drawable.GradientDrawable;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.animation.LinearInterpolator;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt__MathJVMKt;
/* compiled from: Utils.kt */
/* loaded from: classes.dex */
public final class UtilsKt {
    private static float ALPHA = 0.15f;
    private static long DURATION = 350;

    public static final Animator colorAnimator(final ImageView imageView, int i, int i2, long j) {
        Intrinsics.checkNotNullParameter(imageView, "<this>");
        final ValueAnimator ofObject = ValueAnimator.ofObject(new ArgbEvaluator(), Integer.valueOf(i), Integer.valueOf(i2));
        ofObject.setDuration(j);
        ofObject.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.fxn.util.UtilsKt$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                UtilsKt.colorAnimator$lambda$2$lambda$1(ofObject, imageView, valueAnimator);
            }
        });
        Intrinsics.checkNotNullExpressionValue(ofObject, "ofObject(ArgbEvaluator()…orFilter(color) }\n    }\n}");
        return ofObject;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void colorAnimator$lambda$2$lambda$1(ValueAnimator valueAnimator, ImageView this_colorAnimator, ValueAnimator valueAnimator2) {
        Intrinsics.checkNotNullParameter(this_colorAnimator, "$this_colorAnimator");
        Object animatedValue = valueAnimator2.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Int");
        this_colorAnimator.setColorFilter(((Integer) animatedValue).intValue());
    }

    public static final void setColorStateListAnimator(ImageView imageView, int i, int i2) {
        Intrinsics.checkNotNullParameter(imageView, "<this>");
        StateListAnimator stateListAnimator = new StateListAnimator();
        stateListAnimator.addState(new int[]{16842913}, colorAnimator(imageView, i2, i, 350L));
        stateListAnimator.addState(new int[0], colorAnimator(imageView, i, i2, 350L));
        imageView.setStateListAnimator(stateListAnimator);
        imageView.refreshDrawableState();
    }

    public static final void expand(final TextView textView, LinearLayout container, int i) {
        Intrinsics.checkNotNullParameter(textView, "<this>");
        Intrinsics.checkNotNullParameter(container, "container");
        Rect rect = new Rect();
        setCustomBackground(container, i, 1.0f);
        textView.getPaint().getTextBounds(textView.getText().toString(), 0, textView.getText().length(), rect);
        ValueAnimator ofInt = ValueAnimator.ofInt(0, rect.width() + textView.getPaddingLeft() + 10);
        ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.fxn.util.UtilsKt$$ExternalSyntheticLambda1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                UtilsKt.expand$lambda$7$lambda$6$lambda$5(textView, valueAnimator);
            }
        });
        ofInt.setInterpolator(new LinearInterpolator());
        ofInt.setDuration(DURATION);
        ofInt.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void expand$lambda$7$lambda$6$lambda$5(TextView this_expand, ValueAnimator valueAnimator) {
        Intrinsics.checkNotNullParameter(this_expand, "$this_expand");
        if (valueAnimator.getAnimatedFraction() == BitmapDescriptorFactory.HUE_RED) {
            this_expand.setVisibility(4);
        }
        ViewGroup.LayoutParams layoutParams = this_expand.getLayoutParams();
        Object animatedValue = valueAnimator.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Int");
        layoutParams.width = ((Integer) animatedValue).intValue();
        if (valueAnimator.getAnimatedFraction() == 1.0f) {
            this_expand.setVisibility(0);
        }
        this_expand.requestLayout();
    }

    public static final void collapse(final TextView textView, final LinearLayout container, final int i) {
        Intrinsics.checkNotNullParameter(textView, "<this>");
        Intrinsics.checkNotNullParameter(container, "container");
        final ViewPropertyAnimator alpha = textView.animate().alpha(BitmapDescriptorFactory.HUE_RED);
        alpha.setUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.fxn.util.UtilsKt$$ExternalSyntheticLambda2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                UtilsKt.collapse$lambda$10$lambda$9(textView, alpha, container, i, valueAnimator);
            }
        });
        alpha.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void collapse$lambda$10$lambda$9(TextView this_collapse, ViewPropertyAnimator viewPropertyAnimator, LinearLayout container, int i, ValueAnimator valueAnimator) {
        Intrinsics.checkNotNullParameter(this_collapse, "$this_collapse");
        Intrinsics.checkNotNullParameter(container, "$container");
        ViewGroup.LayoutParams layoutParams = this_collapse.getLayoutParams();
        int i2 = layoutParams.width;
        layoutParams.width = (int) (i2 - (i2 * valueAnimator.getAnimatedFraction()));
        if (valueAnimator.getAnimatedFraction() == 1.0f) {
            this_collapse.setVisibility(8);
            this_collapse.setAlpha(1.0f);
        }
        viewPropertyAnimator.setInterpolator(new LinearInterpolator());
        viewPropertyAnimator.setDuration(DURATION);
        float f = ALPHA;
        setCustomBackground(container, i, f - (valueAnimator.getAnimatedFraction() * f));
        this_collapse.requestLayout();
    }

    public static final void setCustomBackground(LinearLayout linearLayout, int i, float f) {
        Intrinsics.checkNotNullParameter(linearLayout, "<this>");
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setCornerRadius(100.0f);
        gradientDrawable.setTint(Color.argb((int) (Color.alpha(i) * f), Color.red(i), Color.green(i), Color.blue(i)));
        linearLayout.setBackground(gradientDrawable);
    }

    public static final int dpToPx(int i, Context context) {
        int roundToInt;
        Intrinsics.checkNotNullParameter(context, "context");
        roundToInt = MathKt__MathJVMKt.roundToInt(i * (context.getResources().getDisplayMetrics().xdpi / 160));
        return roundToInt;
    }
}
