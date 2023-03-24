package org.telegram.p048ui.Components;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3301R;
import org.telegram.p048ui.ActionBar.Theme;
/* renamed from: org.telegram.ui.Components.ProxyDrawable */
/* loaded from: classes6.dex */
public class ProxyDrawable extends Drawable {
    private boolean connected;
    private float connectedAnimationProgress;
    private Drawable emptyDrawable;
    private Drawable fullDrawable;
    private boolean isEnabled;
    private long lastUpdateTime;
    private Paint outerPaint = new Paint(1);
    private RectF cicleRect = new RectF();
    private int radOffset = 0;

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -2;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
    }

    public ProxyDrawable(Context context) {
        this.emptyDrawable = context.getResources().getDrawable(C3301R.C3303drawable.proxy_off);
        this.fullDrawable = context.getResources().getDrawable(C3301R.C3303drawable.proxy_on);
        this.outerPaint.setStyle(Paint.Style.STROKE);
        this.outerPaint.setStrokeWidth(AndroidUtilities.m50dp(2));
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
            this.emptyDrawable.setBounds(getBounds());
            this.emptyDrawable.draw(canvas);
        } else if (!this.connected || this.connectedAnimationProgress != 1.0f) {
            this.emptyDrawable.setBounds(getBounds());
            this.emptyDrawable.draw(canvas);
            this.outerPaint.setColor(Theme.getColor("contextProgressOuter2"));
            this.outerPaint.setAlpha((int) ((1.0f - this.connectedAnimationProgress) * 255.0f));
            this.radOffset = (int) (this.radOffset + (((float) (360 * j)) / 1000.0f));
            int width = getBounds().width();
            int height = getBounds().height();
            int m50dp = (width / 2) - AndroidUtilities.m50dp(3);
            int m50dp2 = (height / 2) - AndroidUtilities.m50dp(3);
            this.cicleRect.set(m50dp, m50dp2, m50dp + AndroidUtilities.m50dp(6), m50dp2 + AndroidUtilities.m50dp(6));
            canvas.drawArc(this.cicleRect, this.radOffset - 90, 90.0f, false, this.outerPaint);
            invalidateSelf();
        }
        if (this.isEnabled && (this.connected || this.connectedAnimationProgress != BitmapDescriptorFactory.HUE_RED)) {
            this.fullDrawable.setAlpha((int) (this.connectedAnimationProgress * 255.0f));
            this.fullDrawable.setBounds(getBounds());
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

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.emptyDrawable.setColorFilter(colorFilter);
        this.fullDrawable.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return AndroidUtilities.m50dp(24);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return AndroidUtilities.m50dp(24);
    }
}
