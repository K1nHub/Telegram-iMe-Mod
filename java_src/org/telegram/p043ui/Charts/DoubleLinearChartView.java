package org.telegram.p043ui.Charts;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Iterator;
import org.telegram.p043ui.Charts.data.ChartData;
import org.telegram.p043ui.Charts.data.DoubleLinearChartData;
import org.telegram.p043ui.Charts.view_data.ChartHorizontalLinesData;
import org.telegram.p043ui.Charts.view_data.LineViewData;
import org.telegram.p043ui.Charts.view_data.TransitionParams;
/* renamed from: org.telegram.ui.Charts.DoubleLinearChartView */
/* loaded from: classes3.dex */
public class DoubleLinearChartView extends BaseChartView<DoubleLinearChartData, LineViewData> {
    public DoubleLinearChartView(Context context) {
        super(context);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.telegram.p043ui.Charts.BaseChartView
    public void init() {
        this.useMinHeight = true;
        super.init();
    }

    @Override // org.telegram.p043ui.Charts.BaseChartView
    protected void drawChart(Canvas canvas) {
        float f;
        float f2;
        int i;
        float f3;
        if (this.chartData != 0) {
            float f4 = this.chartWidth;
            ChartPickerDelegate chartPickerDelegate = this.pickerDelegate;
            float f5 = chartPickerDelegate.pickerEnd;
            float f6 = chartPickerDelegate.pickerStart;
            float f7 = f4 / (f5 - f6);
            float f8 = (f6 * f7) - BaseChartView.HORIZONTAL_PADDING;
            canvas.save();
            int i2 = this.transitionMode;
            int i3 = 2;
            float f9 = BitmapDescriptorFactory.HUE_RED;
            float f10 = 1.0f;
            int i4 = 1;
            if (i2 == 2) {
                TransitionParams transitionParams = this.transitionParams;
                float f11 = transitionParams.progress;
                f = f11 > 0.5f ? 0.0f : 1.0f - (f11 * 2.0f);
                canvas.scale((f11 * 2.0f) + 1.0f, 1.0f, transitionParams.f1722pX, transitionParams.f1723pY);
            } else if (i2 == 1) {
                float f12 = this.transitionParams.progress;
                f = f12 < 0.3f ? 0.0f : f12;
                canvas.save();
                TransitionParams transitionParams2 = this.transitionParams;
                float f13 = transitionParams2.progress;
                canvas.scale(f13, f13, transitionParams2.f1722pX, transitionParams2.f1723pY);
            } else {
                f = i2 == 3 ? this.transitionParams.progress : 1.0f;
            }
            int i5 = 0;
            int i6 = 0;
            while (i6 < this.lines.size()) {
                LineViewData lineViewData = (LineViewData) this.lines.get(i6);
                if (lineViewData.enabled || lineViewData.alpha != f9) {
                    int[] iArr = lineViewData.line.f1721y;
                    lineViewData.chartPath.reset();
                    T t = this.chartData;
                    int i7 = ((int) (BaseChartView.HORIZONTAL_PADDING / (((DoubleLinearChartData) t).xPercentage.length < i3 ? f10 : ((DoubleLinearChartData) t).xPercentage[i4] * f7))) + i4;
                    int max = Math.max(i5, this.startXIndex - i7);
                    int min = Math.min(((DoubleLinearChartData) this.chartData).xPercentage.length - i4, this.endXIndex + i7);
                    int i8 = i5;
                    int i9 = i4;
                    while (max <= min) {
                        if (iArr[max] < 0) {
                            f3 = f7;
                        } else {
                            T t2 = this.chartData;
                            float f14 = (((DoubleLinearChartData) t2).xPercentage[max] * f7) - f8;
                            float f15 = iArr[max] * ((DoubleLinearChartData) t2).linesK[i6];
                            float f16 = this.currentMinHeight;
                            float f17 = (f15 - f16) / (this.currentMaxHeight - f16);
                            float strokeWidth = lineViewData.paint.getStrokeWidth() / 2.0f;
                            f3 = f7;
                            float measuredHeight = ((getMeasuredHeight() - this.chartBottom) - strokeWidth) - (f17 * (((getMeasuredHeight() - this.chartBottom) - BaseChartView.SIGNATURE_TEXT_HEIGHT) - strokeWidth));
                            if (BaseChartView.USE_LINES) {
                                if (i8 == 0) {
                                    float[] fArr = lineViewData.linesPath;
                                    int i10 = i8 + 1;
                                    fArr[i8] = f14;
                                    i8 = i10 + 1;
                                    fArr[i10] = measuredHeight;
                                } else {
                                    float[] fArr2 = lineViewData.linesPath;
                                    int i11 = i8 + 1;
                                    fArr2[i8] = f14;
                                    int i12 = i11 + 1;
                                    fArr2[i11] = measuredHeight;
                                    int i13 = i12 + 1;
                                    fArr2[i12] = f14;
                                    i8 = i13 + 1;
                                    fArr2[i13] = measuredHeight;
                                }
                            } else if (i9 != 0) {
                                lineViewData.chartPath.moveTo(f14, measuredHeight);
                                i9 = 0;
                            } else {
                                lineViewData.chartPath.lineTo(f14, measuredHeight);
                            }
                        }
                        max++;
                        f7 = f3;
                    }
                    f2 = f7;
                    if (this.endXIndex - this.startXIndex > 100) {
                        lineViewData.paint.setStrokeCap(Paint.Cap.SQUARE);
                    } else {
                        lineViewData.paint.setStrokeCap(Paint.Cap.ROUND);
                    }
                    lineViewData.paint.setAlpha((int) (lineViewData.alpha * 255.0f * f));
                    if (BaseChartView.USE_LINES) {
                        i = 0;
                        canvas.drawLines(lineViewData.linesPath, 0, i8, lineViewData.paint);
                    } else {
                        canvas.drawPath(lineViewData.chartPath, lineViewData.paint);
                        i = 0;
                    }
                } else {
                    f2 = f7;
                    i = i5;
                }
                i6++;
                i5 = i;
                f7 = f2;
                i3 = 2;
                f9 = BitmapDescriptorFactory.HUE_RED;
                f10 = 1.0f;
                i4 = 1;
            }
            canvas.restore();
        }
    }

    @Override // org.telegram.p043ui.Charts.BaseChartView
    protected void drawPickerChart(Canvas canvas) {
        int measuredHeight = getMeasuredHeight();
        int i = BaseChartView.PICKER_PADDING;
        int i2 = measuredHeight - i;
        int measuredHeight2 = (getMeasuredHeight() - this.pikerHeight) - i;
        int size = this.lines.size();
        if (this.chartData != 0) {
            for (int i3 = 0; i3 < size; i3++) {
                LineViewData lineViewData = (LineViewData) this.lines.get(i3);
                if (lineViewData.enabled || lineViewData.alpha != BitmapDescriptorFactory.HUE_RED) {
                    lineViewData.bottomLinePath.reset();
                    int length = ((DoubleLinearChartData) this.chartData).xPercentage.length;
                    int[] iArr = lineViewData.line.f1721y;
                    lineViewData.chartPath.reset();
                    int i4 = 0;
                    for (int i5 = 0; i5 < length; i5++) {
                        if (iArr[i5] >= 0) {
                            T t = this.chartData;
                            float f = ((DoubleLinearChartData) t).xPercentage[i5] * this.pickerWidth;
                            float f2 = (1.0f - ((iArr[i5] * ((DoubleLinearChartData) t).linesK[i3]) / (BaseChartView.ANIMATE_PICKER_SIZES ? this.pickerMaxHeight : ((DoubleLinearChartData) t).maxValue))) * (i2 - measuredHeight2);
                            if (BaseChartView.USE_LINES) {
                                if (i4 == 0) {
                                    float[] fArr = lineViewData.linesPathBottom;
                                    int i6 = i4 + 1;
                                    fArr[i4] = f;
                                    i4 = i6 + 1;
                                    fArr[i6] = f2;
                                } else {
                                    float[] fArr2 = lineViewData.linesPathBottom;
                                    int i7 = i4 + 1;
                                    fArr2[i4] = f;
                                    int i8 = i7 + 1;
                                    fArr2[i7] = f2;
                                    int i9 = i8 + 1;
                                    fArr2[i8] = f;
                                    i4 = i9 + 1;
                                    fArr2[i9] = f2;
                                }
                            } else if (i5 == 0) {
                                lineViewData.bottomLinePath.moveTo(f, f2);
                            } else {
                                lineViewData.bottomLinePath.lineTo(f, f2);
                            }
                        }
                    }
                    lineViewData.linesPathBottomSize = i4;
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

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.telegram.p043ui.Charts.BaseChartView
    public void drawSelection(Canvas canvas) {
        int i = this.selectedIndex;
        if (i < 0 || !this.legendShowing) {
            return;
        }
        float f = this.chartWidth;
        ChartPickerDelegate chartPickerDelegate = this.pickerDelegate;
        float f2 = chartPickerDelegate.pickerEnd;
        float f3 = chartPickerDelegate.pickerStart;
        float f4 = f / (f2 - f3);
        float f5 = (((DoubleLinearChartData) this.chartData).xPercentage[i] * f4) - ((f3 * f4) - BaseChartView.HORIZONTAL_PADDING);
        this.selectedLinePaint.setAlpha((int) (this.chartActiveLineAlpha * this.selectionA));
        canvas.drawLine(f5, BitmapDescriptorFactory.HUE_RED, f5, this.chartArea.bottom, this.selectedLinePaint);
        this.tmpN = this.lines.size();
        int i2 = 0;
        while (true) {
            this.tmpI = i2;
            int i3 = this.tmpI;
            if (i3 >= this.tmpN) {
                return;
            }
            LineViewData lineViewData = (LineViewData) this.lines.get(i3);
            if (lineViewData.enabled || lineViewData.alpha != BitmapDescriptorFactory.HUE_RED) {
                float f6 = lineViewData.line.f1721y[this.selectedIndex] * ((DoubleLinearChartData) this.chartData).linesK[this.tmpI];
                float f7 = this.currentMinHeight;
                float measuredHeight = (getMeasuredHeight() - this.chartBottom) - (((f6 - f7) / (this.currentMaxHeight - f7)) * ((getMeasuredHeight() - this.chartBottom) - BaseChartView.SIGNATURE_TEXT_HEIGHT));
                lineViewData.selectionPaint.setAlpha((int) (lineViewData.alpha * 255.0f * this.selectionA));
                this.selectionBackgroundPaint.setAlpha((int) (lineViewData.alpha * 255.0f * this.selectionA));
                canvas.drawPoint(f5, measuredHeight, lineViewData.selectionPaint);
                canvas.drawPoint(f5, measuredHeight, this.selectionBackgroundPaint);
            }
            i2 = this.tmpI + 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0076  */
    @Override // org.telegram.p043ui.Charts.BaseChartView
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void drawSignaturesToHorizontalLines(android.graphics.Canvas r17, org.telegram.p043ui.Charts.view_data.ChartHorizontalLinesData r18) {
        /*
            Method dump skipped, instructions count: 324
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Charts.DoubleLinearChartView.drawSignaturesToHorizontalLines(android.graphics.Canvas, org.telegram.ui.Charts.view_data.ChartHorizontalLinesData):void");
    }

    @Override // org.telegram.p043ui.Charts.BaseChartView
    public LineViewData createLineViewData(ChartData.Line line) {
        return new LineViewData(line);
    }

    @Override // org.telegram.p043ui.Charts.BaseChartView
    public int findMaxValue(int i, int i2) {
        if (this.lines.isEmpty()) {
            return 0;
        }
        int size = this.lines.size();
        int i3 = 0;
        for (int i4 = 0; i4 < size; i4++) {
            int rMaxQ = ((LineViewData) this.lines.get(i4)).enabled ? (int) (((DoubleLinearChartData) this.chartData).lines.get(i4).segmentTree.rMaxQ(i, i2) * ((DoubleLinearChartData) this.chartData).linesK[i4]) : 0;
            if (rMaxQ > i3) {
                i3 = rMaxQ;
            }
        }
        return i3;
    }

    @Override // org.telegram.p043ui.Charts.BaseChartView
    public int findMinValue(int i, int i2) {
        if (this.lines.isEmpty()) {
            return 0;
        }
        int size = this.lines.size();
        int i3 = Integer.MAX_VALUE;
        for (int i4 = 0; i4 < size; i4++) {
            int rMinQ = ((LineViewData) this.lines.get(i4)).enabled ? (int) (((DoubleLinearChartData) this.chartData).lines.get(i4).segmentTree.rMinQ(i, i2) * ((DoubleLinearChartData) this.chartData).linesK[i4]) : Integer.MAX_VALUE;
            if (rMinQ < i3) {
                i3 = rMinQ;
            }
        }
        return i3;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.telegram.p043ui.Charts.BaseChartView
    public void updatePickerMinMaxHeight() {
        int i;
        if (BaseChartView.ANIMATE_PICKER_SIZES) {
            int i2 = 0;
            if (((LineViewData) this.lines.get(0)).enabled) {
                super.updatePickerMinMaxHeight();
                return;
            }
            Iterator it = this.lines.iterator();
            while (it.hasNext()) {
                LineViewData lineViewData = (LineViewData) it.next();
                if (lineViewData.enabled && (i = lineViewData.line.maxValue) > i2) {
                    i2 = i;
                }
            }
            if (this.lines.size() > 1) {
                i2 = (int) (i2 * ((DoubleLinearChartData) this.chartData).linesK[1]);
            }
            if (i2 > 0) {
                float f = i2;
                if (f != this.animatedToPickerMaxHeight) {
                    this.animatedToPickerMaxHeight = f;
                    Animator animator = this.pickerAnimator;
                    if (animator != null) {
                        animator.cancel();
                    }
                    ValueAnimator createAnimator = createAnimator(this.pickerMaxHeight, this.animatedToPickerMaxHeight, new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Charts.DoubleLinearChartView.1
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public void onAnimationUpdate(ValueAnimator valueAnimator) {
                            DoubleLinearChartView.this.pickerMaxHeight = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                            DoubleLinearChartView doubleLinearChartView = DoubleLinearChartView.this;
                            doubleLinearChartView.invalidatePickerChart = true;
                            doubleLinearChartView.invalidate();
                        }
                    });
                    this.pickerAnimator = createAnimator;
                    createAnimator.start();
                }
            }
        }
    }

    @Override // org.telegram.p043ui.Charts.BaseChartView
    protected ChartHorizontalLinesData createHorizontalLinesData(int i, int i2) {
        T t = this.chartData;
        float f = 1.0f;
        if (((DoubleLinearChartData) t).linesK.length >= 2) {
            f = ((DoubleLinearChartData) t).linesK[((DoubleLinearChartData) t).linesK[0] == 1.0f ? (char) 1 : (char) 0];
        }
        return new ChartHorizontalLinesData(i, i2, this.useMinHeight, f);
    }
}
