package org.telegram.p043ui.Components;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.p043ui.ActionBar.Theme;
/* renamed from: org.telegram.ui.Components.ProxyDrawable */
/* loaded from: classes6.dex */
public class ProxyDrawable extends Drawable {
    private boolean connected;
    private float connectedAnimationProgress;
    private Drawable emptyDrawable;
    private Drawable fullDrawable;
    private int horizontalOffset;
    private boolean isEnabled;
    private long lastUpdateTime;
    private int verticalOffset;
    private Paint outerPaint = new Paint(1);
    private RectF cicleRect = new RectF();
    private int radOffset = 0;
    private int colorKey = -1;

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -2;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
    }

    public void setVerticalOffset(int i) {
        this.verticalOffset = i;
        invalidateSelf();
    }

    public void setHorizontalOffset(int i) {
        this.horizontalOffset = i;
        invalidateSelf();
    }

    public ProxyDrawable(Context context) {
        this.emptyDrawable = context.getResources().getDrawable(C3632R.C3634drawable.msg2_proxy_off).mutate();
        this.fullDrawable = context.getResources().getDrawable(C3632R.C3634drawable.msg2_proxy_on).mutate();
        this.outerPaint.setStyle(Paint.Style.STROKE);
        this.outerPaint.setStrokeWidth(AndroidUtilities.m108dp(1.66f));
        this.outerPaint.setStrokeCap(Paint.Cap.ROUND);
        this.lastUpdateTime = SystemClock.elapsedRealtime();
    }

    public void setConnected(boolean z, boolean z2, boolean z3) {
        this.isEnabled = z;
        this.connected = z2;
        this.lastUpdateTime = SystemClock.elapsedRealtime();
        if (!z3) {
            this.connectedAnimationProgress = this.connected ? 1.0f : BitmapDescriptorFactory.HUE_RED;
        }
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        long j = elapsedRealtime - this.lastUpdateTime;
        this.lastUpdateTime = elapsedRealtime;
        if (!this.isEnabled) {
            setBounds(this.emptyDrawable);
            this.emptyDrawable.draw(canvas);
        } else if (!this.connected || this.connectedAnimationProgress != 1.0f) {
            setBounds(this.emptyDrawable);
            this.emptyDrawable.draw(canvas);
            Paint paint = this.outerPaint;
            int i = this.colorKey;
            if (i < 0) {
                i = Theme.key_contextProgressOuter2;
            }
            paint.setColor(Theme.getColor(i));
            this.outerPaint.setAlpha((int) ((1.0f - this.connectedAnimationProgress) * 255.0f));
            this.radOffset = (int) (this.radOffset + (((float) (360 * j)) / 1000.0f));
            int width = getBounds().width();
            int height = getBounds().height();
            int m107dp = AndroidUtilities.m107dp(4);
            int i2 = (width / 2) - m107dp;
            int i3 = (height / 2) - m107dp;
            this.cicleRect.set(i2, i3, i2 + m107dp + m107dp, i3 + m107dp + m107dp);
            canvas.drawArc(this.cicleRect, this.radOffset - 90, 90.0f, false, this.outerPaint);
            invalidateSelf();
        }
        if (this.isEnabled && (this.connected || this.connectedAnimationProgress != BitmapDescriptorFactory.HUE_RED)) {
            this.fullDrawable.setAlpha((int) (this.connectedAnimationProgress * 255.0f));
            setBounds(this.fullDrawable);
            this.fullDrawable.draw(canvas);
        }
        boolean z = this.connected;
        if (z) {
            float f = this.connectedAnimationProgress;
            if (f != 1.0f) {
                float f2 = f + (((float) j) / 300.0f);
                this.connectedAnimationProgress = f2;
                if (f2 > 1.0f) {
                    this.connectedAnimationProgress = 1.0f;
                }
                invalidateSelf();
                return;
            }
        }
        if (z) {
            return;
        }
        float f3 = this.connectedAnimationProgress;
        if (f3 != BitmapDescriptorFactory.HUE_RED) {
            float f4 = f3 - (((float) j) / 300.0f);
            this.connectedAnimationProgress = f4;
            if (f4 < BitmapDescriptorFactory.HUE_RED) {
                this.connectedAnimationProgress = BitmapDescriptorFactory.HUE_RED;
            }
            invalidateSelf();
        }
    }

    private void setBounds(Drawable drawable) {
        Rect bounds = getBounds();
        drawable.setBounds(bounds.centerX() - ((drawable.getIntrinsicWidth() - this.horizontalOffset) / 2), bounds.centerY() - ((drawable.getIntrinsicHeight() - this.verticalOffset) / 2), bounds.centerX() + ((drawable.getIntrinsicWidth() - this.horizontalOffset) / 2), bounds.centerY() + ((drawable.getIntrinsicHeight() - this.verticalOffset) / 2));
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.emptyDrawable.setColorFilter(colorFilter);
        this.fullDrawable.setColorFilter(colorFilter);
    }

    public void setColorKey(int i) {
        this.colorKey = i;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return AndroidUtilities.m107dp(24);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return AndroidUtilities.m107dp(24);
    }
}
