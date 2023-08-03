package org.telegram.p043ui.Cells;

import android.content.Context;
import android.graphics.Canvas;
import android.view.View;
import android.widget.TextView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p043ui.ActionBar.Theme;
/* renamed from: org.telegram.ui.Cells.HashtagSearchCell */
/* loaded from: classes5.dex */
public class HashtagSearchCell extends TextView {
    private boolean needDivider;

    public HashtagSearchCell(Context context) {
        super(context);
        setGravity(16);
        setPadding(AndroidUtilities.m72dp(16), 0, AndroidUtilities.m72dp(16), 0);
        setTextSize(1, 17.0f);
        setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText));
    }

    public void setNeedDivider(boolean z) {
        this.needDivider = z;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onMeasure(int i, int i2) {
        setMeasuredDimension(View.MeasureSpec.getSize(i), AndroidUtilities.m72dp(48) + 1);
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.needDivider) {
            canvas.drawLine(BitmapDescriptorFactory.HUE_RED, getHeight() - 1, getWidth(), getHeight() - 1, Theme.dividerPaint);
        }
    }
}
