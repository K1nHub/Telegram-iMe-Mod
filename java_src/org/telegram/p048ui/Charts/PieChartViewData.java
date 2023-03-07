package org.telegram.p048ui.Charts;

import android.animation.Animator;
import org.telegram.p048ui.Charts.data.ChartData;
import org.telegram.p048ui.Charts.view_data.StackLinearViewData;
/* renamed from: org.telegram.ui.Charts.PieChartViewData */
/* loaded from: classes5.dex */
public class PieChartViewData extends StackLinearViewData {
    Animator animator;
    float drawingPart;
    float selectionA;

    public PieChartViewData(ChartData.Line line) {
        super(line);
    }
}
