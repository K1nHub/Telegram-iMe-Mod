package org.telegram.p043ui.Components;

import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.text.TextPaint;
import android.view.animation.DecelerateInterpolator;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p043ui.ActionBar.Theme;
/* renamed from: org.telegram.ui.Components.MediaActionDrawable */
/* loaded from: classes6.dex */
public class MediaActionDrawable extends Drawable {
    private float animatedDownloadProgress;
    private boolean animatingTransition;
    private ColorFilter colorFilter;
    private int currentIcon;
    private MediaActionDrawableDelegate delegate;
    private float downloadProgress;
    private float downloadProgressAnimationStart;
    private float downloadProgressTime;
    private float downloadRadOffset;
    private LinearGradient gradientDrawable;
    private Matrix gradientMatrix;
    private boolean hasOverlayImage;
    private boolean isMini;
    private long lastAnimationTime;
    private Theme.MessageDrawable messageDrawable;
    private int nextIcon;
    private String percentString;
    private int percentStringWidth;
    private float savedTransitionProgress;
    private TextPaint textPaint = new TextPaint(1);
    private Paint paint = new Paint(1);
    private Paint backPaint = new Paint(1);
    private Paint paint2 = new Paint(1);
    private Paint paint3 = new Paint(1);
    private RectF rect = new RectF();
    private float scale = 1.0f;
    private DecelerateInterpolator interpolator = new DecelerateInterpolator();
    private float transitionAnimationTime = 400.0f;
    private int lastPercent = -1;
    private float overrideAlpha = 1.0f;
    private float transitionProgress = 1.0f;

    /* renamed from: org.telegram.ui.Components.MediaActionDrawable$MediaActionDrawableDelegate */
    /* loaded from: classes6.dex */
    public interface MediaActionDrawableDelegate {
        void invalidate();
    }

    public static float getCircleValue(float f) {
        while (f > 360.0f) {
            f -= 360.0f;
        }
        return f;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -2;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
    }

    public MediaActionDrawable() {
        this.paint.setColor(-1);
        this.paint.setStrokeCap(Paint.Cap.ROUND);
        this.paint.setStrokeWidth(AndroidUtilities.m104dp(3));
        this.paint.setStyle(Paint.Style.STROKE);
        this.paint3.setColor(-1);
        this.textPaint.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.textPaint.setTextSize(AndroidUtilities.m104dp(13));
        this.textPaint.setColor(-1);
        this.paint2.setColor(-1);
    }

    public void setOverrideAlpha(float f) {
        this.overrideAlpha = f;
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.paint.setColorFilter(colorFilter);
        this.paint2.setColorFilter(colorFilter);
        this.paint3.setColorFilter(colorFilter);
        this.textPaint.setColorFilter(colorFilter);
    }

    public void setColor(int i) {
        int i2 = (-16777216) | i;
        this.paint.setColor(i2);
        this.paint2.setColor(i2);
        this.paint3.setColor(i2);
        this.textPaint.setColor(i2);
        this.colorFilter = new PorterDuffColorFilter(i, PorterDuff.Mode.MULTIPLY);
    }

    public void setBackColor(int i) {
        this.backPaint.setColor(i | (-16777216));
    }

    public void setMini(boolean z) {
        this.isMini = z;
        this.paint.setStrokeWidth(AndroidUtilities.m104dp(z ? 2 : 3));
    }

    public void setDelegate(MediaActionDrawableDelegate mediaActionDrawableDelegate) {
        this.delegate = mediaActionDrawableDelegate;
    }

