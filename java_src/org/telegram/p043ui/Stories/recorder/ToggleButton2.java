package org.telegram.p043ui.Stories.recorder;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.core.graphics.ColorUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.concurrent.atomic.AtomicBoolean;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p043ui.Components.AnimatedFloat;
import org.telegram.p043ui.Components.CubicBezierInterpolator;
import org.telegram.p043ui.Stories.recorder.FlashViews;
/* renamed from: org.telegram.ui.Stories.recorder.ToggleButton2 */
/* loaded from: classes6.dex */
public class ToggleButton2 extends View implements FlashViews.Invertable {
    private Bitmap activeBitmap;
    private final Paint activeBitmapPaint;
    private final Paint activePaint;
    private AnimatedFloat animatedSelected;
    private ValueAnimator animator;
    private final Path clipPath;
    private int currentIcon;
    private Drawable drawable;
    private boolean selected;

    public ToggleButton2(Context context) {
        super(context);
        this.clipPath = new Path();
        Paint paint = new Paint(1);
        this.activePaint = paint;
        Paint paint2 = new Paint(3);
        this.activeBitmapPaint = paint2;
        this.animatedSelected = new AnimatedFloat(this, 0L, 380L, CubicBezierInterpolator.EASE_OUT_QUINT);
        paint.setColor(-1);
        paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
    }

    public void setIcon(final int i, boolean z) {
        if (this.currentIcon == i) {
            return;
        }
        ValueAnimator valueAnimator = this.animator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.animator = null;
        }
        if (z) {
            this.animator = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f).setDuration(150L);
            final AtomicBoolean atomicBoolean = new AtomicBoolean();
            this.animator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stories.recorder.ToggleButton2$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    ToggleButton2.this.lambda$setIcon$0(atomicBoolean, i, valueAnimator2);
                }
            });
            this.animator.start();
            return;
        }
        setDrawable(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setIcon$0(AtomicBoolean atomicBoolean, int i, ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        Math.abs(floatValue - 0.5f);
        if (floatValue < 0.5f || atomicBoolean.get()) {
            return;
        }
        atomicBoolean.set(true);
        setDrawable(i);
    }

    @Override // android.view.View
    public void setSelected(boolean z) {
        this.selected = z;
        invalidate();
    }

    @Override // org.telegram.p043ui.Stories.recorder.FlashViews.Invertable
    public void setInvert(float f) {
        Drawable drawable = this.drawable;
        if (drawable != null) {
            drawable.setColorFilter(new PorterDuffColorFilter(ColorUtils.blendARGB(-1, -16777216, f), PorterDuff.Mode.MULTIPLY));
        }
        this.activePaint.setColor(ColorUtils.blendARGB(-1, -16777216, f));
        invalidate();
    }

    private void setDrawable(int i) {
        this.drawable = getContext().getResources().getDrawable(i).mutate();
        Bitmap bitmap = this.activeBitmap;
        if (bitmap != null) {
            bitmap.recycle();
            this.activeBitmap = null;
        }
        if (this.activeBitmap != null || i == 0) {
            return;
        }
        this.activeBitmap = BitmapFactory.decodeResource(getResources(), i);
    }

    @Override // android.view.View
    protected void dispatchDraw(Canvas canvas) {
        if (this.drawable == null) {
            return;
        }
        float f = this.animatedSelected.set(this.selected);
        int intrinsicWidth = this.drawable.getIntrinsicWidth();
        int intrinsicHeight = this.drawable.getIntrinsicHeight();
        Rect rect = AndroidUtilities.rectTmp2;
        rect.set((getWidth() - intrinsicWidth) / 2, (getHeight() - intrinsicHeight) / 2, (getWidth() + intrinsicWidth) / 2, (getHeight() + intrinsicHeight) / 2);
        if (f <= BitmapDescriptorFactory.HUE_RED) {
            this.drawable.setBounds(rect);
            this.drawable.draw(canvas);
        } else if (f < 1.0f) {
            canvas.save();
            this.clipPath.rewind();
            this.clipPath.addCircle(getWidth() / 2.0f, getHeight() / 2.0f, AndroidUtilities.m104dp(16) * f, Path.Direction.CW);
            canvas.clipPath(this.clipPath, Region.Op.DIFFERENCE);
            this.drawable.setBounds(rect);
            this.drawable.draw(canvas);
            canvas.restore();
        }
        if (f > BitmapDescriptorFactory.HUE_RED) {
            canvas.saveLayerAlpha(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getWidth(), getHeight(), 255, 31);
            canvas.drawCircle(getWidth() / 2.0f, getHeight() / 2.0f, AndroidUtilities.m104dp(16) * f, this.activePaint);
            canvas.save();
            Bitmap bitmap = this.activeBitmap;
            if (bitmap != null) {
                canvas.drawBitmap(bitmap, (Rect) null, rect, this.activeBitmapPaint);
            }
            canvas.restore();
            canvas.restore();
        }
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.activeBitmap != null || this.currentIcon == 0) {
            return;
        }
        this.activeBitmap = BitmapFactory.decodeResource(getResources(), this.currentIcon);
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Bitmap bitmap = this.activeBitmap;
        if (bitmap != null) {
            bitmap.recycle();
            this.activeBitmap = null;
        }
    }
}
