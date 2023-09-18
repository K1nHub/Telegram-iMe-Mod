package org.telegram.p043ui.Components;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import androidx.annotation.Keep;
import org.telegram.messenger.AndroidUtilities;
/* renamed from: org.telegram.ui.Components.AnimatedArrowDrawable */
/* loaded from: classes7.dex */
public class AnimatedArrowDrawable extends Drawable {
    private float animProgress;
    private float animateToProgress;
    private boolean isSmall;
    private long lastUpdateTime;
    private Paint paint;
    private Path path = new Path();

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -2;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
    }

    public AnimatedArrowDrawable(int i, boolean z) {
        Paint paint = new Paint(1);
        this.paint = paint;
        paint.setStyle(Paint.Style.STROKE);
        this.paint.setStrokeWidth(AndroidUtilities.m72dp(2));
        this.paint.setColor(i);
        this.paint.setStrokeCap(Paint.Cap.ROUND);
        this.paint.setStrokeJoin(Paint.Join.ROUND);
        this.isSmall = z;
        updatePath();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        canvas.drawPath(this.path, this.paint);
        checkAnimation();
    }

    private void updatePath() {
        this.path.reset();
        float f = (this.animProgress * 2.0f) - 1.0f;
        if (this.isSmall) {
            this.path.moveTo(AndroidUtilities.m72dp(3), AndroidUtilities.m72dp(6) - (AndroidUtilities.m72dp(2) * f));
            this.path.lineTo(AndroidUtilities.m72dp(8), AndroidUtilities.m72dp(6) + (AndroidUtilities.m72dp(2) * f));
            this.path.lineTo(AndroidUtilities.m72dp(13), AndroidUtilities.m72dp(6) - (AndroidUtilities.m72dp(2) * f));
            return;
        }
        this.path.moveTo(AndroidUtilities.m73dp(4.5f), AndroidUtilities.m72dp(12) - (AndroidUtilities.m72dp(4) * f));
        this.path.lineTo(AndroidUtilities.m72dp(13), AndroidUtilities.m72dp(12) + (AndroidUtilities.m72dp(4) * f));
        this.path.lineTo(AndroidUtilities.m73dp(21.5f), AndroidUtilities.m72dp(12) - (AndroidUtilities.m72dp(4) * f));
    }

    @Keep
    public void setAnimationProgress(float f) {
        this.animProgress = f;
        this.animateToProgress = f;
        updatePath();
        invalidateSelf();
    }

    public void setAnimationProgressAnimated(float f) {
        if (this.animateToProgress == f) {
            return;
        }
        this.animateToProgress = f;
        this.lastUpdateTime = SystemClock.elapsedRealtime();
        invalidateSelf();
    }

    private void checkAnimation() {
        if (this.animateToProgress != this.animProgress) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            long j = elapsedRealtime - this.lastUpdateTime;
            this.lastUpdateTime = elapsedRealtime;
            float f = this.animProgress;
            float f2 = this.animateToProgress;
            if (f < f2) {
                float f3 = f + (((float) j) / 180.0f);
                this.animProgress = f3;
                if (f3 > f2) {
                    this.animProgress = f2;
                }
            } else {
                float f4 = f - (((float) j) / 180.0f);
                this.animProgress = f4;
                if (f4 < f2) {
                    this.animProgress = f2;
                }
            }
            updatePath();
            invalidateSelf();
        }
    }

    public void setColor(int i) {
        this.paint.setColor(i);
        invalidateSelf();
    }

    @Keep
    public float getAnimationProgress() {
        return this.animProgress;
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.paint.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return AndroidUtilities.m72dp(26);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return AndroidUtilities.m72dp(26);
    }
}
