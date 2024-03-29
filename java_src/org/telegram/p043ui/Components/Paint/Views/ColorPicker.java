package org.telegram.p043ui.Components.Paint.Views;

import android.animation.ObjectAnimator;
import android.content.SharedPreferences;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.OvershootInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.Keep;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p043ui.Components.Paint.Swatch;
/* renamed from: org.telegram.ui.Components.Paint.Views.ColorPicker */
/* loaded from: classes6.dex */
public class ColorPicker extends FrameLayout {
    private static final int[] COLORS = {-1431751, -2409774, -13610525, -11942419, -8337308, -205211, -223667, -16777216, -1};
    private static final float[] LOCATIONS = {BitmapDescriptorFactory.HUE_RED, 0.14f, 0.24f, 0.39f, 0.49f, 0.62f, 0.73f, 0.85f, 1.0f};
    private Paint backgroundPaint;
    private boolean changingWeight;
    private ColorPickerDelegate delegate;
    private boolean dragging;
    private float draggingFactor;
    private Paint gradientPaint;
    private boolean interacting;
    private OvershootInterpolator interpolator;
    private float location;
    private RectF rectF;
    public ImageView settingsButton;
    private Drawable shadowDrawable;
    private Paint swatchPaint;
    private Paint swatchStrokePaint;
    private ImageView undoButton;
    private boolean wasChangingWeight;
    private float weight;

    /* renamed from: org.telegram.ui.Components.Paint.Views.ColorPicker$ColorPickerDelegate */
    /* loaded from: classes6.dex */
    public interface ColorPickerDelegate {
        void onBeganColorPicking();

        void onColorValueChanged();

        void onFinishedColorPicking();
    }

    public void setUndoEnabled(boolean z) {
        this.undoButton.setAlpha(z ? 1.0f : 0.3f);
        this.undoButton.setEnabled(z);
    }

    public void setDelegate(ColorPickerDelegate colorPickerDelegate) {
        this.delegate = colorPickerDelegate;
    }

    public View getSettingsButton() {
        return this.settingsButton;
    }

    public void setSettingsButtonImage(int i) {
        this.settingsButton.setImageResource(i);
    }

    public Swatch getSwatch() {
        return new Swatch(colorForLocation(this.location), this.location, this.weight);
    }

    public void setSwatch(Swatch swatch) {
        setLocation(swatch.colorLocation);
        setWeight(swatch.brushWeight);
    }

    public int colorForLocation(float f) {
        float[] fArr;
        int i;
        if (f <= BitmapDescriptorFactory.HUE_RED) {
            return COLORS[0];
        }
        int i2 = 1;
        if (f >= 1.0f) {
            int[] iArr = COLORS;
            return iArr[iArr.length - 1];
        }
        while (true) {
            fArr = LOCATIONS;
            i = -1;
            if (i2 >= fArr.length) {
                i2 = -1;
                break;
            } else if (fArr[i2] >= f) {
                i = i2 - 1;
                break;
            } else {
                i2++;
            }
        }
        float f2 = fArr[i];
        int[] iArr2 = COLORS;
        return interpolateColors(iArr2[i], iArr2[i2], (f - f2) / (fArr[i2] - f2));
    }

    private int interpolateColors(int i, int i2, float f) {
        float min = Math.min(Math.max(f, (float) BitmapDescriptorFactory.HUE_RED), 1.0f);
        int red = Color.red(i);
        int red2 = Color.red(i2);
        int green = Color.green(i);
        int green2 = Color.green(i2);
        int blue = Color.blue(i);
        return Color.argb(255, Math.min(255, (int) (red + ((red2 - red) * min))), Math.min(255, (int) (green + ((green2 - green) * min))), Math.min(255, (int) (blue + ((Color.blue(i2) - blue) * min))));
    }

    public void setLocation(float f) {
        this.location = f;
        int colorForLocation = colorForLocation(f);
        this.swatchPaint.setColor(colorForLocation);
        float[] fArr = new float[3];
        Color.colorToHSV(colorForLocation, fArr);
        if (fArr[0] < 0.001d && fArr[1] < 0.001d && fArr[2] > 0.92f) {
            int i = (int) ((1.0f - (((fArr[2] - 0.92f) / 0.08f) * 0.22f)) * 255.0f);
            this.swatchStrokePaint.setColor(Color.rgb(i, i, i));
        } else {
            this.swatchStrokePaint.setColor(colorForLocation);
        }
        invalidate();
    }

