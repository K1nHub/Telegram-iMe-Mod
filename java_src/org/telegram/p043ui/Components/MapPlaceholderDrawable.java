package org.telegram.p043ui.Components;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p043ui.ActionBar.Theme;
/* renamed from: org.telegram.ui.Components.MapPlaceholderDrawable */
/* loaded from: classes6.dex */
public class MapPlaceholderDrawable extends Drawable {
    private Paint linePaint;
    private Paint paint;

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    public MapPlaceholderDrawable() {
        this(Theme.getCurrentTheme().isDark());
    }

    public MapPlaceholderDrawable(boolean z) {
        this.paint = new Paint();
        Paint paint = new Paint();
        this.linePaint = paint;
        paint.setStrokeWidth(AndroidUtilities.m107dp(1));
        if (z) {
            this.paint.setColor(-14865331);
            this.linePaint.setColor(-15854042);
            return;
        }
        this.paint.setColor(-2172970);
        this.linePaint.setColor(-3752002);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        canvas.drawRect(getBounds(), this.paint);
        int m107dp = AndroidUtilities.m107dp(9);
        int width = getBounds().width() / m107dp;
        int height = getBounds().height() / m107dp;
        int i = getBounds().left;
        int i2 = getBounds().top;
        int i3 = 0;
        int i4 = 0;
        while (i4 < width) {
            i4++;
            float f = (m107dp * i4) + i;
            canvas.drawLine(f, i2, f, getBounds().height() + i2, this.linePaint);
        }
        while (i3 < height) {
            i3++;
            float f2 = (m107dp * i3) + i2;
            canvas.drawLine(i, f2, getBounds().width() + i, f2, this.linePaint);
        }
    }
}
