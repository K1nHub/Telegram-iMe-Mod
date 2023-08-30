package org.telegram.p043ui.Components;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p043ui.ActionBar.Theme;
/* renamed from: org.telegram.ui.Components.RadialProgress */
/* loaded from: classes6.dex */
public class RadialProgress {
    private static DecelerateInterpolator decelerateInterpolator;
    private Drawable checkBackgroundDrawable;
    private Drawable currentDrawable;
    private Drawable currentMiniDrawable;
    private boolean currentMiniWithRound;
    private boolean currentWithRound;
    private boolean disableUpdate;
    private boolean drawMiniProgress;
    private boolean hideCurrentDrawable;
    private Bitmap miniDrawBitmap;
    private Canvas miniDrawCanvas;
    private Paint miniProgressBackgroundPaint;
    private Paint miniProgressPaint;
    private View parent;
    private Drawable previousDrawable;
    private Drawable previousMiniDrawable;
    private boolean previousMiniWithRound;
    private boolean previousWithRound;
    private Paint progressPaint;
    private long lastUpdateTime = 0;
    private float radOffset = BitmapDescriptorFactory.HUE_RED;
    private float currentProgress = BitmapDescriptorFactory.HUE_RED;
    private float animationProgressStart = BitmapDescriptorFactory.HUE_RED;
    private long currentProgressTime = 0;
    private float animatedProgressValue = BitmapDescriptorFactory.HUE_RED;
    private RectF progressRect = new RectF();
    private RectF cicleRect = new RectF();
    private float animatedAlphaValue = 1.0f;
    private int progressColor = -1;
    private int diff = AndroidUtilities.m72dp(4);
    private boolean alphaForPrevious = true;
    private boolean alphaForMiniPrevious = true;
    private float overrideAlpha = 1.0f;
    private Paint overridePaint = null;

    public float getAnimatedProgress() {
        return this.animatedProgressValue;
    }

    public void copyParams(RadialProgress radialProgress) {
        this.currentProgress = radialProgress.currentProgress;
        this.animatedProgressValue = radialProgress.animatedProgressValue;
        this.radOffset = radialProgress.radOffset;
        this.lastUpdateTime = System.currentTimeMillis();
        invalidateParent();
    }

    public RadialProgress(View view) {
        if (decelerateInterpolator == null) {
            decelerateInterpolator = new DecelerateInterpolator();
        }
        Paint paint = new Paint(1);
        this.progressPaint = paint;
        paint.setStyle(Paint.Style.STROKE);
        this.progressPaint.setStrokeCap(Paint.Cap.ROUND);
        this.progressPaint.setStrokeWidth(AndroidUtilities.m72dp(3));
        Paint paint2 = new Paint(1);
        this.miniProgressPaint = paint2;
        paint2.setStyle(Paint.Style.STROKE);
        this.miniProgressPaint.setStrokeCap(Paint.Cap.ROUND);
        this.miniProgressPaint.setStrokeWidth(AndroidUtilities.m72dp(2));
        this.miniProgressBackgroundPaint = new Paint(1);
        this.parent = view;
    }

    public void setProgressRect(int i, int i2, int i3, int i4) {
        this.progressRect.set(i, i2, i3, i4);
    }

