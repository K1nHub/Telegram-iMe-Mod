package org.telegram.p043ui.Stories;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.media.AudioManager;
import android.view.KeyEvent;
import android.view.View;
import com.google.android.exoplayer2.ExoPlayer;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p043ui.Components.AnimatedFloat;
/* renamed from: org.telegram.ui.Stories.StoriesVolumeContorl */
/* loaded from: classes6.dex */
public class StoriesVolumeContorl extends View {
    float currentProgress;
    Runnable hideRunnuble;
    boolean isVisible;
    Paint paint;
    AnimatedFloat progressToVisible;
    AnimatedFloat volumeProgress;

    public StoriesVolumeContorl(Context context) {
        super(context);
        this.paint = new Paint(1);
        this.hideRunnuble = new Runnable() { // from class: org.telegram.ui.Stories.StoriesVolumeContorl.1
            @Override // java.lang.Runnable
            public void run() {
                StoriesVolumeContorl storiesVolumeContorl = StoriesVolumeContorl.this;
                storiesVolumeContorl.isVisible = false;
                storiesVolumeContorl.invalidate();
            }
        };
        this.progressToVisible = new AnimatedFloat(this);
        this.volumeProgress = new AnimatedFloat(this);
        this.paint.setColor(-1);
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 24) {
            adjustVolume(true);
            return true;
        } else if (i == 25) {
            adjustVolume(false);
            return true;
        } else {
            return super.onKeyDown(i, keyEvent);
        }
    }

    private void adjustVolume(boolean z) {
        int i;
        AudioManager audioManager = (AudioManager) getContext().getSystemService("audio");
        int streamMaxVolume = audioManager.getStreamMaxVolume(3);
        int streamVolume = audioManager.getStreamVolume(3);
        if (z) {
            i = streamVolume + 1;
            if (i > streamMaxVolume) {
                i = streamMaxVolume;
            }
        } else {
            i = streamVolume - 1;
            if (i < 0) {
                i = 0;
            }
        }
        audioManager.setStreamVolume(3, i, 0);
        float f = i / streamMaxVolume;
        this.currentProgress = f;
        if (!this.isVisible) {
            this.volumeProgress.set(f, true);
        }
        invalidate();
        this.isVisible = true;
        AndroidUtilities.cancelRunOnUIThread(this.hideRunnuble);
        AndroidUtilities.runOnUIThread(this.hideRunnuble, ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.volumeProgress.set(this.currentProgress);
        this.progressToVisible.set(this.isVisible ? 1.0f : 0.0f);
        if (this.progressToVisible.get() != BitmapDescriptorFactory.HUE_RED) {
            float measuredHeight = getMeasuredHeight() / 2.0f;
            this.paint.setAlpha((int) (this.progressToVisible.get() * 255.0f));
            RectF rectF = AndroidUtilities.rectTmp;
            rectF.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth() * this.volumeProgress.get(), getMeasuredHeight());
            canvas.drawRoundRect(rectF, measuredHeight, measuredHeight, this.paint);
        }
    }

    public void hide() {
        AndroidUtilities.cancelRunOnUIThread(this.hideRunnuble);
        this.hideRunnuble.run();
    }
}
