package org.telegram.p044ui.Components;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.RectF;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.SharedConfig;
import org.telegram.p044ui.ActionBar.Theme;
/* renamed from: org.telegram.ui.Components.RecordStatusDrawable */
/* loaded from: classes6.dex */
public class RecordStatusDrawable extends StatusDrawable {
    Paint currentPaint;
    private float progress;
    private boolean isChat = false;
    private long lastUpdateTime = 0;
    private boolean started = false;
    private RectF rect = new RectF();
    int alpha = 255;

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    public RecordStatusDrawable(boolean z) {
        if (z) {
            Paint paint = new Paint(1);
            this.currentPaint = paint;
            paint.setStyle(Paint.Style.STROKE);
            this.currentPaint.setStrokeCap(Paint.Cap.ROUND);
            this.currentPaint.setStrokeWidth(AndroidUtilities.m50dp(2));
        }
    }

    @Override // org.telegram.p044ui.Components.StatusDrawable
    public void setIsChat(boolean z) {
        this.isChat = z;
    }

    @Override // org.telegram.p044ui.Components.StatusDrawable
    public void setColor(int i) {
        Paint paint = this.currentPaint;
        if (paint != null) {
            paint.setColor(i);
        }
    }

    private void update() {
        long currentTimeMillis = System.currentTimeMillis();
        long j = currentTimeMillis - this.lastUpdateTime;
        this.lastUpdateTime = currentTimeMillis;
        if (j > 50) {
            j = 50;
        }
        this.progress += ((float) j) / 800.0f;
        while (true) {
            float f = this.progress;
            if (f > 1.0f) {
                this.progress = f - 1.0f;
            } else {
                invalidateSelf();
                return;
            }
        }
    }

    @Override // org.telegram.p044ui.Components.StatusDrawable
    public void start() {
        this.lastUpdateTime = System.currentTimeMillis();
        this.started = true;
        invalidateSelf();
    }

    @Override // org.telegram.p044ui.Components.StatusDrawable
    public void stop() {
        this.started = false;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Paint paint = this.currentPaint;
        if (paint == null) {
            paint = Theme.chat_statusRecordPaint;
        }
        int i = 2;
        if (paint.getStrokeWidth() != AndroidUtilities.m50dp(2)) {
            paint.setStrokeWidth(AndroidUtilities.m50dp(2));
        }
        canvas.save();
        int intrinsicHeight = getIntrinsicHeight() / 2;
        if (SharedConfig.isDialogsCompactModeEnabled) {
            i = 0;
        } else if (this.isChat) {
            i = 1;
        }
        canvas.translate(BitmapDescriptorFactory.HUE_RED, intrinsicHeight + AndroidUtilities.m50dp(i));
        for (int i2 = 0; i2 < 4; i2++) {
            if (i2 == 0) {
                paint.setAlpha((int) (this.alpha * this.progress));
            } else if (i2 == 3) {
                paint.setAlpha((int) (this.alpha * (1.0f - this.progress)));
            } else {
                paint.setAlpha(this.alpha);
            }
            float m50dp = (AndroidUtilities.m50dp(4) * i2) + (AndroidUtilities.m50dp(4) * this.progress);
            float f = -m50dp;
            this.rect.set(f, f, m50dp, m50dp);
            canvas.drawArc(this.rect, -15.0f, 30.0f, false, paint);
        }
        canvas.restore();
        if (this.started) {
            update();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.alpha = i;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return AndroidUtilities.m50dp(18);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return AndroidUtilities.m50dp(14);
    }
}
