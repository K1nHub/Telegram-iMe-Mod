package org.telegram.p043ui.Charts;

import android.content.Context;
import android.graphics.Canvas;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.p043ui.Charts.data.ChartData;
import org.telegram.p043ui.Charts.view_data.LineViewData;
/* renamed from: org.telegram.ui.Charts.LinearChartView */
/* loaded from: classes5.dex */
public class LinearChartView extends BaseChartView<ChartData, LineViewData> {
    public LinearChartView(Context context) {
        super(context);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.telegram.p043ui.Charts.BaseChartView
    public void init() {
        this.useMinHeight = true;
        super.init();
    }

    /* JADX WARN: Removed duplicated region for block: B:54:0x014a  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0152  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x015d  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0166  */
    @Override // org.telegram.p043ui.Charts.BaseChartView
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void drawChart(android.graphics.Canvas r19) {
        /*
            Method dump skipped, instructions count: 377
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Charts.LinearChartView.drawChart(android.graphics.Canvas):void");
    }

    @Override // org.telegram.p043ui.Charts.BaseChartView
    protected void drawPickerChart(Canvas canvas) {
        T t;
        getMeasuredHeight();
        getMeasuredHeight();
        int size = this.lines.size();
        if (this.chartData != 0) {
            for (int i = 0; i < size; i++) {
                LineViewData lineViewData = (LineViewData) this.lines.get(i);
                if (lineViewData.enabled || lineViewData.alpha != BitmapDescriptorFactory.HUE_RED) {
                    lineViewData.bottomLinePath.reset();
                    int length = this.chartData.xPercentage.length;
                    int[] iArr = lineViewData.line.f1808y;
                    lineViewData.chartPath.reset();
                    int i2 = 0;
                    for (int i3 = 0; i3 < length; i3++) {
                        if (iArr[i3] >= 0) {
                            float f = this.chartData.xPercentage[i3] * this.pickerWidth;
                            boolean z = BaseChartView.ANIMATE_PICKER_SIZES;
                            float f2 = z ? this.pickerMaxHeight : t.maxValue;
                            float f3 = z ? this.pickerMinHeight : t.minValue;
                            float f4 = (1.0f - ((iArr[i3] - f3) / (f2 - f3))) * this.pikerHeight;
                            if (BaseChartView.USE_LINES) {
                                if (i2 == 0) {
                                    float[] fArr = lineViewData.linesPathBottom;
                                    int i4 = i2 + 1;
                                    fArr[i2] = f;
                                    i2 = i4 + 1;
                                    fArr[i4] = f4;
                                } else {
                                    float[] fArr2 = lineViewData.linesPathBottom;
                                    int i5 = i2 + 1;
                                    fArr2[i2] = f;
                                    int i6 = i5 + 1;
                                    fArr2[i5] = f4;
                                    int i7 = i6 + 1;
                                    fArr2[i6] = f;
                                    i2 = i7 + 1;
                                    fArr2[i7] = f4;
                                }
                            } else if (i3 == 0) {
                                lineViewData.bottomLinePath.moveTo(f, f4);
                            } else {
                                lineViewData.bottomLinePath.lineTo(f, f4);
                            }
                        }
                    }
                    lineViewData.linesPathBottomSize = i2;
                    if (lineViewData.enabled || lineViewData.alpha != BitmapDescriptorFactory.HUE_RED) {
                        lineViewData.bottomLinePaint.setAlpha((int) (lineViewData.alpha * 255.0f));
                        if (BaseChartView.USE_LINES) {
                            canvas.drawLines(lineViewData.linesPathBottom, 0, lineViewData.linesPathBottomSize, lineViewData.bottomLinePaint);
                        } else {
                            canvas.drawPath(lineViewData.bottomLinePath, lineViewData.bottomLinePaint);
                        }
                    }
                }
            }
        }
    }

    @Override // org.telegram.p043ui.Charts.BaseChartView
    public LineViewData createLineViewData(ChartData.Line line) {
        return new LineViewData(line);
    }
}
