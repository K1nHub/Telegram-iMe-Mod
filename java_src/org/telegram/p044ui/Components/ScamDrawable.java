package org.telegram.p044ui.Components;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.text.TextPaint;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3242R;
import org.telegram.messenger.LocaleController;
/* renamed from: org.telegram.ui.Components.ScamDrawable */
/* loaded from: classes6.dex */
public class ScamDrawable extends Drawable {
    int alpha;
    int colorAlpha;
    private int currentType;
    private String text;
    private TextPaint textPaint;
    private int textWidth;
    private RectF rect = new RectF();
    private Paint paint = new Paint(1);

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -2;
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    public ScamDrawable(int i, int i2) {
        TextPaint textPaint = new TextPaint(1);
        this.textPaint = textPaint;
        this.colorAlpha = 255;
        this.alpha = 255;
        this.currentType = i2;
        textPaint.setTextSize(AndroidUtilities.m50dp(i));
        this.textPaint.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.paint.setStyle(Paint.Style.STROKE);
        this.paint.setStrokeWidth(AndroidUtilities.m50dp(1));
        if (i2 == 0) {
            this.text = LocaleController.getString("ScamMessage", C3242R.string.ScamMessage);
        } else {
            this.text = LocaleController.getString("FakeMessage", C3242R.string.FakeMessage);
        }
        this.textWidth = (int) Math.ceil(this.textPaint.measureText(this.text));
    }

    public void checkText() {
        String string;
        if (this.currentType == 0) {
            string = LocaleController.getString("ScamMessage", C3242R.string.ScamMessage);
        } else {
            string = LocaleController.getString("FakeMessage", C3242R.string.FakeMessage);
        }
        if (string.equals(this.text)) {
            return;
        }
        this.text = string;
        this.textWidth = (int) Math.ceil(this.textPaint.measureText(string));
    }

    public void setColor(int i) {
        this.textPaint.setColor(i);
        this.paint.setColor(i);
        this.colorAlpha = Color.alpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        if (this.alpha != i) {
            int i2 = (int) (this.colorAlpha * (i / 255.0f));
            this.paint.setAlpha(i2);
            this.textPaint.setAlpha(i2);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.textWidth + AndroidUtilities.m50dp(10);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return AndroidUtilities.m50dp(16);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        this.rect.set(getBounds());
        canvas.drawRoundRect(this.rect, AndroidUtilities.m50dp(2), AndroidUtilities.m50dp(2), this.paint);
        canvas.drawText(this.text, this.rect.left + AndroidUtilities.m50dp(5), this.rect.top + AndroidUtilities.m50dp(12), this.textPaint);
    }
}
