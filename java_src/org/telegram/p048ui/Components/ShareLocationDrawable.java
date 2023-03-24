package org.telegram.p048ui.Components;

import android.content.Context;
import android.graphics.ColorFilter;
import android.graphics.drawable.Drawable;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3301R;
/* renamed from: org.telegram.ui.Components.ShareLocationDrawable */
/* loaded from: classes6.dex */
public class ShareLocationDrawable extends Drawable {
    private int currentType;
    private Drawable drawable;
    private Drawable drawableLeft;
    private Drawable drawableRight;
    private long lastUpdateTime = 0;
    private float[] progress = {BitmapDescriptorFactory.HUE_RED, -0.5f};

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -2;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
    }

    public ShareLocationDrawable(Context context, int i) {
        this.currentType = i;
        if (i == 4) {
            this.drawable = context.getResources().getDrawable(C3301R.C3303drawable.pin);
            this.drawableLeft = context.getResources().getDrawable(C3301R.C3303drawable.smallanimationpinleft);
            this.drawableRight = context.getResources().getDrawable(C3301R.C3303drawable.smallanimationpinright);
        } else if (i == 3) {
            this.drawable = context.getResources().getDrawable(C3301R.C3303drawable.nearby_l);
            this.drawableLeft = context.getResources().getDrawable(C3301R.C3303drawable.animationpinleft);
            this.drawableRight = context.getResources().getDrawable(C3301R.C3303drawable.animationpinright);
        } else if (i == 2) {
            this.drawable = context.getResources().getDrawable(C3301R.C3303drawable.nearby_m);
            this.drawableLeft = context.getResources().getDrawable(C3301R.C3303drawable.animationpinleft);
            this.drawableRight = context.getResources().getDrawable(C3301R.C3303drawable.animationpinright);
        } else if (i == 1) {
            this.drawable = context.getResources().getDrawable(C3301R.C3303drawable.smallanimationpin);
            this.drawableLeft = context.getResources().getDrawable(C3301R.C3303drawable.smallanimationpinleft);
            this.drawableRight = context.getResources().getDrawable(C3301R.C3303drawable.smallanimationpinright);
        } else {
            this.drawable = context.getResources().getDrawable(C3301R.C3303drawable.animationpin);
            this.drawableLeft = context.getResources().getDrawable(C3301R.C3303drawable.animationpinleft);
            this.drawableRight = context.getResources().getDrawable(C3301R.C3303drawable.animationpinright);
        }
    }

    private void update() {
        long currentTimeMillis = System.currentTimeMillis();
        long j = currentTimeMillis - this.lastUpdateTime;
        this.lastUpdateTime = currentTimeMillis;
        if (j > 16) {
            j = 16;
        }
        for (int i = 0; i < 2; i++) {
            float[] fArr = this.progress;
            if (fArr[i] >= 1.0f) {
                fArr[i] = 0.0f;
            }
            fArr[i] = fArr[i] + (((float) j) / 1300.0f);
            if (fArr[i] > 1.0f) {
                fArr[i] = 1.0f;
            }
        }
        invalidateSelf();
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0174  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0178  */
    @Override // android.graphics.drawable.Drawable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void draw(android.graphics.Canvas r22) {
        /*
            Method dump skipped, instructions count: 440
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.Components.ShareLocationDrawable.draw(android.graphics.Canvas):void");
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.drawable.setColorFilter(colorFilter);
        this.drawableLeft.setColorFilter(colorFilter);
        this.drawableRight.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        int i = this.currentType;
        if (i == 4) {
            return AndroidUtilities.m50dp(42);
        }
        if (i == 3) {
            return AndroidUtilities.m50dp(100);
        }
        if (i == 2) {
            return AndroidUtilities.m50dp(74);
        }
        if (i == 1) {
            return AndroidUtilities.m50dp(40);
        }
        return AndroidUtilities.m50dp(120);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        int i = this.currentType;
        if (i == 4) {
            return AndroidUtilities.m50dp(42);
        }
        if (i == 3) {
            return AndroidUtilities.m50dp(100);
        }
        if (i == 2) {
            return AndroidUtilities.m50dp(74);
        }
        if (i == 1) {
            return AndroidUtilities.m50dp(40);
        }
        return AndroidUtilities.m50dp(180);
    }
}
