package org.telegram.p043ui.Charts;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.os.Build;
import android.text.TextPaint;
import android.view.View;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p043ui.Charts.data.ChartData;
import org.telegram.p043ui.Charts.data.StackLinearChartData;
import org.telegram.p043ui.Charts.view_data.ChartHorizontalLinesData;
import org.telegram.p043ui.Charts.view_data.LegendSignatureView;
import org.telegram.p043ui.Charts.view_data.LineViewData;
import org.telegram.p043ui.Charts.view_data.PieLegendView;
import org.telegram.p043ui.Charts.view_data.TransitionParams;
/* renamed from: org.telegram.ui.Charts.PieChartView */
/* loaded from: classes5.dex */
public class PieChartView extends StackLinearChartView<PieChartViewData> {
    float MAX_TEXT_SIZE;
    float MIN_TEXT_SIZE;
    int currentSelection;
    float[] darawingValuesPercentage;
    float emptyDataAlpha;
    boolean isEmpty;
    int lastEndIndex;
    int lastStartIndex;
    String[] lookupTable;
    int oldW;
    PieLegendView pieLegendView;
    RectF rectF;
    float sum;
    TextPaint textPaint;
    float[] values;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.telegram.p043ui.Charts.BaseChartView
    public void drawBottomLine(Canvas canvas) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.telegram.p043ui.Charts.BaseChartView
    public void drawBottomSignature(Canvas canvas) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.telegram.p043ui.Charts.BaseChartView
    public void drawHorizontalLines(Canvas canvas, ChartHorizontalLinesData chartHorizontalLinesData) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.telegram.p043ui.Charts.BaseChartView
    public void drawSelection(Canvas canvas) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.telegram.p043ui.Charts.BaseChartView
    public void drawSignaturesToHorizontalLines(Canvas canvas, ChartHorizontalLinesData chartHorizontalLinesData) {
    }

    public PieChartView(Context context) {
        super(context);
        this.currentSelection = -1;
        this.rectF = new RectF();
        this.MIN_TEXT_SIZE = AndroidUtilities.m104dp(9);
        this.MAX_TEXT_SIZE = AndroidUtilities.m104dp(13);
        this.lookupTable = new String[101];
        this.emptyDataAlpha = 1.0f;
        this.oldW = 0;
        this.lastStartIndex = -1;
        this.lastEndIndex = -1;
        for (int i = 1; i <= 100; i++) {
            this.lookupTable[i] = i + "%";
        }
        TextPaint textPaint = new TextPaint(1);
        this.textPaint = textPaint;
        textPaint.setTextAlign(Paint.Align.CENTER);
        this.textPaint.setColor(-1);
        this.textPaint.setTypeface(Typeface.create("sans-serif-medium", 0));
        this.canCaptureChartSelection = true;
    }

