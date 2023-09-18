package org.telegram.p043ui.Cells;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.view.View;
import androidx.core.graphics.ColorUtils;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p043ui.ActionBar.Theme;
/* renamed from: org.telegram.ui.Cells.DividerCell */
/* loaded from: classes3.dex */
public class DividerCell extends View {
    private boolean forceDarkTheme;
    private Paint paint;
    private Theme.ResourcesProvider resourcesProvider;

    public DividerCell(Context context) {
        this(context, null);
    }

    public DividerCell(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.paint = new Paint();
        this.resourcesProvider = resourcesProvider;
        setPadding(0, AndroidUtilities.m72dp(8), 0, AndroidUtilities.m72dp(8));
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        setMeasuredDimension(View.MeasureSpec.getSize(i), getPaddingTop() + getPaddingBottom() + 1);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.forceDarkTheme) {
            this.paint.setColor(ColorUtils.blendARGB(-16777216, Theme.getColor(Theme.key_voipgroup_dialogBackground, this.resourcesProvider), 0.2f));
        } else {
            this.paint.setColor(Theme.getColor(Theme.key_divider, this.resourcesProvider));
        }
        canvas.drawLine(getPaddingLeft(), getPaddingTop(), getWidth() - getPaddingRight(), getPaddingTop(), this.paint);
    }

    public void setForceDarkTheme(boolean z) {
        this.forceDarkTheme = z;
    }
}
