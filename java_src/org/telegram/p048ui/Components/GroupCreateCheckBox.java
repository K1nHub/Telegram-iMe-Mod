package org.telegram.p048ui.Components;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.view.View;
import androidx.annotation.Keep;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p048ui.ActionBar.Theme;
/* renamed from: org.telegram.ui.Components.GroupCreateCheckBox */
/* loaded from: classes6.dex */
public class GroupCreateCheckBox extends View {
    private static Paint eraser;
    private static Paint eraser2;
    private boolean attachedToWindow;
    private Paint backgroundInnerPaint;
    private String backgroundKey;
    private Paint backgroundPaint;
    private Canvas bitmapCanvas;
    private ObjectAnimator checkAnimator;
    private String checkKey;
    private Paint checkPaint;
    private float checkScale;
    private Bitmap drawBitmap;
    private String innerKey;
    private int innerRadDiff;
    private boolean isCheckAnimation;
    private boolean isChecked;
    private float progress;

    public GroupCreateCheckBox(Context context) {
        super(context);
        this.isCheckAnimation = true;
        this.checkScale = 1.0f;
        this.backgroundKey = "checkboxCheck";
        this.checkKey = "checkboxCheck";
        this.innerKey = "checkbox";
        if (eraser == null) {
            Paint paint = new Paint(1);
            eraser = paint;
            paint.setColor(0);
            eraser.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
            Paint paint2 = new Paint(1);
            eraser2 = paint2;
            paint2.setColor(0);
            eraser2.setStyle(Paint.Style.STROKE);
            eraser2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        }
        this.backgroundPaint = new Paint(1);
        this.backgroundInnerPaint = new Paint(1);
        Paint paint3 = new Paint(1);
        this.checkPaint = paint3;
        paint3.setStyle(Paint.Style.STROKE);
        this.innerRadDiff = AndroidUtilities.m50dp(2);
        this.checkPaint.setStrokeWidth(AndroidUtilities.m51dp(1.5f));
        eraser2.setStrokeWidth(AndroidUtilities.m50dp(28));
        this.drawBitmap = Bitmap.createBitmap(AndroidUtilities.m50dp(24), AndroidUtilities.m50dp(24), Bitmap.Config.ARGB_4444);
        this.bitmapCanvas = new Canvas(this.drawBitmap);
        updateColors();
    }

    public void setColorKeysOverrides(String str, String str2, String str3) {
        this.checkKey = str;
        this.innerKey = str2;
        this.backgroundKey = str3;
        updateColors();
    }

    public void updateColors() {
        this.backgroundInnerPaint.setColor(Theme.getColor(this.innerKey));
        this.backgroundPaint.setColor(Theme.getColor(this.backgroundKey));
        this.checkPaint.setColor(Theme.getColor(this.checkKey));
        invalidate();
    }

    @Keep
    public void setProgress(float f) {
        if (this.progress == f) {
            return;
        }
        this.progress = f;
        invalidate();
    }

    @Keep
    public float getProgress() {
        return this.progress;
    }

    public void setCheckScale(float f) {
        this.checkScale = f;
    }

    private void cancelCheckAnimator() {
        ObjectAnimator objectAnimator = this.checkAnimator;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
    }

    private void animateToCheckedState(boolean z) {
        this.isCheckAnimation = z;
        float[] fArr = new float[1];
        fArr[0] = z ? 1.0f : BitmapDescriptorFactory.HUE_RED;
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, "progress", fArr);
        this.checkAnimator = ofFloat;
        ofFloat.setDuration(300L);
        this.checkAnimator.start();
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        updateColors();
        this.attachedToWindow = true;
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.attachedToWindow = false;
    }

    public void setChecked(boolean z, boolean z2) {
        if (z == this.isChecked) {
            return;
        }
        this.isChecked = z;
        if (this.attachedToWindow && z2) {
            animateToCheckedState(z);
            return;
        }
        cancelCheckAnimator();
        setProgress(z ? 1.0f : BitmapDescriptorFactory.HUE_RED);
    }

    public void setInnerRadDiff(int i) {
        this.innerRadDiff = i;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        float m50dp;
        if (getVisibility() == 0 && this.progress != BitmapDescriptorFactory.HUE_RED) {
            int measuredWidth = getMeasuredWidth() / 2;
            int measuredHeight = getMeasuredHeight() / 2;
            eraser2.setStrokeWidth(AndroidUtilities.m50dp(30));
            this.drawBitmap.eraseColor(0);
            float f = this.progress;
            float f2 = f >= 0.5f ? 1.0f : f / 0.5f;
            float f3 = f < 0.5f ? BitmapDescriptorFactory.HUE_RED : (f - 0.5f) / 0.5f;
            if (!this.isCheckAnimation) {
                f = 1.0f - f;
            }
            if (f < 0.2f) {
                m50dp = (AndroidUtilities.m50dp(2) * f) / 0.2f;
            } else {
                m50dp = f < 0.4f ? AndroidUtilities.m50dp(2) - ((AndroidUtilities.m50dp(2) * (f - 0.2f)) / 0.2f) : BitmapDescriptorFactory.HUE_RED;
            }
            if (f3 != BitmapDescriptorFactory.HUE_RED) {
                canvas.drawCircle(measuredWidth, measuredHeight, ((measuredWidth - AndroidUtilities.m50dp(2)) + (AndroidUtilities.m50dp(2) * f3)) - m50dp, this.backgroundPaint);
            }
            float f4 = (measuredWidth - this.innerRadDiff) - m50dp;
            float f5 = measuredWidth;
            float f6 = measuredHeight;
            this.bitmapCanvas.drawCircle(f5, f6, f4, this.backgroundInnerPaint);
            this.bitmapCanvas.drawCircle(f5, f6, f4 * (1.0f - f2), eraser);
            canvas.drawBitmap(this.drawBitmap, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, (Paint) null);
            float m50dp2 = AndroidUtilities.m50dp(10) * f3 * this.checkScale;
            float m50dp3 = AndroidUtilities.m50dp(5) * f3 * this.checkScale;
            int m50dp4 = measuredWidth - AndroidUtilities.m50dp(1);
            float sqrt = (float) Math.sqrt((m50dp3 * m50dp3) / 2.0f);
            float f7 = m50dp4;
            float m50dp5 = measuredHeight + AndroidUtilities.m50dp(4);
            canvas.drawLine(f7, m50dp5, f7 - sqrt, m50dp5 - sqrt, this.checkPaint);
            float sqrt2 = (float) Math.sqrt((m50dp2 * m50dp2) / 2.0f);
            float m51dp = m50dp4 - AndroidUtilities.m51dp(1.2f);
            canvas.drawLine(m51dp, m50dp5, m51dp + sqrt2, m50dp5 - sqrt2, this.checkPaint);
        }
    }
}
