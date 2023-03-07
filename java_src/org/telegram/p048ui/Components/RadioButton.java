package org.telegram.p048ui.Components;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.view.View;
import androidx.annotation.Keep;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.FileLog;
/* renamed from: org.telegram.ui.Components.RadioButton */
/* loaded from: classes6.dex */
public class RadioButton extends View {
    private static Paint checkedPaint;
    private static Paint eraser;
    private static Paint paint;
    private boolean attachedToWindow;
    private Bitmap bitmap;
    private Canvas bitmapCanvas;
    private ObjectAnimator checkAnimator;
    private int checkedColor;
    private int color;
    private boolean isChecked;
    private float progress;
    private int size;

    public RadioButton(Context context) {
        super(context);
        this.size = AndroidUtilities.m50dp(16);
        if (paint == null) {
            Paint paint2 = new Paint(1);
            paint = paint2;
            paint2.setStrokeWidth(AndroidUtilities.m50dp(2));
            paint.setStyle(Paint.Style.STROKE);
            checkedPaint = new Paint(1);
            Paint paint3 = new Paint(1);
            eraser = paint3;
            paint3.setColor(0);
            eraser.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        }
        try {
            this.bitmap = Bitmap.createBitmap(AndroidUtilities.m50dp(this.size), AndroidUtilities.m50dp(this.size), Bitmap.Config.ARGB_4444);
            this.bitmapCanvas = new Canvas(this.bitmap);
        } catch (Throwable th) {
            FileLog.m45e(th);
        }
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

    public void setSize(int i) {
        if (this.size == i) {
            return;
        }
        this.size = i;
    }

    public int getColor() {
        return this.color;
    }

    public void setColor(int i, int i2) {
        this.color = i;
        this.checkedColor = i2;
        invalidate();
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        this.color = i;
        invalidate();
    }

    public void setCheckedColor(int i) {
        this.checkedColor = i;
        invalidate();
    }

    private void cancelCheckAnimator() {
        ObjectAnimator objectAnimator = this.checkAnimator;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
    }

    private void animateToCheckedState(boolean z) {
        float[] fArr = new float[1];
        fArr[0] = z ? 1.0f : BitmapDescriptorFactory.HUE_RED;
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, "progress", fArr);
        this.checkAnimator = ofFloat;
        ofFloat.setDuration(200L);
        this.checkAnimator.start();
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
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

    public boolean isChecked() {
        return this.isChecked;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        float f;
        Bitmap bitmap = this.bitmap;
        if (bitmap == null || bitmap.getWidth() != getMeasuredWidth()) {
            Bitmap bitmap2 = this.bitmap;
            if (bitmap2 != null) {
                bitmap2.recycle();
                this.bitmap = null;
            }
            try {
                this.bitmap = Bitmap.createBitmap(getMeasuredWidth(), getMeasuredHeight(), Bitmap.Config.ARGB_8888);
                this.bitmapCanvas = new Canvas(this.bitmap);
            } catch (Throwable th) {
                FileLog.m45e(th);
            }
        }
        float f2 = this.progress;
        if (f2 <= 0.5f) {
            paint.setColor(this.color);
            checkedPaint.setColor(this.color);
            f = this.progress / 0.5f;
        } else {
            f = 2.0f - (f2 / 0.5f);
            int red = Color.red(this.color);
            float f3 = 1.0f - f;
            int green = Color.green(this.color);
            int blue = Color.blue(this.color);
            int rgb = Color.rgb(red + ((int) ((Color.red(this.checkedColor) - red) * f3)), green + ((int) ((Color.green(this.checkedColor) - green) * f3)), blue + ((int) ((Color.blue(this.checkedColor) - blue) * f3)));
            paint.setColor(rgb);
            checkedPaint.setColor(rgb);
        }
        Bitmap bitmap3 = this.bitmap;
        if (bitmap3 != null) {
            bitmap3.eraseColor(0);
            float f4 = (this.size / 2) - ((f + 1.0f) * AndroidUtilities.density);
            this.bitmapCanvas.drawCircle(getMeasuredWidth() / 2, getMeasuredHeight() / 2, f4, paint);
            if (this.progress <= 0.5f) {
                this.bitmapCanvas.drawCircle(getMeasuredWidth() / 2, getMeasuredHeight() / 2, f4 - AndroidUtilities.m50dp(1), checkedPaint);
                this.bitmapCanvas.drawCircle(getMeasuredWidth() / 2, getMeasuredHeight() / 2, (f4 - AndroidUtilities.m50dp(1)) * (1.0f - f), eraser);
            } else {
                this.bitmapCanvas.drawCircle(getMeasuredWidth() / 2, getMeasuredHeight() / 2, (this.size / 4) + (((f4 - AndroidUtilities.m50dp(1)) - (this.size / 4)) * f), checkedPaint);
            }
            canvas.drawBitmap(this.bitmap, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, (Paint) null);
        }
    }
}
