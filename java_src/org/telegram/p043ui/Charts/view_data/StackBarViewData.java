package org.telegram.p043ui.Charts.view_data;

import android.graphics.Paint;
import androidx.core.graphics.ColorUtils;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Charts.data.ChartData;
/* renamed from: org.telegram.ui.Charts.view_data.StackBarViewData */
/* loaded from: classes5.dex */
public class StackBarViewData extends LineViewData {
    public int blendColor;
    private Theme.ResourcesProvider resourcesProvider;
    public final Paint unselectedPaint;

    @Override // org.telegram.p043ui.Charts.view_data.LineViewData
    public void updateColors() {
        super.updateColors();
        this.blendColor = ColorUtils.blendARGB(Theme.getColor(Theme.key_windowBackgroundWhite, this.resourcesProvider), this.lineColor, 0.3f);
    }

    public StackBarViewData(ChartData.Line line, Theme.ResourcesProvider resourcesProvider) {
        super(line);
        Paint paint = new Paint();
        this.unselectedPaint = paint;
        this.blendColor = 0;
        this.resourcesProvider = resourcesProvider;
        this.paint.setStrokeWidth(AndroidUtilities.dpf2(1.0f));
        this.paint.setStyle(Paint.Style.STROKE);
        paint.setStyle(Paint.Style.STROKE);
        this.paint.setAntiAlias(false);
    }
}
