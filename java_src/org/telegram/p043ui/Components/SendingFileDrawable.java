package org.telegram.p043ui.Components;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p043ui.ActionBar.Theme;
/* renamed from: org.telegram.ui.Components.SendingFileDrawable */
/* loaded from: classes6.dex */
public class SendingFileDrawable extends StatusDrawable {
    Paint currentPaint;
    private float progress;
    private boolean isChat = false;
    private long lastUpdateTime = 0;
    private boolean started = false;

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    public SendingFileDrawable(boolean z) {
        if (z) {
            Paint paint = new Paint(1);
            this.currentPaint = paint;
            paint.setStyle(Paint.Style.STROKE);
            this.currentPaint.setStrokeCap(Paint.Cap.ROUND);
            this.currentPaint.setStrokeWidth(AndroidUtilities.m104dp(2));
        }
    }

    @Override // org.telegram.p043ui.Components.StatusDrawable
    public void setColor(int i) {
        Paint paint = this.currentPaint;
        if (paint != null) {
            paint.setColor(i);
        }
    }

    @Override // org.telegram.p043ui.Components.StatusDrawable
    public void setIsChat(boolean z) {
        this.isChat = z;
    }

    private void update() {
        long currentTimeMillis = System.currentTimeMillis();
        long j = currentTimeMillis - this.lastUpdateTime;
        this.lastUpdateTime = currentTimeMillis;
        if (j > 50) {
            j = 50;
        }
        this.progress += ((float) j) / 500.0f;
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

    @Override // org.telegram.p043ui.Components.StatusDrawable
    public void start() {
        this.lastUpdateTime = System.currentTimeMillis();
        this.started = true;
        invalidateSelf();
    }

    @Override // org.telegram.p043ui.Components.StatusDrawable
    public void stop() {
        this.started = false;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Paint paint = this.currentPaint;
        if (paint == null) {
            paint = Theme.chat_statusRecordPaint;
        }
        int i = 0;
        while (true) {
            if (i >= 3) {
                break;
            }
            if (i == 0) {
                paint.setAlpha((int) (this.progress * 255.0f));
            } else if (i == 2) {
                paint.setAlpha((int) ((1.0f - this.progress) * 255.0f));
            } else {
                paint.setAlpha(255);
            }
            float m104dp = (AndroidUtilities.m104dp(5) * i) + (AndroidUtilities.m104dp(5) * this.progress);
            int i2 = 7;
            canvas.drawLine(m104dp, AndroidUtilities.m104dp(this.isChat ? 3 : 4), m104dp + AndroidUtilities.m104dp(4), AndroidUtilities.m104dp(this.isChat ? 7 : 8), paint);
            float m104dp2 = AndroidUtilities.m104dp(this.isChat ? 11 : 12);
            float m104dp3 = m104dp + AndroidUtilities.m104dp(4);
            if (!this.isChat) {
                i2 = 8;
            }
            canvas.drawLine(m104dp, m104dp2, m104dp3, AndroidUtilities.m104dp(i2), paint);
            i++;
        }
        if (this.started) {
            update();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return AndroidUtilities.m104dp(18);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return AndroidUtilities.m104dp(14);
    }
}
