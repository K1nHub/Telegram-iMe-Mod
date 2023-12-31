package org.telegram.p043ui.Stories.recorder;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorSpace;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Shader;
import android.os.Build;
import android.view.View;
import android.view.WindowManager;
import android.widget.ImageView;
import androidx.core.graphics.ColorUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.Utilities;
import org.telegram.p043ui.Components.CubicBezierInterpolator;
/* renamed from: org.telegram.ui.Stories.recorder.FlashViews */
/* loaded from: classes6.dex */
public class FlashViews {
    private ValueAnimator animator;
    public final View backgroundView;
    private int color;
    public final View foregroundView;
    private RadialGradient gradient;
    private int lastColor;
    private int lastHeight;
    private float lastInvert;
    private int lastWidth;
    private final Paint paint;
    private final WindowManager windowManager;
    private final View windowView;
    private final WindowManager.LayoutParams windowViewParams;
    private final ArrayList<Invertable> invertableViews = new ArrayList<>();
    private float invert = BitmapDescriptorFactory.HUE_RED;
    public float warmth = 0.75f;
    public float intensity = 1.0f;
    private final Matrix gradientMatrix = new Matrix();

    /* renamed from: org.telegram.ui.Stories.recorder.FlashViews$Invertable */
    /* loaded from: classes6.dex */
    public interface Invertable {
        void invalidate();

        void setInvert(float f);
    }

    public static int getColor(float f) {
        if (f < 0.5f) {
            return ColorUtils.blendARGB(-7544833, -1, Utilities.clamp(f / 0.5f, 1.0f, (float) BitmapDescriptorFactory.HUE_RED));
        }
        return ColorUtils.blendARGB(-1, -70004, Utilities.clamp((f - 0.5f) / 0.5f, 1.0f, (float) BitmapDescriptorFactory.HUE_RED));
    }

    public FlashViews(Context context, WindowManager windowManager, View view, WindowManager.LayoutParams layoutParams) {
        Paint paint = new Paint(1);
        this.paint = paint;
        this.windowManager = windowManager;
        this.windowView = view;
        this.windowViewParams = layoutParams;
        this.backgroundView = new View(context) { // from class: org.telegram.ui.Stories.recorder.FlashViews.1
            @Override // android.view.View
            protected void onMeasure(int i, int i2) {
                super.onMeasure(i, i2);
                FlashViews.this.invalidateGradient();
            }

            @Override // android.view.View
            protected void dispatchDraw(Canvas canvas) {
                FlashViews.this.gradientMatrix.reset();
                FlashViews.this.drawGradient(canvas, true);
            }
        };
        this.foregroundView = new View(context) { // from class: org.telegram.ui.Stories.recorder.FlashViews.2
            @Override // android.view.View
            protected void dispatchDraw(Canvas canvas) {
                FlashViews.this.gradientMatrix.reset();
                FlashViews.this.gradientMatrix.postTranslate(-getX(), -getY());
                FlashViews.this.gradientMatrix.postScale(1.0f / getScaleX(), 1.0f / getScaleY(), getPivotX(), getPivotY());
                FlashViews.this.drawGradient(canvas, false);
            }
        };
        paint.setAlpha(0);
    }

