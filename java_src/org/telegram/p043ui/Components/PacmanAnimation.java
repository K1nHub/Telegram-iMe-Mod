package org.telegram.p043ui.Components;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.view.View;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.SharedConfig;
import org.telegram.p043ui.ActionBar.Theme;
/* renamed from: org.telegram.ui.Components.PacmanAnimation */
/* loaded from: classes7.dex */
public class PacmanAnimation {
    private boolean currentGhostWalk;
    private Runnable finishRunnable;
    private Path ghostPath;
    private float ghostProgress;
    private boolean ghostWalk;
    private View parentView;
    private float progress;
    private float translationProgress;
    private Paint paint = new Paint(1);
    private Paint edgePaint = new Paint(1);
    private long lastUpdateTime = 0;
    private RectF rect = new RectF();

    public PacmanAnimation(View view) {
        this.edgePaint.setStyle(Paint.Style.STROKE);
        this.edgePaint.setStrokeWidth(AndroidUtilities.m72dp(2));
        this.parentView = view;
    }

    public void setFinishRunnable(Runnable runnable) {
        this.finishRunnable = runnable;
    }

    private void update() {
        long currentTimeMillis = System.currentTimeMillis();
        long j = currentTimeMillis - this.lastUpdateTime;
        this.lastUpdateTime = currentTimeMillis;
        if (j > 17) {
            j = 17;
        }
        if (this.progress >= 1.0f) {
            this.progress = BitmapDescriptorFactory.HUE_RED;
        }
        float f = (float) j;
        float f2 = this.progress + (f / 400.0f);
        this.progress = f2;
        if (f2 > 1.0f) {
            this.progress = 1.0f;
        }
        float f3 = this.translationProgress + (f / 2000.0f);
        this.translationProgress = f3;
        if (f3 > 1.0f) {
            this.translationProgress = 1.0f;
        }
        float f4 = this.ghostProgress + (f / 200.0f);
        this.ghostProgress = f4;
        if (f4 >= 1.0f) {
            this.ghostWalk = !this.ghostWalk;
            this.ghostProgress = BitmapDescriptorFactory.HUE_RED;
        }
        this.parentView.invalidate();
    }

    public void start() {
        this.translationProgress = BitmapDescriptorFactory.HUE_RED;
        this.progress = BitmapDescriptorFactory.HUE_RED;
        this.lastUpdateTime = System.currentTimeMillis();
        this.parentView.invalidate();
    }