    @Override // org.telegram.p043ui.Charts.StackLinearChartView, org.telegram.p043ui.Charts.BaseChartView
    protected void drawChart(Canvas canvas) {
        int i;
        float f;
        int i2;
        float f2;
        Canvas canvas2;
        int i3;
        float f3;
        char c;
        int i4;
        float f4;
        int i5;
        Canvas canvas3 = canvas;
        if (this.chartData == 0) {
            return;
        }
        if (canvas3 != null) {
            canvas.save();
        }
        char c2 = 255;
        if (this.transitionMode == 1) {
            float f5 = this.transitionParams.progress;
            i = (int) (f5 * f5 * 255.0f);
        } else {
            i = 255;
        }
        boolean z = this.isEmpty;
        float f6 = 1.0f;
        float f7 = BitmapDescriptorFactory.HUE_RED;
        if (z) {
            float f8 = this.emptyDataAlpha;
            if (f8 != BitmapDescriptorFactory.HUE_RED) {
                float f9 = f8 - 0.12f;
                this.emptyDataAlpha = f9;
                if (f9 < BitmapDescriptorFactory.HUE_RED) {
                    this.emptyDataAlpha = BitmapDescriptorFactory.HUE_RED;
                }
                invalidate();
            }
        } else {
            float f10 = this.emptyDataAlpha;
            if (f10 != 1.0f) {
                float f11 = f10 + 0.12f;
                this.emptyDataAlpha = f11;
                if (f11 > 1.0f) {
                    this.emptyDataAlpha = 1.0f;
                }
                invalidate();
            }
        }
        float f12 = this.emptyDataAlpha;
        int i6 = (int) (i * f12);
        float f13 = (f12 * 0.6f) + 0.4f;
        if (canvas3 != null) {
            canvas3.scale(f13, f13, this.chartArea.centerX(), this.chartArea.centerY());
        }
        float height = (int) ((this.chartArea.width() > this.chartArea.height() ? this.chartArea.height() : this.chartArea.width()) * 0.45f);
        this.rectF.set(this.chartArea.centerX() - height, (this.chartArea.centerY() + AndroidUtilities.m104dp(16)) - height, this.chartArea.centerX() + height, this.chartArea.centerY() + AndroidUtilities.m104dp(16) + height);
        int size = this.lines.size();
        float f14 = 0.0f;
        for (int i7 = 0; i7 < size; i7++) {
            f14 += ((PieChartViewData) this.lines.get(i7)).drawingPart * ((PieChartViewData) this.lines.get(i7)).alpha;
        }
        if (f14 == BitmapDescriptorFactory.HUE_RED) {
            if (canvas3 != null) {
                canvas.restore();
                return;
            }
            return;
        }
        float f15 = -90.0f;
        float f16 = -90.0f;
        int i8 = 0;
        while (true) {
            f = 2.0f;
            i2 = 8;
            if (i8 >= size) {
                break;
            }
            if (((PieChartViewData) this.lines.get(i8)).alpha > f7 || ((PieChartViewData) this.lines.get(i8)).enabled) {
                ((PieChartViewData) this.lines.get(i8)).paint.setAlpha(i6);
                float f17 = (((PieChartViewData) this.lines.get(i8)).drawingPart / f14) * ((PieChartViewData) this.lines.get(i8)).alpha;
                this.darawingValuesPercentage[i8] = f17;
                if (f17 != f7) {
                    if (canvas3 != null) {
                        canvas.save();
                    }
                    double d = f16 + ((f17 / 2.0f) * 360.0f);
                    if (((PieChartViewData) this.lines.get(i8)).selectionA > f7) {
                        float interpolation = BaseChartView.INTERPOLATOR.getInterpolation(((PieChartViewData) this.lines.get(i8)).selectionA);
                        if (canvas3 != null) {
                            f4 = f14;
                            double d2 = interpolation;
                            i4 = i6;
                            canvas3.translate((float) (Math.cos(Math.toRadians(d)) * AndroidUtilities.m104dp(8) * d2), (float) (Math.sin(Math.toRadians(d)) * AndroidUtilities.m104dp(8) * d2));
                            ((PieChartViewData) this.lines.get(i8)).paint.setStyle(Paint.Style.FILL_AND_STROKE);
                            ((PieChartViewData) this.lines.get(i8)).paint.setStrokeWidth(1.0f);
                            ((PieChartViewData) this.lines.get(i8)).paint.setAntiAlias(!BaseChartView.USE_LINES);
                            if (canvas3 != null || this.transitionMode == 1) {
                                i5 = i8;
                            } else {
                                i5 = i8;
                                canvas.drawArc(this.rectF, f16, f17 * 360.0f, true, ((PieChartViewData) this.lines.get(i8)).paint);
                                ((PieChartViewData) this.lines.get(i5)).paint.setStyle(Paint.Style.STROKE);
                                canvas.restore();
                            }
                            ((PieChartViewData) this.lines.get(i5)).paint.setAlpha(255);
                            f16 += f17 * 360.0f;
                            i8 = i5 + 1;
                            f14 = f4;
                            i6 = i4;
                            f7 = BitmapDescriptorFactory.HUE_RED;
                        }
                    }
                    i4 = i6;
                    f4 = f14;
                    ((PieChartViewData) this.lines.get(i8)).paint.setStyle(Paint.Style.FILL_AND_STROKE);
                    ((PieChartViewData) this.lines.get(i8)).paint.setStrokeWidth(1.0f);
                    ((PieChartViewData) this.lines.get(i8)).paint.setAntiAlias(!BaseChartView.USE_LINES);
                    if (canvas3 != null) {
                    }
                    i5 = i8;
                    ((PieChartViewData) this.lines.get(i5)).paint.setAlpha(255);
                    f16 += f17 * 360.0f;
                    i8 = i5 + 1;
                    f14 = f4;
                    i6 = i4;
                    f7 = BitmapDescriptorFactory.HUE_RED;
                }
            }
            i5 = i8;
            i4 = i6;
            f4 = f14;
            i8 = i5 + 1;
            f14 = f4;
            i6 = i4;
            f7 = BitmapDescriptorFactory.HUE_RED;
        }
        int i9 = i6;
        float f18 = f14;
        if (canvas3 != null) {
            int i10 = 0;
            while (i10 < size) {
                if (((PieChartViewData) this.lines.get(i10)).alpha > BitmapDescriptorFactory.HUE_RED || ((PieChartViewData) this.lines.get(i10)).enabled) {
                    float f19 = (((PieChartViewData) this.lines.get(i10)).drawingPart * ((PieChartViewData) this.lines.get(i10)).alpha) / f18;
                    canvas.save();
                    double d3 = f15 + ((f19 / f) * 360.0f);
                    if (((PieChartViewData) this.lines.get(i10)).selectionA > BitmapDescriptorFactory.HUE_RED) {
                        double interpolation2 = BaseChartView.INTERPOLATOR.getInterpolation(((PieChartViewData) this.lines.get(i10)).selectionA);
                        canvas3.translate((float) (Math.cos(Math.toRadians(d3)) * AndroidUtilities.m104dp(i2) * interpolation2), (float) (Math.sin(Math.toRadians(d3)) * AndroidUtilities.m104dp(i2) * interpolation2));
                    }
                    int i11 = (int) (100.0f * f19);
                    if (f19 < 0.02f || i11 <= 0 || i11 > 100) {
                        f2 = f19;
                        canvas2 = canvas3;
                        i3 = i9;
                        f3 = 2.0f;
                    } else {
                        float width = (float) (this.rectF.width() * 0.42f * Math.sqrt(f6 - f19));
                        this.textPaint.setTextSize(this.MIN_TEXT_SIZE + (this.MAX_TEXT_SIZE * f19));
                        i3 = i9;
                        this.textPaint.setAlpha((int) (i3 * ((PieChartViewData) this.lines.get(i10)).alpha));
                        double d4 = width;
                        f2 = f19;
                        f3 = 2.0f;
                        canvas2 = canvas;
                        canvas2.drawText(this.lookupTable[i11], (float) (this.rectF.centerX() + (Math.cos(Math.toRadians(d3)) * d4)), ((float) (this.rectF.centerY() + (d4 * Math.sin(Math.toRadians(d3))))) - ((this.textPaint.descent() + this.textPaint.ascent()) / 2.0f), this.textPaint);
                    }
                    canvas.restore();
                    c = 255;
                    ((PieChartViewData) this.lines.get(i10)).paint.setAlpha(255);
                    f15 += f2 * 360.0f;
                } else {
                    f3 = f;
                    canvas2 = canvas3;
                    c = c2;
                    i3 = i9;
                }
                i10++;
                f = f3;
                canvas3 = canvas2;
                i9 = i3;
                f6 = 1.0f;
                c2 = c;
                i2 = 8;
            }
            canvas.restore();
        }
    }

