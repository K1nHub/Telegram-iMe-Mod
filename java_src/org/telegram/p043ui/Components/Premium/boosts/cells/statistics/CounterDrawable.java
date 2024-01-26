package org.telegram.p043ui.Components.Premium.boosts.cells.statistics;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.text.TextPaint;
import androidx.core.content.ContextCompat;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
/* renamed from: org.telegram.ui.Components.Premium.boosts.cells.statistics.CounterDrawable */
/* loaded from: classes6.dex */
public class CounterDrawable extends Drawable {
    private final Paint bgPaint;
    private final RectF bgRoundRect;
    private final Drawable icon;
    private String text;
    private final TextPaint textPaint;
    private float textWith;

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -1;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    public CounterDrawable(Context context) {
        TextPaint textPaint = new TextPaint(1);
        this.textPaint = textPaint;
        TextPaint textPaint2 = new TextPaint(1);
        this.bgPaint = textPaint2;
        this.bgRoundRect = new RectF();
        textPaint.setColor(-1);
        textPaint.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        textPaint.setTextSize(AndroidUtilities.m107dp(12));
        textPaint2.setColor(-6915073);
        this.icon = ContextCompat.getDrawable(context, C3632R.C3634drawable.mini_boost_badge);
    }

    public void setText(String str) {
        this.text = str;
        this.textWith = this.textPaint.measureText(str);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        this.bgRoundRect.set(bounds.left, bounds.top, bounds.right, bounds.bottom);
        canvas.drawRoundRect(this.bgRoundRect, AndroidUtilities.m107dp(12), AndroidUtilities.m107dp(12), this.bgPaint);
        this.icon.setBounds(bounds.left + AndroidUtilities.m107dp(2), bounds.top + AndroidUtilities.m107dp(1), bounds.left + AndroidUtilities.m107dp(2) + this.icon.getIntrinsicWidth(), getBounds().top + AndroidUtilities.m107dp(1) + this.icon.getIntrinsicHeight());
        this.icon.draw(canvas);
        String str = this.text;
        if (str != null) {
            canvas.drawText(str, AndroidUtilities.m108dp(16.5f) + bounds.left, bounds.top + AndroidUtilities.m108dp(13.0f), this.textPaint);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return (int) (AndroidUtilities.m107dp(23) + this.textWith);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return AndroidUtilities.m107dp(18);
    }
}
