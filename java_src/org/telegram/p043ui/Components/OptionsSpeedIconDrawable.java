package org.telegram.p043ui.Components;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p043ui.Components.AnimatedTextView;
/* renamed from: org.telegram.ui.Components.OptionsSpeedIconDrawable */
/* loaded from: classes6.dex */
public class OptionsSpeedIconDrawable extends Drawable {
    private AnimatedTextView.AnimatedTextDrawable textDrawable;
    private boolean textDrawableVisible;
    private Paint paint = new Paint(1);
    private final Drawable.Callback callback = new Drawable.Callback() { // from class: org.telegram.ui.Components.OptionsSpeedIconDrawable.1
        @Override // android.graphics.drawable.Drawable.Callback
        public void invalidateDrawable(Drawable drawable) {
            OptionsSpeedIconDrawable.this.invalidateSelf();
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
            OptionsSpeedIconDrawable.this.scheduleSelf(runnable, j);
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
            OptionsSpeedIconDrawable.this.unscheduleSelf(runnable);
        }
    };
    private AnimatedFloat textDrawableAlpha = new AnimatedFloat(new Runnable() { // from class: org.telegram.ui.Components.OptionsSpeedIconDrawable$$ExternalSyntheticLambda0
        @Override // java.lang.Runnable
        public final void run() {
            OptionsSpeedIconDrawable.this.invalidateSelf();
        }
    }, 250, CubicBezierInterpolator.EASE_OUT_QUINT);

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -2;
    }

    public OptionsSpeedIconDrawable() {
        this.paint.setColor(-1);
    }

    public void setSpeed(Float f, boolean z) {
        if (f == null && this.textDrawable == null) {
            return;
        }
        if (this.textDrawable == null) {
            AnimatedTextView.AnimatedTextDrawable animatedTextDrawable = new AnimatedTextView.AnimatedTextDrawable();
            this.textDrawable = animatedTextDrawable;
            animatedTextDrawable.setCallback(this.callback);
            this.textDrawable.setAnimationProperties(0.3f, 0L, 165L, CubicBezierInterpolator.EASE_OUT_QUINT);
            this.textDrawable.setGravity(1);
            this.textDrawable.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            this.textDrawable.setTextSize(AndroidUtilities.m54dp(7));
            this.textDrawable.setTextColor(-1);
            this.textDrawable.getPaint().setStyle(Paint.Style.FILL_AND_STROKE);
            this.textDrawable.getPaint().setStrokeWidth(AndroidUtilities.dpf2(0.1f));
            this.textDrawable.getPaint().setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        }
        if (f == null) {
            this.textDrawable.cancelAnimation();
            this.textDrawable.setText("", z);
            this.textDrawableVisible = false;
        } else {
            String formatNumber = SpeedIconDrawable.formatNumber(f.floatValue());
            if (formatNumber.length() <= 1) {
                formatNumber = formatNumber + "X";
            }
            if (!TextUtils.equals(formatNumber, this.textDrawable.getText())) {
                this.textDrawable.cancelAnimation();
                this.textDrawable.setText(formatNumber, z);
                this.textDrawableVisible = !TextUtils.isEmpty(formatNumber);
            }
        }
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (getBounds() == null) {
            return;
        }
        int centerX = getBounds().centerX();
        int centerY = getBounds().centerY();
        float f = centerX;
        float f2 = centerY;
        canvas.drawCircle(f, f2 - AndroidUtilities.dpf2(6.0f), AndroidUtilities.dpf2(2.0f), this.paint);
        canvas.drawCircle(f, f2, AndroidUtilities.dpf2(2.0f), this.paint);
        canvas.drawCircle(f, f2 + AndroidUtilities.dpf2(6.0f), AndroidUtilities.dpf2(2.0f), this.paint);
        if (this.textDrawable != null) {
            canvas.save();
            int m55dp = centerX - AndroidUtilities.m55dp(11.6f);
            int m54dp = centerY + AndroidUtilities.m54dp(4);
            float f3 = this.textDrawableAlpha.set(this.textDrawableVisible ? 1.0f : BitmapDescriptorFactory.HUE_RED);
            int alpha = this.paint.getAlpha();
            if (f3 < 1.0f) {
                this.paint.setAlpha((int) (f3 * 255.0f));
            }
            RectF rectF = AndroidUtilities.rectTmp;
            float f4 = m55dp;
            float f5 = m54dp;
            rectF.set((f4 - AndroidUtilities.dpf2(1.5f)) - (this.textDrawable.getCurrentWidth() / 2.0f), f5 - AndroidUtilities.dpf2(4.0f), f4 + AndroidUtilities.dpf2(1.5f) + (this.textDrawable.getCurrentWidth() / 2.0f), f5 + AndroidUtilities.dpf2(5.0f));
            canvas.drawRoundRect(rectF, AndroidUtilities.dpf2(2.0f), AndroidUtilities.dpf2(2.0f), this.paint);
            canvas.save();
            this.textDrawable.setBounds(m55dp, m54dp, m55dp, m54dp);
            this.textDrawable.draw(canvas);
            canvas.restore();
            this.paint.setAlpha(alpha);
            canvas.restore();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.paint.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.paint.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return AndroidUtilities.m54dp(45);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return AndroidUtilities.m54dp(45);
    }
}
