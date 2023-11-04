package org.telegram.p043ui.Stories;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.view.View;
import com.google.android.exoplayer2.C0485C;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3634R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.Utilities;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.AnimatedFloat;
import org.telegram.p043ui.Components.CubicBezierInterpolator;
import org.telegram.p043ui.Stories.PeerStoriesView;
/* renamed from: org.telegram.ui.Stories.StoryLinesDrawable */
/* loaded from: classes6.dex */
public class StoryLinesDrawable {
    float bufferingProgress;
    boolean incrementBuffering;
    int lastPosition;
    private final PeerStoriesView.SharedResources sharedResources;
    private final StaticLayout zoomHintLayout;
    private final float zoomHintLayoutLeft;
    private final float zoomHintLayoutWidth;
    private final TextPaint zoomHintPaint;
    private final AnimatedFloat zoomT;

    public StoryLinesDrawable(View view, PeerStoriesView.SharedResources sharedResources) {
        this.sharedResources = sharedResources;
        this.zoomT = new AnimatedFloat(view, 0L, 360L, CubicBezierInterpolator.EASE_OUT_QUINT);
        TextPaint textPaint = new TextPaint(1);
        this.zoomHintPaint = textPaint;
        textPaint.setTextSize(AndroidUtilities.m104dp(14));
        textPaint.setColor(-1);
        float f = BitmapDescriptorFactory.HUE_RED;
        textPaint.setShadowLayer(AndroidUtilities.m104dp(3), BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m104dp(1), C0485C.ENCODING_PCM_32BIT);
        StaticLayout staticLayout = new StaticLayout(LocaleController.getString(C3634R.string.StorySeekHelp), textPaint, AndroidUtilities.displaySize.x, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
        this.zoomHintLayout = staticLayout;
        this.zoomHintLayoutLeft = staticLayout.getLineCount() > 0 ? staticLayout.getLineLeft(0) : 0.0f;
        this.zoomHintLayoutWidth = staticLayout.getLineCount() > 0 ? staticLayout.getLineWidth(0) : f;
    }

    public void draw(Canvas canvas, int i, int i2, float f, int i3, float f2, float f3, boolean z, boolean z2, float f4) {
        int m104dp;
        Paint paint;
        int i4;
        float f5;
        int i5;
        float f6;
        Paint paint2;
        float f7;
        Paint paint3;
        int i6;
        StoryLinesDrawable storyLinesDrawable = this;
        int i7 = i3;
        if (i7 <= 0) {
            return;
        }
        boolean z3 = z && !z2;
        if (storyLinesDrawable.lastPosition != i2) {
            storyLinesDrawable.bufferingProgress = BitmapDescriptorFactory.HUE_RED;
            storyLinesDrawable.incrementBuffering = true;
        }
        storyLinesDrawable.lastPosition = i2;
        PeerStoriesView.SharedResources sharedResources = storyLinesDrawable.sharedResources;
        Paint paint4 = sharedResources.barPaint;
        Paint paint5 = sharedResources.selectedBarPaint;
        if (i7 > 100) {
            m104dp = 1;
        } else if (i7 >= 50) {
            m104dp = AndroidUtilities.m104dp(1);
        } else {
            m104dp = AndroidUtilities.m104dp(2);
        }
        float m104dp2 = ((i - AndroidUtilities.m104dp(10)) - ((i7 - 1) * m104dp)) / i7;
        AndroidUtilities.m104dp(5);
        float min = Math.min(m104dp2 / 2.0f, AndroidUtilities.m104dp(1));
        float f8 = storyLinesDrawable.zoomT.set(z2);
        int i8 = (f8 > BitmapDescriptorFactory.HUE_RED ? 1 : (f8 == BitmapDescriptorFactory.HUE_RED ? 0 : -1));
        float f9 = f;
        if (i8 > 0) {
            float lerp = AndroidUtilities.lerp(f9, f4, f8);
            canvas.save();
            storyLinesDrawable.zoomHintPaint.setAlpha((int) (f8 * 255.0f));
            paint = paint5;
            i4 = i8;
            storyLinesDrawable.zoomHintPaint.setShadowLayer(AndroidUtilities.m104dp(3), BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m104dp(1), Theme.multAlpha(C0485C.ENCODING_PCM_32BIT, f8));
            canvas.translate(((i - storyLinesDrawable.zoomHintLayoutWidth) / 2.0f) - storyLinesDrawable.zoomHintLayoutLeft, AndroidUtilities.lerp(AndroidUtilities.m104dp(4), AndroidUtilities.m104dp(16), f8));
            storyLinesDrawable.zoomHintLayout.draw(canvas);
            canvas.restore();
            f9 = lerp;
        } else {
            paint = paint5;
            i4 = i8;
        }
        int i9 = 0;
        while (i9 < i7) {
            float m104dp3 = AndroidUtilities.m104dp(5) + (-0.0f) + (m104dp * i9) + (i9 * m104dp2);
            if (m104dp3 <= i) {
                float f10 = m104dp3 + m104dp2;
                if (f10 >= BitmapDescriptorFactory.HUE_RED && f3 > BitmapDescriptorFactory.HUE_RED) {
                    float lerp2 = AndroidUtilities.lerp(min, AndroidUtilities.dpf2(2.0f), f8);
                    if (i9 > i2 || i9 != i2) {
                        f5 = min;
                        i5 = m104dp;
                        f6 = m104dp2;
                        f7 = 1.0f;
                    } else {
                        RectF rectF = AndroidUtilities.rectTmp;
                        f5 = min;
                        i5 = m104dp;
                        f6 = m104dp2;
                        rectF.set(m104dp3, BitmapDescriptorFactory.HUE_RED, f10, AndroidUtilities.lerp(AndroidUtilities.dpf2(2.0f), AndroidUtilities.dpf2(5.0f), (i2 == i9 ? 1 : 0) * f8));
                        if (z3) {
                            if (storyLinesDrawable.incrementBuffering) {
                                float f11 = storyLinesDrawable.bufferingProgress + 0.026666667f;
                                storyLinesDrawable.bufferingProgress = f11;
                                if (f11 > 0.5f) {
                                    storyLinesDrawable.incrementBuffering = false;
                                }
                            } else {
                                float f12 = storyLinesDrawable.bufferingProgress - 0.026666667f;
                                storyLinesDrawable.bufferingProgress = f12;
                                if (f12 < -0.5f) {
                                    storyLinesDrawable.incrementBuffering = true;
                                }
                            }
                            i6 = (int) (51.0f * f3 * f2 * storyLinesDrawable.bufferingProgress);
                        } else {
                            i6 = 0;
                        }
                        paint4.setAlpha(((int) (85.0f * f3 * f2)) + i6);
                        if (i4 > 0) {
                            int i10 = i9 - i2;
                            rectF.left = Utilities.clamp(AndroidUtilities.lerp(rectF.left, (i10 * i) + AndroidUtilities.m104dp(5), f8), i - AndroidUtilities.m104dp(5), AndroidUtilities.m104dp(5));
                            rectF.right = Utilities.clamp(AndroidUtilities.lerp(rectF.right, ((i10 + 1) * i) - AndroidUtilities.m104dp(5), f8), i - AndroidUtilities.m104dp(5), AndroidUtilities.m104dp(5));
                        }
                        canvas.drawRoundRect(rectF, lerp2, lerp2, paint4);
                        f7 = f9;
                    }
                    RectF rectF2 = AndroidUtilities.rectTmp;
                    rectF2.set(m104dp3, BitmapDescriptorFactory.HUE_RED, f10, AndroidUtilities.lerp(AndroidUtilities.dpf2(2.0f), AndroidUtilities.dpf2(5.0f), (i2 == i9 ? 1 : 0) * f8));
                    if (i4 > 0) {
                        int i11 = i9 - i2;
                        rectF2.left = Utilities.clamp(AndroidUtilities.lerp(rectF2.left, (i11 * i) + AndroidUtilities.m104dp(5), f8), i - AndroidUtilities.m104dp(5), AndroidUtilities.m104dp(5));
                        rectF2.right = Utilities.clamp(AndroidUtilities.lerp(rectF2.right, ((i11 + 1) * i) - AndroidUtilities.m104dp(5), f8), i - AndroidUtilities.m104dp(5), AndroidUtilities.m104dp(5));
                    }
                    rectF2.right = AndroidUtilities.lerp(rectF2.left, rectF2.right, f7);
                    if (i9 <= i2) {
                        paint2 = paint;
                        paint2.setAlpha((int) (f3 * 255.0f * f2));
                        paint3 = paint2;
                    } else {
                        paint2 = paint;
                        paint4.setAlpha((int) (85 * f3 * f2));
                        paint3 = paint4;
                    }
                    canvas.drawRoundRect(rectF2, lerp2, lerp2, paint3);
                    i9++;
                    storyLinesDrawable = this;
                    i7 = i3;
                    paint = paint2;
                    min = f5;
                    m104dp = i5;
                    m104dp2 = f6;
                }
            }
            f5 = min;
            i5 = m104dp;
            f6 = m104dp2;
            paint2 = paint;
            i9++;
            storyLinesDrawable = this;
            i7 = i3;
            paint = paint2;
            min = f5;
            m104dp = i5;
            m104dp2 = f6;
        }
    }
}
