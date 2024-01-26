package org.telegram.p043ui.Components;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.text.TextPaint;
import android.util.Property;
import android.view.View;
import androidx.core.graphics.ColorUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.AnimationProperties;
/* renamed from: org.telegram.ui.Components.WallpaperCheckBoxView */
/* loaded from: classes6.dex */
public class WallpaperCheckBoxView extends View {
    public final Property<WallpaperCheckBoxView, Float> PROGRESS_PROPERTY;
    private Paint backgroundPaint;
    private ObjectAnimator checkAnimator;
    private Paint checkPaint;
    private int[] colors;
    private String currentText;
    private int currentTextSize;
    private float dimAmount;
    private final Paint dimPaint;
    private Bitmap drawBitmap;
    private Canvas drawCanvas;
    private Paint eraserPaint;
    private boolean isChecked;
    private int maxTextSize;
    private View parentView;
    private float progress;
    private RectF rect;
    Theme.ResourcesProvider resourcesProvider;
    private TextPaint textPaint;

    public WallpaperCheckBoxView(Context context, boolean z, View view, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.colors = new int[4];
        this.PROGRESS_PROPERTY = new AnimationProperties.FloatProperty<WallpaperCheckBoxView>("progress") { // from class: org.telegram.ui.Components.WallpaperCheckBoxView.1
            @Override // org.telegram.p043ui.Components.AnimationProperties.FloatProperty
            public void setValue(WallpaperCheckBoxView wallpaperCheckBoxView, float f) {
                WallpaperCheckBoxView.this.progress = f;
                WallpaperCheckBoxView.this.invalidate();
            }

            @Override // android.util.Property
            public Float get(WallpaperCheckBoxView wallpaperCheckBoxView) {
                return Float.valueOf(WallpaperCheckBoxView.this.progress);
            }
        };
        this.dimPaint = new Paint(1);
        this.resourcesProvider = resourcesProvider;
        this.rect = new RectF();
        if (z) {
            this.drawBitmap = Bitmap.createBitmap(AndroidUtilities.m107dp(18), AndroidUtilities.m107dp(18), Bitmap.Config.ARGB_4444);
            this.drawCanvas = new Canvas(this.drawBitmap);
        }
        this.parentView = view;
        TextPaint textPaint = new TextPaint(1);
        this.textPaint = textPaint;
        textPaint.setTextSize(AndroidUtilities.m107dp(14));
        this.textPaint.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        Paint paint = new Paint(1);
        this.checkPaint = paint;
        paint.setStyle(Paint.Style.STROKE);
        this.checkPaint.setStrokeWidth(AndroidUtilities.m107dp(2));
        this.checkPaint.setColor(0);
        this.checkPaint.setStrokeCap(Paint.Cap.ROUND);
        this.checkPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        Paint paint2 = new Paint(1);
        this.eraserPaint = paint2;
        paint2.setColor(0);
        this.eraserPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        this.backgroundPaint = new Paint(1);
    }

    public void setText(String str, int i, int i2) {
        this.currentText = str;
        this.currentTextSize = i;
        this.maxTextSize = i2;
    }

    public void setColor(int i, int i2) {
        if (this.colors == null) {
            this.colors = new int[4];
        }
        this.colors[i] = i2;
        invalidate();
    }