    @Override // org.telegram.p043ui.Charts.StackLinearChartView, org.telegram.p043ui.Charts.BaseChartView
    protected void drawPickerChart(Canvas canvas) {
        float f;
        int i;
        float f2;
        T t = this.chartData;
        if (t != 0) {
            int length = ((StackLinearChartData) t).xPercentage.length;
            int size = this.lines.size();
            int i2 = 0;
            for (int i3 = 0; i3 < this.lines.size(); i3++) {
                ((LineViewData) this.lines.get(i3)).linesPathBottomSize = 0;
            }
            float length2 = (1.0f / ((StackLinearChartData) this.chartData).xPercentage.length) * this.pickerWidth;
            int i4 = 0;
            while (i4 < length) {
                float f3 = (length2 / 2.0f) + (((StackLinearChartData) this.chartData).xPercentage[i4] * (this.pickerWidth - length2));
                float f4 = BitmapDescriptorFactory.HUE_RED;
                int i5 = 1;
                int i6 = i2;
                int i7 = i6;
                float f5 = 0.0f;
                int i8 = 1;
                while (i6 < size) {
                    LineViewData lineViewData = (LineViewData) this.lines.get(i6);
                    boolean z = lineViewData.enabled;
                    if (z || lineViewData.alpha != BitmapDescriptorFactory.HUE_RED) {
                        float f6 = lineViewData.line.f1802y[i4] * lineViewData.alpha;
                        f5 += f6;
                        if (f6 > BitmapDescriptorFactory.HUE_RED) {
                            i7++;
                            if (z) {
                                i8 = i2;
                            }
                        }
                    }
                    i6++;
                }
                int i9 = i2;
                float f7 = 0.0f;
                while (i9 < size) {
                    LineViewData lineViewData2 = (LineViewData) this.lines.get(i9);
                    if (lineViewData2.enabled || lineViewData2.alpha != f4) {
                        int[] iArr = lineViewData2.line.f1802y;
                        if (i7 == i5) {
                            if (iArr[i4] != 0) {
                                f = lineViewData2.alpha;
                                int i10 = this.pikerHeight;
                                float f8 = f * i10;
                                float[] fArr = lineViewData2.linesPath;
                                int i11 = lineViewData2.linesPathBottomSize;
                                i = length;
                                int i12 = i11 + 1;
                                lineViewData2.linesPathBottomSize = i12;
                                fArr[i11] = f3;
                                int i13 = i12 + 1;
                                lineViewData2.linesPathBottomSize = i13;
                                f2 = f5;
                                fArr[i12] = (i10 - f8) - f7;
                                int i14 = i13 + 1;
                                lineViewData2.linesPathBottomSize = i14;
                                fArr[i13] = f3;
                                lineViewData2.linesPathBottomSize = i14 + 1;
                                fArr[i14] = i10 - f7;
                                f7 += f8;
                            }
                            f = f4;
                            int i102 = this.pikerHeight;
                            float f82 = f * i102;
                            float[] fArr2 = lineViewData2.linesPath;
                            int i112 = lineViewData2.linesPathBottomSize;
                            i = length;
                            int i122 = i112 + 1;
                            lineViewData2.linesPathBottomSize = i122;
                            fArr2[i112] = f3;
                            int i132 = i122 + 1;
                            lineViewData2.linesPathBottomSize = i132;
                            f2 = f5;
                            fArr2[i122] = (i102 - f82) - f7;
                            int i142 = i132 + 1;
                            lineViewData2.linesPathBottomSize = i142;
                            fArr2[i132] = f3;
                            lineViewData2.linesPathBottomSize = i142 + 1;
                            fArr2[i142] = i102 - f7;
                            f7 += f82;
                        } else {
                            if (f5 != f4) {
                                if (i8 != 0) {
                                    float f9 = lineViewData2.alpha;
                                    f = (iArr[i4] / f5) * f9 * f9;
                                } else {
                                    f = lineViewData2.alpha * (iArr[i4] / f5);
                                }
                                int i1022 = this.pikerHeight;
                                float f822 = f * i1022;
                                float[] fArr22 = lineViewData2.linesPath;
                                int i1122 = lineViewData2.linesPathBottomSize;
                                i = length;
                                int i1222 = i1122 + 1;
                                lineViewData2.linesPathBottomSize = i1222;
                                fArr22[i1122] = f3;
                                int i1322 = i1222 + 1;
                                lineViewData2.linesPathBottomSize = i1322;
                                f2 = f5;
                                fArr22[i1222] = (i1022 - f822) - f7;
                                int i1422 = i1322 + 1;
                                lineViewData2.linesPathBottomSize = i1422;
                                fArr22[i1322] = f3;
                                lineViewData2.linesPathBottomSize = i1422 + 1;
                                fArr22[i1422] = i1022 - f7;
                                f7 += f822;
                            }
                            f = f4;
                            int i10222 = this.pikerHeight;
                            float f8222 = f * i10222;
                            float[] fArr222 = lineViewData2.linesPath;
                            int i11222 = lineViewData2.linesPathBottomSize;
                            i = length;
                            int i12222 = i11222 + 1;
                            lineViewData2.linesPathBottomSize = i12222;
                            fArr222[i11222] = f3;
                            int i13222 = i12222 + 1;
                            lineViewData2.linesPathBottomSize = i13222;
                            f2 = f5;
                            fArr222[i12222] = (i10222 - f8222) - f7;
                            int i14222 = i13222 + 1;
                            lineViewData2.linesPathBottomSize = i14222;
                            fArr222[i13222] = f3;
                            lineViewData2.linesPathBottomSize = i14222 + 1;
                            fArr222[i14222] = i10222 - f7;
                            f7 += f8222;
                        }
                    } else {
                        i = length;
                        f2 = f5;
                    }
                    i9++;
                    length = i;
                    f5 = f2;
                    f4 = BitmapDescriptorFactory.HUE_RED;
                    i5 = 1;
                }
                i4++;
                i2 = 0;
            }
            for (int i15 = 0; i15 < size; i15++) {
                LineViewData lineViewData3 = (LineViewData) this.lines.get(i15);
                lineViewData3.paint.setStrokeWidth(length2);
                lineViewData3.paint.setAlpha(255);
                lineViewData3.paint.setAntiAlias(false);
                canvas.drawLines(lineViewData3.linesPath, 0, lineViewData3.linesPathBottomSize, lineViewData3.paint);
            }
        }
    }

