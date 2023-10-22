package org.telegram.p042ui.Components;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import android.os.SystemClock;
import android.view.View;
import com.google.android.exoplayer2.extractor.p015ts.PsExtractor;
import com.google.android.exoplayer2.extractor.p015ts.TsExtractor;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Random;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.SharedConfig;
import org.telegram.p042ui.ActionBar.Theme;
/* renamed from: org.telegram.ui.Components.FlickerLoadingView */
/* loaded from: classes6.dex */
public class FlickerLoadingView extends View {
    private Paint backgroundPaint;
    private int color0;
    private int color1;
    private int colorKey1;
    private int colorKey2;
    private int colorKey3;
    FlickerLoadingView globalGradientView;
    private LinearGradient gradient;
    private int gradientWidth;
    private Paint headerPaint;
    private boolean ignoreHeightCheck;
    private boolean isSingleCell;
    private int itemsCount;
    private long lastUpdateTime;
    private Matrix matrix;
    private int paddingLeft;
    private int paddingTop;
    private Paint paint;
    private int parentHeight;
    private int parentWidth;
    private float parentXOffset;
    float[] randomParams;
    private RectF rectF;
    private final Theme.ResourcesProvider resourcesProvider;
    private boolean showDate;
    private int skipDrawItemsCount;
    private int totalTranslation;
    private boolean useHeaderOffset;
    private int viewType;

    public int getAdditionalHeight() {
        return 0;
    }

    public int getColumnsCount() {
        return 2;
    }

    public void setViewType(int i) {
        this.viewType = i;
        if (i == 11) {
            Random random = new Random();
            this.randomParams = new float[2];
            for (int i2 = 0; i2 < 2; i2++) {
                this.randomParams[i2] = Math.abs(random.nextInt() % 1000) / 1000.0f;
            }
        }
        invalidate();
    }

    public void setIsSingleCell(boolean z) {
        this.isSingleCell = z;
    }

    public int getViewType() {
        return this.viewType;
    }

    public void setColors(int i, int i2, int i3) {
        this.colorKey1 = i;
        this.colorKey2 = i2;
        this.colorKey3 = i3;
        invalidate();
    }

    public FlickerLoadingView(Context context) {
        this(context, null);
    }