    public TextPaint getTextPaint() {
        return this.textPaint;
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(this.maxTextSize + AndroidUtilities.m107dp(56), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(32), 1073741824));
    }

    public void setDimAmount(float f) {
        this.dimAmount = f;
        this.dimPaint.setColor(ColorUtils.setAlphaComponent(-16777216, (int) (f * 255.0f)));
        invalidate();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        float f;
        float f2;
        this.rect.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), getMeasuredHeight());
        Theme.applyServiceShaderMatrixForView(this, this.parentView, this.resourcesProvider);
        canvas.drawRoundRect(this.rect, getMeasuredHeight() / 2, getMeasuredHeight() / 2, getThemedPaint("paintChatActionBackground"));
        Theme.ResourcesProvider resourcesProvider = this.resourcesProvider;
        if (resourcesProvider == null ? Theme.hasGradientService() : resourcesProvider.hasGradientService()) {
            canvas.drawRoundRect(this.rect, getMeasuredHeight() / 2, getMeasuredHeight() / 2, getThemedPaint("paintChatActionBackgroundDarken"));
        }
        if (this.dimAmount > BitmapDescriptorFactory.HUE_RED) {
            canvas.drawRoundRect(this.rect, getMeasuredHeight() / 2, getMeasuredHeight() / 2, this.dimPaint);
        }
        TextPaint textPaint = this.textPaint;
        int i = Theme.key_chat_serviceText;
        textPaint.setColor(Theme.getColor(i, this.resourcesProvider));
        int measuredWidth = ((getMeasuredWidth() - this.currentTextSize) - AndroidUtilities.m107dp(28)) / 2;
        canvas.drawText(this.currentText, AndroidUtilities.m107dp(28) + measuredWidth, AndroidUtilities.m107dp(21), this.textPaint);
        canvas.save();
        canvas.translate(measuredWidth, AndroidUtilities.m107dp(7));
        int i2 = 0;
        if (this.drawBitmap != null) {
            float f3 = this.progress;
            if (f3 <= 0.5f) {
                f = f3 / 0.5f;
                f2 = f;
            } else {
                f = 2.0f - (f3 / 0.5f);
                f2 = 1.0f;
            }
            float m107dp = AndroidUtilities.m107dp(1) * f;
            this.rect.set(m107dp, m107dp, AndroidUtilities.m107dp(18) - m107dp, AndroidUtilities.m107dp(18) - m107dp);
            this.drawBitmap.eraseColor(0);
            this.backgroundPaint.setColor(Theme.getColor(i, this.resourcesProvider));
            Canvas canvas2 = this.drawCanvas;
            RectF rectF = this.rect;
            canvas2.drawRoundRect(rectF, rectF.width() / 2.0f, this.rect.height() / 2.0f, this.backgroundPaint);
            if (f2 != 1.0f) {
                float min = Math.min(AndroidUtilities.m107dp(7), (AndroidUtilities.m107dp(7) * f2) + m107dp);
                this.rect.set(AndroidUtilities.m107dp(2) + min, AndroidUtilities.m107dp(2) + min, AndroidUtilities.m107dp(16) - min, AndroidUtilities.m107dp(16) - min);
                Canvas canvas3 = this.drawCanvas;
                RectF rectF2 = this.rect;
                canvas3.drawRoundRect(rectF2, rectF2.width() / 2.0f, this.rect.height() / 2.0f, this.eraserPaint);
            }
            if (this.progress > 0.5f) {
                float f4 = 1.0f - f;
                this.drawCanvas.drawLine(AndroidUtilities.m108dp(7.3f), AndroidUtilities.m107dp(13), (int) (AndroidUtilities.m108dp(7.3f) - (AndroidUtilities.m108dp(2.5f) * f4)), (int) (AndroidUtilities.m107dp(13) - (AndroidUtilities.m108dp(2.5f) * f4)), this.checkPaint);
                this.drawCanvas.drawLine(AndroidUtilities.m108dp(7.3f), AndroidUtilities.m107dp(13), (int) (AndroidUtilities.m108dp(7.3f) + (AndroidUtilities.m107dp(6) * f4)), (int) (AndroidUtilities.m107dp(13) - (AndroidUtilities.m107dp(6) * f4)), this.checkPaint);
            }
            canvas.drawBitmap(this.drawBitmap, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, (Paint) null);
        } else {
            this.rect.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m107dp(18), AndroidUtilities.m107dp(18));
            int[] iArr = this.colors;
            if (iArr[3] != 0) {
                while (i2 < 4) {
                    this.backgroundPaint.setColor(this.colors[i2]);
                    canvas.drawArc(this.rect, (i2 * 90) - 90, 90.0f, true, this.backgroundPaint);
                    i2++;
                }
            } else if (iArr[2] != 0) {
                while (i2 < 3) {
                    this.backgroundPaint.setColor(this.colors[i2]);
                    canvas.drawArc(this.rect, (i2 * 120) - 90, 120.0f, true, this.backgroundPaint);
                    i2++;
                }
            } else if (iArr[1] != 0) {
                while (i2 < 2) {
                    this.backgroundPaint.setColor(this.colors[i2]);
                    canvas.drawArc(this.rect, (i2 * 180) - 90, 180.0f, true, this.backgroundPaint);
                    i2++;
                }
            } else {
                this.backgroundPaint.setColor(iArr[0]);
                RectF rectF3 = this.rect;
                canvas.drawRoundRect(rectF3, rectF3.width() / 2.0f, this.rect.height() / 2.0f, this.backgroundPaint);
            }
        }
        canvas.restore();
    }

    private void setProgress(float f) {
        if (this.progress == f) {
            return;
        }
        this.progress = f;
        invalidate();
    }

    private void cancelCheckAnimator() {
        ObjectAnimator objectAnimator = this.checkAnimator;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
    }

    private void animateToCheckedState(boolean z) {
        Property<WallpaperCheckBoxView, Float> property = this.PROGRESS_PROPERTY;
        float[] fArr = new float[1];
        fArr[0] = z ? 1.0f : BitmapDescriptorFactory.HUE_RED;
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, property, fArr);
        this.checkAnimator = ofFloat;
        ofFloat.setDuration(300L);
        this.checkAnimator.start();
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
        if (z2) {
            animateToCheckedState(z);
            return;
        }
        cancelCheckAnimator();
        this.progress = z ? 1.0f : BitmapDescriptorFactory.HUE_RED;
        invalidate();
    }

    public boolean isChecked() {
        return this.isChecked;
    }

    private Paint getThemedPaint(String str) {
        Theme.ResourcesProvider resourcesProvider = this.resourcesProvider;
        Paint paint = resourcesProvider != null ? resourcesProvider.getPaint(str) : null;
        return paint != null ? paint : Theme.getThemePaint(str);
    }
}
