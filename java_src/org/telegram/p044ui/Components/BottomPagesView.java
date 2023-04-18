package org.telegram.p044ui.Components;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import androidx.viewpager.widget.ViewPager;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p044ui.ActionBar.Theme;
/* renamed from: org.telegram.ui.Components.BottomPagesView */
/* loaded from: classes6.dex */
public class BottomPagesView extends View {
    private String colorKey;
    private int currentPage;
    private int pagesCount;
    private Paint paint;
    private float progress;
    private RectF rect;
    private int scrollPosition;
    private String selectedColorKey;
    private ViewPager viewPager;

    public BottomPagesView(Context context, ViewPager viewPager, int i) {
        super(context);
        this.paint = new Paint(1);
        new DecelerateInterpolator();
        this.rect = new RectF();
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

    public void setColor(String str, String str2) {
        this.colorKey = str;
        this.selectedColorKey = str2;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        AndroidUtilities.m50dp(5);
        String str = this.colorKey;
        if (str != null) {
            this.paint.setColor((Theme.getColor(str) & 16777215) | (-1275068416));
        } else {
            this.paint.setColor(Theme.getCurrentTheme().isDark() ? -11184811 : -4473925);
        }
        this.currentPage = this.viewPager.getCurrentItem();
        for (int i = 0; i < this.pagesCount; i++) {
            if (i != this.currentPage) {
                int m50dp = AndroidUtilities.m50dp(11) * i;
                this.rect.set(m50dp, BitmapDescriptorFactory.HUE_RED, m50dp + AndroidUtilities.m50dp(5), AndroidUtilities.m50dp(5));
                canvas.drawRoundRect(this.rect, AndroidUtilities.m51dp(2.5f), AndroidUtilities.m51dp(2.5f), this.paint);
            }
        }
        String str2 = this.selectedColorKey;
        if (str2 != null) {
            this.paint.setColor(Theme.getColor(str2));
        } else {
            this.paint.setColor(-13851168);
        }
        int m50dp2 = this.currentPage * AndroidUtilities.m50dp(11);
        if (this.progress != BitmapDescriptorFactory.HUE_RED) {
            if (this.scrollPosition >= this.currentPage) {
                this.rect.set(m50dp2, BitmapDescriptorFactory.HUE_RED, m50dp2 + AndroidUtilities.m50dp(5) + (AndroidUtilities.m50dp(11) * this.progress), AndroidUtilities.m50dp(5));
            } else {
                this.rect.set(m50dp2 - (AndroidUtilities.m50dp(11) * (1.0f - this.progress)), BitmapDescriptorFactory.HUE_RED, m50dp2 + AndroidUtilities.m50dp(5), AndroidUtilities.m50dp(5));
            }
        } else {
            this.rect.set(m50dp2, BitmapDescriptorFactory.HUE_RED, m50dp2 + AndroidUtilities.m50dp(5), AndroidUtilities.m50dp(5));
        }
        canvas.drawRoundRect(this.rect, AndroidUtilities.m51dp(2.5f), AndroidUtilities.m51dp(2.5f), this.paint);
    }
}
