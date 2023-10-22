package org.telegram.p042ui.ActionBar;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
/* renamed from: org.telegram.ui.ActionBar.RoundVideoShadow */
/* loaded from: classes5.dex */
public class RoundVideoShadow extends Drawable {
    Paint paint;

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    public RoundVideoShadow() {
        Paint paint = new Paint(1);
        this.paint = paint;
        paint.setShadowLayer(AndroidUtilities.m102dp(4), BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1593835520);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        canvas.drawCircle(getBounds().centerX(), getBounds().centerY() - AndroidUtilities.m102dp(1), (getBounds().width() - AndroidUtilities.m102dp(8)) / 2.0f, this.paint);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.paint.setAlpha(i);
    }
}