    public void setWeight(float f) {
        this.weight = f;
        invalidate();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        ColorPickerDelegate colorPickerDelegate;
        if (motionEvent.getPointerCount() > 1) {
            return false;
        }
        float x = motionEvent.getX() - this.rectF.left;
        float y = motionEvent.getY() - this.rectF.top;
        if (this.interacting || y >= (-AndroidUtilities.m107dp(10))) {
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 3 || actionMasked == 1 || actionMasked == 6) {
                if (this.interacting && (colorPickerDelegate = this.delegate) != null) {
                    colorPickerDelegate.onFinishedColorPicking();
                    SharedPreferences.Editor edit = getContext().getSharedPreferences("paint", 0).edit();
                    edit.putFloat("last_color_location", this.location);
                    edit.putFloat("last_color_weight", this.weight);
                    edit.commit();
                }
                this.interacting = false;
                this.wasChangingWeight = this.changingWeight;
                this.changingWeight = false;
                setDragging(false, true);
            } else if (actionMasked == 0 || actionMasked == 2) {
                if (!this.interacting) {
                    this.interacting = true;
                    ColorPickerDelegate colorPickerDelegate2 = this.delegate;
                    if (colorPickerDelegate2 != null) {
                        colorPickerDelegate2.onBeganColorPicking();
                    }
                }
                setLocation(Math.max((float) BitmapDescriptorFactory.HUE_RED, Math.min(1.0f, x / this.rectF.width())));
                setDragging(true, true);
                if (y < (-AndroidUtilities.m107dp(10))) {
                    this.changingWeight = true;
                    setWeight(Math.max((float) BitmapDescriptorFactory.HUE_RED, Math.min(1.0f, ((-y) - AndroidUtilities.m107dp(10)) / AndroidUtilities.m107dp(190))));
                }
                ColorPickerDelegate colorPickerDelegate3 = this.delegate;
                if (colorPickerDelegate3 != null) {
                    colorPickerDelegate3.onColorValueChanged();
                }
                return true;
            }
            return false;
        }
        return false;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5 = i3 - i;
        int i6 = i4 - i2;
        this.gradientPaint.setShader(new LinearGradient(AndroidUtilities.m107dp(56), (float) BitmapDescriptorFactory.HUE_RED, i5 - AndroidUtilities.m107dp(56), (float) BitmapDescriptorFactory.HUE_RED, COLORS, LOCATIONS, Shader.TileMode.REPEAT));
        int m107dp = i6 - AndroidUtilities.m107dp(32);
        this.rectF.set(AndroidUtilities.m107dp(56), m107dp, i5 - AndroidUtilities.m107dp(56), m107dp + AndroidUtilities.m107dp(12));
        ImageView imageView = this.settingsButton;
        imageView.layout(i5 - imageView.getMeasuredWidth(), i6 - AndroidUtilities.m107dp(52), i5, i6);
        this.undoButton.layout(0, i6 - AndroidUtilities.m107dp(52), this.settingsButton.getMeasuredWidth(), i6);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        canvas.drawRoundRect(this.rectF, AndroidUtilities.m107dp(6), AndroidUtilities.m107dp(6), this.gradientPaint);
        RectF rectF = this.rectF;
        int width = (int) (rectF.left + (rectF.width() * this.location));
        int centerY = (int) ((this.rectF.centerY() + (this.draggingFactor * (-AndroidUtilities.m107dp(70)))) - (this.changingWeight ? this.weight * AndroidUtilities.m107dp(190) : BitmapDescriptorFactory.HUE_RED));
        int m107dp = (int) (AndroidUtilities.m107dp(24) * (this.draggingFactor + 1.0f) * 0.5f);
        this.shadowDrawable.setBounds(width - m107dp, centerY - m107dp, width + m107dp, m107dp + centerY);
        this.shadowDrawable.draw(canvas);
        float floor = (((int) Math.floor(AndroidUtilities.m107dp(4) + ((AndroidUtilities.m107dp(19) - AndroidUtilities.m107dp(4)) * this.weight))) * (this.draggingFactor + 1.0f)) / 2.0f;
        float f = width;
        float f2 = centerY;
        canvas.drawCircle(f, f2, (AndroidUtilities.m107dp(22) / 2) * (this.draggingFactor + 1.0f), this.backgroundPaint);
        canvas.drawCircle(f, f2, floor, this.swatchPaint);
        canvas.drawCircle(f, f2, floor - AndroidUtilities.m108dp(0.5f), this.swatchStrokePaint);
    }

    @Keep
    private void setDraggingFactor(float f) {
        this.draggingFactor = f;
        invalidate();
    }

    @Keep
    public float getDraggingFactor() {
        return this.draggingFactor;
    }

    private void setDragging(boolean z, boolean z2) {
        if (this.dragging == z) {
            return;
        }
        this.dragging = z;
        float f = z ? 1.0f : BitmapDescriptorFactory.HUE_RED;
        if (z2) {
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, "draggingFactor", this.draggingFactor, f);
            ofFloat.setInterpolator(this.interpolator);
            ofFloat.setDuration(this.wasChangingWeight ? (int) (300 + (this.weight * 75.0f)) : 300);
            ofFloat.start();
            return;
        }
        setDraggingFactor(f);
    }
}