    public boolean setIcon(int i, boolean z) {
        int i2;
        int i3;
        if (this.currentIcon == i && (i3 = this.nextIcon) != i) {
            this.currentIcon = i3;
            this.transitionProgress = 1.0f;
        }
        if (z) {
            int i4 = this.currentIcon;
            if (i4 == i || (i2 = this.nextIcon) == i) {
                return false;
            }
            if ((i4 == 0 && i == 1) || (i4 == 1 && i == 0)) {
                this.transitionAnimationTime = 300.0f;
            } else if (i4 == 2 && (i == 3 || i == 14)) {
                this.transitionAnimationTime = 400.0f;
            } else if (i4 != 4 && i == 6) {
                this.transitionAnimationTime = 360.0f;
            } else if ((i4 == 4 && i == 14) || (i4 == 14 && i == 4)) {
                this.transitionAnimationTime = 160.0f;
            } else {
                this.transitionAnimationTime = 220.0f;
            }
            if (this.animatingTransition) {
                this.currentIcon = i2;
            }
            this.animatingTransition = true;
            this.nextIcon = i;
            this.savedTransitionProgress = this.transitionProgress;
            this.transitionProgress = BitmapDescriptorFactory.HUE_RED;
        } else if (this.currentIcon == i) {
            return false;
        } else {
            this.animatingTransition = false;
            this.nextIcon = i;
            this.currentIcon = i;
            this.savedTransitionProgress = this.transitionProgress;
            this.transitionProgress = 1.0f;
        }
        if (i == 3 || i == 14) {
            this.downloadRadOffset = 112.0f;
            this.animatedDownloadProgress = BitmapDescriptorFactory.HUE_RED;
            this.downloadProgressAnimationStart = BitmapDescriptorFactory.HUE_RED;
            this.downloadProgressTime = BitmapDescriptorFactory.HUE_RED;
        }
        invalidateSelf();
        return true;
    }

    public int getCurrentIcon() {
        return this.nextIcon;
    }

    public int getPreviousIcon() {
        return this.currentIcon;
    }

    public void setProgress(float f, boolean z) {
        if (this.downloadProgress == f) {
            return;
        }
        if (!z) {
            this.animatedDownloadProgress = f;
            this.downloadProgressAnimationStart = f;
        } else {
            if (this.animatedDownloadProgress > f) {
                this.animatedDownloadProgress = f;
            }
            this.downloadProgressAnimationStart = this.animatedDownloadProgress;
        }
        this.downloadProgress = f;
        this.downloadProgressTime = BitmapDescriptorFactory.HUE_RED;
        invalidateSelf();
    }

    public float getProgress() {
        return this.downloadProgress;
    }

    public float getTransitionProgress() {
        if (this.animatingTransition) {
            return this.transitionProgress;
        }
        return 1.0f;
    }

    public void setBackgroundDrawable(Theme.MessageDrawable messageDrawable) {
        this.messageDrawable = messageDrawable;
    }

    public void setBackgroundGradientDrawable(LinearGradient linearGradient) {
        this.gradientDrawable = linearGradient;
        this.gradientMatrix = new Matrix();
    }

    public void setHasOverlayImage(boolean z) {
        this.hasOverlayImage = z;
    }