    private void drawGhost(Canvas canvas, int i) {
        Path path = this.ghostPath;
        if (path == null || this.ghostWalk != this.currentGhostWalk) {
            if (path == null) {
                this.ghostPath = new Path();
            }
            this.ghostPath.reset();
            boolean z = this.ghostWalk;
            this.currentGhostWalk = z;
            if (z) {
                this.ghostPath.moveTo(BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m72dp(50));
                this.ghostPath.lineTo(BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m72dp(24));
                this.rect.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m72dp(42), AndroidUtilities.m72dp(24));
                this.ghostPath.arcTo(this.rect, 180.0f, 180.0f, false);
                this.ghostPath.lineTo(AndroidUtilities.m72dp(42), AndroidUtilities.m72dp(50));
                this.ghostPath.lineTo(AndroidUtilities.m72dp(35), AndroidUtilities.m72dp(43));
                this.ghostPath.lineTo(AndroidUtilities.m72dp(28), AndroidUtilities.m72dp(50));
                this.ghostPath.lineTo(AndroidUtilities.m72dp(21), AndroidUtilities.m72dp(43));
                this.ghostPath.lineTo(AndroidUtilities.m72dp(14), AndroidUtilities.m72dp(50));
                this.ghostPath.lineTo(AndroidUtilities.m72dp(7), AndroidUtilities.m72dp(43));
            } else {
                this.ghostPath.moveTo(BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m72dp(43));
                this.ghostPath.lineTo(BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m72dp(24));
                this.rect.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m72dp(42), AndroidUtilities.m72dp(24));
                this.ghostPath.arcTo(this.rect, 180.0f, 180.0f, false);
                this.ghostPath.lineTo(AndroidUtilities.m72dp(42), AndroidUtilities.m72dp(43));
                this.ghostPath.lineTo(AndroidUtilities.m72dp(35), AndroidUtilities.m72dp(50));
                this.ghostPath.lineTo(AndroidUtilities.m72dp(28), AndroidUtilities.m72dp(43));
                this.ghostPath.lineTo(AndroidUtilities.m72dp(21), AndroidUtilities.m72dp(50));
                this.ghostPath.lineTo(AndroidUtilities.m72dp(14), AndroidUtilities.m72dp(43));
                this.ghostPath.lineTo(AndroidUtilities.m72dp(7), AndroidUtilities.m72dp(50));
            }
            this.ghostPath.close();
        }
        canvas.drawPath(this.ghostPath, this.edgePaint);
        if (i == 0) {
            this.paint.setColor(-90112);
        } else if (i == 1) {
            this.paint.setColor(-85326);
        } else {
            this.paint.setColor(-16720161);
        }
        canvas.drawPath(this.ghostPath, this.paint);
        this.paint.setColor(-1);
        this.rect.set(AndroidUtilities.m72dp(8), AndroidUtilities.m72dp(14), AndroidUtilities.m72dp(20), AndroidUtilities.m72dp(28));
        canvas.drawOval(this.rect, this.paint);
        this.rect.set(AndroidUtilities.m72dp(24), AndroidUtilities.m72dp(14), AndroidUtilities.m72dp(36), AndroidUtilities.m72dp(28));
        canvas.drawOval(this.rect, this.paint);
        this.paint.setColor(-16777216);
        this.rect.set(AndroidUtilities.m72dp(14), AndroidUtilities.m72dp(18), AndroidUtilities.m72dp(19), AndroidUtilities.m72dp(24));
        canvas.drawOval(this.rect, this.paint);
        this.rect.set(AndroidUtilities.m72dp(30), AndroidUtilities.m72dp(18), AndroidUtilities.m72dp(35), AndroidUtilities.m72dp(24));
        canvas.drawOval(this.rect, this.paint);
    }

    public void draw(Canvas canvas, int i) {
        int m72dp;
        int i2;
        int m72dp2 = AndroidUtilities.m72dp(110);
        int m72dp3 = AndroidUtilities.m72dp(SharedConfig.isDialogsCompactModeEnabled ? 48 : SharedConfig.useThreeLinesLayout ? 78 : 72);
        float measuredWidth = ((this.parentView.getMeasuredWidth() + m72dp) * this.translationProgress) - ((AndroidUtilities.m72dp(62) * 3) + m72dp2);
        int i3 = m72dp2 / 2;
        this.paint.setColor(Theme.getColor(Theme.key_windowBackgroundWhite));
        int i4 = m72dp3 / 2;
        float f = measuredWidth + i3;
        canvas.drawRect(BitmapDescriptorFactory.HUE_RED, i - i4, f, i + i4 + 1, this.paint);
        this.paint.setColor(-69120);
        float f2 = measuredWidth + m72dp2;
        this.rect.set(measuredWidth, i - i3, f2, i2 + m72dp2);
        float f3 = this.progress;
        int i5 = (int) (f3 < 0.5f ? (1.0f - (f3 / 0.5f)) * 35.0f : ((f3 - 0.5f) * 35.0f) / 0.5f);
        float f4 = i5;
        float f5 = 360 - (i5 * 2);
        canvas.drawArc(this.rect, f4, f5, true, this.edgePaint);
        canvas.drawArc(this.rect, f4, f5, true, this.paint);
        this.paint.setColor(-16777216);
        canvas.drawCircle(f - AndroidUtilities.m72dp(8), i2 + (m72dp2 / 4), AndroidUtilities.m72dp(8), this.paint);
        canvas.save();
        canvas.translate(f2 + AndroidUtilities.m72dp(20), i - AndroidUtilities.m72dp(25));
        for (int i6 = 0; i6 < 3; i6++) {
            drawGhost(canvas, i6);
            canvas.translate(AndroidUtilities.m72dp(62), BitmapDescriptorFactory.HUE_RED);
        }
        canvas.restore();
        if (this.translationProgress >= 1.0f) {
            this.finishRunnable.run();
        }
        update();
    }
}
