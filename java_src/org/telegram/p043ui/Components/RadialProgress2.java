package org.telegram.p043ui.Components;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.View;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Locale;
import java.util.Objects;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.ImageReceiver;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.MediaActionDrawable;
import org.telegram.tgnet.TLRPC$Document;
import org.telegram.tgnet.TLRPC$PhotoSize;
/* renamed from: org.telegram.ui.Components.RadialProgress2 */
/* loaded from: classes6.dex */
public class RadialProgress2 {
    private int backgroundStroke;
    private float circleCheckProgress;
    private int circleColor;
    private int circleColorKey;
    private int circleCrossfadeColorKey;
    private float circleCrossfadeColorProgress;
    private Paint circleMiniPaint;
    private Paint circlePaint;
    private int circlePressedColor;
    private int circlePressedColorKey;
    private int circleRadius;
    private boolean drawBackground;
    private boolean drawMiniIcon;
    private int iconColor;
    private int iconColorKey;
    private int iconPressedColor;
    private int iconPressedColorKey;
    private boolean isPressed;
    private boolean isPressedMini;
    private int maxIconSize;
    private MediaActionDrawable mediaActionDrawable;
    private Bitmap miniDrawBitmap;
    private Canvas miniDrawCanvas;
    private float miniIconScale;
    private MediaActionDrawable miniMediaActionDrawable;
    private Paint miniProgressBackgroundPaint;
    private float overlayImageAlpha;
    private ImageReceiver overlayImageView;
    private Paint overlayPaint;
    private float overrideAlpha;
    public float overrideCircleAlpha;
    private View parent;
    private int progressColor;
    private RectF progressRect;
    private Theme.ResourcesProvider resourcesProvider;

    public RadialProgress2(View view) {
        this(view, null);
    }

    public RadialProgress2(final View view, Theme.ResourcesProvider resourcesProvider) {
        this.progressRect = new RectF();
        this.progressColor = -1;
        this.overlayPaint = new Paint(1);
        this.circlePaint = new Paint(1);
        this.circleMiniPaint = new Paint(1);
        this.miniIconScale = 1.0f;
        this.circleColorKey = -1;
        this.circleCrossfadeColorKey = -1;
        this.circleCheckProgress = 1.0f;
        this.circlePressedColorKey = -1;
        this.iconColorKey = -1;
        this.iconPressedColorKey = -1;
        this.overrideCircleAlpha = 1.0f;
        this.drawBackground = true;
        this.overrideAlpha = 1.0f;
        this.overlayImageAlpha = 1.0f;
        this.resourcesProvider = resourcesProvider;
        this.miniProgressBackgroundPaint = new Paint(1);
        this.parent = view;
        ImageReceiver imageReceiver = new ImageReceiver(view);
        this.overlayImageView = imageReceiver;
        imageReceiver.setInvalidateAll(true);
        MediaActionDrawable mediaActionDrawable = new MediaActionDrawable();
        this.mediaActionDrawable = mediaActionDrawable;
        Objects.requireNonNull(view);
        mediaActionDrawable.setDelegate(new MediaActionDrawable.MediaActionDrawableDelegate() { // from class: org.telegram.ui.Components.RadialProgress2$$ExternalSyntheticLambda0
            @Override // org.telegram.p043ui.Components.MediaActionDrawable.MediaActionDrawableDelegate
            public final void invalidate() {
                view.invalidate();
            }
        });
        MediaActionDrawable mediaActionDrawable2 = new MediaActionDrawable();
        this.miniMediaActionDrawable = mediaActionDrawable2;
        mediaActionDrawable2.setDelegate(new MediaActionDrawable.MediaActionDrawableDelegate() { // from class: org.telegram.ui.Components.RadialProgress2$$ExternalSyntheticLambda0
            @Override // org.telegram.p043ui.Components.MediaActionDrawable.MediaActionDrawableDelegate
            public final void invalidate() {
                view.invalidate();
            }
        });
        this.miniMediaActionDrawable.setMini(true);
        this.miniMediaActionDrawable.setIcon(4, false);
        int m72dp = AndroidUtilities.m72dp(22);
        this.circleRadius = m72dp;
        this.overlayImageView.setRoundRadius(m72dp);
        this.overlayPaint.setColor(1677721600);
    }

