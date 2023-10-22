package org.telegram.p042ui.Components;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import androidx.viewpager.widget.ViewPager;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p042ui.ActionBar.Theme;
/* renamed from: org.telegram.ui.Components.BottomPagesView */
/* loaded from: classes6.dex */
public class BottomPagesView extends View {
    private int colorKey;
    private int currentPage;
    private int pagesCount;
    private Paint paint;
    private float progress;
    private RectF rect;
    private int scrollPosition;
    private int selectedColorKey;
    private ViewPager viewPager;

    public BottomPagesView(Context context, ViewPager viewPager, int i) {
        super(context);
        this.paint = new Paint(1);
        new DecelerateInterpolator();
        this.rect = new RectF();
        this.colorKey = -1;
        this.selectedColorKey = -1;
        this.viewPager = viewPager;
        this.pagesCount = i;
    }

    public void setPageOffset(int i, float f) {
        this.progress = f;
        this.scrollPosition = i;
        invalidate();
    }

    public void setCurrentPage(int i) {
        this.currentPage = i;
        invalidate();
    }

    public void setColor(int i, int i2) {
        this.colorKey = i;
        this.selectedColorKey = i2;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        AndroidUtilities.m102dp(5);
        int i = this.colorKey;
        if (i >= 0) {
            this.paint.setColor((Theme.getColor(i) & 16777215) | (-1275068416));
        } else {
            this.paint.setColor(Theme.getCurrentTheme().isDark() ? -11184811 : -4473925);
        }
        this.currentPage = this.viewPager.getCurrentItem();
        for (int i2 = 0; i2 < this.pagesCount; i2++) {
            if (i2 != this.currentPage) {
                int m102dp = AndroidUtilities.m102dp(11) * i2;
                this.rect.set(m102dp, BitmapDescriptorFactory.HUE_RED, m102dp + AndroidUtilities.m102dp(5), AndroidUtilities.m102dp(5));
                canvas.drawRoundRect(this.rect, AndroidUtilities.m103dp(2.5f), AndroidUtilities.m103dp(2.5f), this.paint);
            }
        }
        int i3 = this.selectedColorKey;
        if (i3 >= 0) {
            this.paint.setColor(Theme.getColor(i3));
        } else {
            this.paint.setColor(-13851168);
        }
        int m102dp2 = this.currentPage * AndroidUtilities.m102dp(11);
        if (this.progress != BitmapDescriptorFactory.HUE_RED) {
            if (this.scrollPosition >= this.currentPage) {
                this.rect.set(m102dp2, BitmapDescriptorFactory.HUE_RED, m102dp2 + AndroidUtilities.m102dp(5) + (AndroidUtilities.m102dp(11) * this.progress), AndroidUtilities.m102dp(5));
            } else {
                this.rect.set(m102dp2 - (AndroidUtilities.m102dp(11) * (1.0f - this.progress)), BitmapDescriptorFactory.HUE_RED, m102dp2 + AndroidUtilities.m102dp(5), AndroidUtilities.m102dp(5));
            }
        } else {
            this.rect.set(m102dp2, BitmapDescriptorFactory.HUE_RED, m102dp2 + AndroidUtilities.m102dp(5), AndroidUtilities.m102dp(5));
        }
        canvas.drawRoundRect(this.rect, AndroidUtilities.m103dp(2.5f), AndroidUtilities.m103dp(2.5f), this.paint);
    }
}
