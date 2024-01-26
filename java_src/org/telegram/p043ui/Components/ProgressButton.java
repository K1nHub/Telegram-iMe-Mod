package org.telegram.p043ui.Components;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.os.Build;
import android.widget.Button;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p043ui.ActionBar.Theme;
/* renamed from: org.telegram.ui.Components.ProgressButton */
/* loaded from: classes6.dex */
public class ProgressButton extends Button {
    private int angle;
    private boolean drawProgress;
    private long lastUpdateTime;
    private float progressAlpha;
    private final Paint progressPaint;
    private final RectF progressRect;

    public ProgressButton(Context context) {
        super(context);
        setAllCaps(false);
        setTextSize(1, 14.0f);
        setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        if (Build.VERSION.SDK_INT >= 21) {
            setOutlineProvider(null);
        }
        ViewHelper.setPadding(this, 8.0f, BitmapDescriptorFactory.HUE_RED, 8.0f, BitmapDescriptorFactory.HUE_RED);
        int m107dp = AndroidUtilities.m107dp(60);
        setMinWidth(m107dp);
        setMinimumWidth(m107dp);
        this.progressRect = new RectF();
        Paint paint = new Paint(1);
        this.progressPaint = paint;
        paint.setStrokeCap(Paint.Cap.ROUND);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(AndroidUtilities.m107dp(2));
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.drawProgress || this.progressAlpha != BitmapDescriptorFactory.HUE_RED) {
            int measuredWidth = getMeasuredWidth() - AndroidUtilities.m107dp(11);
            this.progressRect.set(measuredWidth, AndroidUtilities.m107dp(3), measuredWidth + AndroidUtilities.m107dp(8), AndroidUtilities.m107dp(11));
            this.progressPaint.setAlpha(Math.min(255, (int) (this.progressAlpha * 255.0f)));
            canvas.drawArc(this.progressRect, this.angle, 220.0f, false, this.progressPaint);
            long currentTimeMillis = System.currentTimeMillis();
            if (Math.abs(this.lastUpdateTime - System.currentTimeMillis()) < 1000) {
                long j = currentTimeMillis - this.lastUpdateTime;
                int i = (int) (this.angle + (((float) (360 * j)) / 2000.0f));
                this.angle = i;
                this.angle = i - ((i / 360) * 360);
                if (this.drawProgress) {
                    float f = this.progressAlpha;
                    if (f < 1.0f) {
                        float f2 = f + (((float) j) / 200.0f);
                        this.progressAlpha = f2;
                        if (f2 > 1.0f) {
                            this.progressAlpha = 1.0f;
                        }
                    }
                } else {
                    float f3 = this.progressAlpha;
                    if (f3 > BitmapDescriptorFactory.HUE_RED) {
                        float f4 = f3 - (((float) j) / 200.0f);
                        this.progressAlpha = f4;
                        if (f4 < BitmapDescriptorFactory.HUE_RED) {
                            this.progressAlpha = BitmapDescriptorFactory.HUE_RED;
                        }
                    }
                }
            }
            this.lastUpdateTime = currentTimeMillis;
            postInvalidateOnAnimation();
        }
    }

    public void setBackgroundRoundRect(int i, int i2) {
        setBackgroundRoundRect(i, i2, 4.0f);
    }

    public void setBackgroundRoundRect(int i, int i2, float f) {
        setBackground(Theme.AdaptiveRipple.filledRect(i, f));
    }

    public void setProgressColor(int i) {
        this.progressPaint.setColor(i);
    }

    public void setDrawProgress(boolean z, boolean z2) {
        if (this.drawProgress != z) {
            this.drawProgress = z;
            if (!z2) {
                this.progressAlpha = z ? 1.0f : BitmapDescriptorFactory.HUE_RED;
            }
            this.lastUpdateTime = System.currentTimeMillis();
            invalidate();
        }
    }
}
