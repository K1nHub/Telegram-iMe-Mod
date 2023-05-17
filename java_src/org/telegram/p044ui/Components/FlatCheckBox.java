package org.telegram.p044ui.Components;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.text.TextPaint;
import android.view.View;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p044ui.ActionBar.Theme;
/* renamed from: org.telegram.ui.Components.FlatCheckBox */
/* loaded from: classes6.dex */
public class FlatCheckBox extends View {
    int HEIGHT;
    int INNER_PADDING;

    /* renamed from: P */
    int f1656P;
    int TRANSLETE_TEXT;
    boolean attached;
    ValueAnimator checkAnimator;
    Paint checkPaint;
    public boolean checked;
    int colorActive;
    int colorInactive;
    int colorTextActive;
    public boolean enabled;
    Paint fillPaint;
    int lastW;
    Paint outLinePaint;
    float progress;
    RectF rectF;
    String text;
    TextPaint textPaint;

    public FlatCheckBox(Context context) {
        super(context);
        this.enabled = true;
        this.textPaint = new TextPaint(1);
        this.fillPaint = new Paint(1);
        this.outLinePaint = new Paint(1);
        this.checkPaint = new Paint(1);
        this.HEIGHT = AndroidUtilities.m54dp(36);
        this.INNER_PADDING = AndroidUtilities.m54dp(22);
        this.TRANSLETE_TEXT = AndroidUtilities.m54dp(8);
        this.f1656P = AndroidUtilities.m54dp(2);
        this.rectF = new RectF();
        this.progress = BitmapDescriptorFactory.HUE_RED;
        this.lastW = 0;
        this.textPaint.setTextSize(AndroidUtilities.m54dp(14));
        this.textPaint.setTextAlign(Paint.Align.CENTER);
        this.textPaint.setTypeface(Typeface.create("sans-serif-medium", 0));
        this.outLinePaint.setStrokeWidth(AndroidUtilities.dpf2(1.5f));
        this.outLinePaint.setStyle(Paint.Style.STROKE);
        this.checkPaint.setStyle(Paint.Style.STROKE);
        this.checkPaint.setStrokeCap(Paint.Cap.ROUND);
        this.checkPaint.setStrokeWidth(AndroidUtilities.m54dp(2));
    }

    public void recolor(int i) {
        this.colorActive = Theme.getColor(Theme.key_windowBackgroundWhite);
        this.colorTextActive = -1;
        this.colorInactive = i;
        invalidate();
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.attached = true;
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.attached = false;
    }

    public void setChecked(boolean z) {
        setChecked(z, true);
    }

    public void setChecked(boolean z, boolean z2) {
        this.checked = z;
        if (!this.attached || !z2) {
            this.progress = z ? 1.0f : 0.0f;
            return;
        }
        ValueAnimator valueAnimator = this.checkAnimator;
        if (valueAnimator != null) {
            valueAnimator.removeAllListeners();
            this.checkAnimator.cancel();
        }
        float[] fArr = new float[2];
        fArr[0] = this.progress;
        fArr[1] = z ? 1.0f : 0.0f;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(fArr);
        this.checkAnimator = ofFloat;
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.FlatCheckBox$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                FlatCheckBox.this.lambda$setChecked$0(valueAnimator2);
            }
        });
        this.checkAnimator.setDuration(300L);
        this.checkAnimator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setChecked$0(ValueAnimator valueAnimator) {
        this.progress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        invalidate();
    }

    public void setText(String str) {
        this.text = str;
        requestLayout();
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        String str = this.text;
        setMeasuredDimension((str == null ? 0 : (int) this.textPaint.measureText(str)) + (this.INNER_PADDING << 1) + (this.f1656P * 2), this.HEIGHT + AndroidUtilities.m54dp(4));
        if (getMeasuredWidth() != this.lastW) {
            this.rectF.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), getMeasuredHeight());
            this.rectF.inset(this.f1656P + (this.outLinePaint.getStrokeWidth() / 2.0f), this.f1656P + (this.outLinePaint.getStrokeWidth() / 2.0f) + AndroidUtilities.m54dp(2));
        }
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        float f;
        super.draw(canvas);
        float f2 = this.progress;
        if (f2 <= 0.5f) {
            f = f2 / 0.5f;
            this.fillPaint.setColor(Color.rgb(Color.red(this.colorActive) + ((int) ((Color.red(this.colorInactive) - Color.red(this.colorActive)) * f)), Color.green(this.colorActive) + ((int) ((Color.green(this.colorInactive) - Color.green(this.colorActive)) * f)), Color.blue(this.colorActive) + ((int) ((Color.blue(this.colorInactive) - Color.blue(this.colorActive)) * f))));
            this.textPaint.setColor(Color.rgb(Color.red(this.colorInactive) + ((int) ((Color.red(this.colorTextActive) - Color.red(this.colorInactive)) * f)), Color.green(this.colorInactive) + ((int) ((Color.green(this.colorTextActive) - Color.green(this.colorInactive)) * f)), Color.blue(this.colorInactive) + ((int) ((Color.blue(this.colorTextActive) - Color.blue(this.colorInactive)) * f))));
        } else {
            this.textPaint.setColor(this.colorTextActive);
            this.fillPaint.setColor(this.colorInactive);
            f = 1.0f;
        }
        int measuredHeight = getMeasuredHeight() >> 1;
        this.outLinePaint.setColor(this.colorInactive);
        RectF rectF = this.rectF;
        int i = this.HEIGHT;
        canvas.drawRoundRect(rectF, i / 2.0f, i / 2.0f, this.fillPaint);
        RectF rectF2 = this.rectF;
        int i2 = this.HEIGHT;
        canvas.drawRoundRect(rectF2, i2 / 2.0f, i2 / 2.0f, this.outLinePaint);
        String str = this.text;
        if (str != null) {
            canvas.drawText(str, (getMeasuredWidth() >> 1) + (f * this.TRANSLETE_TEXT), measuredHeight + (this.textPaint.getTextSize() * 0.35f), this.textPaint);
        }
        float f3 = 2.0f - (this.progress / 0.5f);
        canvas.save();
        canvas.scale(0.9f, 0.9f, AndroidUtilities.dpf2(7.0f), measuredHeight);
        canvas.translate(AndroidUtilities.m54dp(12), measuredHeight - AndroidUtilities.m54dp(9));
        if (this.progress > 0.5f) {
            this.checkPaint.setColor(this.colorTextActive);
            float f4 = 1.0f - f3;
            canvas.drawLine(AndroidUtilities.dpf2(7.0f), (int) AndroidUtilities.dpf2(13.0f), (int) (AndroidUtilities.dpf2(7.0f) - (AndroidUtilities.m54dp(4) * f4)), (int) (AndroidUtilities.dpf2(13.0f) - (AndroidUtilities.m54dp(4) * f4)), this.checkPaint);
            canvas.drawLine((int) AndroidUtilities.dpf2(7.0f), (int) AndroidUtilities.dpf2(13.0f), (int) (AndroidUtilities.dpf2(7.0f) + (AndroidUtilities.m54dp(8) * f4)), (int) (AndroidUtilities.dpf2(13.0f) - (AndroidUtilities.m54dp(8) * f4)), this.checkPaint);
        }
        canvas.restore();
    }

    public void denied() {
        AndroidUtilities.shakeView(this);
    }
}
