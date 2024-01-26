package org.telegram.p043ui.Components;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.RectF;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p043ui.ActionBar.Theme;
/* renamed from: org.telegram.ui.Components.ChoosingStickerStatusDrawable */
/* loaded from: classes6.dex */
public class ChoosingStickerStatusDrawable extends StatusDrawable {
    int color;
    Paint fillPaint;
    float progress;
    Paint strokePaint;
    private long lastUpdateTime = 0;
    private boolean started = false;
    boolean increment = true;

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    @Override // org.telegram.p043ui.Components.StatusDrawable
    public void setIsChat(boolean z) {
    }

    public ChoosingStickerStatusDrawable(boolean z) {
        if (z) {
            this.strokePaint = new Paint(1);
            this.fillPaint = new Paint(1);
            this.strokePaint.setStyle(Paint.Style.STROKE);
            this.strokePaint.setStrokeWidth(AndroidUtilities.dpf2(1.2f));
        }
    }

    @Override // org.telegram.p043ui.Components.StatusDrawable
    public void start() {
        this.lastUpdateTime = System.currentTimeMillis();
        this.started = true;
        invalidateSelf();
    }

    @Override // org.telegram.p043ui.Components.StatusDrawable
    public void stop() {
        this.started = false;
    }

    @Override // org.telegram.p043ui.Components.StatusDrawable
    public void setColor(int i) {
        if (this.color != i) {
            this.fillPaint.setColor(i);
            this.strokePaint.setColor(i);
        }
        this.color = i;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        float m108dp;
        float interpolation;
        float min = Math.min(this.progress, 1.0f);
        int i = (min > 0.3f ? 1 : (min == 0.3f ? 0 : -1));
        float interpolation2 = CubicBezierInterpolator.EASE_IN.getInterpolation(i < 0 ? min / 0.3f : 1.0f);
        CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT;
        float interpolation3 = cubicBezierInterpolator.getInterpolation(i < 0 ? 0.0f : (min - 0.3f) / 0.7f);
        float f = 2.0f;
        if (this.increment) {
            m108dp = (AndroidUtilities.m108dp(2.1f) * interpolation2) + ((AndroidUtilities.m107dp(7) - AndroidUtilities.m108dp(2.1f)) * (1.0f - interpolation2));
            interpolation = AndroidUtilities.dpf2(1.5f) * (1.0f - cubicBezierInterpolator.getInterpolation(this.progress / 2.0f));
        } else {
            m108dp = (AndroidUtilities.m108dp(2.1f) * (1.0f - interpolation2)) + ((AndroidUtilities.m107dp(7) - AndroidUtilities.m108dp(2.1f)) * interpolation2);
            interpolation = CubicBezierInterpolator.EASE_OUT_QUINT.getInterpolation(this.progress / 2.0f) * AndroidUtilities.dpf2(1.5f);
        }
        float m107dp = AndroidUtilities.m107dp(11) / 2.0f;
        float dpf2 = AndroidUtilities.dpf2(2.0f);
        float dpf22 = (AndroidUtilities.dpf2(0.5f) * interpolation2) - (AndroidUtilities.dpf2(0.5f) * interpolation3);
        Paint paint = this.strokePaint;
        if (paint == null) {
            paint = Theme.chat_statusRecordPaint;
        }
        Paint paint2 = this.fillPaint;
        if (paint2 == null) {
            paint2 = Theme.chat_statusPaint;
        }
        if (paint.getStrokeWidth() != AndroidUtilities.m108dp(0.8f)) {
            paint.setStrokeWidth(AndroidUtilities.m108dp(0.8f));
        }
        int i2 = 0;
        while (i2 < 2) {
            canvas.save();
            canvas.translate((paint.getStrokeWidth() / f) + interpolation + (AndroidUtilities.m107dp(9) * i2) + getBounds().left + AndroidUtilities.dpf2(0.2f), (paint.getStrokeWidth() / f) + AndroidUtilities.dpf2(f) + getBounds().top);
            RectF rectF = AndroidUtilities.rectTmp;
            rectF.set(BitmapDescriptorFactory.HUE_RED, dpf22, AndroidUtilities.m107dp(7), AndroidUtilities.m107dp(11) - dpf22);
            canvas.drawOval(rectF, paint);
            canvas.drawCircle(m108dp, m107dp, dpf2, paint2);
            canvas.restore();
            i2++;
            f = 2.0f;
        }
        if (this.started) {
            update();
        }
    }

    private void update() {
        long currentTimeMillis = System.currentTimeMillis();
        long j = currentTimeMillis - this.lastUpdateTime;
        this.lastUpdateTime = currentTimeMillis;
        if (j > 16) {
            j = 16;
        }
        float f = this.progress + (((float) j) / 500.0f);
        this.progress = f;
        if (f >= 2.0f) {
            this.progress = BitmapDescriptorFactory.HUE_RED;
            this.increment = !this.increment;
        }
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return AndroidUtilities.m107dp(20);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return AndroidUtilities.m107dp(18);
    }
}
