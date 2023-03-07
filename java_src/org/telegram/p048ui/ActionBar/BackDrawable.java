package org.telegram.p048ui.ActionBar;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.view.animation.DecelerateInterpolator;
import com.google.android.exoplayer2.extractor.p016ts.TsExtractor;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
/* renamed from: org.telegram.ui.ActionBar.BackDrawable */
/* loaded from: classes5.dex */
public class BackDrawable extends Drawable {
    private boolean alwaysClose;
    private int arrowRotation;
    private int currentAnimationTime;
    private float currentRotation;
    private float finalRotation;
    private long lastFrameTime;
    private boolean reverseAngle;
    private Paint paint = new Paint(1);
    private Paint prevPaint = new Paint(1);
    private DecelerateInterpolator interpolator = new DecelerateInterpolator();
    private int color = -1;
    private int rotatedColor = -9079435;
    private float animationTime = 300.0f;
    private boolean rotated = true;

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -2;
    }

    public BackDrawable(boolean z) {
        this.paint.setStrokeWidth(AndroidUtilities.m50dp(2));
        this.paint.setStrokeCap(Paint.Cap.ROUND);
        this.prevPaint.setStrokeWidth(AndroidUtilities.m50dp(2));
        this.prevPaint.setColor(-65536);
        this.alwaysClose = z;
    }

    public void setColor(int i) {
        this.color = i;
        invalidateSelf();
    }

    public void setRotatedColor(int i) {
        this.rotatedColor = i;
        invalidateSelf();
    }

    public void setArrowRotation(int i) {
        this.arrowRotation = i;
        invalidateSelf();
    }

    public void setRotation(float f, boolean z) {
        this.lastFrameTime = 0L;
        float f2 = this.currentRotation;
        if (f2 == 1.0f) {
            this.reverseAngle = true;
        } else if (f2 == BitmapDescriptorFactory.HUE_RED) {
            this.reverseAngle = false;
        }
        this.lastFrameTime = 0L;
        if (z) {
            if (f2 < f) {
                this.currentAnimationTime = (int) (f2 * this.animationTime);
            } else {
                this.currentAnimationTime = (int) ((1.0f - f2) * this.animationTime);
            }
            this.lastFrameTime = System.currentTimeMillis();
            this.finalRotation = f;
        } else {
            this.currentRotation = f;
            this.finalRotation = f;
        }
        invalidateSelf();
    }

    public void setAnimationTime(float f) {
        this.animationTime = f;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.currentRotation != this.finalRotation) {
            if (this.lastFrameTime != 0) {
                int currentTimeMillis = (int) (this.currentAnimationTime + (System.currentTimeMillis() - this.lastFrameTime));
                this.currentAnimationTime = currentTimeMillis;
                float f = this.animationTime;
                if (currentTimeMillis >= f) {
                    this.currentRotation = this.finalRotation;
                } else if (this.currentRotation < this.finalRotation) {
                    this.currentRotation = this.interpolator.getInterpolation(currentTimeMillis / f) * this.finalRotation;
                } else {
                    this.currentRotation = 1.0f - this.interpolator.getInterpolation(currentTimeMillis / f);
                }
            }
            this.lastFrameTime = System.currentTimeMillis();
            invalidateSelf();
        }
        this.paint.setColor(Color.rgb(Color.red(this.color) + (this.rotated ? (int) ((Color.red(this.rotatedColor) - Color.red(this.color)) * this.currentRotation) : 0), Color.green(this.color) + (this.rotated ? (int) ((Color.green(this.rotatedColor) - Color.green(this.color)) * this.currentRotation) : 0), Color.blue(this.color) + (this.rotated ? (int) ((Color.blue(this.rotatedColor) - Color.blue(this.color)) * this.currentRotation) : 0)));
        canvas.save();
        canvas.translate(getIntrinsicWidth() / 2, getIntrinsicHeight() / 2);
        int i = this.arrowRotation;
        if (i != 0) {
            canvas.rotate(i);
        }
        float f2 = this.currentRotation;
        if (this.alwaysClose) {
            canvas.rotate((f2 * (this.reverseAngle ? -180 : 180)) + 135.0f);
            f2 = 1.0f;
        } else {
            canvas.rotate((this.reverseAngle ? -225 : TsExtractor.TS_STREAM_TYPE_E_AC3) * f2);
        }
        float f3 = 1.0f - f2;
        canvas.drawLine(AndroidUtilities.m51dp(AndroidUtilities.lerp(-6.75f, -8.0f, f2)), BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m50dp(8) - ((this.paint.getStrokeWidth() / 2.0f) * f3), BitmapDescriptorFactory.HUE_RED, this.paint);
        float m51dp = AndroidUtilities.m51dp(-0.25f);
        float m51dp2 = AndroidUtilities.m51dp(AndroidUtilities.lerp(7.0f, 8.0f, f2)) - ((this.paint.getStrokeWidth() / 4.0f) * f3);
        float m51dp3 = AndroidUtilities.m51dp(AndroidUtilities.lerp(-7.25f, (float) BitmapDescriptorFactory.HUE_RED, f2));
        canvas.drawLine(m51dp3, -m51dp, BitmapDescriptorFactory.HUE_RED, -m51dp2, this.paint);
        canvas.drawLine(m51dp3, m51dp, BitmapDescriptorFactory.HUE_RED, m51dp2, this.paint);
        canvas.restore();
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
        return AndroidUtilities.m50dp(24);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return AndroidUtilities.m50dp(24);
    }
}
