package org.telegram.p042ui.Stories;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.core.graphics.ColorUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p042ui.Components.AnimatedFloat;
import org.telegram.p042ui.Components.CubicBezierInterpolator;
/* renamed from: org.telegram.ui.Stories.StoryReactionWidgetBackground */
/* loaded from: classes6.dex */
public class StoryReactionWidgetBackground extends Drawable {
    Paint backgroundPaint;
    private boolean mirror;
    private final View parent;
    AnimatedFloat progressToMirrored;
    Paint shadowPaint;
    int style;
    private Paint xRefPaint;
    int alpha = 255;
    float[] points = new float[15];
    Path path = new Path();

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    public StoryReactionWidgetBackground(View view) {
        this.parent = view;
        this.progressToMirrored = new AnimatedFloat(view, 350L, CubicBezierInterpolator.EASE_OUT_QUINT);
        Paint paint = new Paint(1);
        this.shadowPaint = paint;
        paint.setShadowLayer(AndroidUtilities.m102dp(4), BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1593835520);
        Paint paint2 = new Paint(1);
        this.backgroundPaint = paint2;
        paint2.setColor(-1);
    }

    public void updateShadowLayer(float f) {
        this.shadowPaint.setShadowLayer(AndroidUtilities.m102dp(2) / f, BitmapDescriptorFactory.HUE_RED, AndroidUtilities.dpf2(0.7f) / f, ColorUtils.setAlphaComponent(-16777216, 45));
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        int i = 0;
        this.points[0] = getBounds().centerX();
        int i2 = 1;
        this.points[1] = getBounds().centerY();
        this.points[2] = getBounds().height() / 2.0f;
        int i3 = 3;
        this.points[3] = getBounds().left + (getBounds().width() * 1.027f);
        this.points[4] = getBounds().top + (getBounds().height() * 0.956f);
        this.points[5] = getBounds().height() * 0.055f;
        this.points[6] = getBounds().left + (getBounds().width() * 0.843f);
        this.points[7] = getBounds().top + (getBounds().height() * 0.812f);
        this.points[8] = getBounds().height() * 0.132f;
        this.points[9] = getBounds().left + (getBounds().width() * (-0.02699995f));
        this.points[10] = getBounds().top + (getBounds().height() * 0.956f);
        this.points[11] = getBounds().height() * 0.055f;
        this.points[12] = getBounds().left + (getBounds().width() * 0.157f);
        this.points[13] = getBounds().top + (getBounds().height() * 0.812f);
        this.points[14] = getBounds().height() * 0.132f;
        float f = this.progressToMirrored.set(this.mirror ? 1.0f : 0.0f);
        int i4 = this.style;
        if (i4 == 0) {
            this.backgroundPaint.setColor(-1);
        } else if (i4 == 1) {
            if (this.xRefPaint == null) {
                Paint paint = new Paint(1);
                this.xRefPaint = paint;
                paint.setColor(-16777216);
                this.xRefPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
                this.xRefPaint.setStrokeWidth(AndroidUtilities.m102dp(3));
            }
            this.backgroundPaint.setColor(ColorUtils.setAlphaComponent(-16777216, 127));
        }
        if (this.alpha != 255 || this.style == 1) {
            canvas.saveLayerAlpha(getBounds().left - (getBounds().width() * 0.2f), getBounds().top, getBounds().right + (getBounds().width() * 0.2f), getBounds().bottom + (getBounds().height() * 0.2f), this.alpha, 31);
        } else {
            canvas.save();
        }
        this.path.rewind();
        int i5 = 0;
        while (i5 < 2) {
            if (this.style != i2 || i5 != 0) {
                Paint paint2 = i5 == 0 ? this.shadowPaint : this.backgroundPaint;
                int i6 = i5 == 0 ? i2 : i;
                int i7 = i;
                while (i7 < 5) {
                    if (i7 == i2 || i7 == 2) {
                        if (f != 1.0f) {
                            Path path = this.path;
                            float[] fArr = this.points;
                            int i8 = i7 * 3;
                            path.addCircle(fArr[i8], fArr[i8 + 1], (fArr[i8 + 2] * (1.0f - f)) - i6, Path.Direction.CW);
                        }
                    } else if (i7 != i3 && i7 != 4) {
                        Path path2 = this.path;
                        float[] fArr2 = this.points;
                        int i9 = i7 * 3;
                        path2.addCircle(fArr2[i9], fArr2[i9 + 1], fArr2[i9 + 2] - i6, Path.Direction.CW);
                    } else if (f != BitmapDescriptorFactory.HUE_RED) {
                        Path path3 = this.path;
                        float[] fArr3 = this.points;
                        int i10 = i7 * 3;
                        path3.addCircle(fArr3[i10], fArr3[i10 + 1], (fArr3[i10 + 2] * f) - i6, Path.Direction.CW);
                    }
                    i7++;
                    i2 = 1;
                    i3 = 3;
                }
                canvas.drawPath(this.path, paint2);
            }
            i5++;
            i = 0;
            i2 = 1;
            i3 = 3;
        }
        canvas.restore();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.alpha = i;
    }

    public void setMirror(boolean z, boolean z2) {
        this.mirror = z;
        if (!z2) {
            this.progressToMirrored.set(z ? 1.0f : BitmapDescriptorFactory.HUE_RED, true);
        } else {
            this.parent.invalidate();
        }
    }

    public void nextStyle() {
        int i = this.style + 1;
        this.style = i;
        if (i >= 2) {
            this.style = 0;
        }
    }

    public boolean isDarkStyle() {
        return this.style == 1;
    }
}