    public void setResourcesProvider(Theme.ResourcesProvider resourcesProvider) {
        this.resourcesProvider = resourcesProvider;
    }

    public void setAsMini() {
        this.mediaActionDrawable.setMini(true);
    }

    public void setCircleRadius(int i) {
        this.circleRadius = i;
        this.overlayImageView.setRoundRadius(i);
    }

    public int getRadius() {
        return this.circleRadius;
    }

    public void setBackgroundDrawable(Theme.MessageDrawable messageDrawable) {
        this.mediaActionDrawable.setBackgroundDrawable(messageDrawable);
        this.miniMediaActionDrawable.setBackgroundDrawable(messageDrawable);
    }

    public void setBackgroundGradientDrawable(LinearGradient linearGradient) {
        this.mediaActionDrawable.setBackgroundGradientDrawable(linearGradient);
        this.miniMediaActionDrawable.setBackgroundGradientDrawable(linearGradient);
    }

    public void setImageOverlay(TLRPC$PhotoSize tLRPC$PhotoSize, TLRPC$Document tLRPC$Document, Object obj) {
        this.overlayImageView.setImage(ImageLocation.getForDocument(tLRPC$PhotoSize, tLRPC$Document), String.format(Locale.US, "%d_%d", Integer.valueOf(this.circleRadius * 2), Integer.valueOf(this.circleRadius * 2)), null, null, obj, 1);
    }

    public void setImageOverlay(String str) {
        this.overlayImageView.setImage(str, str != null ? String.format(Locale.US, "%d_%d", Integer.valueOf(this.circleRadius * 2), Integer.valueOf(this.circleRadius * 2)) : null, null, null, -1L);
    }

    public void onAttachedToWindow() {
        this.overlayImageView.onAttachedToWindow();
    }

    public void onDetachedFromWindow() {
        this.overlayImageView.onDetachedFromWindow();
    }

    public void setColorKeys(int i, int i2, int i3, int i4) {
        this.circleColorKey = i;
        this.circlePressedColorKey = i2;
        this.iconColorKey = i3;
        this.iconPressedColorKey = i4;
    }

    public void setColors(int i, int i2, int i3, int i4) {
        this.circleColor = i;
        this.circlePressedColor = i2;
        this.iconColor = i3;
        this.iconPressedColor = i4;
        this.circleColorKey = -1;
        this.circlePressedColorKey = -1;
        this.iconColorKey = -1;
        this.iconPressedColorKey = -1;
    }

    public void setCircleCrossfadeColor(int i, float f, float f2) {
        this.circleCrossfadeColorKey = i;
        this.circleCrossfadeColorProgress = f;
        this.circleCheckProgress = f2;
        this.miniIconScale = 1.0f;
        if (i >= 0) {
            initMiniIcons();
        }
    }

    public void setDrawBackground(boolean z) {
        this.drawBackground = z;
    }

    public void setProgressRect(int i, int i2, int i3, int i4) {
        this.progressRect.set(i, i2, i3, i4);
    }

    public void setProgressRect(float f, float f2, float f3, float f4) {
        this.progressRect.set(f, f2, f3, f4);
    }

    public RectF getProgressRect() {
        return this.progressRect;
    }

    public void setProgressColor(int i) {
        this.progressColor = i;
    }

    public void setMiniProgressBackgroundColor(int i) {
        this.miniProgressBackgroundPaint.setColor(i);
    }

    public void setProgress(float f, boolean z) {
        if (this.drawMiniIcon) {
            this.miniMediaActionDrawable.setProgress(f, z);
        } else {
            this.mediaActionDrawable.setProgress(f, z);
        }
    }

