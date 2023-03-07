package org.telegram.p048ui.Components;

import android.graphics.Canvas;
import android.graphics.Paint;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
/* renamed from: org.telegram.ui.Components.ProgressView */
/* loaded from: classes6.dex */
public class ProgressView {
    public int height;
    public int width;
    public float currentProgress = BitmapDescriptorFactory.HUE_RED;
    public float progressHeight = AndroidUtilities.m51dp(2.0f);
    private Paint innerPaint = new Paint();
    private Paint outerPaint = new Paint();

    public void setProgressColors(int i, int i2) {
        this.innerPaint.setColor(i);
        this.outerPaint.setColor(i2);
    }

    public void setProgress(float f) {
        this.currentProgress = f;
        if (f < BitmapDescriptorFactory.HUE_RED) {
            this.currentProgress = BitmapDescriptorFactory.HUE_RED;
        } else if (f > 1.0f) {
            this.currentProgress = 1.0f;
        }
    }

    public void draw(Canvas canvas) {
        int i = this.height;
        float f = this.progressHeight;
        canvas.drawRect(BitmapDescriptorFactory.HUE_RED, (i / 2) - (f / 2.0f), this.width, (i / 2) + (f / 2.0f), this.innerPaint);
        int i2 = this.height;
        float f2 = this.progressHeight;
        canvas.drawRect(BitmapDescriptorFactory.HUE_RED, (i2 / 2) - (f2 / 2.0f), this.width * this.currentProgress, (i2 / 2) + (f2 / 2.0f), this.outerPaint);
    }
}
