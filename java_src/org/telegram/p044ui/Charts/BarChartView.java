package org.telegram.p044ui.Charts;

import android.content.Context;
import android.graphics.Canvas;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.p044ui.Charts.data.ChartData;
import org.telegram.p044ui.Charts.view_data.BarViewData;
/* renamed from: org.telegram.ui.Charts.BarChartView */
/* loaded from: classes5.dex */
public class BarChartView extends BaseChartView<ChartData, BarViewData> {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.telegram.p044ui.Charts.BaseChartView
    public void drawSelection(Canvas canvas) {
    }

    @Override // org.telegram.p044ui.Charts.BaseChartView
    protected float getMinDistance() {
        return 0.1f;
    }

    public BarChartView(Context context) {
        super(context);
        this.superDraw = true;
        this.useAlphaSignature = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0091  */
    @Override // org.telegram.p044ui.Charts.BaseChartView
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void drawChart(android.graphics.Canvas r24) {
        /*
            Method dump skipped, instructions count: 434
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p044ui.Charts.BarChartView.drawChart(android.graphics.Canvas):void");
    }

    @Override // org.telegram.p044ui.Charts.BaseChartView
    protected void drawPickerChart(Canvas canvas) {
        int measuredHeight = getMeasuredHeight();
        int i = BaseChartView.PICKER_PADDING;
        int i2 = measuredHeight - i;
        int measuredHeight2 = (getMeasuredHeight() - this.pikerHeight) - i;
        int size = this.lines.size();
        if (this.chartData != 0) {
            for (int i3 = 0; i3 < size; i3++) {
                BarViewData barViewData = (BarViewData) this.lines.get(i3);
                if (barViewData.enabled || barViewData.alpha != BitmapDescriptorFactory.HUE_RED) {
                    barViewData.bottomLinePath.reset();
                    float[] fArr = this.chartData.xPercentage;
                    int length = fArr.length;
                    float f = 1.0f;
                    float f2 = fArr.length < 2 ? 1.0f : fArr[1] * this.pickerWidth;
                    int[] iArr = barViewData.line.f1602y;
                    float f3 = barViewData.alpha;
                    int i4 = 0;
                    int i5 = 0;
                    while (i4 < length) {
                        if (iArr[i4] >= 0) {
                            T t = this.chartData;
                            float f4 = t.xPercentage[i4] * this.pickerWidth;
                            float f5 = (f - ((iArr[i4] / (BaseChartView.ANIMATE_PICKER_SIZES ? this.pickerMaxHeight : t.maxValue)) * f3)) * (i2 - measuredHeight2);
                            float[] fArr2 = barViewData.linesPath;
                            int i6 = i5 + 1;
                            fArr2[i5] = f4;
                            int i7 = i6 + 1;
                            fArr2[i6] = f5;
                            int i8 = i7 + 1;
                            fArr2[i7] = f4;
                            i5 = i8 + 1;
                            fArr2[i8] = getMeasuredHeight() - this.chartBottom;
                        }
                        i4++;
                        f = 1.0f;
                    }
                    barViewData.paint.setStrokeWidth(f2 + 2.0f);
                    canvas.drawLines(barViewData.linesPath, 0, i5, barViewData.paint);
                }
            }
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // org.telegram.p044ui.Charts.BaseChartView
    public BarViewData createLineViewData(ChartData.Line line) {
        return new BarViewData(line);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.telegram.p044ui.Charts.BaseChartView, android.view.View
    public void onDraw(Canvas canvas) {
        tick();
        drawChart(canvas);
        drawBottomLine(canvas);
        this.tmpN = this.horizontalLines.size();
        int i = 0;
        while (true) {
            this.tmpI = i;
            int i2 = this.tmpI;
            if (i2 < this.tmpN) {
                drawHorizontalLines(canvas, this.horizontalLines.get(i2));
                drawSignaturesToHorizontalLines(canvas, this.horizontalLines.get(this.tmpI));
                i = this.tmpI + 1;
            } else {
                drawBottomSignature(canvas);
                drawPicker(canvas);
                drawSelection(canvas);
                super.onDraw(canvas);
                return;
            }
        }
    }
}
