package org.telegram.p043ui.Charts.view_data;

import android.graphics.Paint;
import org.telegram.p043ui.Charts.BaseChartView;
import org.telegram.p043ui.Charts.data.ChartData;
/* renamed from: org.telegram.ui.Charts.view_data.StackLinearViewData */
/* loaded from: classes5.dex */
public class StackLinearViewData extends LineViewData {
    public StackLinearViewData(ChartData.Line line) {
        super(line);
        this.paint.setStyle(Paint.Style.FILL);
        if (BaseChartView.USE_LINES) {
            this.paint.setAntiAlias(false);
        }
    }
}