    private void updateAnimation(boolean z) {
        if (this.disableUpdate) {
            return;
        }
        long currentTimeMillis = System.currentTimeMillis();
        long j = currentTimeMillis - this.lastUpdateTime;
        this.lastUpdateTime = currentTimeMillis;
        Drawable drawable = this.checkBackgroundDrawable;
        if (drawable != null && (this.currentDrawable == drawable || this.previousDrawable == drawable)) {
            throw null;
        }
        if (z) {
            if (this.animatedProgressValue != 1.0f) {
                this.radOffset += ((float) (360 * j)) / 3000.0f;
                float f = this.currentProgress;
                float f2 = this.animationProgressStart;
                float f3 = f - f2;
                if (f3 > BitmapDescriptorFactory.HUE_RED) {
                    long j2 = this.currentProgressTime + j;
                    this.currentProgressTime = j2;
                    if (j2 >= 300) {
                        this.animatedProgressValue = f;
                        this.animationProgressStart = f;
                        this.currentProgressTime = 0L;
                    } else {
                        this.animatedProgressValue = f2 + (f3 * decelerateInterpolator.getInterpolation(((float) j2) / 300.0f));
                    }
                }
                invalidateParent();
            }
            if (this.drawMiniProgress) {
                if (this.animatedProgressValue < 1.0f || this.previousMiniDrawable == null) {
                    return;
                }
                float f4 = this.animatedAlphaValue - (((float) j) / 200.0f);
                this.animatedAlphaValue = f4;
                if (f4 <= BitmapDescriptorFactory.HUE_RED) {
                    this.animatedAlphaValue = BitmapDescriptorFactory.HUE_RED;
                    this.previousMiniDrawable = null;
                    this.drawMiniProgress = this.currentMiniDrawable != null;
                }
                invalidateParent();
            } else if (this.animatedProgressValue < 1.0f || this.previousDrawable == null) {
            } else {
                float f5 = this.animatedAlphaValue - (((float) j) / 200.0f);
                this.animatedAlphaValue = f5;
                if (f5 <= BitmapDescriptorFactory.HUE_RED) {
                    this.animatedAlphaValue = BitmapDescriptorFactory.HUE_RED;
                    this.previousDrawable = null;
                }
                invalidateParent();
            }
        } else if (this.drawMiniProgress) {
            if (this.previousMiniDrawable != null) {
                float f6 = this.animatedAlphaValue - (((float) j) / 200.0f);
                this.animatedAlphaValue = f6;
                if (f6 <= BitmapDescriptorFactory.HUE_RED) {
                    this.animatedAlphaValue = BitmapDescriptorFactory.HUE_RED;
                    this.previousMiniDrawable = null;
                    this.drawMiniProgress = this.currentMiniDrawable != null;
                }
                invalidateParent();
            }
        } else if (this.previousDrawable != null) {
            float f7 = this.animatedAlphaValue - (((float) j) / 200.0f);
            this.animatedAlphaValue = f7;
            if (f7 <= BitmapDescriptorFactory.HUE_RED) {
                this.animatedAlphaValue = BitmapDescriptorFactory.HUE_RED;
                this.previousDrawable = null;
            }
            invalidateParent();
        }
    }

    public void setDiff(int i) {
        this.diff = i;
    }

    public void setProgressColor(int i) {
        this.progressColor = i;
    }

    public void setProgress(float f, boolean z) {
        if (this.drawMiniProgress) {
            if (f != 1.0f && this.animatedAlphaValue != BitmapDescriptorFactory.HUE_RED && this.previousMiniDrawable != null) {
                this.animatedAlphaValue = BitmapDescriptorFactory.HUE_RED;
                this.previousMiniDrawable = null;
                this.drawMiniProgress = this.currentMiniDrawable != null;
            }
        } else if (f != 1.0f && this.animatedAlphaValue != BitmapDescriptorFactory.HUE_RED && this.previousDrawable != null) {
            this.animatedAlphaValue = BitmapDescriptorFactory.HUE_RED;
            this.previousDrawable = null;
        }
        if (!z) {
            this.animatedProgressValue = f;
            this.animationProgressStart = f;
        } else {
            if (this.animatedProgressValue > f) {
                this.animatedProgressValue = f;
            }
            this.animationProgressStart = this.animatedProgressValue;
        }
        this.currentProgress = f;
        this.currentProgressTime = 0L;
        invalidateParent();
    }

    private void invalidateParent() {
        int m72dp = AndroidUtilities.m72dp(2);
        View view = this.parent;
        RectF rectF = this.progressRect;
        int i = ((int) rectF.left) - m72dp;
        int i2 = ((int) rectF.top) - m72dp;
        int i3 = m72dp * 2;
        view.invalidate(i, i2, ((int) rectF.right) + i3, ((int) rectF.bottom) + i3);
    }

