package org.telegram.p043ui.Components;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.core.graphics.ColorUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p043ui.ActionBar.Theme;
/* renamed from: org.telegram.ui.Components.RoundVideoPlayingDrawable */
/* loaded from: classes6.dex */
public class RoundVideoPlayingDrawable extends Drawable {
    public float colorProgress;
    private View parentView;
    private Theme.ResourcesProvider resourcesProvider;
    public int timeColor;
    private long lastUpdateTime = 0;
    private boolean started = false;
    private Paint paint = new Paint(1);
    private float progress1 = 0.47f;
    private float progress2 = BitmapDescriptorFactory.HUE_RED;
    private float progress3 = 0.32f;
    private int progress1Direction = 1;
    private int progress2Direction = 1;
    private int progress3Direction = 1;
    int alpha = 255;

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -2;
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    public RoundVideoPlayingDrawable(View view, Theme.ResourcesProvider resourcesProvider) {
        this.resourcesProvider = resourcesProvider;
        this.parentView = view;
    }

    public void setResourcesProvider(Theme.ResourcesProvider resourcesProvider) {
        this.resourcesProvider = resourcesProvider;
    }

    private void update() {
        long currentTimeMillis = System.currentTimeMillis();
        long j = currentTimeMillis - this.lastUpdateTime;
        this.lastUpdateTime = currentTimeMillis;
        if (j > 50) {
            j = 50;
        }
        float f = (float) j;
        float f2 = this.progress1 + ((f / 300.0f) * this.progress1Direction);
        this.progress1 = f2;
        if (f2 > 1.0f) {
            this.progress1Direction = -1;
            this.progress1 = 1.0f;
        } else if (f2 < BitmapDescriptorFactory.HUE_RED) {
            this.progress1Direction = 1;
            this.progress1 = BitmapDescriptorFactory.HUE_RED;
        }
        float f3 = this.progress2 + ((f / 310.0f) * this.progress2Direction);
        this.progress2 = f3;
        if (f3 > 1.0f) {
            this.progress2Direction = -1;
            this.progress2 = 1.0f;
        } else if (f3 < BitmapDescriptorFactory.HUE_RED) {
            this.progress2Direction = 1;
            this.progress2 = BitmapDescriptorFactory.HUE_RED;
        }
        float f4 = this.progress3 + ((f / 320.0f) * this.progress3Direction);
        this.progress3 = f4;
        if (f4 > 1.0f) {
            this.progress3Direction = -1;
            this.progress3 = 1.0f;
        } else if (f4 < BitmapDescriptorFactory.HUE_RED) {
            this.progress3Direction = 1;
            this.progress3 = BitmapDescriptorFactory.HUE_RED;
        }
        this.parentView.invalidate();
    }

    public void start() {
        if (this.started) {
            return;
        }
        this.lastUpdateTime = System.currentTimeMillis();
        this.started = true;
        this.parentView.invalidate();
    }

    public void stop() {
        if (this.started) {
            this.started = false;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        this.paint.setColor(ColorUtils.blendARGB(getThemedColor(Theme.key_chat_serviceText), this.timeColor, this.colorProgress));
        int i = this.alpha;
        if (i != 255) {
            Paint paint = this.paint;
            paint.setAlpha((int) (i * (paint.getAlpha() / 255.0f)));
        }
        int i2 = getBounds().left;
        int i3 = getBounds().top;
        for (int i4 = 0; i4 < 3; i4++) {
            canvas.drawRect(AndroidUtilities.m104dp(2) + i2, AndroidUtilities.m105dp((this.progress1 * 7.0f) + 2.0f) + i3, AndroidUtilities.m104dp(4) + i2, AndroidUtilities.m104dp(10) + i3, this.paint);
            canvas.drawRect(AndroidUtilities.m104dp(5) + i2, AndroidUtilities.m105dp((this.progress2 * 7.0f) + 2.0f) + i3, AndroidUtilities.m104dp(7) + i2, AndroidUtilities.m104dp(10) + i3, this.paint);
            canvas.drawRect(AndroidUtilities.m104dp(8) + i2, AndroidUtilities.m105dp((this.progress3 * 7.0f) + 2.0f) + i3, AndroidUtilities.m104dp(10) + i2, AndroidUtilities.m104dp(10) + i3, this.paint);
        }
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
        return AndroidUtilities.m104dp(12);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return AndroidUtilities.m104dp(12);
    }

    private int getThemedColor(int i) {
        return Theme.getColor(i, this.resourcesProvider);
    }
}