    public void flash(final Utilities.Callback<Utilities.Callback<Runnable>> callback) {
        this.windowViewParams.screenBrightness = intensityValue();
        this.windowManager.updateViewLayout(this.windowView, this.windowViewParams);
        flashTo(1.0f, 320L, new Runnable() { // from class: org.telegram.ui.Stories.recorder.FlashViews$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                FlashViews.this.lambda$flash$3(callback);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$flash$3(final Utilities.Callback callback) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.recorder.FlashViews$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                FlashViews.this.lambda$flash$2(callback);
            }
        }, 320L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$flash$2(Utilities.Callback callback) {
        callback.run(new Utilities.Callback() { // from class: org.telegram.ui.Stories.recorder.FlashViews$$ExternalSyntheticLambda4
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                FlashViews.this.lambda$flash$1((Runnable) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$flash$1(final Runnable runnable) {
        WindowManager.LayoutParams layoutParams = this.windowViewParams;
        layoutParams.screenBrightness = -1.0f;
        this.windowManager.updateViewLayout(this.windowView, layoutParams);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.recorder.FlashViews$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                FlashViews.this.lambda$flash$0(runnable);
            }
        }, 80L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$flash$0(Runnable runnable) {
        flashTo(BitmapDescriptorFactory.HUE_RED, 240L, runnable);
    }

    public void previewStart() {
        flashTo(0.85f, 240L, null);
    }

    public void previewEnd() {
        flashTo(BitmapDescriptorFactory.HUE_RED, 240L, null);
    }

    public void flashIn(Runnable runnable) {
        this.windowViewParams.screenBrightness = intensityValue();
        this.windowManager.updateViewLayout(this.windowView, this.windowViewParams);
        flashTo(1.0f, 320L, runnable);
    }

    public void flashOut() {
        WindowManager.LayoutParams layoutParams = this.windowViewParams;
        layoutParams.screenBrightness = -1.0f;
        this.windowManager.updateViewLayout(this.windowView, layoutParams);
        flashTo(BitmapDescriptorFactory.HUE_RED, 240L, null);
    }

    private void flashTo(final float f, long j, final Runnable runnable) {
        ValueAnimator valueAnimator = this.animator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.animator = null;
        }
        if (j <= 0) {
            this.invert = f;
            update();
            if (runnable != null) {
                runnable.run();
                return;
            }
            return;
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(this.invert, f);
        this.animator = ofFloat;
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stories.recorder.FlashViews$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                FlashViews.this.lambda$flashTo$4(valueAnimator2);
            }
        });
        this.animator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Stories.recorder.FlashViews.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                FlashViews.this.invert = f;
                FlashViews.this.update();
                Runnable runnable2 = runnable;
                if (runnable2 != null) {
                    runnable2.run();
                }
            }
        });
        this.animator.setDuration(j);
        this.animator.setInterpolator(CubicBezierInterpolator.EASE_IN);
        this.animator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$flashTo$4(ValueAnimator valueAnimator) {
        this.invert = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        update();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void update() {
        for (int i = 0; i < this.invertableViews.size(); i++) {
            this.invertableViews.get(i).setInvert(this.invert);
            this.invertableViews.get(i).invalidate();
        }
        this.paint.setAlpha((int) (intensityValue() * 255.0f * this.invert));
        this.backgroundView.invalidate();
        this.foregroundView.invalidate();
    }

    private float intensityValue() {
        return this.intensity;
    }

    public void add(Invertable invertable) {
        invertable.setInvert(this.invert);
        this.invertableViews.add(invertable);
    }

    public void setIntensity(float f) {
        this.intensity = f;
        update();
    }

    public void setWarmth(float f) {
        this.warmth = f;
        this.color = getColor(f);
        invalidateGradient();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void invalidateGradient() {
        if (this.lastColor == this.color && this.lastWidth == this.backgroundView.getMeasuredWidth() && this.lastHeight == this.backgroundView.getMeasuredHeight() && Math.abs(this.lastInvert - this.invert) <= 0.005f) {
            return;
        }
        this.lastColor = this.color;
        this.lastWidth = this.backgroundView.getMeasuredWidth();
        int measuredHeight = this.backgroundView.getMeasuredHeight();
        this.lastHeight = measuredHeight;
        this.lastInvert = this.invert;
        if (this.lastWidth <= 0 || measuredHeight <= 0) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 29) {
            int i = this.lastWidth;
            int i2 = this.lastHeight;
            this.gradient = new RadialGradient(i * 0.5f, i2 * 0.4f, (Math.min(i, i2) / 2.0f) * 1.35f * (2.0f - this.invert), new long[]{Color.valueOf(Color.red(this.color) / 255.0f, Color.green(this.color) / 255.0f, Color.blue(this.color) / 255.0f, BitmapDescriptorFactory.HUE_RED, ColorSpace.get(ColorSpace.Named.EXTENDED_SRGB)).pack(), Color.valueOf(Color.red(this.color) / 255.0f, Color.green(this.color) / 255.0f, Color.blue(this.color) / 255.0f, 1.0f, ColorSpace.get(ColorSpace.Named.EXTENDED_SRGB)).pack()}, new float[]{AndroidUtilities.lerp(0.9f, 0.22f, this.invert), 1.0f}, Shader.TileMode.CLAMP);
        } else {
            int i3 = this.lastWidth;
            int i4 = this.lastHeight;
            this.gradient = new RadialGradient(i3 * 0.5f, 0.4f * i4, (Math.min(i3, i4) / 2.0f) * 1.35f * (2.0f - this.invert), new int[]{ColorUtils.setAlphaComponent(this.color, 0), this.color}, new float[]{AndroidUtilities.lerp(0.9f, 0.22f, this.invert), 1.0f}, Shader.TileMode.CLAMP);
        }
        this.paint.setShader(this.gradient);
        invalidate();
    }

    private void invalidate() {
        this.backgroundView.invalidate();
        this.foregroundView.invalidate();
    }

    public void drawGradient(Canvas canvas, boolean z) {
        if (this.gradient != null) {
            invalidateGradient();
            this.gradient.setLocalMatrix(this.gradientMatrix);
            if (z) {
                canvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, this.lastWidth, this.lastHeight, this.paint);
                return;
            }
            RectF rectF = AndroidUtilities.rectTmp;
            rectF.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, this.foregroundView.getMeasuredWidth(), this.foregroundView.getMeasuredHeight());
            canvas.drawRoundRect(rectF, AndroidUtilities.m104dp(12) - 2, AndroidUtilities.m104dp(12) - 2, this.paint);
        }
    }

    /* renamed from: org.telegram.ui.Stories.recorder.FlashViews$ImageViewInvertable */
    /* loaded from: classes6.dex */
    public static class ImageViewInvertable extends ImageView implements Invertable {
        public ImageViewInvertable(Context context) {
            super(context);
        }

        @Override // org.telegram.p043ui.Stories.recorder.FlashViews.Invertable
        public void setInvert(float f) {
            setColorFilter(new PorterDuffColorFilter(ColorUtils.blendARGB(-1, -16777216, f), PorterDuff.Mode.MULTIPLY));
        }
    }
}