    @Override // org.telegram.p043ui.Charts.BaseChartView
    public void setData(StackLinearChartData stackLinearChartData) {
        super.setData((PieChartView) stackLinearChartData);
        if (stackLinearChartData != null) {
            this.values = new float[stackLinearChartData.lines.size()];
            this.darawingValuesPercentage = new float[stackLinearChartData.lines.size()];
            onPickerDataChanged(false, true, false);
        }
    }

    @Override // org.telegram.p043ui.Charts.StackLinearChartView, org.telegram.p043ui.Charts.BaseChartView
    public PieChartViewData createLineViewData(ChartData.Line line) {
        return new PieChartViewData(line);
    }

    @Override // org.telegram.p043ui.Charts.BaseChartView
    protected void selectXOnChart(int i, int i2) {
        double d;
        double d2;
        if (this.chartData == 0 || this.isEmpty) {
            return;
        }
        float degrees = (float) (Math.toDegrees(Math.atan2((this.chartArea.centerY() + AndroidUtilities.m104dp(16)) - i2, this.chartArea.centerX() - i)) - 90.0d);
        float f = BitmapDescriptorFactory.HUE_RED;
        if (degrees < BitmapDescriptorFactory.HUE_RED) {
            degrees = (float) (degrees + 360.0d);
        }
        float f2 = degrees / 360.0f;
        int i3 = -1;
        float f3 = 0.0f;
        int i4 = 0;
        while (true) {
            if (i4 >= this.lines.size()) {
                f3 = 0.0f;
                break;
            }
            if (((PieChartViewData) this.lines.get(i4)).enabled || ((PieChartViewData) this.lines.get(i4)).alpha != BitmapDescriptorFactory.HUE_RED) {
                if (f2 > f3) {
                    float[] fArr = this.darawingValuesPercentage;
                    if (f2 < fArr[i4] + f3) {
                        f = f3 + fArr[i4];
                        i3 = i4;
                        break;
                    }
                }
                f3 += this.darawingValuesPercentage[i4];
            }
            i4++;
        }
        if (this.currentSelection != i3 && i3 >= 0) {
            this.currentSelection = i3;
            invalidate();
            this.pieLegendView.setVisibility(0);
            LineViewData lineViewData = (LineViewData) this.lines.get(i3);
            this.pieLegendView.setData(lineViewData.line.name, (int) this.values[this.currentSelection], lineViewData.lineColor);
            this.pieLegendView.measure(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), Integer.MIN_VALUE));
            double width = this.rectF.width() / 2.0f;
            int min = (int) Math.min(this.rectF.centerX() + (Math.cos(Math.toRadians((f * 360.0f) - 90.0f)) * width), this.rectF.centerX() + (Math.cos(Math.toRadians((f3 * 360.0f) - 90.0f)) * width));
            if (min < 0) {
                min = 0;
            }
            if (this.pieLegendView.getMeasuredWidth() + min > getMeasuredWidth() - AndroidUtilities.m104dp(16)) {
                min -= (this.pieLegendView.getMeasuredWidth() + min) - (getMeasuredWidth() - AndroidUtilities.m104dp(16));
            }
            int min2 = ((int) Math.min(this.rectF.centerY(), (int) Math.min(this.rectF.centerY() + (Math.sin(Math.toRadians(d2)) * width), this.rectF.centerY() + (width * Math.sin(Math.toRadians(d)))))) - AndroidUtilities.m104dp(50);
            this.pieLegendView.setTranslationX(min);
            this.pieLegendView.setTranslationY(min2);
            if (!(Build.VERSION.SDK_INT >= 27 ? performHapticFeedback(9, 2) : false)) {
                performHapticFeedback(3, 2);
            }
        }
        moveLegend();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.telegram.p043ui.Charts.StackLinearChartView, org.telegram.p043ui.Charts.BaseChartView, android.view.View
    public void onDraw(Canvas canvas) {
        if (this.chartData != 0) {
            for (int i = 0; i < this.lines.size(); i++) {
                if (i == this.currentSelection) {
                    if (((PieChartViewData) this.lines.get(i)).selectionA < 1.0f) {
                        ((PieChartViewData) this.lines.get(i)).selectionA += 0.1f;
                        if (((PieChartViewData) this.lines.get(i)).selectionA > 1.0f) {
                            ((PieChartViewData) this.lines.get(i)).selectionA = 1.0f;
                        }
                        invalidate();
                    }
                } else if (((PieChartViewData) this.lines.get(i)).selectionA > BitmapDescriptorFactory.HUE_RED) {
                    ((PieChartViewData) this.lines.get(i)).selectionA -= 0.1f;
                    if (((PieChartViewData) this.lines.get(i)).selectionA < BitmapDescriptorFactory.HUE_RED) {
                        ((PieChartViewData) this.lines.get(i)).selectionA = BitmapDescriptorFactory.HUE_RED;
                    }
                    invalidate();
                }
            }
        }
        super.onDraw(canvas);
    }

    @Override // org.telegram.p043ui.Charts.BaseChartView
    protected void onActionUp() {
        this.currentSelection = -1;
        this.pieLegendView.setVisibility(8);
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.telegram.p043ui.Charts.BaseChartView, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (getMeasuredWidth() != this.oldW) {
            this.oldW = getMeasuredWidth();
            int height = (int) ((this.chartArea.width() > this.chartArea.height() ? this.chartArea.height() : this.chartArea.width()) * 0.45f);
            this.MIN_TEXT_SIZE = height / 13;
            this.MAX_TEXT_SIZE = height / 7;
        }
    }

    @Override // org.telegram.p043ui.Charts.BaseChartView
    public void updatePicker(ChartData chartData, long j) {
        int length = chartData.f1800x.length;
        long j2 = j - (j % 86400000);
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            if (j2 >= chartData.f1800x[i2]) {
                i = i2;
            }
        }
        float length2 = chartData.xPercentage.length < 2 ? 0.5f : 1.0f / chartData.f1800x.length;
        if (i == 0) {
            ChartPickerDelegate chartPickerDelegate = this.pickerDelegate;
            chartPickerDelegate.pickerStart = BitmapDescriptorFactory.HUE_RED;
            chartPickerDelegate.pickerEnd = length2;
        } else if (i >= chartData.f1800x.length - 1) {
            ChartPickerDelegate chartPickerDelegate2 = this.pickerDelegate;
            chartPickerDelegate2.pickerStart = 1.0f - length2;
            chartPickerDelegate2.pickerEnd = 1.0f;
        } else {
            ChartPickerDelegate chartPickerDelegate3 = this.pickerDelegate;
            float f = i * length2;
            chartPickerDelegate3.pickerStart = f;
            float f2 = f + length2;
            chartPickerDelegate3.pickerEnd = f2;
            if (f2 > 1.0f) {
                chartPickerDelegate3.pickerEnd = 1.0f;
            }
            onPickerDataChanged(true, true, false);
        }
    }

    @Override // org.telegram.p043ui.Charts.BaseChartView
    protected LegendSignatureView createLegendView() {
        PieLegendView pieLegendView = new PieLegendView(getContext());
        this.pieLegendView = pieLegendView;
        return pieLegendView;
    }

    @Override // org.telegram.p043ui.Charts.BaseChartView
    public void onPickerDataChanged(boolean z, boolean z2, boolean z3) {
        super.onPickerDataChanged(z, z2, z3);
        T t = this.chartData;
        if (t == 0 || ((StackLinearChartData) t).xPercentage == null) {
            return;
        }
        ChartPickerDelegate chartPickerDelegate = this.pickerDelegate;
        updateCharValues(chartPickerDelegate.pickerStart, chartPickerDelegate.pickerEnd, z2);
    }

    private void updateCharValues(float f, float f2, boolean z) {
        if (this.values == null) {
            return;
        }
        int length = ((StackLinearChartData) this.chartData).xPercentage.length;
        int size = this.lines.size();
        int i = 0;
        int i2 = -1;
        int i3 = -1;
        for (int i4 = 0; i4 < length; i4++) {
            T t = this.chartData;
            if (((StackLinearChartData) t).xPercentage[i4] >= f && i3 == -1) {
                i3 = i4;
            }
            if (((StackLinearChartData) t).xPercentage[i4] <= f2) {
                i2 = i4;
            }
        }
        if (i2 < i3) {
            i3 = i2;
        }
        if (!z && this.lastEndIndex == i2 && this.lastStartIndex == i3) {
            return;
        }
        this.lastEndIndex = i2;
        this.lastStartIndex = i3;
        this.isEmpty = true;
        this.sum = BitmapDescriptorFactory.HUE_RED;
        for (int i5 = 0; i5 < size; i5++) {
            this.values[i5] = 0.0f;
        }
        while (i3 <= i2) {
            for (int i6 = 0; i6 < size; i6++) {
                float[] fArr = this.values;
                fArr[i6] = fArr[i6] + ((StackLinearChartData) this.chartData).lines.get(i6).f1802y[i3];
                this.sum += ((StackLinearChartData) this.chartData).lines.get(i6).f1802y[i3];
                if (this.isEmpty && ((PieChartViewData) this.lines.get(i6)).enabled && ((StackLinearChartData) this.chartData).lines.get(i6).f1802y[i3] > 0) {
                    this.isEmpty = false;
                }
            }
            i3++;
        }
        if (z) {
            while (i < size) {
                if (this.sum == BitmapDescriptorFactory.HUE_RED) {
                    ((PieChartViewData) this.lines.get(i)).drawingPart = BitmapDescriptorFactory.HUE_RED;
                } else {
                    ((PieChartViewData) this.lines.get(i)).drawingPart = this.values[i] / this.sum;
                }
                i++;
            }
            return;
        }
        while (i < size) {
            final PieChartViewData pieChartViewData = (PieChartViewData) this.lines.get(i);
            Animator animator = pieChartViewData.animator;
            if (animator != null) {
                animator.cancel();
            }
            float f3 = this.sum;
            ValueAnimator createAnimator = createAnimator(pieChartViewData.drawingPart, f3 == BitmapDescriptorFactory.HUE_RED ? 0.0f : this.values[i] / f3, new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Charts.PieChartView$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    PieChartView.this.lambda$updateCharValues$0(pieChartViewData, valueAnimator);
                }
            });
            pieChartViewData.animator = createAnimator;
            createAnimator.start();
            i++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateCharValues$0(PieChartViewData pieChartViewData, ValueAnimator valueAnimator) {
        pieChartViewData.drawingPart = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        invalidate();
    }

    @Override // org.telegram.p043ui.Charts.BaseChartView, org.telegram.p043ui.Charts.ChartPickerDelegate.Listener
    public void onPickerJumpTo(float f, float f2, boolean z) {
        if (this.chartData == 0) {
            return;
        }
        if (z) {
            updateCharValues(f, f2, false);
            return;
        }
        updateIndexes();
        invalidate();
    }

    @Override // org.telegram.p043ui.Charts.StackLinearChartView, org.telegram.p043ui.Charts.BaseChartView
    public void fillTransitionParams(TransitionParams transitionParams) {
        drawChart(null);
        float f = BitmapDescriptorFactory.HUE_RED;
        int i = 0;
        while (true) {
            float[] fArr = this.darawingValuesPercentage;
            if (i >= fArr.length) {
                return;
            }
            f += fArr[i];
            transitionParams.angle[i] = (360.0f * f) - 180.0f;
            i++;
        }
    }
}