    public float getProgress() {
        return (this.drawMiniIcon ? this.miniMediaActionDrawable : this.mediaActionDrawable).getProgress();
    }

    private void invalidateParent() {
        int m72dp = AndroidUtilities.m72dp(2);
        View view = this.parent;
        RectF rectF = this.progressRect;
        int i = ((int) rectF.left) - m72dp;
        int i2 = ((int) rectF.top) - m72dp;
        int i3 = m72dp * 2;
        view.invalidate(i, i2, ((int) rectF.right) + i3, ((int) rectF.bottom) + i3);
    }

    public int getIcon() {
        return this.mediaActionDrawable.getCurrentIcon();
    }

    public int getMiniIcon() {
        return this.miniMediaActionDrawable.getCurrentIcon();
    }

    public void setIcon(int i, boolean z, boolean z2) {
        if (z && i == this.mediaActionDrawable.getCurrentIcon()) {
            return;
        }
        this.mediaActionDrawable.setIcon(i, z2);
        if (!z2) {
            this.parent.invalidate();
        } else {
            invalidateParent();
        }
    }

    public void setMiniIconScale(float f) {
        this.miniIconScale = f;
    }

    public void setMiniIcon(int i, boolean z, boolean z2) {
        if (i == 2 || i == 3 || i == 4) {
            if (z && i == this.miniMediaActionDrawable.getCurrentIcon()) {
                return;
            }
            this.miniMediaActionDrawable.setIcon(i, z2);
            boolean z3 = i != 4 || this.miniMediaActionDrawable.getTransitionProgress() < 1.0f;
            this.drawMiniIcon = z3;
            if (z3) {
                initMiniIcons();
            }
            if (!z2) {
                this.parent.invalidate();
            } else {
                invalidateParent();
            }
        }
    }

    public void initMiniIcons() {
        if (this.miniDrawBitmap == null) {
            try {
                this.miniDrawBitmap = Bitmap.createBitmap(AndroidUtilities.m72dp(48), AndroidUtilities.m72dp(48), Bitmap.Config.ARGB_8888);
                this.miniDrawCanvas = new Canvas(this.miniDrawBitmap);
            } catch (Throwable unused) {
            }
        }
    }

    public void setPressed(boolean z, boolean z2) {
        if (z2) {
            this.isPressedMini = z;
        } else {
            this.isPressed = z;
        }
        invalidateParent();
    }

    public void setOverrideAlpha(float f) {
        this.overrideAlpha = f;
    }

    public float getOverrideAlpha() {
        return this.overrideAlpha;
    }