    public FlickerLoadingView(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.paint = new Paint();
        this.headerPaint = new Paint();
        this.rectF = new RectF();
        this.showDate = true;
        this.colorKey1 = Theme.key_actionBarDefaultSubmenuBackground;
        this.colorKey2 = Theme.key_listSelector;
        this.colorKey3 = -1;
        this.itemsCount = 1;
        this.resourcesProvider = resourcesProvider;
        this.matrix = new Matrix();
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        if (this.isSingleCell) {
            int i3 = this.itemsCount;
            if (i3 > 1 && this.ignoreHeightCheck) {
                super.onMeasure(i, View.MeasureSpec.makeMeasureSpec((getCellHeight(View.MeasureSpec.getSize(i)) * this.itemsCount) + getAdditionalHeight(), 1073741824));
                return;
            } else if (i3 > 1 && View.MeasureSpec.getSize(i2) > 0) {
                super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(Math.min(View.MeasureSpec.getSize(i2), getCellHeight(View.MeasureSpec.getSize(i)) * this.itemsCount) + getAdditionalHeight(), 1073741824));
                return;
            } else {
                super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(getCellHeight(View.MeasureSpec.getSize(i)) + getAdditionalHeight(), 1073741824));
                return;
            }
        }
        super.onMeasure(i, i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        int m102dp;
        int m102dp2;
        int m102dp3;
        int m102dp4;
        int m102dp5;
        int m102dp6;
        int m102dp7;
        int m102dp8;
        int m102dp9;
        int m102dp10;
        int m102dp11;
        int m102dp12;
        int m102dp13;
        int m102dp14;
        int m102dp15;
        int m102dp16;
        int m102dp17;
        int measuredWidth;
        int i;
        Paint paint = this.paint;
        if (this.globalGradientView != null) {
            if (getParent() != null) {
                View view = (View) getParent();
                this.globalGradientView.setParentSize(view.getMeasuredWidth(), view.getMeasuredHeight(), -getX());
            }
            paint = this.globalGradientView.paint;
        }
        Paint paint2 = paint;
        updateColors();
        updateGradient();
        int i2 = this.paddingTop;
        if (this.useHeaderOffset) {
            int m102dp18 = i2 + AndroidUtilities.m102dp(32);
            int i3 = this.colorKey3;
            if (i3 >= 0) {
                this.headerPaint.setColor(getThemedColor(i3));
            }
            canvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), AndroidUtilities.m102dp(32), this.colorKey3 >= 0 ? this.headerPaint : paint2);
            i2 = m102dp18;
        }
        int i4 = 4;
        if (getViewType() == 100) {
            int cellHeight = getCellHeight(getMeasuredWidth()) / 2;
            int m102dp19 = AndroidUtilities.m102dp(18);
            int m102dp20 = AndroidUtilities.m102dp(16);
            int m102dp21 = AndroidUtilities.m102dp(4);
            int m102dp22 = AndroidUtilities.m102dp(6);
            int m102dp23 = AndroidUtilities.m102dp(6);
            int m102dp24 = AndroidUtilities.m102dp(8);
            int i5 = m102dp19 + m102dp20;
            int i6 = cellHeight - m102dp23;
            int i7 = m102dp23 + cellHeight;
            float f = cellHeight;
            canvas.drawCircle(checkRtl(i5), f, m102dp20, paint2);
            float f2 = i5 * 2;
            this.rectF.set(f2, i6 - m102dp22, (measuredWidth / 4) + i, i6);
            checkRtl(this.rectF);
            float f3 = m102dp21;
            canvas.drawRoundRect(this.rectF, f3, f3, paint2);
            this.rectF.set(f2, i7, (measuredWidth / 2) + i, m102dp22 + i7);
            checkRtl(this.rectF);
            canvas.drawRoundRect(this.rectF, f3, f3, paint2);
            canvas.drawCircle(checkRtl((measuredWidth - m102dp19) - m102dp24), f, m102dp24, paint2);
        } else {
            int i8 = 10;
            int i9 = 28;
            int i10 = 0;
            int i11 = 1;
            if (getViewType() == 7) {
                while (i2 <= getMeasuredHeight()) {
                    int cellHeight2 = getCellHeight(getMeasuredWidth());
                    canvas.drawCircle(checkRtl(AndroidUtilities.m102dp(i8) + m102dp17), (cellHeight2 >> 1) + i2, AndroidUtilities.m102dp(i9), paint2);
                    this.rectF.set(AndroidUtilities.m102dp(76), AndroidUtilities.m102dp(16) + i2, AndroidUtilities.m102dp(148), i2 + AndroidUtilities.m102dp(24));
                    checkRtl(this.rectF);
                    canvas.drawRoundRect(this.rectF, AndroidUtilities.m102dp(4), AndroidUtilities.m102dp(4), paint2);
                    this.rectF.set(AndroidUtilities.m102dp(76), AndroidUtilities.m102dp(38) + i2, AndroidUtilities.m102dp(268), AndroidUtilities.m102dp(46) + i2);
                    checkRtl(this.rectF);
                    canvas.drawRoundRect(this.rectF, AndroidUtilities.m102dp(4), AndroidUtilities.m102dp(4), paint2);
                    if (SharedConfig.useThreeLinesLayout) {
                        this.rectF.set(AndroidUtilities.m102dp(76), AndroidUtilities.m102dp(54) + i2, AndroidUtilities.m102dp(220), AndroidUtilities.m102dp(62) + i2);
                        checkRtl(this.rectF);
                        canvas.drawRoundRect(this.rectF, AndroidUtilities.m102dp(4), AndroidUtilities.m102dp(4), paint2);
                    }
                    if (this.showDate) {
                        this.rectF.set(getMeasuredWidth() - AndroidUtilities.m102dp(50), AndroidUtilities.m102dp(16) + i2, getMeasuredWidth() - AndroidUtilities.m102dp(12), AndroidUtilities.m102dp(24) + i2);
                        checkRtl(this.rectF);
                        canvas.drawRoundRect(this.rectF, AndroidUtilities.m102dp(4), AndroidUtilities.m102dp(4), paint2);
                    }
                    i2 += getCellHeight(getMeasuredWidth());
                    int i12 = i10 + 1;
                    if (this.isSingleCell && i12 >= this.itemsCount) {
                        break;
                    }
                    i10 = i12;
                    i8 = 10;
                    i9 = 28;
                }
            } else if (getViewType() == 24) {
                while (i2 <= getMeasuredHeight()) {
                    canvas.drawCircle(checkRtl(AndroidUtilities.m102dp(10) + m102dp16), AndroidUtilities.m102dp(10) + i2 + m102dp16, AndroidUtilities.m102dp(14), paint2);
                    canvas.save();
                    canvas.translate(BitmapDescriptorFactory.HUE_RED, -AndroidUtilities.m102dp(4));
                    this.rectF.set(AndroidUtilities.m102dp(50), AndroidUtilities.m102dp(16) + i2, AndroidUtilities.m102dp(148), AndroidUtilities.m102dp(24) + i2);
                    checkRtl(this.rectF);
                    canvas.drawRoundRect(this.rectF, AndroidUtilities.m102dp(4), AndroidUtilities.m102dp(4), paint2);
                    this.rectF.set(AndroidUtilities.m102dp(50), AndroidUtilities.m102dp(38) + i2, AndroidUtilities.m102dp(268), AndroidUtilities.m102dp(46) + i2);
                    checkRtl(this.rectF);
                    canvas.drawRoundRect(this.rectF, AndroidUtilities.m102dp(4), AndroidUtilities.m102dp(4), paint2);
                    if (SharedConfig.useThreeLinesLayout) {
                        this.rectF.set(AndroidUtilities.m102dp(50), AndroidUtilities.m102dp(54) + i2, AndroidUtilities.m102dp(220), AndroidUtilities.m102dp(62) + i2);
                        checkRtl(this.rectF);
                        canvas.drawRoundRect(this.rectF, AndroidUtilities.m102dp(4), AndroidUtilities.m102dp(4), paint2);
                    }
                    if (this.showDate) {
                        this.rectF.set(getMeasuredWidth() - AndroidUtilities.m102dp(50), AndroidUtilities.m102dp(16) + i2, getMeasuredWidth() - AndroidUtilities.m102dp(12), AndroidUtilities.m102dp(24) + i2);
                        checkRtl(this.rectF);
                        canvas.drawRoundRect(this.rectF, AndroidUtilities.m102dp(4), AndroidUtilities.m102dp(4), paint2);
                    }
                    canvas.restore();
                    i2 += getCellHeight(getMeasuredWidth());
                    int i13 = i10 + 1;
                    if (this.isSingleCell && i13 >= this.itemsCount) {
                        break;
                    }
                    i10 = i13;
                }
            } else {
                int i14 = 25;
                if (getViewType() == 18) {
                    int i15 = i2;
                    while (i15 <= getMeasuredHeight()) {
                        canvas.drawCircle(checkRtl(this.paddingLeft + AndroidUtilities.m102dp(9) + m102dp15), AndroidUtilities.m102dp(32) + i15, AndroidUtilities.m102dp(i14), paint2);
                        int i16 = (i10 % 2 == 0 ? 52 : 72) + 76;
                        this.rectF.set(AndroidUtilities.m102dp(76), AndroidUtilities.m102dp(20) + i15, AndroidUtilities.m102dp(i16), AndroidUtilities.m102dp(28) + i15);
                        checkRtl(this.rectF);
                        canvas.drawRoundRect(this.rectF, AndroidUtilities.m102dp(4), AndroidUtilities.m102dp(4), paint2);
                        int i17 = i16 + 8;
                        this.rectF.set(AndroidUtilities.m102dp(i17), AndroidUtilities.m102dp(20) + i15, AndroidUtilities.m102dp(i17 + 84), AndroidUtilities.m102dp(28) + i15);
                        checkRtl(this.rectF);
                        canvas.drawRoundRect(this.rectF, AndroidUtilities.m102dp(4), AndroidUtilities.m102dp(4), paint2);
                        this.rectF.set(AndroidUtilities.m102dp(76), AndroidUtilities.m102dp(42) + i15, AndroidUtilities.m102dp(140), AndroidUtilities.m102dp(50) + i15);
                        checkRtl(this.rectF);
                        canvas.drawRoundRect(this.rectF, AndroidUtilities.m102dp(4), AndroidUtilities.m102dp(4), paint2);
                        int i18 = i14;
                        canvas.drawLine(AndroidUtilities.m102dp(76), getCellHeight(getMeasuredWidth()) + i15, getMeasuredWidth(), getCellHeight(getMeasuredWidth()) + i15, paint2);
                        i15 += getCellHeight(getMeasuredWidth());
                        int i19 = i10 + 1;
                        if (this.isSingleCell && i19 >= this.itemsCount) {
                            break;
                        }
                        i10 = i19;
                        i14 = i18;
                    }
                } else if (getViewType() == 19) {
                    int i20 = i2;
                    while (i20 <= getMeasuredHeight()) {
                        canvas.drawCircle(checkRtl(this.paddingLeft + AndroidUtilities.m102dp(9) + m102dp14), AndroidUtilities.m102dp(29) + i20, AndroidUtilities.m102dp(20), paint2);
                        this.rectF.set(AndroidUtilities.m102dp(76), AndroidUtilities.m102dp(16) + i20, AndroidUtilities.m102dp((i10 % 2 == 0 ? 92 : 128) + 76), AndroidUtilities.m102dp(24) + i20);
                        checkRtl(this.rectF);
                        canvas.drawRoundRect(this.rectF, AndroidUtilities.m102dp(4), AndroidUtilities.m102dp(4), paint2);
                        this.rectF.set(AndroidUtilities.m102dp(76), AndroidUtilities.m102dp(38) + i20, AndroidUtilities.m102dp((int) PsExtractor.VIDEO_STREAM_MASK), AndroidUtilities.m102dp(46) + i20);
                        checkRtl(this.rectF);
                        canvas.drawRoundRect(this.rectF, AndroidUtilities.m102dp(4), AndroidUtilities.m102dp(4), paint2);
                        canvas.drawLine(AndroidUtilities.m102dp(76), getCellHeight(getMeasuredWidth()) + i20, getMeasuredWidth(), getCellHeight(getMeasuredWidth()) + i20, paint2);
                        i20 += getCellHeight(getMeasuredWidth());
                        int i21 = i10 + 1;
                        if (this.isSingleCell && i21 >= this.itemsCount) {
                            break;
                        }
                        i10 = i21;
                    }
                } else if (getViewType() == 1) {
                    while (i2 <= getMeasuredHeight()) {
                        canvas.drawCircle(checkRtl(AndroidUtilities.m102dp(9) + m102dp13), (AndroidUtilities.m102dp(78) >> 1) + i2, AndroidUtilities.m102dp(25), paint2);
                        this.rectF.set(AndroidUtilities.m102dp(68), AndroidUtilities.m102dp(20) + i2, AndroidUtilities.m102dp(140), AndroidUtilities.m102dp(28) + i2);
                        checkRtl(this.rectF);
                        canvas.drawRoundRect(this.rectF, AndroidUtilities.m102dp(4), AndroidUtilities.m102dp(4), paint2);
                        this.rectF.set(AndroidUtilities.m102dp(68), AndroidUtilities.m102dp(42) + i2, AndroidUtilities.m102dp(260), AndroidUtilities.m102dp(50) + i2);
                        checkRtl(this.rectF);
                        canvas.drawRoundRect(this.rectF, AndroidUtilities.m102dp(4), AndroidUtilities.m102dp(4), paint2);
                        if (this.showDate) {
                            this.rectF.set(getMeasuredWidth() - AndroidUtilities.m102dp(50), AndroidUtilities.m102dp(20) + i2, getMeasuredWidth() - AndroidUtilities.m102dp(12), AndroidUtilities.m102dp(28) + i2);
                            checkRtl(this.rectF);
                            canvas.drawRoundRect(this.rectF, AndroidUtilities.m102dp(4), AndroidUtilities.m102dp(4), paint2);
                        }
                        i2 += getCellHeight(getMeasuredWidth());
                        int i22 = i10 + 1;
                        if (this.isSingleCell && i22 >= this.itemsCount) {
                            break;
                        }
                        i10 = i22;
                    }
                } else if (getViewType() == 2 || getViewType() == 27) {
                    int measuredWidth2 = (getMeasuredWidth() - (AndroidUtilities.m102dp(2) * (getColumnsCount() - 1))) / getColumnsCount();
                    int i23 = getViewType() == 27 ? (int) (measuredWidth2 * 1.25f) : measuredWidth2;
                    int i24 = i2;
                    int i25 = 0;
                    while (true) {
                        if (i24 >= getMeasuredHeight() && !this.isSingleCell) {
                            break;
                        }
                        for (int i26 = 0; i26 < getColumnsCount(); i26++) {
                            if (i25 != 0 || i26 >= this.skipDrawItemsCount) {
                                canvas.drawRect((AndroidUtilities.m102dp(2) + measuredWidth2) * i26, i24, m102dp + measuredWidth2, i24 + i23, paint2);
                            }
                        }
                        i24 += AndroidUtilities.m102dp(2) + i23;
                        i25++;
                        if (this.isSingleCell && i25 >= 2) {
                            break;
                        }
                    }
                } else if (getViewType() == 3) {
                    while (i2 <= getMeasuredHeight()) {
                        this.rectF.set(AndroidUtilities.m102dp(12), AndroidUtilities.m102dp(8) + i2, AndroidUtilities.m102dp(52), AndroidUtilities.m102dp(48) + i2);
                        checkRtl(this.rectF);
                        canvas.drawRoundRect(this.rectF, AndroidUtilities.m102dp(4), AndroidUtilities.m102dp(4), paint2);
                        this.rectF.set(AndroidUtilities.m102dp(68), AndroidUtilities.m102dp(12) + i2, AndroidUtilities.m102dp(140), AndroidUtilities.m102dp(20) + i2);
                        checkRtl(this.rectF);
                        canvas.drawRoundRect(this.rectF, AndroidUtilities.m102dp(4), AndroidUtilities.m102dp(4), paint2);
                        this.rectF.set(AndroidUtilities.m102dp(68), AndroidUtilities.m102dp(34) + i2, AndroidUtilities.m102dp(260), AndroidUtilities.m102dp(42) + i2);
                        checkRtl(this.rectF);
                        canvas.drawRoundRect(this.rectF, AndroidUtilities.m102dp(4), AndroidUtilities.m102dp(4), paint2);
                        if (this.showDate) {
                            this.rectF.set(getMeasuredWidth() - AndroidUtilities.m102dp(50), AndroidUtilities.m102dp(12) + i2, getMeasuredWidth() - AndroidUtilities.m102dp(12), AndroidUtilities.m102dp(20) + i2);
                            checkRtl(this.rectF);
                            canvas.drawRoundRect(this.rectF, AndroidUtilities.m102dp(4), AndroidUtilities.m102dp(4), paint2);
                        }
                        i2 += getCellHeight(getMeasuredWidth());
                        int i27 = i10 + 1;
                        if (this.isSingleCell && i27 >= this.itemsCount) {
                            break;
                        }
                        i10 = i27;
                    }
                } else if (getViewType() == 4) {
                    while (i2 <= getMeasuredHeight()) {
                        canvas.drawCircle(checkRtl(AndroidUtilities.m102dp(12) + m102dp12), AndroidUtilities.m102dp(6) + i2 + m102dp12, AndroidUtilities.m102dp(44) >> 1, paint2);
                        this.rectF.set(AndroidUtilities.m102dp(68), AndroidUtilities.m102dp(12) + i2, AndroidUtilities.m102dp(140), AndroidUtilities.m102dp(20) + i2);
                        checkRtl(this.rectF);
                        canvas.drawRoundRect(this.rectF, AndroidUtilities.m102dp(4), AndroidUtilities.m102dp(4), paint2);
                        this.rectF.set(AndroidUtilities.m102dp(68), AndroidUtilities.m102dp(34) + i2, AndroidUtilities.m102dp(260), AndroidUtilities.m102dp(42) + i2);
                        checkRtl(this.rectF);
                        canvas.drawRoundRect(this.rectF, AndroidUtilities.m102dp(4), AndroidUtilities.m102dp(4), paint2);
                        if (this.showDate) {
                            this.rectF.set(getMeasuredWidth() - AndroidUtilities.m102dp(50), AndroidUtilities.m102dp(12) + i2, getMeasuredWidth() - AndroidUtilities.m102dp(12), AndroidUtilities.m102dp(20) + i2);
                            checkRtl(this.rectF);
                            canvas.drawRoundRect(this.rectF, AndroidUtilities.m102dp(4), AndroidUtilities.m102dp(4), paint2);
                        }
                        i2 += getCellHeight(getMeasuredWidth());
                        int i28 = i10 + 1;
                        if (this.isSingleCell && i28 >= this.itemsCount) {
                            break;
                        }
                        i10 = i28;
                    }
                } else if (getViewType() == 5) {
                    while (i2 <= getMeasuredHeight()) {
                        this.rectF.set(AndroidUtilities.m102dp(10), AndroidUtilities.m102dp(11) + i2, AndroidUtilities.m102dp(62), AndroidUtilities.m102dp(63) + i2);
                        checkRtl(this.rectF);
                        canvas.drawRoundRect(this.rectF, AndroidUtilities.m102dp(4), AndroidUtilities.m102dp(4), paint2);
                        this.rectF.set(AndroidUtilities.m102dp(68), AndroidUtilities.m102dp(12) + i2, AndroidUtilities.m102dp(140), AndroidUtilities.m102dp(20) + i2);
                        checkRtl(this.rectF);
                        canvas.drawRoundRect(this.rectF, AndroidUtilities.m102dp(4), AndroidUtilities.m102dp(4), paint2);
                        this.rectF.set(AndroidUtilities.m102dp(68), AndroidUtilities.m102dp(34) + i2, AndroidUtilities.m102dp(268), AndroidUtilities.m102dp(42) + i2);
                        checkRtl(this.rectF);
                        canvas.drawRoundRect(this.rectF, AndroidUtilities.m102dp(4), AndroidUtilities.m102dp(4), paint2);
                        this.rectF.set(AndroidUtilities.m102dp(68), AndroidUtilities.m102dp(54) + i2, AndroidUtilities.m102dp((int) TsExtractor.TS_PACKET_SIZE), AndroidUtilities.m102dp(62) + i2);
                        checkRtl(this.rectF);
                        canvas.drawRoundRect(this.rectF, AndroidUtilities.m102dp(4), AndroidUtilities.m102dp(4), paint2);
                        if (this.showDate) {
                            this.rectF.set(getMeasuredWidth() - AndroidUtilities.m102dp(50), AndroidUtilities.m102dp(12) + i2, getMeasuredWidth() - AndroidUtilities.m102dp(12), AndroidUtilities.m102dp(20) + i2);
                            checkRtl(this.rectF);
                            canvas.drawRoundRect(this.rectF, AndroidUtilities.m102dp(4), AndroidUtilities.m102dp(4), paint2);
                        }
                        i2 += getCellHeight(getMeasuredWidth());
                        int i29 = i10 + 1;
                        if (this.isSingleCell && i29 >= this.itemsCount) {
                            break;
                        }
                        i10 = i29;
                    }
                } else if (getViewType() == 6 || getViewType() == 10) {
                    while (i2 <= getMeasuredHeight()) {
                        canvas.drawCircle(checkRtl(this.paddingLeft + AndroidUtilities.m102dp(9) + m102dp2), (AndroidUtilities.m102dp(64) >> 1) + i2, AndroidUtilities.m102dp(23), paint2);
                        this.rectF.set(this.paddingLeft + AndroidUtilities.m102dp(68), AndroidUtilities.m102dp(17) + i2, this.paddingLeft + AndroidUtilities.m102dp(260), AndroidUtilities.m102dp(25) + i2);
                        checkRtl(this.rectF);
                        canvas.drawRoundRect(this.rectF, AndroidUtilities.m102dp(4), AndroidUtilities.m102dp(4), paint2);
                        this.rectF.set(this.paddingLeft + AndroidUtilities.m102dp(68), AndroidUtilities.m102dp(39) + i2, this.paddingLeft + AndroidUtilities.m102dp(140), AndroidUtilities.m102dp(47) + i2);
                        checkRtl(this.rectF);
                        canvas.drawRoundRect(this.rectF, AndroidUtilities.m102dp(4), AndroidUtilities.m102dp(4), paint2);
                        if (this.showDate) {
                            this.rectF.set(getMeasuredWidth() - AndroidUtilities.m102dp(50), AndroidUtilities.m102dp(20) + i2, getMeasuredWidth() - AndroidUtilities.m102dp(12), AndroidUtilities.m102dp(28) + i2);
                            checkRtl(this.rectF);
                            canvas.drawRoundRect(this.rectF, AndroidUtilities.m102dp(4), AndroidUtilities.m102dp(4), paint2);
                        }
                        i2 += getCellHeight(getMeasuredWidth());
                        int i30 = i10 + 1;
                        if (this.isSingleCell && i30 >= this.itemsCount) {
                            break;
                        }
                        i10 = i30;
                    }
                } else if (getViewType() == 8) {
                    while (i2 <= getMeasuredHeight()) {
                        canvas.drawCircle(checkRtl(this.paddingLeft + AndroidUtilities.m102dp(11) + m102dp11), (AndroidUtilities.m102dp(64) >> 1) + i2, AndroidUtilities.m102dp(23), paint2);
                        this.rectF.set(this.paddingLeft + AndroidUtilities.m102dp(68), AndroidUtilities.m102dp(17) + i2, this.paddingLeft + AndroidUtilities.m102dp(140), AndroidUtilities.m102dp(25) + i2);
                        checkRtl(this.rectF);
                        canvas.drawRoundRect(this.rectF, AndroidUtilities.m102dp(4), AndroidUtilities.m102dp(4), paint2);
                        this.rectF.set(this.paddingLeft + AndroidUtilities.m102dp(68), AndroidUtilities.m102dp(39) + i2, this.paddingLeft + AndroidUtilities.m102dp(260), AndroidUtilities.m102dp(47) + i2);
                        checkRtl(this.rectF);
                        canvas.drawRoundRect(this.rectF, AndroidUtilities.m102dp(4), AndroidUtilities.m102dp(4), paint2);
                        if (this.showDate) {
                            this.rectF.set(getMeasuredWidth() - AndroidUtilities.m102dp(50), AndroidUtilities.m102dp(20) + i2, getMeasuredWidth() - AndroidUtilities.m102dp(12), AndroidUtilities.m102dp(28) + i2);
                            checkRtl(this.rectF);
                            canvas.drawRoundRect(this.rectF, AndroidUtilities.m102dp(4), AndroidUtilities.m102dp(4), paint2);
                        }
                        i2 += getCellHeight(getMeasuredWidth());
                        int i31 = i10 + 1;
                        if (this.isSingleCell && i31 >= this.itemsCount) {
                            break;
                        }
                        i10 = i31;
                    }
                } else if (getViewType() == 9) {
                    while (i2 <= getMeasuredHeight()) {
                        canvas.drawCircle(checkRtl(AndroidUtilities.m102dp(35)), (getCellHeight(getMeasuredWidth()) >> 1) + i2, AndroidUtilities.m102dp(32) / 2, paint2);
                        this.rectF.set(AndroidUtilities.m102dp(72), AndroidUtilities.m102dp(16) + i2, AndroidUtilities.m102dp(268), AndroidUtilities.m102dp(24) + i2);
                        checkRtl(this.rectF);
                        canvas.drawRoundRect(this.rectF, AndroidUtilities.m102dp(4), AndroidUtilities.m102dp(4), paint2);
                        this.rectF.set(AndroidUtilities.m102dp(72), AndroidUtilities.m102dp(38) + i2, AndroidUtilities.m102dp(140), i2 + AndroidUtilities.m102dp(46));
                        checkRtl(this.rectF);
                        canvas.drawRoundRect(this.rectF, AndroidUtilities.m102dp(4), AndroidUtilities.m102dp(4), paint2);
                        if (this.showDate) {
                            this.rectF.set(getMeasuredWidth() - AndroidUtilities.m102dp(50), AndroidUtilities.m102dp(16) + i2, getMeasuredWidth() - AndroidUtilities.m102dp(12), AndroidUtilities.m102dp(24) + i2);
                            checkRtl(this.rectF);
                            canvas.drawRoundRect(this.rectF, AndroidUtilities.m102dp(4), AndroidUtilities.m102dp(4), paint2);
                        }
                        i2 += getCellHeight(getMeasuredWidth());
                        int i32 = i10 + 1;
                        if (this.isSingleCell && i32 >= this.itemsCount) {
                            break;
                        }
                        i10 = i32;
                    }
                } else if (getViewType() == 11) {
                    int i33 = 0;
                    while (i2 <= getMeasuredHeight()) {
                        this.rectF.set(AndroidUtilities.m102dp(18), AndroidUtilities.m103dp(14.0f), (getMeasuredWidth() * 0.5f) + AndroidUtilities.m103dp(this.randomParams[0] * 40.0f), AndroidUtilities.m103dp(14.0f) + AndroidUtilities.m102dp(8));
                        checkRtl(this.rectF);
                        canvas.drawRoundRect(this.rectF, AndroidUtilities.m102dp(4), AndroidUtilities.m102dp(4), paint2);
                        this.rectF.set(getMeasuredWidth() - AndroidUtilities.m102dp(18), AndroidUtilities.m103dp(14.0f), (getMeasuredWidth() - (getMeasuredWidth() * 0.2f)) - AndroidUtilities.m103dp(this.randomParams[0] * 20.0f), AndroidUtilities.m103dp(14.0f) + AndroidUtilities.m102dp(8));
                        checkRtl(this.rectF);
                        canvas.drawRoundRect(this.rectF, AndroidUtilities.m102dp(4), AndroidUtilities.m102dp(4), paint2);
                        i2 += getCellHeight(getMeasuredWidth());
                        i33++;
                        if (this.isSingleCell && i33 >= this.itemsCount) {
                            break;
                        }
                    }
                } else if (getViewType() == 12) {
                    int m102dp25 = i2 + AndroidUtilities.m102dp(14);
                    while (m102dp25 <= getMeasuredHeight()) {
                        int measuredWidth3 = getMeasuredWidth() / 4;
                        for (int i34 = 0; i34 < 4; i34++) {
                            float f4 = (measuredWidth3 * i34) + (measuredWidth3 / 2.0f);
                            canvas.drawCircle(f4, AndroidUtilities.m102dp(7) + m102dp25 + (AndroidUtilities.m102dp(56) / 2.0f), AndroidUtilities.m103dp(28.0f), paint2);
                            float m102dp26 = AndroidUtilities.m102dp(7) + m102dp25 + AndroidUtilities.m102dp(56) + AndroidUtilities.m102dp(16);
                            RectF rectF = AndroidUtilities.rectTmp;
                            rectF.set(f4 - AndroidUtilities.m102dp(24), m102dp26 - AndroidUtilities.m102dp(4), f4 + AndroidUtilities.m102dp(24), m102dp26 + AndroidUtilities.m102dp(4));
                            canvas.drawRoundRect(rectF, AndroidUtilities.m102dp(4), AndroidUtilities.m102dp(4), paint2);
                        }
                        m102dp25 += getCellHeight(getMeasuredWidth());
                        if (this.isSingleCell) {
                            break;
                        }
                    }
                } else if (getViewType() == 13) {
                    float measuredHeight = getMeasuredHeight() / 2.0f;
                    RectF rectF2 = AndroidUtilities.rectTmp;
                    rectF2.set(AndroidUtilities.m102dp(40), measuredHeight - AndroidUtilities.m102dp(4), getMeasuredWidth() - AndroidUtilities.m102dp(120), AndroidUtilities.m102dp(4) + measuredHeight);
                    canvas.drawRoundRect(rectF2, AndroidUtilities.m102dp(4), AndroidUtilities.m102dp(4), paint2);
                    if (this.backgroundPaint == null) {
                        Paint paint3 = new Paint(1);
                        this.backgroundPaint = paint3;
                        paint3.setColor(Theme.getColor(Theme.key_actionBarDefaultSubmenuBackground));
                    }
                    for (int i35 = 0; i35 < 3; i35++) {
                        canvas.drawCircle((getMeasuredWidth() - AndroidUtilities.m102dp(56)) + AndroidUtilities.m102dp(13) + (AndroidUtilities.m102dp(12) * i35), measuredHeight, AndroidUtilities.m103dp(13.0f), this.backgroundPaint);
                        canvas.drawCircle((getMeasuredWidth() - AndroidUtilities.m102dp(56)) + AndroidUtilities.m102dp(13) + (AndroidUtilities.m102dp(12) * i35), measuredHeight, AndroidUtilities.m103dp(12.0f), paint2);
                    }
                } else if (getViewType() == 14 || getViewType() == 17) {
                    int m102dp27 = AndroidUtilities.m102dp(12);
                    int m102dp28 = AndroidUtilities.m102dp(77);
                    int m102dp29 = AndroidUtilities.m102dp(4);
                    float m102dp30 = AndroidUtilities.m102dp(21);
                    float m102dp31 = AndroidUtilities.m102dp(41);
                    while (m102dp27 < getMeasuredWidth()) {
                        if (this.backgroundPaint == null) {
                            this.backgroundPaint = new Paint(i11);
                        }
                        this.backgroundPaint.setColor(Theme.getColor(Theme.key_dialogBackground, this.resourcesProvider));
                        RectF rectF3 = AndroidUtilities.rectTmp;
                        int i36 = m102dp27 + m102dp28;
                        rectF3.set(AndroidUtilities.m102dp(i4) + m102dp27, AndroidUtilities.m102dp(i4), i36 - AndroidUtilities.m102dp(i4), getMeasuredHeight() - AndroidUtilities.m102dp(i4));
                        canvas.drawRoundRect(rectF3, AndroidUtilities.m102dp(6), AndroidUtilities.m102dp(6), paint2);
                        if (getViewType() == 14) {
                            float m102dp32 = AndroidUtilities.m102dp(8) + m102dp29;
                            float f5 = m102dp27;
                            float m102dp33 = AndroidUtilities.m102dp(22) + m102dp29 + f5;
                            this.rectF.set(m102dp33, m102dp32, m102dp33 + m102dp31, m102dp32 + m102dp30);
                            RectF rectF4 = this.rectF;
                            canvas.drawRoundRect(rectF4, rectF4.height() * 0.5f, this.rectF.height() * 0.5f, this.backgroundPaint);
                            float m102dp34 = m102dp32 + AndroidUtilities.m102dp(i4) + m102dp30;
                            float m102dp35 = f5 + AndroidUtilities.m102dp(5) + m102dp29;
                            this.rectF.set(m102dp35, m102dp34, m102dp35 + m102dp31, m102dp34 + m102dp30);
                            RectF rectF5 = this.rectF;
                            canvas.drawRoundRect(rectF5, rectF5.height() * 0.5f, this.rectF.height() * 0.5f, this.backgroundPaint);
                        } else if (getViewType() == 17) {
                            float m102dp36 = AndroidUtilities.m102dp(5);
                            float m102dp37 = AndroidUtilities.m102dp(32);
                            float f6 = m102dp27 + ((m102dp28 - m102dp37) / 2.0f);
                            rectF3.set(f6, AndroidUtilities.m102dp(21), m102dp37 + f6, m102dp3 + AndroidUtilities.m102dp(32));
                            canvas.drawRoundRect(rectF3, m102dp36, m102dp36, this.backgroundPaint);
                            canvas.drawCircle(m102dp27 + (m102dp28 / 2), getMeasuredHeight() - AndroidUtilities.m102dp(20), AndroidUtilities.m102dp(8), this.backgroundPaint);
                            m102dp27 = i36;
                            i11 = 1;
                            i4 = 4;
                        }
                        canvas.drawCircle(m102dp27 + (m102dp28 / 2), getMeasuredHeight() - AndroidUtilities.m102dp(20), AndroidUtilities.m102dp(8), this.backgroundPaint);
                        m102dp27 = i36;
                        i11 = 1;
                        i4 = 4;
                    }
                } else if (getViewType() == 15) {
                    int m102dp38 = AndroidUtilities.m102dp(23);
                    int m102dp39 = AndroidUtilities.m102dp(4);
                    while (i2 <= getMeasuredHeight()) {
                        float f7 = m102dp38;
                        canvas.drawCircle(checkRtl(this.paddingLeft + AndroidUtilities.m102dp(12)) + f7, AndroidUtilities.m102dp(8) + i2 + m102dp38, f7, paint2);
                        this.rectF.set(this.paddingLeft + AndroidUtilities.m102dp(74), AndroidUtilities.m102dp(12) + i2, this.paddingLeft + AndroidUtilities.m102dp(260), AndroidUtilities.m102dp(20) + i2);
                        checkRtl(this.rectF);
                        float f8 = m102dp39;
                        canvas.drawRoundRect(this.rectF, f8, f8, paint2);
                        this.rectF.set(this.paddingLeft + AndroidUtilities.m102dp(74), AndroidUtilities.m102dp(36) + i2, this.paddingLeft + AndroidUtilities.m102dp(140), AndroidUtilities.m102dp(42) + i2);
                        checkRtl(this.rectF);
                        canvas.drawRoundRect(this.rectF, f8, f8, paint2);
                        i2 += getCellHeight(getMeasuredWidth());
                        int i37 = i10 + 1;
                        if (this.isSingleCell && i37 >= this.itemsCount) {
                            break;
                        }
                        i10 = i37;
                    }
                } else if (getViewType() == 16 || getViewType() == 23) {
                    int i38 = 0;
                    while (i2 <= getMeasuredHeight()) {
                        canvas.drawCircle(checkRtl(this.paddingLeft + AndroidUtilities.m102dp(8) + m102dp4), AndroidUtilities.m102dp(24) + i2, AndroidUtilities.m102dp(18), paint2);
                        this.rectF.set(this.paddingLeft + AndroidUtilities.m102dp(58), AndroidUtilities.m102dp(20) + i2, getWidth() - AndroidUtilities.m102dp(53), AndroidUtilities.m102dp(28) + i2);
                        checkRtl(this.rectF);
                        canvas.drawRoundRect(this.rectF, AndroidUtilities.m102dp(8), AndroidUtilities.m102dp(8), paint2);
                        if (i38 < 4) {
                            canvas.drawCircle(checkRtl((getWidth() - AndroidUtilities.m102dp(12)) - m102dp5), AndroidUtilities.m102dp(24) + i2, AndroidUtilities.m102dp(12), paint2);
                        }
                        i2 += getCellHeight(getMeasuredWidth());
                        i38++;
                        if (this.isSingleCell && i38 >= this.itemsCount) {
                            break;
                        }
                    }
                    this.rectF.set(this.paddingLeft + AndroidUtilities.m102dp(8), AndroidUtilities.m102dp(20) + i2, getWidth() - AndroidUtilities.m102dp(8), AndroidUtilities.m102dp(28) + i2);
                    checkRtl(this.rectF);
                    canvas.drawRoundRect(this.rectF, AndroidUtilities.m102dp(8), AndroidUtilities.m102dp(8), paint2);
                    this.rectF.set(this.paddingLeft + AndroidUtilities.m102dp(8), AndroidUtilities.m102dp(36) + i2, getWidth() - AndroidUtilities.m102dp(53), i2 + AndroidUtilities.m102dp(44));
                    checkRtl(this.rectF);
                    canvas.drawRoundRect(this.rectF, AndroidUtilities.m102dp(8), AndroidUtilities.m102dp(8), paint2);
                } else {
                    int i39 = this.viewType;
                    if (i39 == 21) {
                        while (i2 <= getMeasuredHeight()) {
                            canvas.drawCircle(checkRtl(AndroidUtilities.m102dp(20) + m102dp10), (AndroidUtilities.m102dp(58) >> 1) + i2, AndroidUtilities.m102dp(46) >> 1, paint2);
                            this.rectF.set(AndroidUtilities.m102dp(74), AndroidUtilities.m102dp(16) + i2, AndroidUtilities.m102dp(140), AndroidUtilities.m102dp(24) + i2);
                            checkRtl(this.rectF);
                            canvas.drawRoundRect(this.rectF, AndroidUtilities.m102dp(4), AndroidUtilities.m102dp(4), paint2);
                            this.rectF.set(AndroidUtilities.m102dp(74), AndroidUtilities.m102dp(38) + i2, AndroidUtilities.m102dp(260), AndroidUtilities.m102dp(46) + i2);
                            checkRtl(this.rectF);
                            canvas.drawRoundRect(this.rectF, AndroidUtilities.m102dp(4), AndroidUtilities.m102dp(4), paint2);
                            i2 += getCellHeight(getMeasuredWidth());
                            int i40 = i10 + 1;
                            if (this.isSingleCell && i40 >= this.itemsCount) {
                                break;
                            }
                            i10 = i40;
                        }
                    } else if (i39 == 22) {
                        while (i2 <= getMeasuredHeight()) {
                            canvas.drawCircle(checkRtl(AndroidUtilities.m102dp(20) + m102dp9), AndroidUtilities.m102dp(6) + i2 + m102dp9, AndroidUtilities.m102dp(48) >> 1, paint2);
                            this.rectF.set(AndroidUtilities.m102dp(76), AndroidUtilities.m102dp(16) + i2, AndroidUtilities.m102dp(140), AndroidUtilities.m102dp(24) + i2);
                            checkRtl(this.rectF);
                            canvas.drawRoundRect(this.rectF, AndroidUtilities.m102dp(4), AndroidUtilities.m102dp(4), paint2);
                            this.rectF.set(AndroidUtilities.m102dp(76), AndroidUtilities.m102dp(38) + i2, AndroidUtilities.m102dp(260), AndroidUtilities.m102dp(46) + i2);
                            checkRtl(this.rectF);
                            canvas.drawRoundRect(this.rectF, AndroidUtilities.m102dp(4), AndroidUtilities.m102dp(4), paint2);
                            i2 += getCellHeight(getMeasuredWidth());
                            int i41 = i10 + 1;
                            if (this.isSingleCell && i41 >= this.itemsCount) {
                                break;
                            }
                            i10 = i41;
                        }
                    } else if (i39 == 25) {
                        while (i2 <= getMeasuredHeight()) {
                            canvas.drawCircle(AndroidUtilities.m102dp(17) + m102dp8, AndroidUtilities.m102dp(6) + i2 + m102dp8, AndroidUtilities.m102dp(38) >> 1, paint2);
                            this.rectF.set(AndroidUtilities.m102dp(76), AndroidUtilities.m102dp(21) + i2, AndroidUtilities.m102dp(220), AndroidUtilities.m102dp(29) + i2);
                            canvas.drawRoundRect(this.rectF, AndroidUtilities.m102dp(4), AndroidUtilities.m102dp(4), paint2);
                            i2 += getCellHeight(getMeasuredWidth());
                            int i42 = i10 + 1;
                            if (this.isSingleCell && i42 >= this.itemsCount) {
                                break;
                            }
                            i10 = i42;
                        }
                    } else if (i39 == 26) {
                        while (i2 <= getMeasuredHeight()) {
                            canvas.drawCircle(LocaleController.isRTL ? (getMeasuredWidth() - AndroidUtilities.m102dp(21)) - m102dp7 : AndroidUtilities.m102dp(21) + m102dp7, AndroidUtilities.m102dp(16) + i2 + m102dp7, AndroidUtilities.m102dp(21) >> 1, paint2);
                            this.rectF.set(AndroidUtilities.m102dp(60), AndroidUtilities.m102dp(21) + i2, AndroidUtilities.m102dp(190), AndroidUtilities.m102dp(29) + i2);
                            checkRtl(this.rectF);
                            canvas.drawRoundRect(this.rectF, AndroidUtilities.m102dp(4), AndroidUtilities.m102dp(4), paint2);
                            this.rectF.set(getMeasuredWidth() - AndroidUtilities.m102dp(16), AndroidUtilities.m102dp(21) + i2, getMeasuredWidth() - AndroidUtilities.m102dp(62), AndroidUtilities.m102dp(29) + i2);
                            checkRtl(this.rectF);
                            canvas.drawRoundRect(this.rectF, AndroidUtilities.m102dp(4), AndroidUtilities.m102dp(4), paint2);
                            i2 += getCellHeight(getMeasuredWidth());
                            int i43 = i10 + 1;
                            if (this.isSingleCell && i43 >= this.itemsCount) {
                                break;
                            }
                            i10 = i43;
                        }
                    } else if (getViewType() == 28) {
                        while (i2 <= getMeasuredHeight()) {
                            canvas.drawCircle(checkRtl(this.paddingLeft + AndroidUtilities.m102dp(10) + m102dp6), (AndroidUtilities.m102dp(58) >> 1) + i2, AndroidUtilities.m102dp(24), paint2);
                            this.rectF.set(this.paddingLeft + AndroidUtilities.m102dp(68), AndroidUtilities.m102dp(17) + i2, this.paddingLeft + AndroidUtilities.m102dp(260), i2 + AndroidUtilities.m102dp(25));
                            checkRtl(this.rectF);
                            canvas.drawRoundRect(this.rectF, AndroidUtilities.m102dp(4), AndroidUtilities.m102dp(4), paint2);
                            this.rectF.set(this.paddingLeft + AndroidUtilities.m102dp(68), AndroidUtilities.m102dp(39) + i2, this.paddingLeft + AndroidUtilities.m102dp(140), AndroidUtilities.m102dp(47) + i2);
                            checkRtl(this.rectF);
                            canvas.drawRoundRect(this.rectF, AndroidUtilities.m102dp(4), AndroidUtilities.m102dp(4), paint2);
                            if (this.showDate) {
                                this.rectF.set(getMeasuredWidth() - AndroidUtilities.m102dp(50), AndroidUtilities.m102dp(20) + i2, getMeasuredWidth() - AndroidUtilities.m102dp(12), AndroidUtilities.m102dp(28) + i2);
                                checkRtl(this.rectF);
                                canvas.drawRoundRect(this.rectF, AndroidUtilities.m102dp(4), AndroidUtilities.m102dp(4), paint2);
                            }
                            i2 += getCellHeight(getMeasuredWidth());
                            int i44 = i10 + 1;
                            if (this.isSingleCell && i44 >= this.itemsCount) {
                                break;
                            }
                            i10 = i44;
                        }
                    }
                }
            }
        }
        invalidate();
    }

    public void updateGradient() {
        FlickerLoadingView flickerLoadingView = this.globalGradientView;
        if (flickerLoadingView != null) {
            flickerLoadingView.updateGradient();
            return;
        }
        long elapsedRealtime = SystemClock.elapsedRealtime();
        long abs = Math.abs(this.lastUpdateTime - elapsedRealtime);
        if (abs > 17) {
            abs = 16;
        }
        if (abs < 4) {
            abs = 0;
        }
        int i = this.parentWidth;
        if (i == 0) {
            i = getMeasuredWidth();
        }
        int i2 = this.parentHeight;
        if (i2 == 0) {
            i2 = getMeasuredHeight();
        }
        this.lastUpdateTime = elapsedRealtime;
        if (this.isSingleCell || this.viewType == 13 || getViewType() == 14 || getViewType() == 17) {
            int i3 = (int) (this.totalTranslation + (((float) (abs * i)) / 400.0f));
            this.totalTranslation = i3;
            if (i3 >= i * 2) {
                this.totalTranslation = (-this.gradientWidth) * 2;
            }
            this.matrix.setTranslate(this.totalTranslation + this.parentXOffset, BitmapDescriptorFactory.HUE_RED);
        } else {
            int i4 = (int) (this.totalTranslation + (((float) (abs * i2)) / 400.0f));
            this.totalTranslation = i4;
            if (i4 >= i2 * 2) {
                this.totalTranslation = (-this.gradientWidth) * 2;
            }
            this.matrix.setTranslate(this.parentXOffset, this.totalTranslation);
        }
        LinearGradient linearGradient = this.gradient;
        if (linearGradient != null) {
            linearGradient.setLocalMatrix(this.matrix);
        }
    }

    public void updateColors() {
        int i;
        FlickerLoadingView flickerLoadingView = this.globalGradientView;
        if (flickerLoadingView != null) {
            flickerLoadingView.updateColors();
            return;
        }
        int themedColor = getThemedColor(this.colorKey1);
        int themedColor2 = getThemedColor(this.colorKey2);
        if (this.color1 == themedColor2 && this.color0 == themedColor) {
            return;
        }
        this.color0 = themedColor;
        this.color1 = themedColor2;
        if (this.isSingleCell || (i = this.viewType) == 13 || i == 14 || i == 17) {
            int m102dp = AndroidUtilities.m102dp(200);
            this.gradientWidth = m102dp;
            this.gradient = new LinearGradient((float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, m102dp, (float) BitmapDescriptorFactory.HUE_RED, new int[]{themedColor2, themedColor, themedColor, themedColor2}, new float[]{BitmapDescriptorFactory.HUE_RED, 0.4f, 0.6f, 1.0f}, Shader.TileMode.CLAMP);
        } else {
            int m102dp2 = AndroidUtilities.m102dp(600);
            this.gradientWidth = m102dp2;
            this.gradient = new LinearGradient((float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, m102dp2, new int[]{themedColor2, themedColor, themedColor, themedColor2}, new float[]{BitmapDescriptorFactory.HUE_RED, 0.4f, 0.6f, 1.0f}, Shader.TileMode.CLAMP);
        }
        this.paint.setShader(this.gradient);
    }

    private float checkRtl(float f) {
        return LocaleController.isRTL ? getMeasuredWidth() - f : f;
    }

    private void checkRtl(RectF rectF) {
        if (LocaleController.isRTL) {
            rectF.left = getMeasuredWidth() - rectF.left;
            rectF.right = getMeasuredWidth() - rectF.right;
        }
    }

    private int getCellHeight(int i) {
        if (getViewType() == 100) {
            return AndroidUtilities.m102dp(60);
        }
        switch (getViewType()) {
            case 1:
                return AndroidUtilities.m102dp(78) + 1;
            case 2:
                return ((i - (AndroidUtilities.m102dp(2) * (getColumnsCount() - 1))) / getColumnsCount()) + AndroidUtilities.m102dp(2);
            case 3:
            case 4:
                return AndroidUtilities.m102dp(56);
            case 5:
                return AndroidUtilities.m102dp(80);
            case 6:
            case 18:
                return AndroidUtilities.m102dp(64);
            case 7:
                return AndroidUtilities.m102dp((SharedConfig.isDialogsCompactModeEnabled ? 48 : SharedConfig.useThreeLinesLayout ? 78 : 72) + 1);
            case 8:
                return AndroidUtilities.m102dp(61);
            case 9:
                return AndroidUtilities.m102dp(66);
            case 10:
                return AndroidUtilities.m102dp(58);
            case 11:
                return AndroidUtilities.m102dp(36);
            case 12:
                return AndroidUtilities.m102dp(103);
            case 13:
            case 14:
            case 17:
            case 20:
            case 27:
            default:
                return 0;
            case 15:
                return AndroidUtilities.m102dp(107);
            case 16:
            case 23:
                return AndroidUtilities.m102dp(50);
            case 19:
                return AndroidUtilities.m102dp(58);
            case 21:
                return AndroidUtilities.m102dp(58);
            case 22:
                return AndroidUtilities.m102dp(60);
            case 24:
                if (!SharedConfig.isDialogsCompactModeEnabled) {
                    r2 = (SharedConfig.useThreeLinesLayout ? 76 : 64) + 1;
                }
                return AndroidUtilities.m102dp(r2);
            case 25:
                return AndroidUtilities.m102dp(51);
            case 26:
                return AndroidUtilities.m102dp(50) + 1;
            case 28:
                return AndroidUtilities.m102dp(58);
        }
    }

    public void showDate(boolean z) {
        this.showDate = z;
    }

    public void setUseHeaderOffset(boolean z) {
        this.useHeaderOffset = z;
    }

    public void skipDrawItemsCount(int i) {
        this.skipDrawItemsCount = i;
    }

    public void setPaddingTop(int i) {
        this.paddingTop = i;
        invalidate();
    }

    public void setPaddingLeft(int i) {
        this.paddingLeft = i;
        invalidate();
    }

    public void setItemsCount(int i) {
        this.itemsCount = i;
    }

    private int getThemedColor(int i) {
        return Theme.getColor(i, this.resourcesProvider);
    }

    public void setGlobalGradientView(FlickerLoadingView flickerLoadingView) {
        this.globalGradientView = flickerLoadingView;
    }

    public void setParentSize(int i, int i2, float f) {
        this.parentWidth = i;
        this.parentHeight = i2;
        this.parentXOffset = f;
    }

    public Paint getPaint() {
        return this.paint;
    }

    public void setIgnoreHeightCheck(boolean z) {
        this.ignoreHeightCheck = z;
    }
}
