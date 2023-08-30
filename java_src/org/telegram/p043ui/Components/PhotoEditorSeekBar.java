package org.telegram.p043ui.Components;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
/* renamed from: org.telegram.ui.Components.PhotoEditorSeekBar */
/* loaded from: classes6.dex */
public class PhotoEditorSeekBar extends View {
    private PhotoEditorSeekBarDelegate delegate;
    private Paint innerPaint;
    private int maxValue;
    private int minValue;
    private Paint outerPaint;
    private boolean pressed;
    private float progress;
    private int thumbDX;
    private int thumbSize;

    /* renamed from: org.telegram.ui.Components.PhotoEditorSeekBar$PhotoEditorSeekBarDelegate */
    /* loaded from: classes6.dex */
    public interface PhotoEditorSeekBarDelegate {
        void onProgressChanged(int i, int i2);
    }

    public PhotoEditorSeekBar(Context context) {
        super(context);
        this.innerPaint = new Paint();
        this.outerPaint = new Paint(1);
        this.thumbSize = AndroidUtilities.m72dp(16);
        this.thumbDX = 0;
        this.progress = BitmapDescriptorFactory.HUE_RED;
        this.pressed = false;
        this.innerPaint.setColor(-11711155);
        this.outerPaint.setColor(-1);
    }

    public void setDelegate(PhotoEditorSeekBarDelegate photoEditorSeekBarDelegate) {
        this.delegate = photoEditorSeekBarDelegate;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent == null) {
            return false;
        }
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        float measuredWidth = (int) ((getMeasuredWidth() - this.thumbSize) * this.progress);
        int action = motionEvent.getAction();
        float f = BitmapDescriptorFactory.HUE_RED;
        if (action == 0) {
            int measuredHeight = getMeasuredHeight();
            int i = this.thumbSize;
            float f2 = (measuredHeight - i) / 2;
            if (measuredWidth - f2 <= x && x <= i + measuredWidth + f2 && y >= BitmapDescriptorFactory.HUE_RED && y <= getMeasuredHeight()) {
                this.pressed = true;
                this.thumbDX = (int) (x - measuredWidth);
                getParent().requestDisallowInterceptTouchEvent(true);
                invalidate();
                return true;
            }
        } else if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
            if (this.pressed) {
                this.pressed = false;
                invalidate();
                return true;
            }
        } else if (motionEvent.getAction() == 2 && this.pressed) {
            float f3 = (int) (x - this.thumbDX);
            if (f3 >= BitmapDescriptorFactory.HUE_RED) {
                f = f3 > ((float) (getMeasuredWidth() - this.thumbSize)) ? getMeasuredWidth() - this.thumbSize : f3;
            }
            this.progress = f / (getMeasuredWidth() - this.thumbSize);
            PhotoEditorSeekBarDelegate photoEditorSeekBarDelegate = this.delegate;
            if (photoEditorSeekBarDelegate != null) {
                photoEditorSeekBarDelegate.onProgressChanged(((Integer) getTag()).intValue(), getProgress());
            }
            invalidate();
            return true;
        }
        return false;
    }

    public void setProgress(int i) {
        setProgress(i, true);
    }

    public void setProgress(int i, boolean z) {
        PhotoEditorSeekBarDelegate photoEditorSeekBarDelegate;
        int i2 = this.minValue;
        if (i < i2) {
            i = i2;
        } else {
            int i3 = this.maxValue;
            if (i > i3) {
                i = i3;
            }
        }
        this.progress = (i - i2) / (this.maxValue - i2);
        invalidate();
        if (!z || (photoEditorSeekBarDelegate = this.delegate) == null) {
            return;
        }
        photoEditorSeekBarDelegate.onProgressChanged(((Integer) getTag()).intValue(), getProgress());
    }

    public int getProgress() {
        int i = this.minValue;
        return (int) (i + (this.progress * (this.maxValue - i)));
    }

    public void setMinMax(int i, int i2) {
        this.minValue = i;
        this.maxValue = i2;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int measuredHeight = (getMeasuredHeight() - this.thumbSize) / 2;
        int measuredWidth = getMeasuredWidth();
        int i = this.thumbSize;
        int i2 = (int) ((measuredWidth - i) * this.progress);
        canvas.drawRect(i / 2, (getMeasuredHeight() / 2) - AndroidUtilities.m72dp(1), getMeasuredWidth() - (this.thumbSize / 2), (getMeasuredHeight() / 2) + AndroidUtilities.m72dp(1), this.innerPaint);
        if (this.minValue == 0) {
            canvas.drawRect(this.thumbSize / 2, (getMeasuredHeight() / 2) - AndroidUtilities.m72dp(1), i2, (getMeasuredHeight() / 2) + AndroidUtilities.m72dp(1), this.outerPaint);
        } else if (this.progress > 0.5f) {
            canvas.drawRect((getMeasuredWidth() / 2) - AndroidUtilities.m72dp(1), (getMeasuredHeight() - this.thumbSize) / 2, getMeasuredWidth() / 2, (getMeasuredHeight() + this.thumbSize) / 2, this.outerPaint);
            canvas.drawRect(getMeasuredWidth() / 2, (getMeasuredHeight() / 2) - AndroidUtilities.m72dp(1), i2, (getMeasuredHeight() / 2) + AndroidUtilities.m72dp(1), this.outerPaint);
        } else {
            canvas.drawRect(getMeasuredWidth() / 2, (getMeasuredHeight() - this.thumbSize) / 2, (getMeasuredWidth() / 2) + AndroidUtilities.m72dp(1), (getMeasuredHeight() + this.thumbSize) / 2, this.outerPaint);
            canvas.drawRect(i2, (getMeasuredHeight() / 2) - AndroidUtilities.m72dp(1), getMeasuredWidth() / 2, (getMeasuredHeight() / 2) + AndroidUtilities.m72dp(1), this.outerPaint);
        }
        int i3 = this.thumbSize;
        canvas.drawCircle(i2 + (i3 / 2), measuredHeight + (i3 / 2), i3 / 2, this.outerPaint);
    }
}