    @Override // android.graphics.drawable.Drawable
    public void setBounds(int i, int i2, int i3, int i4) {
        super.setBounds(i, i2, i3, i4);
        float intrinsicWidth = (i3 - i) / getIntrinsicWidth();
        this.scale = intrinsicWidth;
        if (intrinsicWidth < 0.7f) {
            this.paint.setStrokeWidth(AndroidUtilities.m104dp(2));
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        super.invalidateSelf();
        MediaActionDrawableDelegate mediaActionDrawableDelegate = this.delegate;
        if (mediaActionDrawableDelegate != null) {
            mediaActionDrawableDelegate.invalidate();
        }
    }

    private void applyShaderMatrix(boolean z) {
        Theme.MessageDrawable messageDrawable = this.messageDrawable;
        if (messageDrawable == null || !messageDrawable.hasGradient() || this.hasOverlayImage) {
            return;
        }
        Rect bounds = getBounds();
        Shader gradientShader = this.messageDrawable.getGradientShader();
        Matrix matrix = this.messageDrawable.getMatrix();
        matrix.reset();
        this.messageDrawable.applyMatrixScale();
        if (z) {
            matrix.postTranslate(-bounds.centerX(), (-this.messageDrawable.getTopY()) + bounds.top);
        } else {
            matrix.postTranslate(BitmapDescriptorFactory.HUE_RED, -this.messageDrawable.getTopY());
        }
        gradientShader.setLocalMatrix(matrix);
    }

    /* JADX WARN: Code restructure failed: missing block: B:359:0x084f, code lost:
        if (r32.nextIcon == 1) goto L245;
     */
    /* JADX WARN: Code restructure failed: missing block: B:360:0x0851, code lost:
        r2 = 1.0f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:361:0x0854, code lost:
        r2 = com.google.android.gms.maps.model.BitmapDescriptorFactory.HUE_RED;
     */
    /* JADX WARN: Code restructure failed: missing block: B:364:0x0859, code lost:
        if (r1 != r3) goto L246;
     */
    /* JADX WARN: Removed duplicated region for block: B:192:0x04bf  */
    /* JADX WARN: Removed duplicated region for block: B:193:0x04c8  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x04f5  */
    /* JADX WARN: Removed duplicated region for block: B:200:0x0500  */
    /* JADX WARN: Removed duplicated region for block: B:201:0x050b  */
    /* JADX WARN: Removed duplicated region for block: B:203:0x050f  */
    /* JADX WARN: Removed duplicated region for block: B:210:0x0588  */
    /* JADX WARN: Removed duplicated region for block: B:212:0x058b  */
    /* JADX WARN: Removed duplicated region for block: B:214:0x0590  */
    /* JADX WARN: Removed duplicated region for block: B:217:0x0597  */
    /* JADX WARN: Removed duplicated region for block: B:227:0x05b5  */
    /* JADX WARN: Removed duplicated region for block: B:228:0x05b7  */
    /* JADX WARN: Removed duplicated region for block: B:231:0x05d7  */
    /* JADX WARN: Removed duplicated region for block: B:259:0x0653  */
    /* JADX WARN: Removed duplicated region for block: B:260:0x0659  */
    /* JADX WARN: Removed duplicated region for block: B:266:0x0667  */
    /* JADX WARN: Removed duplicated region for block: B:267:0x066a  */
    /* JADX WARN: Removed duplicated region for block: B:272:0x0676  */
    /* JADX WARN: Removed duplicated region for block: B:273:0x0679  */
    /* JADX WARN: Removed duplicated region for block: B:278:0x0683  */
    /* JADX WARN: Removed duplicated region for block: B:279:0x0686  */
    /* JADX WARN: Removed duplicated region for block: B:289:0x06ab  */
    /* JADX WARN: Removed duplicated region for block: B:290:0x06ae  */
    /* JADX WARN: Removed duplicated region for block: B:293:0x06c9  */
    /* JADX WARN: Removed duplicated region for block: B:296:0x0721  */
    /* JADX WARN: Removed duplicated region for block: B:303:0x0738  */
    /* JADX WARN: Removed duplicated region for block: B:304:0x073b  */
    /* JADX WARN: Removed duplicated region for block: B:310:0x074c  */
    /* JADX WARN: Removed duplicated region for block: B:311:0x074f  */
    /* JADX WARN: Removed duplicated region for block: B:314:0x0763  */
    /* JADX WARN: Removed duplicated region for block: B:317:0x0798  */
    /* JADX WARN: Removed duplicated region for block: B:324:0x07af  */
    /* JADX WARN: Removed duplicated region for block: B:325:0x07b2  */
    /* JADX WARN: Removed duplicated region for block: B:330:0x07d7  */
    /* JADX WARN: Removed duplicated region for block: B:338:0x081d  */
    /* JADX WARN: Removed duplicated region for block: B:349:0x0835  */
    /* JADX WARN: Removed duplicated region for block: B:363:0x0858  */
    @Override // android.graphics.drawable.Drawable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void draw(android.graphics.Canvas r33) {
        /*
            Method dump skipped, instructions count: 3069
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Components.MediaActionDrawable.draw(android.graphics.Canvas):void");
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return AndroidUtilities.m104dp(48);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return AndroidUtilities.m104dp(48);
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumWidth() {
        return AndroidUtilities.m104dp(48);
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumHeight() {
        return AndroidUtilities.m104dp(48);
    }
}
