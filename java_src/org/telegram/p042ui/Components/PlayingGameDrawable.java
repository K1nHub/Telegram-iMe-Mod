package org.telegram.p042ui.Components;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.RectF;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.p042ui.ActionBar.Theme;
/* renamed from: org.telegram.ui.Components.PlayingGameDrawable */
/* loaded from: classes6.dex */
public class PlayingGameDrawable extends StatusDrawable {
    private final boolean isDialogScreen;
    private float progress;
    Theme.ResourcesProvider resourcesProvider;
    private boolean isChat = false;
    private Paint paint = new Paint(1);
    private int currentAccount = UserConfig.selectedAccount;
    private long lastUpdateTime = 0;
    private boolean started = false;
    private RectF rect = new RectF();

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -2;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
    }

    @Override // org.telegram.p042ui.Components.StatusDrawable
    public void setColor(int i) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    public PlayingGameDrawable(boolean z, Theme.ResourcesProvider resourcesProvider) {
        this.isDialogScreen = z;
        this.resourcesProvider = resourcesProvider;
    }

    @Override // org.telegram.p042ui.Components.StatusDrawable
    public void setIsChat(boolean z) {
        this.isChat = z;
    }

    private void update() {
        long currentTimeMillis = System.currentTimeMillis();
        long j = currentTimeMillis - this.lastUpdateTime;
        this.lastUpdateTime = currentTimeMillis;
        if (j > 16) {
            j = 16;
        }
        if (this.progress >= 1.0f) {
            this.progress = BitmapDescriptorFactory.HUE_RED;
        }
        float f = this.progress + (((float) j) / 300.0f);
        this.progress = f;
        if (f > 1.0f) {
            this.progress = 1.0f;
        }
        invalidateSelf();
    }

    @Override // org.telegram.p042ui.Components.StatusDrawable
    public void start() {
        this.lastUpdateTime = System.currentTimeMillis();
        this.started = true;
        invalidateSelf();
    }

    @Override // org.telegram.p042ui.Components.StatusDrawable
    public void stop() {
        this.progress = BitmapDescriptorFactory.HUE_RED;
        this.started = false;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        int m102dp = AndroidUtilities.m102dp(10);
        int intrinsicHeight = getBounds().top + ((getIntrinsicHeight() - m102dp) / 2);
        if (!this.isChat) {
            intrinsicHeight += AndroidUtilities.m102dp(1);
        }
        int i = intrinsicHeight;
        this.paint.setColor(Theme.getColor(this.isDialogScreen ? Theme.key_chats_actionMessage : Theme.key_chat_status, this.resourcesProvider));
        this.rect.set(BitmapDescriptorFactory.HUE_RED, i, m102dp, i + m102dp);
        float f = this.progress;
        int i2 = (int) (f < 0.5f ? (1.0f - (f / 0.5f)) * 35.0f : ((f - 0.5f) * 35.0f) / 0.5f);
        for (int i3 = 0; i3 < 3; i3++) {
            float f2 = this.progress;
            float m102dp2 = ((AndroidUtilities.m102dp(5) * i3) + AndroidUtilities.m103dp(9.2f)) - (AndroidUtilities.m102dp(5) * f2);
            if (i3 == 2) {
                this.paint.setAlpha(Math.min(255, (int) ((f2 * 255.0f) / 0.5f)));
            } else if (i3 != 0) {
                this.paint.setAlpha(255);
            } else if (f2 > 0.5f) {
                this.paint.setAlpha((int) ((1.0f - ((f2 - 0.5f) / 0.5f)) * 255.0f));
            } else {
                this.paint.setAlpha(255);
            }
            canvas.drawCircle(m102dp2, (m102dp / 2) + i, AndroidUtilities.m103dp(1.2f), this.paint);
        }
        this.paint.setAlpha(255);
        canvas.drawArc(this.rect, i2, 360 - (i2 * 2), true, this.paint);
        this.paint.setColor(Theme.getColor(this.isDialogScreen ? Theme.key_windowBackgroundWhite : Theme.key_actionBarDefault));
        canvas.drawCircle(AndroidUtilities.m102dp(4), (i + (m102dp / 2)) - AndroidUtilities.m102dp(2), AndroidUtilities.m102dp(1), this.paint);
        checkUpdate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkUpdate() {
        if (this.started) {
            if (!NotificationCenter.getInstance(this.currentAccount).isAnimationInProgress()) {
                update();
            } else {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.PlayingGameDrawable$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        PlayingGameDrawable.this.checkUpdate();
                    }
                }, 100L);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return AndroidUtilities.m102dp(20);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return AndroidUtilities.m102dp(18);
    }
}
