package org.telegram.p043ui.Components;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.view.animation.DecelerateInterpolator;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.p043ui.ActionBar.Theme;
/* renamed from: org.telegram.ui.Components.TypingDotsDrawable */
/* loaded from: classes6.dex */
public class TypingDotsDrawable extends StatusDrawable {
    private Paint currentPaint;
    private int currentAccount = UserConfig.selectedAccount;
    private boolean isChat = false;
    private float[] scales = new float[3];
    private float[] startTimes = {BitmapDescriptorFactory.HUE_RED, 150.0f, 300.0f};
    private float[] elapsedTimes = {BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED};
    private long lastUpdateTime = 0;
    private boolean started = false;
    private DecelerateInterpolator decelerateInterpolator = new DecelerateInterpolator();

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

    public TypingDotsDrawable(boolean z) {
        if (z) {
            this.currentPaint = new Paint(1);
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
        for (int i = 0; i < 3; i++) {
            float[] fArr = this.elapsedTimes;
            fArr[i] = fArr[i] + ((float) j);
            float f = fArr[i];
            float[] fArr2 = this.startTimes;
            float f2 = f - fArr2[i];
            if (f2 <= BitmapDescriptorFactory.HUE_RED) {
                this.scales[i] = 1.33f;
            } else if (f2 <= 320.0f) {
                this.scales[i] = this.decelerateInterpolator.getInterpolation(f2 / 320.0f) + 1.33f;
            } else if (f2 <= 640.0f) {
                this.scales[i] = (1.0f - this.decelerateInterpolator.getInterpolation((f2 - 320.0f) / 320.0f)) + 1.33f;
            } else if (f2 >= 800.0f) {
                fArr[i] = 0.0f;
                fArr2[i] = 0.0f;
                this.scales[i] = 1.33f;
            } else {
                this.scales[i] = 1.33f;
            }
        }
        invalidateSelf();
    }

    @Override // org.telegram.p043ui.Components.StatusDrawable
    public void start() {
        this.lastUpdateTime = System.currentTimeMillis();
        this.started = true;
        invalidateSelf();
    }

    @Override // org.telegram.p043ui.Components.StatusDrawable
    public void stop() {
        for (int i = 0; i < 3; i++) {
            this.elapsedTimes[i] = 0.0f;
            this.scales[i] = 1.33f;
        }
        float[] fArr = this.startTimes;
        fArr[0] = 0.0f;
        fArr[1] = 150.0f;
        fArr[2] = 300.0f;
        this.started = false;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        int m108dp;
        int i;
        if (this.isChat) {
            m108dp = AndroidUtilities.m108dp(8.5f);
            i = getBounds().top;
        } else {
            m108dp = AndroidUtilities.m108dp(9.3f);
            i = getBounds().top;
        }
        int i2 = m108dp + i;
        Paint paint = this.currentPaint;
        if (paint == null) {
            paint = Theme.chat_statusPaint;
            paint.setAlpha(255);
        }
        float f = i2;
        canvas.drawCircle(AndroidUtilities.m107dp(3), f, this.scales[0] * AndroidUtilities.density, paint);
        canvas.drawCircle(AndroidUtilities.m107dp(9), f, this.scales[1] * AndroidUtilities.density, paint);
        canvas.drawCircle(AndroidUtilities.m107dp(15), f, this.scales[2] * AndroidUtilities.density, paint);
        checkUpdate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkUpdate() {
        if (this.started) {
            if (!NotificationCenter.getInstance(this.currentAccount).isAnimationInProgress()) {
                update();
            } else {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.TypingDotsDrawable$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        TypingDotsDrawable.this.checkUpdate();
                    }
                }, 100L);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return AndroidUtilities.m107dp(18);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return AndroidUtilities.m107dp(18);
    }
}
