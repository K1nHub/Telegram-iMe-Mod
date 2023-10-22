package org.telegram.p042ui.Components;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.Keep;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p042ui.ActionBar.Theme;
/* renamed from: org.telegram.ui.Components.CheckBoxSquare */
/* loaded from: classes6.dex */
public class CheckBoxSquare extends View {
    private boolean attachedToWindow;
    private ObjectAnimator checkAnimator;
    private Bitmap drawBitmap;
    private Canvas drawCanvas;
    private boolean isAlert;
    private boolean isChecked;
    private boolean isDisabled;
    private int key1;
    private int key2;
    private int key3;
    private float progress;
    private RectF rectF;
    private final Theme.ResourcesProvider resourcesProvider;

    public CheckBoxSquare(Context context, boolean z, Theme.ResourcesProvider resourcesProvider) {
        this(context, z, resourcesProvider, null);
    }

    public CheckBoxSquare(Context context, AttributeSet attributeSet) {
        this(context, false, null, attributeSet);
    }

    public CheckBoxSquare(Context context, boolean z) {
        this(context, z, null);
    }

    public CheckBoxSquare(Context context, boolean z, Theme.ResourcesProvider resourcesProvider, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.resourcesProvider = resourcesProvider;
        if (Theme.checkboxSquare_backgroundPaint == null) {
            Theme.createCommonResources(context);
        }
        boolean z2 = this.isAlert;
        this.key1 = z2 ? Theme.key_dialogCheckboxSquareUnchecked : Theme.key_checkboxSquareUnchecked;
        this.key2 = z2 ? Theme.key_dialogCheckboxSquareBackground : Theme.key_checkboxSquareBackground;
        this.key3 = z2 ? Theme.key_dialogCheckboxSquareCheck : Theme.key_checkboxSquareCheck;
        this.rectF = new RectF();
        this.drawBitmap = Bitmap.createBitmap(AndroidUtilities.m102dp(18), AndroidUtilities.m102dp(18), Bitmap.Config.ARGB_4444);
        this.drawCanvas = new Canvas(this.drawBitmap);
        this.isAlert = z;
    }

    public void setColors(int i, int i2, int i3) {
        this.key1 = i;
        this.key2 = i2;
        this.key3 = i3;
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
        ofFloat.setDuration(300L);
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

    @Override // android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
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

    public void setDisabled(boolean z) {
        this.isDisabled = z;
        invalidate();
    }

    public boolean isChecked() {
        return this.isChecked;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        float f;
        float f2;
        if (getVisibility() != 0) {
            return;
        }
        int themedColor = getThemedColor(this.key1);
        int themedColor2 = getThemedColor(this.key2);
        float f3 = this.progress;
        if (f3 <= 0.5f) {
            f2 = f3 / 0.5f;
            Theme.checkboxSquare_backgroundPaint.setColor(Color.rgb(Color.red(themedColor) + ((int) ((Color.red(themedColor2) - Color.red(themedColor)) * f2)), Color.green(themedColor) + ((int) ((Color.green(themedColor2) - Color.green(themedColor)) * f2)), Color.blue(themedColor) + ((int) ((Color.blue(themedColor2) - Color.blue(themedColor)) * f2))));
            f = f2;
        } else {
            Theme.checkboxSquare_backgroundPaint.setColor(themedColor2);
            f = 2.0f - (f3 / 0.5f);
            f2 = 1.0f;
        }
        if (this.isDisabled) {
            Theme.checkboxSquare_backgroundPaint.setColor(getThemedColor(this.isAlert ? Theme.key_dialogCheckboxSquareDisabled : Theme.key_checkboxSquareDisabled));
        }
        float m102dp = AndroidUtilities.m102dp(1) * f;
        this.rectF.set(m102dp, m102dp, AndroidUtilities.m102dp(18) - m102dp, AndroidUtilities.m102dp(18) - m102dp);
        this.drawBitmap.eraseColor(0);
        this.drawCanvas.drawRoundRect(this.rectF, AndroidUtilities.m102dp(2), AndroidUtilities.m102dp(2), Theme.checkboxSquare_backgroundPaint);
        if (f2 != 1.0f) {
            float min = Math.min(AndroidUtilities.m102dp(7), (AndroidUtilities.m102dp(7) * f2) + m102dp);
            this.rectF.set(AndroidUtilities.m102dp(2) + min, AndroidUtilities.m102dp(2) + min, AndroidUtilities.m102dp(16) - min, AndroidUtilities.m102dp(16) - min);
            this.drawCanvas.drawRect(this.rectF, Theme.checkboxSquare_eraserPaint);
        }
        if (this.progress > 0.5f) {
            Theme.checkboxSquare_checkPaint.setColor(getThemedColor(this.key3));
            float f4 = 1.0f - f;
            this.drawCanvas.drawLine(AndroidUtilities.m102dp(7), (int) AndroidUtilities.dpf2(13.0f), (int) (AndroidUtilities.m102dp(7) - (AndroidUtilities.m102dp(3) * f4)), (int) (AndroidUtilities.dpf2(13.0f) - (AndroidUtilities.m102dp(3) * f4)), Theme.checkboxSquare_checkPaint);
            this.drawCanvas.drawLine((int) AndroidUtilities.dpf2(7.0f), (int) AndroidUtilities.dpf2(13.0f), (int) (AndroidUtilities.dpf2(7.0f) + (AndroidUtilities.m102dp(7) * f4)), (int) (AndroidUtilities.dpf2(13.0f) - (AndroidUtilities.m102dp(7) * f4)), Theme.checkboxSquare_checkPaint);
        }
        canvas.drawBitmap(this.drawBitmap, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, (Paint) null);
    }

    protected int getThemedColor(int i) {
        return Theme.getColor(i, this.resourcesProvider);
    }
}
