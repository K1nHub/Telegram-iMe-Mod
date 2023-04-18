package org.telegram.p044ui.Components.voip;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import androidx.annotation.Keep;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
/* renamed from: org.telegram.ui.Components.voip.FabBackgroundDrawable */
/* loaded from: classes6.dex */
public class FabBackgroundDrawable extends Drawable {
    private Paint bgPaint = new Paint(1);
    private Bitmap shadowBitmap;
    private Paint shadowPaint;

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -2;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    public FabBackgroundDrawable() {
        Paint paint = new Paint();
        this.shadowPaint = paint;
        paint.setColor(1275068416);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        int i;
        if (this.shadowBitmap == null) {
            onBoundsChange(getBounds());
        }
        int min = Math.min(getBounds().width(), getBounds().height());
        Bitmap bitmap = this.shadowBitmap;
        if (bitmap != null) {
            canvas.drawBitmap(bitmap, getBounds().centerX() - (this.shadowBitmap.getWidth() / 2), getBounds().centerY() - (this.shadowBitmap.getHeight() / 2), this.shadowPaint);
        }
        float f = min / 2;
        canvas.drawCircle(f, f, i - AndroidUtilities.m50dp(4), this.bgPaint);
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        int i;
        int min = Math.min(rect.width(), rect.height());
        if (min <= 0) {
            this.shadowBitmap = null;
            return;
        }
        this.shadowBitmap = Bitmap.createBitmap(min, min, Bitmap.Config.ALPHA_8);
        Canvas canvas = new Canvas(this.shadowBitmap);
        Paint paint = new Paint(1);
        paint.setShadowLayer(AndroidUtilities.m51dp(3.33333f), BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m51dp(0.666f), -1);
        float f = min / 2;
        canvas.drawCircle(f, f, i - AndroidUtilities.m50dp(4), paint);
    }

    @Keep
    public void setColor(int i) {
        this.bgPaint.setColor(i);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        int m50dp = AndroidUtilities.m50dp(4);
        rect.set(m50dp, m50dp, m50dp, m50dp);
        return true;
    }
}
