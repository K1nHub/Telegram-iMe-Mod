package com.iMe.p031ui.custom;

import android.content.Context;
import android.util.AttributeSet;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.p043ui.Charts.BaseChartView;
import org.telegram.p043ui.StatisticActivity;
/* compiled from: ChartCellView.kt */
/* renamed from: com.iMe.ui.custom.ChartCellView */
/* loaded from: classes3.dex */
public final class ChartCellView extends StatisticActivity.BaseChartCell {
    @Override // org.telegram.p043ui.StatisticActivity.BaseChartCell
    public void loadData(StatisticActivity.ChartViewData chartViewData) {
    }

    @Override // org.telegram.p043ui.StatisticActivity.BaseChartCell
    public void onZoomed() {
    }

    @Override // org.telegram.p043ui.StatisticActivity.BaseChartCell
    public void zoomCanceled() {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChartCellView(Context context, AttributeSet attributeSet) {
        super(context, 0, new BaseChartView.SharedUiComponents(), attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
    }
}
