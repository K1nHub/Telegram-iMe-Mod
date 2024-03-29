package org.telegram.p043ui.Stories.recorder;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.core.graphics.ColorUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p043ui.Components.AnimatedFloat;
import org.telegram.p043ui.Components.CubicBezierInterpolator;
import org.telegram.p043ui.Stories.recorder.FlashViews;
/* renamed from: org.telegram.ui.Stories.recorder.ToggleButton */
/* loaded from: classes6.dex */
public class ToggleButton extends View implements FlashViews.Invertable {
    private Bitmap activeBitmap;
    private final Paint activeBitmapPaint;
    private final Paint activePaint;
    private int activeResId;
    private final Path clipPath;
    private Drawable drawable;
    private float value;
    private final AnimatedFloat valueAnimated;

    public ToggleButton(Context context, int i, int i2) {
        super(context);
        Paint paint = new Paint(1);
        this.activePaint = paint;
        Paint paint2 = new Paint(3);
        this.activeBitmapPaint = paint2;
        this.valueAnimated = new AnimatedFloat(this, 0L, 350L, CubicBezierInterpolator.EASE_OUT_QUINT);
        this.clipPath = new Path();
        this.drawable = context.getResources().getDrawable(i).mutate();
        this.activeResId = i2;
        paint.setColor(-1);
        paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.activeBitmap == null) {
            this.activeBitmap = BitmapFactory.decodeResource(getResources(), this.activeResId);
        }
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Bitmap bitmap = this.activeBitmap;
        if (bitmap != null) {
            bitmap.recycle();
            this.activeBitmap = null;
        }
    }

    public void setValue(boolean z) {
        this.value = z ? 1.0f : BitmapDescriptorFactory.HUE_RED;
        invalidate();
    }

    @Override // org.telegram.p043ui.Stories.recorder.FlashViews.Invertable
    public void setInvert(float f) {
        this.drawable.setColorFilter(new PorterDuffColorFilter(ColorUtils.blendARGB(-1, -16777216, f), PorterDuff.Mode.MULTIPLY));
        this.activePaint.setColor(ColorUtils.blendARGB(-1, -16777216, f));
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        float f = this.valueAnimated.set(this.value);
        int intrinsicWidth = this.drawable.getIntrinsicWidth();
        int intrinsicHeight = this.drawable.getIntrinsicHeight();
        Rect rect = AndroidUtilities.rectTmp2;
        rect.set((getWidth() - intrinsicWidth) / 2, (getHeight() - intrinsicHeight) / 2, (getWidth() + intrinsicWidth) / 2, (getHeight() + intrinsicHeight) / 2);
        if (f <= BitmapDescriptorFactory.HUE_RED) {
            this.drawable.setBounds(rect);
            this.drawable.draw(canvas);
        } else if (f < 1.0f) {
            canvas.save();
            this.clipPath.rewind();
            this.clipPath.addCircle(getWidth() / 2.0f, getHeight() / 2.0f, AndroidUtilities.m107dp(16) * f, Path.Direction.CW);
            canvas.clipPath(this.clipPath, Region.Op.DIFFERENCE);
            this.drawable.setBounds(rect);
            this.drawable.draw(canvas);
            canvas.restore();
        }
        if (f > BitmapDescriptorFactory.HUE_RED) {
            canvas.saveLayerAlpha(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getWidth(), getHeight(), 255, 31);
            canvas.drawCircle(getWidth() / 2.0f, getHeight() / 2.0f, AndroidUtilities.m107dp(16) * f, this.activePaint);
            canvas.save();
            Bitmap bitmap = this.activeBitmap;
            if (bitmap != null) {
                canvas.drawBitmap(bitmap, (Rect) null, rect, this.activeBitmapPaint);
            }
            canvas.restore();
            canvas.restore();
        }
    }
}
