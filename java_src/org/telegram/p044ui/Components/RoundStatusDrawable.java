package org.telegram.p044ui.Components;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.SharedConfig;
import org.telegram.p044ui.ActionBar.Theme;
/* renamed from: org.telegram.ui.Components.RoundStatusDrawable */
/* loaded from: classes6.dex */
public class RoundStatusDrawable extends StatusDrawable {
    private Paint currentPaint;
    private float progress;
    private boolean isChat = false;
    private long lastUpdateTime = 0;
    private boolean started = false;
    private int progressDirection = 1;

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

    public RoundStatusDrawable(boolean z) {
        if (z) {
            this.currentPaint = new Paint(1);
        }
    }

    @Override // org.telegram.p044ui.Components.StatusDrawable
    public void setColor(int i) {
        Paint paint = this.currentPaint;
        if (paint != null) {
            paint.setColor(i);
        }
    }

    @Override // org.telegram.p044ui.Components.StatusDrawable
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
        float f = this.progress;
        int i = this.progressDirection;
        float f2 = f + (((float) (i * j)) / 400.0f);
        this.progress = f2;
        if (i > 0 && f2 >= 1.0f) {
            this.progressDirection = -1;
            this.progress = 1.0f;
        } else if (i < 0 && f2 <= BitmapDescriptorFactory.HUE_RED) {
            this.progressDirection = 1;
            this.progress = BitmapDescriptorFactory.HUE_RED;
        }
        invalidateSelf();
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
            paint = Theme.chat_statusPaint;
        }
        paint.setAlpha(((int) (this.progress * 200.0f)) + 55);
        canvas.drawCircle(AndroidUtilities.m54dp(6), AndroidUtilities.m54dp(SharedConfig.isDialogsCompactModeEnabled ? 5 : this.isChat ? 8 : 9), AndroidUtilities.m54dp(4), paint);
        if (this.started) {
            update();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return AndroidUtilities.m54dp(12);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return AndroidUtilities.m54dp(10);
    }
}