    public void setBackground(Drawable drawable, boolean z, boolean z2) {
        Drawable drawable2;
        this.lastUpdateTime = System.currentTimeMillis();
        if (z2 && (drawable2 = this.currentDrawable) != drawable) {
            this.previousDrawable = drawable2;
            this.previousWithRound = this.currentWithRound;
            this.animatedAlphaValue = 1.0f;
            setProgress(1.0f, z2);
        } else {
            this.previousDrawable = null;
            this.previousWithRound = false;
        }
        this.currentWithRound = z;
        this.currentDrawable = drawable;
        if (!z2) {
            this.parent.invalidate();
        } else {
            invalidateParent();
        }
    }

    public void draw(Canvas canvas) {
        Drawable drawable;
        int i;
        float centerX;
        float m72dp;
        int i2;
        Drawable drawable2;
        if (this.drawMiniProgress && this.currentDrawable != null) {
            if (this.miniDrawCanvas != null) {
                this.miniDrawBitmap.eraseColor(0);
            }
            this.currentDrawable.setAlpha((int) (this.overrideAlpha * 255.0f));
            if (this.miniDrawCanvas != null) {
                this.currentDrawable.setBounds(0, 0, (int) this.progressRect.width(), (int) this.progressRect.height());
                this.currentDrawable.draw(this.miniDrawCanvas);
            } else {
                Drawable drawable3 = this.currentDrawable;
                RectF rectF = this.progressRect;
                drawable3.setBounds((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom);
                this.currentDrawable.draw(canvas);
            }
            if (Math.abs(this.progressRect.width() - AndroidUtilities.m72dp(44)) < AndroidUtilities.density) {
                i = 20;
                centerX = this.progressRect.centerX() + AndroidUtilities.m72dp(16);
                m72dp = this.progressRect.centerY() + AndroidUtilities.m72dp(16);
                i2 = 0;
            } else {
                i = 22;
                centerX = this.progressRect.centerX() + AndroidUtilities.m72dp(18);
                m72dp = AndroidUtilities.m72dp(18) + this.progressRect.centerY();
                i2 = 2;
            }
            int i3 = i / 2;
            float f = (this.previousMiniDrawable == null || !this.alphaForMiniPrevious) ? 1.0f : this.animatedAlphaValue * this.overrideAlpha;
            Canvas canvas2 = this.miniDrawCanvas;
            if (canvas2 != null) {
                int i4 = i + 18 + i2;
                canvas2.drawCircle(AndroidUtilities.m72dp(i4), AndroidUtilities.m72dp(i4), AndroidUtilities.m72dp(i3 + 1) * f, Theme.checkboxSquare_eraserPaint);
            } else {
                this.miniProgressBackgroundPaint.setColor(this.progressColor);
                if (this.previousMiniDrawable != null && this.currentMiniDrawable == null) {
                    this.miniProgressBackgroundPaint.setAlpha((int) (this.animatedAlphaValue * 255.0f * this.overrideAlpha));
                } else {
                    this.miniProgressBackgroundPaint.setAlpha(255);
                }
                canvas.drawCircle(centerX, m72dp, AndroidUtilities.m72dp(12), this.miniProgressBackgroundPaint);
            }
            if (this.miniDrawCanvas != null) {
                Bitmap bitmap = this.miniDrawBitmap;
                RectF rectF2 = this.progressRect;
                canvas.drawBitmap(bitmap, (int) rectF2.left, (int) rectF2.top, (Paint) null);
            }
            Drawable drawable4 = this.previousMiniDrawable;
            if (drawable4 != null) {
                if (this.alphaForMiniPrevious) {
                    drawable4.setAlpha((int) (this.animatedAlphaValue * 255.0f * this.overrideAlpha));
                } else {
                    drawable4.setAlpha((int) (this.overrideAlpha * 255.0f));
                }
                this.previousMiniDrawable.setBounds((int) (centerX - (AndroidUtilities.m72dp(i3) * f)), (int) (m72dp - (AndroidUtilities.m72dp(i3) * f)), (int) ((AndroidUtilities.m72dp(i3) * f) + centerX), (int) ((AndroidUtilities.m72dp(i3) * f) + m72dp));
                this.previousMiniDrawable.draw(canvas);
            }
            if (!this.hideCurrentDrawable && (drawable2 = this.currentMiniDrawable) != null) {
                if (this.previousMiniDrawable != null) {
                    drawable2.setAlpha((int) ((1.0f - this.animatedAlphaValue) * 255.0f * this.overrideAlpha));
                } else {
                    drawable2.setAlpha((int) (this.overrideAlpha * 255.0f));
                }
                this.currentMiniDrawable.setBounds((int) (centerX - AndroidUtilities.m72dp(i3)), (int) (m72dp - AndroidUtilities.m72dp(i3)), (int) (AndroidUtilities.m72dp(i3) + centerX), (int) (AndroidUtilities.m72dp(i3) + m72dp));
                this.currentMiniDrawable.draw(canvas);
            }
            if (this.currentMiniWithRound || this.previousMiniWithRound) {
                this.miniProgressPaint.setColor(this.progressColor);
                if (this.previousMiniWithRound) {
                    this.miniProgressPaint.setAlpha((int) (this.animatedAlphaValue * 255.0f * this.overrideAlpha));
                } else {
                    this.miniProgressPaint.setAlpha((int) (this.overrideAlpha * 255.0f));
                }
                int i5 = i3 - 2;
                this.cicleRect.set(centerX - (AndroidUtilities.m72dp(i5) * f), m72dp - (AndroidUtilities.m72dp(i5) * f), centerX + (AndroidUtilities.m72dp(i5) * f), m72dp + (AndroidUtilities.m72dp(i5) * f));
                canvas.drawArc(this.cicleRect, this.radOffset - 90.0f, Math.max(4.0f, this.animatedProgressValue * 360.0f), false, this.miniProgressPaint);
                updateAnimation(true);
                return;
            }
            updateAnimation(false);
            return;
        }
        Drawable drawable5 = this.previousDrawable;
        if (drawable5 != null) {
            if (this.alphaForPrevious) {
                drawable5.setAlpha((int) (this.animatedAlphaValue * 255.0f * this.overrideAlpha));
            } else {
                drawable5.setAlpha((int) (this.overrideAlpha * 255.0f));
            }
            Drawable drawable6 = this.previousDrawable;
            RectF rectF3 = this.progressRect;
            drawable6.setBounds((int) rectF3.left, (int) rectF3.top, (int) rectF3.right, (int) rectF3.bottom);
            this.previousDrawable.draw(canvas);
        }
        if (!this.hideCurrentDrawable && (drawable = this.currentDrawable) != null) {
            if (this.previousDrawable != null) {
                drawable.setAlpha((int) ((1.0f - this.animatedAlphaValue) * 255.0f * this.overrideAlpha));
            } else {
                drawable.setAlpha((int) (this.overrideAlpha * 255.0f));
            }
            Drawable drawable7 = this.currentDrawable;
            RectF rectF4 = this.progressRect;
            drawable7.setBounds((int) rectF4.left, (int) rectF4.top, (int) rectF4.right, (int) rectF4.bottom);
            this.currentDrawable.draw(canvas);
        }
        if (this.currentWithRound || this.previousWithRound) {
            Paint paint = this.overridePaint;
            if (paint == null) {
                this.progressPaint.setColor(this.progressColor);
                if (this.previousWithRound) {
                    this.progressPaint.setAlpha((int) (this.animatedAlphaValue * 255.0f * this.overrideAlpha));
                } else {
                    this.progressPaint.setAlpha((int) (this.overrideAlpha * 255.0f));
                }
                paint = this.progressPaint;
            }
            Paint paint2 = paint;
            RectF rectF5 = this.cicleRect;
            RectF rectF6 = this.progressRect;
            float f2 = rectF6.left;
            int i6 = this.diff;
            rectF5.set(f2 + i6, rectF6.top + i6, rectF6.right - i6, rectF6.bottom - i6);
            canvas.drawArc(this.cicleRect, this.radOffset - 90.0f, Math.max(4.0f, this.animatedProgressValue * 360.0f), false, paint2);
            updateAnimation(true);
            return;
        }
        updateAnimation(false);
    }

    public void setPaint(Paint paint) {
        this.overridePaint = paint;
    }
}
