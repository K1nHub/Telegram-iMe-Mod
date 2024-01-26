package org.telegram.p043ui.Components;

import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Shader;
import android.graphics.Typeface;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
/* renamed from: org.telegram.ui.Components.Text */
/* loaded from: classes6.dex */
public class Text {
    private boolean doNotSave;
    private LinearGradient ellipsizeGradient;
    private Matrix ellipsizeMatrix;
    private Paint ellipsizePaint;
    private int ellipsizeWidth;
    private boolean hackClipBounds;
    private StaticLayout layout;
    private float left;
    private final TextPaint paint;
    private float width;

    public Text(CharSequence charSequence, float f) {
        this(charSequence, f, null);
    }

    public Text(CharSequence charSequence, float f, Typeface typeface) {
        TextPaint textPaint = new TextPaint(1);
        this.paint = textPaint;
        this.ellipsizeWidth = -1;
        textPaint.setTextSize(AndroidUtilities.m108dp(f));
        textPaint.setTypeface(typeface);
        setText(charSequence);
    }

    public void setText(CharSequence charSequence) {
        StaticLayout staticLayout = new StaticLayout(AndroidUtilities.replaceNewLines(charSequence), this.paint, 99999, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
        this.layout = staticLayout;
        int lineCount = staticLayout.getLineCount();
        float f = BitmapDescriptorFactory.HUE_RED;
        this.width = lineCount > 0 ? this.layout.getLineWidth(0) : 0.0f;
        if (this.layout.getLineCount() > 0) {
            f = this.layout.getLineLeft(0);
        }
        this.left = f;
    }

    public Text hackClipBounds() {
        this.hackClipBounds = true;
        return this;
    }

    public float getTextSize() {
        return this.paint.getTextSize();
    }

    public void setColor(int i) {
        this.paint.setColor(i);
    }

    public Text ellipsize(int i) {
        this.ellipsizeWidth = i;
        return this;
    }

    public void draw(Canvas canvas, float f, float f2, int i, float f3) {
        if (this.layout == null) {
            return;
        }
        this.paint.setColor(i);
        int alpha = this.paint.getAlpha();
        if (f3 != 1.0f) {
            this.paint.setAlpha((int) (alpha * f3));
        }
        if (!this.doNotSave) {
            canvas.save();
        }
        canvas.translate(f - this.left, f2 - (this.layout.getHeight() / 2.0f));
        draw(canvas);
        if (!this.doNotSave) {
            canvas.restore();
        }
        this.paint.setAlpha(alpha);
    }

    public void draw(Canvas canvas, float f, float f2) {
        if (this.layout == null) {
            return;
        }
        if (!this.doNotSave) {
            canvas.save();
        }
        canvas.translate(f - this.left, f2 - (this.layout.getHeight() / 2.0f));
        draw(canvas);
        if (this.doNotSave) {
            return;
        }
        canvas.restore();
    }

    public void draw(Canvas canvas) {
        int i;
        int i2;
        StaticLayout staticLayout = this.layout;
        if (staticLayout == null) {
            return;
        }
        if (!this.doNotSave && (i2 = this.ellipsizeWidth) >= 0 && this.width > i2) {
            canvas.saveLayerAlpha(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, i2, staticLayout.getHeight(), 255, 31);
        }
        if (this.hackClipBounds) {
            canvas.drawText(this.layout.getText().toString(), BitmapDescriptorFactory.HUE_RED, -this.paint.getFontMetricsInt().ascent, this.paint);
        } else {
            this.layout.draw(canvas);
        }
        if (this.doNotSave || (i = this.ellipsizeWidth) < 0 || this.width <= i) {
            return;
        }
        if (this.ellipsizeGradient == null) {
            this.ellipsizeGradient = new LinearGradient((float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m107dp(8), (float) BitmapDescriptorFactory.HUE_RED, new int[]{16777215, -1}, new float[]{BitmapDescriptorFactory.HUE_RED, 1.0f}, Shader.TileMode.CLAMP);
            this.ellipsizeMatrix = new Matrix();
            Paint paint = new Paint(1);
            this.ellipsizePaint = paint;
            paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
            this.ellipsizePaint.setShader(this.ellipsizeGradient);
        }
        canvas.save();
        this.ellipsizeMatrix.reset();
        this.ellipsizeMatrix.postTranslate((this.ellipsizeWidth - this.left) - AndroidUtilities.m107dp(8), BitmapDescriptorFactory.HUE_RED);
        this.ellipsizeGradient.setLocalMatrix(this.ellipsizeMatrix);
        canvas.drawRect((this.ellipsizeWidth - this.left) - AndroidUtilities.m107dp(8), BitmapDescriptorFactory.HUE_RED, this.ellipsizeWidth - this.left, this.layout.getHeight(), this.ellipsizePaint);
        canvas.restore();
        canvas.restore();
    }

    public Paint.FontMetricsInt getFontMetricsInt() {
        return this.paint.getFontMetricsInt();
    }

    public float getWidth() {
        int i = this.ellipsizeWidth;
        return i >= 0 ? Math.min(i, this.width) : this.width;
    }

    public float getCurrentWidth() {
        return this.width;
    }

    public CharSequence getText() {
        StaticLayout staticLayout = this.layout;
        return (staticLayout == null || staticLayout.getText() == null) ? "" : this.layout.getText();
    }
}