    public void draw(Canvas canvas) {
        float transitionProgress;
        float transitionProgress2;
        int i;
        int ceil;
        int ceil2;
        int i2;
        int i3;
        float centerX;
        float m72dp;
        float f;
        int i4;
        Canvas canvas2;
        Canvas canvas3;
        Canvas canvas4;
        int alpha;
        int argb;
        if ((this.mediaActionDrawable.getCurrentIcon() != 4 || this.mediaActionDrawable.getTransitionProgress() < 1.0f) && !this.progressRect.isEmpty()) {
            int currentIcon = this.mediaActionDrawable.getCurrentIcon();
            int previousIcon = this.mediaActionDrawable.getPreviousIcon();
            if (this.backgroundStroke != 0) {
                if (currentIcon == 3) {
                    transitionProgress2 = this.mediaActionDrawable.getTransitionProgress();
                    transitionProgress = 1.0f - transitionProgress2;
                } else {
                    if (previousIcon == 3) {
                        transitionProgress = this.mediaActionDrawable.getTransitionProgress();
                    }
                    transitionProgress = 1.0f;
                }
            } else if ((currentIcon == 3 || currentIcon == 6 || currentIcon == 10 || currentIcon == 8 || currentIcon == 0) && previousIcon == 4) {
                transitionProgress = this.mediaActionDrawable.getTransitionProgress();
            } else {
                if (currentIcon == 4) {
                    transitionProgress2 = this.mediaActionDrawable.getTransitionProgress();
                    transitionProgress = 1.0f - transitionProgress2;
                }
                transitionProgress = 1.0f;
            }
            if (this.isPressedMini && this.circleCrossfadeColorKey < 0) {
                int i5 = this.iconPressedColorKey;
                if (i5 >= 0) {
                    this.miniMediaActionDrawable.setColor(getThemedColor(i5));
                } else {
                    this.miniMediaActionDrawable.setColor(this.iconPressedColor);
                }
                int i6 = this.circlePressedColorKey;
                if (i6 >= 0) {
                    this.circleMiniPaint.setColor(getThemedColor(i6));
                } else {
                    this.circleMiniPaint.setColor(this.circlePressedColor);
                }
            } else {
                int i7 = this.iconColorKey;
                if (i7 >= 0) {
                    this.miniMediaActionDrawable.setColor(getThemedColor(i7));
                } else {
                    this.miniMediaActionDrawable.setColor(this.iconColor);
                }
                int i8 = this.circleColorKey;
                if (i8 >= 0) {
                    if (this.circleCrossfadeColorKey >= 0) {
                        this.circleMiniPaint.setColor(AndroidUtilities.getOffsetColor(getThemedColor(i8), getThemedColor(this.circleCrossfadeColorKey), this.circleCrossfadeColorProgress, this.circleCheckProgress));
                    } else {
                        this.circleMiniPaint.setColor(getThemedColor(i8));
                    }
                } else {
                    this.circleMiniPaint.setColor(this.circleColor);
                }
            }
            if (this.isPressed) {
                int i9 = this.iconPressedColorKey;
                if (i9 >= 0) {
                    MediaActionDrawable mediaActionDrawable = this.mediaActionDrawable;
                    i = getThemedColor(i9);
                    mediaActionDrawable.setColor(i);
                    this.mediaActionDrawable.setBackColor(getThemedColor(this.circlePressedColorKey));
                } else {
                    MediaActionDrawable mediaActionDrawable2 = this.mediaActionDrawable;
                    int i10 = this.iconPressedColor;
                    mediaActionDrawable2.setColor(i10);
                    this.mediaActionDrawable.setBackColor(this.circlePressedColor);
                    i = i10;
                }
                int i11 = this.circlePressedColorKey;
                if (i11 >= 0) {
                    this.circlePaint.setColor(getThemedColor(i11));
                } else {
                    this.circlePaint.setColor(this.circlePressedColor);
                }
            } else {
                int i12 = this.iconColorKey;
                if (i12 >= 0) {
                    MediaActionDrawable mediaActionDrawable3 = this.mediaActionDrawable;
                    i = getThemedColor(i12);
                    mediaActionDrawable3.setColor(i);
                    this.mediaActionDrawable.setBackColor(getThemedColor(this.circleColorKey));
                } else {
                    MediaActionDrawable mediaActionDrawable4 = this.mediaActionDrawable;
                    int i13 = this.iconColor;
                    mediaActionDrawable4.setColor(i13);
                    this.mediaActionDrawable.setBackColor(this.circleColor);
                    i = i13;
                }
                int i14 = this.circleColorKey;
                if (i14 >= 0) {
                    this.circlePaint.setColor(getThemedColor(i14));
                } else {
                    this.circlePaint.setColor(this.circleColor);
                }
            }
            boolean z = false;
            if ((this.drawMiniIcon || this.circleCrossfadeColorKey >= 0) && this.miniDrawCanvas != null) {
                this.miniDrawBitmap.eraseColor(0);
            }
            this.circlePaint.setAlpha((int) (this.circlePaint.getAlpha() * transitionProgress * this.overrideAlpha * this.overrideCircleAlpha));
            this.circleMiniPaint.setAlpha((int) (this.circleMiniPaint.getAlpha() * transitionProgress * this.overrideAlpha));
            if ((this.drawMiniIcon || this.circleCrossfadeColorKey >= 0) && this.miniDrawCanvas != null) {
                ceil = (int) Math.ceil(this.progressRect.width() / 2.0f);
                ceil2 = (int) Math.ceil(this.progressRect.height() / 2.0f);
            } else {
                ceil = (int) this.progressRect.centerX();
                ceil2 = (int) this.progressRect.centerY();
            }
            int i15 = 2;
            if (this.overlayImageView.hasBitmapImage()) {
                float currentAlpha = this.overlayImageView.getCurrentAlpha();
                this.overlayPaint.setAlpha((int) (100.0f * currentAlpha * transitionProgress * this.overrideAlpha));
                if (currentAlpha >= 1.0f) {
                    argb = -1;
                } else {
                    int red = Color.red(i);
                    int green = Color.green(i);
                    int blue = Color.blue(i);
                    argb = Color.argb(Color.alpha(i) + ((int) ((255 - alpha) * currentAlpha)), red + ((int) ((255 - red) * currentAlpha)), green + ((int) ((255 - green) * currentAlpha)), blue + ((int) ((255 - blue) * currentAlpha)));
                    z = true;
                }
                this.mediaActionDrawable.setColor(argb);
                ImageReceiver imageReceiver = this.overlayImageView;
                int i16 = this.circleRadius;
                imageReceiver.setImageCoords(ceil - i16, ceil2 - i16, i16 * 2, i16 * 2);
            } else {
                z = true;
            }
            Canvas canvas5 = this.miniDrawCanvas;
            if (canvas5 == null || this.circleCrossfadeColorKey < 0 || this.circleCheckProgress == 1.0f) {
                i2 = Integer.MIN_VALUE;
            } else {
                i2 = canvas5.save();
                float f2 = 1.0f - ((1.0f - this.circleCheckProgress) * 0.1f);
                this.miniDrawCanvas.scale(f2, f2, ceil, ceil2);
            }
            if (z && this.drawBackground) {
                if ((this.drawMiniIcon || this.circleCrossfadeColorKey >= 0) && (canvas4 = this.miniDrawCanvas) != null) {
                    canvas4.drawCircle(ceil, ceil2, this.circleRadius, this.circlePaint);
                } else if (currentIcon != 4 || transitionProgress != BitmapDescriptorFactory.HUE_RED) {
                    if (this.backgroundStroke != 0) {
                        canvas.drawCircle(ceil, ceil2, this.circleRadius - AndroidUtilities.m73dp(3.5f), this.circlePaint);
                    } else {
                        canvas.drawCircle(ceil, ceil2, this.circleRadius, this.circlePaint);
                    }
                }
            }
            if (this.overlayImageView.hasBitmapImage()) {
                this.overlayImageView.setAlpha(transitionProgress * this.overrideAlpha * this.overlayImageAlpha);
                if ((this.drawMiniIcon || this.circleCrossfadeColorKey >= 0) && (canvas3 = this.miniDrawCanvas) != null) {
                    this.overlayImageView.draw(canvas3);
                    this.miniDrawCanvas.drawCircle(ceil, ceil2, this.circleRadius, this.overlayPaint);
                } else {
                    this.overlayImageView.draw(canvas);
                    canvas.drawCircle(ceil, ceil2, this.circleRadius, this.overlayPaint);
                }
            }
            int i17 = this.circleRadius;
            int i18 = this.maxIconSize;
            if (i18 > 0 && i17 > i18) {
                i17 = i18;
            }
            this.mediaActionDrawable.setBounds(ceil - i17, ceil2 - i17, ceil + i17, ceil2 + i17);
            this.mediaActionDrawable.setHasOverlayImage(this.overlayImageView.hasBitmapImage());
            if (this.drawMiniIcon || this.circleCrossfadeColorKey >= 0) {
                Canvas canvas6 = this.miniDrawCanvas;
                if (canvas6 != null) {
                    this.mediaActionDrawable.draw(canvas6);
                } else {
                    this.mediaActionDrawable.draw(canvas);
                }
            } else {
                this.mediaActionDrawable.setOverrideAlpha(this.overrideAlpha);
                this.mediaActionDrawable.draw(canvas);
            }
            if (i2 != Integer.MIN_VALUE && (canvas2 = this.miniDrawCanvas) != null) {
                canvas2.restoreToCount(i2);
            }
            if (this.drawMiniIcon || this.circleCrossfadeColorKey >= 0) {
                if (Math.abs(this.progressRect.width() - AndroidUtilities.m72dp(44)) < AndroidUtilities.density) {
                    i3 = 20;
                    centerX = this.progressRect.centerX() + AndroidUtilities.m72dp(16);
                    m72dp = this.progressRect.centerY() + AndroidUtilities.m72dp(16);
                    i15 = 0;
                } else {
                    i3 = 22;
                    centerX = this.progressRect.centerX() + AndroidUtilities.m72dp(18);
                    m72dp = AndroidUtilities.m72dp(18) + this.progressRect.centerY();
                }
                int i19 = i3 / 2;
                if (this.drawMiniIcon) {
                    float transitionProgress3 = this.miniMediaActionDrawable.getCurrentIcon() != 4 ? 1.0f : 1.0f - this.miniMediaActionDrawable.getTransitionProgress();
                    if (transitionProgress3 == BitmapDescriptorFactory.HUE_RED) {
                        this.drawMiniIcon = false;
                    }
                    f = transitionProgress3;
                } else {
                    f = 1.0f;
                }
                Canvas canvas7 = this.miniDrawCanvas;
                if (canvas7 != null) {
                    int i20 = i3 + 18 + i15;
                    canvas7.drawCircle(AndroidUtilities.m72dp(i20), AndroidUtilities.m72dp(i20), AndroidUtilities.m72dp(i19 + 1) * f * this.miniIconScale, Theme.checkboxSquare_eraserPaint);
                } else {
                    this.miniProgressBackgroundPaint.setColor(this.progressColor);
                    canvas.drawCircle(centerX, m72dp, AndroidUtilities.m72dp(12), this.miniProgressBackgroundPaint);
                }
                if (this.miniDrawCanvas != null) {
                    Bitmap bitmap = this.miniDrawBitmap;
                    RectF rectF = this.progressRect;
                    canvas.drawBitmap(bitmap, (int) rectF.left, (int) rectF.top, (Paint) null);
                }
                if (this.miniIconScale < 1.0f) {
                    i4 = canvas.save();
                    float f3 = this.miniIconScale;
                    canvas.scale(f3, f3, centerX, m72dp);
                } else {
                    i4 = Integer.MIN_VALUE;
                }
                canvas.drawCircle(centerX, m72dp, (AndroidUtilities.m72dp(i19) * f) + (AndroidUtilities.m72dp(1) * (1.0f - this.circleCheckProgress)), this.circleMiniPaint);
                if (this.drawMiniIcon) {
                    this.miniMediaActionDrawable.setBounds((int) (centerX - (AndroidUtilities.m72dp(i19) * f)), (int) (m72dp - (AndroidUtilities.m72dp(i19) * f)), (int) (centerX + (AndroidUtilities.m72dp(i19) * f)), (int) (m72dp + (AndroidUtilities.m72dp(i19) * f)));
                    this.miniMediaActionDrawable.draw(canvas);
                }
                if (i4 != Integer.MIN_VALUE) {
                    canvas.restoreToCount(i4);
                }
            }
        }
    }

    public int getCircleColorKey() {
        return this.circleColorKey;
    }

    private int getThemedColor(int i) {
        return Theme.getColor(i, this.resourcesProvider);
    }

    public void setMaxIconSize(int i) {
        this.maxIconSize = i;
    }

    public void setOverlayImageAlpha(float f) {
        this.overlayImageAlpha = f;
    }

    public float getTransitionProgress() {
        return (this.drawMiniIcon ? this.miniMediaActionDrawable : this.mediaActionDrawable).getTransitionProgress();
    }
}
