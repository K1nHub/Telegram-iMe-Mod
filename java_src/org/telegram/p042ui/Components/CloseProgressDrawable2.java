package org.telegram.p042ui.Components;

import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.animation.DecelerateInterpolator;
import androidx.core.graphics.ColorUtils;
import org.telegram.messenger.AndroidUtilities;
/* renamed from: org.telegram.ui.Components.CloseProgressDrawable2 */
/* loaded from: classes6.dex */
public class CloseProgressDrawable2 extends Drawable {
    private float angle;
    private boolean animating;
    private int currentColor;
    private int globalColorAlpha;
    private long lastFrameTime;
    private Paint paint;
    private RectF rect;
    private int side;

    protected int getCurrentColor() {
        throw null;
    }

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

    public CloseProgressDrawable2() {
        this(2.0f);
    }

    public CloseProgressDrawable2(float f) {
        this.paint = new Paint(1);
        new DecelerateInterpolator();
        this.rect = new RectF();
        this.globalColorAlpha = 255;
        this.paint.setColor(-1);
        this.paint.setStrokeWidth(AndroidUtilities.m103dp(f));
        this.paint.setStrokeCap(Paint.Cap.ROUND);
        this.paint.setStyle(Paint.Style.STROKE);
        this.side = AndroidUtilities.m102dp(8);
    }

    public void startAnimation() {
        this.animating = true;
        this.lastFrameTime = System.currentTimeMillis();
        invalidateSelf();
    }

    public void stopAnimation() {
        this.animating = false;
    }

    private void setColor(int i) {
        if (this.currentColor != i) {
            this.globalColorAlpha = Color.alpha(i);
            this.paint.setColor(ColorUtils.setAlphaComponent(i, 255));
        }
    }

    public void setSide(int i) {
        this.side = i;
    }

    /* JADX WARN: Removed duplicated region for block: B:70:0x013a  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x014c  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0160  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0174  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x01b0  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x01ba  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x01bc  */
    @Override // android.graphics.drawable.Drawable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void draw(android.graphics.Canvas r18) {
        /*
            Method dump skipped, instructions count: 457
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.Components.CloseProgressDrawable2.draw(android.graphics.Canvas):void");
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return AndroidUtilities.m102dp(24);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return AndroidUtilities.m102dp(24);
    }
}
