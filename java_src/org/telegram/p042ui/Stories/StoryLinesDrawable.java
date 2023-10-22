package org.telegram.p042ui.Stories;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.View;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p042ui.Components.AnimatedFloat;
import org.telegram.p042ui.Components.CubicBezierInterpolator;
import org.telegram.p042ui.Stories.PeerStoriesView;
/* renamed from: org.telegram.ui.Stories.StoryLinesDrawable */
/* loaded from: classes6.dex */
public class StoryLinesDrawable {
    float bufferingProgress;
    boolean incrementBuffering;
    int lastPosition;
    private final PeerStoriesView.SharedResources sharedResources;

    public StoryLinesDrawable(View view, PeerStoriesView.SharedResources sharedResources) {
        this.sharedResources = sharedResources;
        new AnimatedFloat(view, 0L, 230L, CubicBezierInterpolator.EASE_OUT_QUINT);
    }

    public void draw(Canvas canvas, int i, int i2, float f, int i3, float f2, float f3, boolean z) {
        int m102dp;
        int i4;
        int i5 = i;
        if (i3 <= 0) {
            return;
        }
        if (this.lastPosition != i2) {
            this.bufferingProgress = BitmapDescriptorFactory.HUE_RED;
            this.incrementBuffering = true;
        }
        this.lastPosition = i2;
        PeerStoriesView.SharedResources sharedResources = this.sharedResources;
        Paint paint = sharedResources.barPaint;
        Paint paint2 = sharedResources.selectedBarPaint;
        if (i3 > 100) {
            m102dp = 1;
        } else if (i3 >= 50) {
            m102dp = AndroidUtilities.m102dp(1);
        } else {
            m102dp = AndroidUtilities.m102dp(2);
        }
        float m102dp2 = ((i5 - AndroidUtilities.m102dp(10)) - ((i3 - 1) * m102dp)) / i3;
        int i6 = 5;
        AndroidUtilities.m102dp(5);
        float min = Math.min(m102dp2 / 2.0f, AndroidUtilities.m102dp(1));
        paint2.setAlpha((int) (255.0f * f3 * f2));
        int i7 = 0;
        while (i7 < i3) {
            float m102dp3 = AndroidUtilities.m102dp(i6) + (-0.0f) + (m102dp * i7) + (i7 * m102dp2);
            if (m102dp3 <= i5) {
                float f4 = m102dp3 + m102dp2;
                if (f4 >= BitmapDescriptorFactory.HUE_RED) {
                    float f5 = 1.0f;
                    if (i7 <= i2 && i7 == i2) {
                        RectF rectF = AndroidUtilities.rectTmp;
                        rectF.set(m102dp3, BitmapDescriptorFactory.HUE_RED, f4, AndroidUtilities.m102dp(2));
                        if (z) {
                            if (this.incrementBuffering) {
                                float f6 = this.bufferingProgress + 0.026666667f;
                                this.bufferingProgress = f6;
                                if (f6 > 0.5f) {
                                    this.incrementBuffering = false;
                                }
                            } else {
                                float f7 = this.bufferingProgress - 0.026666667f;
                                this.bufferingProgress = f7;
                                if (f7 < -0.5f) {
                                    this.incrementBuffering = true;
                                    i4 = (int) (51.0f * f3 * f2 * this.bufferingProgress);
                                }
                            }
                            i4 = (int) (51.0f * f3 * f2 * this.bufferingProgress);
                        } else {
                            i4 = 0;
                        }
                        paint.setAlpha(((int) (85.0f * f3 * f2)) + i4);
                        canvas.drawRoundRect(rectF, min, min, paint);
                        f5 = f;
                    }
                    RectF rectF2 = AndroidUtilities.rectTmp;
                    rectF2.set(m102dp3, BitmapDescriptorFactory.HUE_RED, m102dp3 + (f5 * m102dp2), AndroidUtilities.m102dp(2));
                    if (i7 > i2) {
                        paint.setAlpha((int) (85 * f3 * f2));
                    }
                    canvas.drawRoundRect(rectF2, min, min, i7 <= i2 ? paint2 : paint);
                }
            }
            i7++;
            i5 = i;
            i6 = 5;
        }
    }
}
