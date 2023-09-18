package org.telegram.p043ui.Charts;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Path;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p043ui.Charts.data.ChartData;
import org.telegram.p043ui.Charts.data.StackLinearChartData;
import org.telegram.p043ui.Charts.view_data.StackLinearViewData;
/* renamed from: org.telegram.ui.Charts.StackLinearChartView */
/* loaded from: classes3.dex */
public class StackLinearChartView<T extends StackLinearViewData> extends BaseChartView<StackLinearChartData, T> {
    private float[] mapPoints;
    private Matrix matrix;
    Path ovalPath;
    boolean[] skipPoints;
    float[] startFromY;

    @Override // org.telegram.p043ui.Charts.BaseChartView
    public int findMaxValue(int i, int i2) {
        return 100;
    }

    @Override // org.telegram.p043ui.Charts.BaseChartView
    protected float getMinDistance() {
        return 0.1f;
    }

    public StackLinearChartView(Context context) {
        super(context);
        this.matrix = new Matrix();
        this.mapPoints = new float[2];
        this.ovalPath = new Path();
        this.superDraw = true;
        this.useAlphaSignature = true;
        this.drawPointOnSelection = false;
    }

    @Override // org.telegram.p043ui.Charts.BaseChartView
    public T createLineViewData(ChartData.Line line) {
        return (T) new StackLinearViewData(line);
    }

    /* JADX WARN: Removed duplicated region for block: B:111:0x0396  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x03e0  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x03e6  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x03e8  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x03ec A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:141:0x042b  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x0440  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x0444  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x044d  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x0459  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x01f4  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01fa  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x020e A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x023e  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0241  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x024e A[ADDED_TO_REGION] */
    @Override // org.telegram.p043ui.Charts.BaseChartView
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void drawChart(android.graphics.Canvas r38) {
        /*
            Method dump skipped, instructions count: 1559
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Charts.StackLinearChartView.drawChart(android.graphics.Canvas):void");
    }

    private int quarterForPoint(float f, float f2) {
        float centerX = this.chartArea.centerX();
        float centerY = this.chartArea.centerY() + AndroidUtilities.m72dp(16);
        int i = (f > centerX ? 1 : (f == centerX ? 0 : -1));
        if (i < 0 || f2 > centerY) {
            if (i < 0 || f2 < centerY) {
                return (f >= centerX || f2 < centerY) ? 3 : 2;
            }
            return 1;
        }
        return 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x00e1 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00ef  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x010e A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0146  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x015a  */
    @Override // org.telegram.p043ui.Charts.BaseChartView
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void drawPickerChart(android.graphics.Canvas r20) {
        /*
            Method dump skipped, instructions count: 416
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Charts.StackLinearChartView.drawPickerChart(android.graphics.Canvas):void");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.telegram.p043ui.Charts.BaseChartView, android.view.View
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

    /* JADX WARN: Removed duplicated region for block: B:46:0x012f  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x013a  */
    @Override // org.telegram.p043ui.Charts.BaseChartView
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void fillTransitionParams(org.telegram.p043ui.Charts.view_data.TransitionParams r18) {
        /*
            Method dump skipped, instructions count: 338
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Charts.StackLinearChartView.fillTransitionParams(org.telegram.ui.Charts.view_data.TransitionParams):void");
    }
}
