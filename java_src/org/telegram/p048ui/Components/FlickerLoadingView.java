package org.telegram.p048ui.Components;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import android.os.SystemClock;
import android.view.View;
import com.google.android.exoplayer2.extractor.p016ts.PsExtractor;
import com.google.android.exoplayer2.extractor.p016ts.TsExtractor;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Random;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.SharedConfig;
import org.telegram.p048ui.ActionBar.Theme;
/* renamed from: org.telegram.ui.Components.FlickerLoadingView */
/* loaded from: classes6.dex */
public class FlickerLoadingView extends View {
    private Paint backgroundPaint;
    private int color0;
    private int color1;
    private String colorKey1;
    private String colorKey2;
    private String colorKey3;
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

    public void setColors(String str, String str2, String str3) {
        this.colorKey1 = str;
        this.colorKey2 = str2;
        this.colorKey3 = str3;
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
        this.colorKey1 = "actionBarDefaultSubmenuBackground";
        this.colorKey2 = "listSelectorSDK21";
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
        int m50dp;
        int m50dp2;
        int m50dp3;
        int m50dp4;
        int m50dp5;
        int m50dp6;
        int m50dp7;
        int m50dp8;
        int m50dp9;
        int m50dp10;
        int m50dp11;
        int m50dp12;
        int m50dp13;
        int m50dp14;
        int m50dp15;
        int m50dp16;
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
            int m50dp17 = i2 + AndroidUtilities.m50dp(32);
            String str = this.colorKey3;
            if (str != null) {
                this.headerPaint.setColor(getThemedColor(str));
            }
            canvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), AndroidUtilities.m50dp(32), this.colorKey3 != null ? this.headerPaint : paint2);
            i2 = m50dp17;
        }
        int i3 = 8;
        if (getViewType() == 100) {
            int cellHeight = getCellHeight(getMeasuredWidth()) / 2;
            int m50dp18 = AndroidUtilities.m50dp(18);
            int m50dp19 = AndroidUtilities.m50dp(16);
            int m50dp20 = AndroidUtilities.m50dp(4);
            int m50dp21 = AndroidUtilities.m50dp(6);
            int m50dp22 = AndroidUtilities.m50dp(6);
            int m50dp23 = AndroidUtilities.m50dp(8);
            int i4 = m50dp18 + m50dp19;
            int i5 = cellHeight - m50dp22;
            int i6 = m50dp22 + cellHeight;
            float f = cellHeight;
            canvas.drawCircle(checkRtl(i4), f, m50dp19, paint2);
            float f2 = i4 * 2;
            this.rectF.set(f2, i5 - m50dp21, (measuredWidth / 4) + i, i5);
            checkRtl(this.rectF);
            float f3 = m50dp20;
            canvas.drawRoundRect(this.rectF, f3, f3, paint2);
            this.rectF.set(f2, i6, (measuredWidth / 2) + i, m50dp21 + i6);
            checkRtl(this.rectF);
            canvas.drawRoundRect(this.rectF, f3, f3, paint2);
            canvas.drawCircle(checkRtl((measuredWidth - m50dp18) - m50dp23), f, m50dp23, paint2);
        } else {
            int i7 = 24;
            int i8 = 0;
            int i9 = 1;
            if (getViewType() == 7) {
                while (i2 <= getMeasuredHeight()) {
                    int cellHeight2 = getCellHeight(getMeasuredWidth());
                    canvas.drawCircle(checkRtl(AndroidUtilities.m50dp(10) + m50dp16), (cellHeight2 >> 1) + i2, AndroidUtilities.m50dp(28), paint2);
                    this.rectF.set(AndroidUtilities.m50dp(76), AndroidUtilities.m50dp(16) + i2, AndroidUtilities.m50dp(148), AndroidUtilities.m50dp(24) + i2);
                    checkRtl(this.rectF);
                    canvas.drawRoundRect(this.rectF, AndroidUtilities.m50dp(4), AndroidUtilities.m50dp(4), paint2);
                    this.rectF.set(AndroidUtilities.m50dp(76), AndroidUtilities.m50dp(38) + i2, AndroidUtilities.m50dp(268), AndroidUtilities.m50dp(46) + i2);
                    checkRtl(this.rectF);
                    canvas.drawRoundRect(this.rectF, AndroidUtilities.m50dp(4), AndroidUtilities.m50dp(4), paint2);
                    if (SharedConfig.useThreeLinesLayout) {
                        this.rectF.set(AndroidUtilities.m50dp(76), AndroidUtilities.m50dp(54) + i2, AndroidUtilities.m50dp(220), AndroidUtilities.m50dp(62) + i2);
                        checkRtl(this.rectF);
                        canvas.drawRoundRect(this.rectF, AndroidUtilities.m50dp(4), AndroidUtilities.m50dp(4), paint2);
                    }
                    if (this.showDate) {
                        this.rectF.set(getMeasuredWidth() - AndroidUtilities.m50dp(50), AndroidUtilities.m50dp(16) + i2, getMeasuredWidth() - AndroidUtilities.m50dp(12), AndroidUtilities.m50dp(24) + i2);
                        checkRtl(this.rectF);
                        canvas.drawRoundRect(this.rectF, AndroidUtilities.m50dp(4), AndroidUtilities.m50dp(4), paint2);
                    }
                    i2 += getCellHeight(getMeasuredWidth());
                    int i10 = i8 + 1;
                    if (this.isSingleCell && i10 >= this.itemsCount) {
                        break;
                    }
                    i8 = i10;
                }
            } else if (getViewType() == 24) {
                while (i2 <= getMeasuredHeight()) {
                    canvas.drawCircle(checkRtl(AndroidUtilities.m50dp(10) + m50dp15), AndroidUtilities.m50dp(10) + i2 + m50dp15, AndroidUtilities.m50dp(14), paint2);
                    canvas.save();
                    canvas.translate(BitmapDescriptorFactory.HUE_RED, -AndroidUtilities.m50dp(4));
                    this.rectF.set(AndroidUtilities.m50dp(50), AndroidUtilities.m50dp(16) + i2, AndroidUtilities.m50dp(148), AndroidUtilities.m50dp(24) + i2);
                    checkRtl(this.rectF);
                    canvas.drawRoundRect(this.rectF, AndroidUtilities.m50dp(4), AndroidUtilities.m50dp(4), paint2);
                    this.rectF.set(AndroidUtilities.m50dp(50), AndroidUtilities.m50dp(38) + i2, AndroidUtilities.m50dp(268), AndroidUtilities.m50dp(46) + i2);
                    checkRtl(this.rectF);
                    canvas.drawRoundRect(this.rectF, AndroidUtilities.m50dp(4), AndroidUtilities.m50dp(4), paint2);
                    if (SharedConfig.useThreeLinesLayout) {
                        this.rectF.set(AndroidUtilities.m50dp(50), AndroidUtilities.m50dp(54) + i2, AndroidUtilities.m50dp(220), AndroidUtilities.m50dp(62) + i2);
                        checkRtl(this.rectF);
                        canvas.drawRoundRect(this.rectF, AndroidUtilities.m50dp(4), AndroidUtilities.m50dp(4), paint2);
                    }
                    if (this.showDate) {
                        this.rectF.set(getMeasuredWidth() - AndroidUtilities.m50dp(50), AndroidUtilities.m50dp(16) + i2, getMeasuredWidth() - AndroidUtilities.m50dp(12), AndroidUtilities.m50dp(24) + i2);
                        checkRtl(this.rectF);
                        canvas.drawRoundRect(this.rectF, AndroidUtilities.m50dp(4), AndroidUtilities.m50dp(4), paint2);
                    }
                    canvas.restore();
                    i2 += getCellHeight(getMeasuredWidth());
                    int i11 = i8 + 1;
                    if (this.isSingleCell && i11 >= this.itemsCount) {
                        break;
                    }
                    i8 = i11;
                }
            } else if (getViewType() == 18) {
                int i12 = i2;
                while (i12 <= getMeasuredHeight()) {
                    canvas.drawCircle(checkRtl(this.paddingLeft + AndroidUtilities.m50dp(9) + m50dp14), AndroidUtilities.m50dp(32) + i12, AndroidUtilities.m50dp(25), paint2);
                    int i13 = (i8 % 2 == 0 ? 52 : 72) + 76;
                    this.rectF.set(AndroidUtilities.m50dp(76), AndroidUtilities.m50dp(20) + i12, AndroidUtilities.m50dp(i13), AndroidUtilities.m50dp(28) + i12);
                    checkRtl(this.rectF);
                    canvas.drawRoundRect(this.rectF, AndroidUtilities.m50dp(4), AndroidUtilities.m50dp(4), paint2);
                    int i14 = i13 + 8;
                    this.rectF.set(AndroidUtilities.m50dp(i14), AndroidUtilities.m50dp(20) + i12, AndroidUtilities.m50dp(i14 + 84), AndroidUtilities.m50dp(28) + i12);
                    checkRtl(this.rectF);
                    canvas.drawRoundRect(this.rectF, AndroidUtilities.m50dp(4), AndroidUtilities.m50dp(4), paint2);
                    this.rectF.set(AndroidUtilities.m50dp(76), AndroidUtilities.m50dp(42) + i12, AndroidUtilities.m50dp(140), AndroidUtilities.m50dp(50) + i12);
                    checkRtl(this.rectF);
                    canvas.drawRoundRect(this.rectF, AndroidUtilities.m50dp(4), AndroidUtilities.m50dp(4), paint2);
                    canvas.drawLine(AndroidUtilities.m50dp(76), getCellHeight(getMeasuredWidth()) + i12, getMeasuredWidth(), getCellHeight(getMeasuredWidth()) + i12, paint2);
                    i12 += getCellHeight(getMeasuredWidth());
                    int i15 = i8 + 1;
                    if (this.isSingleCell && i15 >= this.itemsCount) {
                        break;
                    }
                    i8 = i15;
                }
            } else if (getViewType() == 19) {
                int i16 = i2;
                while (i16 <= getMeasuredHeight()) {
                    canvas.drawCircle(checkRtl(this.paddingLeft + AndroidUtilities.m50dp(9) + m50dp13), AndroidUtilities.m50dp(29) + i16, AndroidUtilities.m50dp(20), paint2);
                    this.rectF.set(AndroidUtilities.m50dp(76), AndroidUtilities.m50dp(16) + i16, AndroidUtilities.m50dp((i8 % 2 == 0 ? 92 : 128) + 76), AndroidUtilities.m50dp(i7) + i16);
                    checkRtl(this.rectF);
                    canvas.drawRoundRect(this.rectF, AndroidUtilities.m50dp(4), AndroidUtilities.m50dp(4), paint2);
                    this.rectF.set(AndroidUtilities.m50dp(76), AndroidUtilities.m50dp(38) + i16, AndroidUtilities.m50dp((int) PsExtractor.VIDEO_STREAM_MASK), AndroidUtilities.m50dp(46) + i16);
                    checkRtl(this.rectF);
                    canvas.drawRoundRect(this.rectF, AndroidUtilities.m50dp(4), AndroidUtilities.m50dp(4), paint2);
                    canvas.drawLine(AndroidUtilities.m50dp(76), getCellHeight(getMeasuredWidth()) + i16, getMeasuredWidth(), getCellHeight(getMeasuredWidth()) + i16, paint2);
                    i16 += getCellHeight(getMeasuredWidth());
                    int i17 = i8 + 1;
                    if (this.isSingleCell && i17 >= this.itemsCount) {
                        break;
                    }
                    i8 = i17;
                    i7 = 24;
                }
            } else if (getViewType() == 1) {
                while (i2 <= getMeasuredHeight()) {
                    canvas.drawCircle(checkRtl(AndroidUtilities.m50dp(9) + m50dp12), (AndroidUtilities.m50dp(78) >> 1) + i2, AndroidUtilities.m50dp(25), paint2);
                    this.rectF.set(AndroidUtilities.m50dp(68), AndroidUtilities.m50dp(20) + i2, AndroidUtilities.m50dp(140), AndroidUtilities.m50dp(28) + i2);
                    checkRtl(this.rectF);
                    canvas.drawRoundRect(this.rectF, AndroidUtilities.m50dp(4), AndroidUtilities.m50dp(4), paint2);
                    this.rectF.set(AndroidUtilities.m50dp(68), AndroidUtilities.m50dp(42) + i2, AndroidUtilities.m50dp(260), AndroidUtilities.m50dp(50) + i2);
                    checkRtl(this.rectF);
                    canvas.drawRoundRect(this.rectF, AndroidUtilities.m50dp(4), AndroidUtilities.m50dp(4), paint2);
                    if (this.showDate) {
                        this.rectF.set(getMeasuredWidth() - AndroidUtilities.m50dp(50), AndroidUtilities.m50dp(20) + i2, getMeasuredWidth() - AndroidUtilities.m50dp(12), AndroidUtilities.m50dp(28) + i2);
                        checkRtl(this.rectF);
                        canvas.drawRoundRect(this.rectF, AndroidUtilities.m50dp(4), AndroidUtilities.m50dp(4), paint2);
                    }
                    i2 += getCellHeight(getMeasuredWidth());
                    int i18 = i8 + 1;
                    if (this.isSingleCell && i18 >= this.itemsCount) {
                        break;
                    }
                    i8 = i18;
                }
            } else if (getViewType() == 2) {
                int measuredWidth2 = (getMeasuredWidth() - (AndroidUtilities.m50dp(2) * (getColumnsCount() - 1))) / getColumnsCount();
                int i19 = i2;
                int i20 = 0;
                while (true) {
                    if (i19 >= getMeasuredHeight() && !this.isSingleCell) {
                        break;
                    }
                    for (int i21 = 0; i21 < getColumnsCount(); i21++) {
                        if (i20 != 0 || i21 >= this.skipDrawItemsCount) {
                            canvas.drawRect((measuredWidth2 + AndroidUtilities.m50dp(2)) * i21, i19, m50dp11 + measuredWidth2, i19 + measuredWidth2, paint2);
                        }
                    }
                    i19 += measuredWidth2 + AndroidUtilities.m50dp(2);
                    i20++;
                    if (this.isSingleCell && i20 >= 2) {
                        break;
                    }
                }
            } else if (getViewType() == 3) {
                while (i2 <= getMeasuredHeight()) {
                    this.rectF.set(AndroidUtilities.m50dp(12), AndroidUtilities.m50dp(8) + i2, AndroidUtilities.m50dp(52), AndroidUtilities.m50dp(48) + i2);
                    checkRtl(this.rectF);
                    canvas.drawRoundRect(this.rectF, AndroidUtilities.m50dp(4), AndroidUtilities.m50dp(4), paint2);
                    this.rectF.set(AndroidUtilities.m50dp(68), AndroidUtilities.m50dp(12) + i2, AndroidUtilities.m50dp(140), AndroidUtilities.m50dp(20) + i2);
                    checkRtl(this.rectF);
                    canvas.drawRoundRect(this.rectF, AndroidUtilities.m50dp(4), AndroidUtilities.m50dp(4), paint2);
                    this.rectF.set(AndroidUtilities.m50dp(68), AndroidUtilities.m50dp(34) + i2, AndroidUtilities.m50dp(260), AndroidUtilities.m50dp(42) + i2);
                    checkRtl(this.rectF);
                    canvas.drawRoundRect(this.rectF, AndroidUtilities.m50dp(4), AndroidUtilities.m50dp(4), paint2);
                    if (this.showDate) {
                        this.rectF.set(getMeasuredWidth() - AndroidUtilities.m50dp(50), AndroidUtilities.m50dp(12) + i2, getMeasuredWidth() - AndroidUtilities.m50dp(12), AndroidUtilities.m50dp(20) + i2);
                        checkRtl(this.rectF);
                        canvas.drawRoundRect(this.rectF, AndroidUtilities.m50dp(4), AndroidUtilities.m50dp(4), paint2);
                    }
                    i2 += getCellHeight(getMeasuredWidth());
                    int i22 = i8 + 1;
                    if (this.isSingleCell && i22 >= this.itemsCount) {
                        break;
                    }
                    i8 = i22;
                }
            } else if (getViewType() == 4) {
                while (i2 <= getMeasuredHeight()) {
                    canvas.drawCircle(checkRtl(AndroidUtilities.m50dp(12) + m50dp10), AndroidUtilities.m50dp(6) + i2 + m50dp10, AndroidUtilities.m50dp(44) >> 1, paint2);
                    this.rectF.set(AndroidUtilities.m50dp(68), AndroidUtilities.m50dp(12) + i2, AndroidUtilities.m50dp(140), AndroidUtilities.m50dp(20) + i2);
                    checkRtl(this.rectF);
                    canvas.drawRoundRect(this.rectF, AndroidUtilities.m50dp(4), AndroidUtilities.m50dp(4), paint2);
                    this.rectF.set(AndroidUtilities.m50dp(68), AndroidUtilities.m50dp(34) + i2, AndroidUtilities.m50dp(260), AndroidUtilities.m50dp(42) + i2);
                    checkRtl(this.rectF);
                    canvas.drawRoundRect(this.rectF, AndroidUtilities.m50dp(4), AndroidUtilities.m50dp(4), paint2);
                    if (this.showDate) {
                        this.rectF.set(getMeasuredWidth() - AndroidUtilities.m50dp(50), AndroidUtilities.m50dp(12) + i2, getMeasuredWidth() - AndroidUtilities.m50dp(12), AndroidUtilities.m50dp(20) + i2);
                        checkRtl(this.rectF);
                        canvas.drawRoundRect(this.rectF, AndroidUtilities.m50dp(4), AndroidUtilities.m50dp(4), paint2);
                    }
                    i2 += getCellHeight(getMeasuredWidth());
                    int i23 = i8 + 1;
                    if (this.isSingleCell && i23 >= this.itemsCount) {
                        break;
                    }
                    i8 = i23;
                }
            } else if (getViewType() == 5) {
                while (i2 <= getMeasuredHeight()) {
                    this.rectF.set(AndroidUtilities.m50dp(10), AndroidUtilities.m50dp(11) + i2, AndroidUtilities.m50dp(62), AndroidUtilities.m50dp(63) + i2);
                    checkRtl(this.rectF);
                    canvas.drawRoundRect(this.rectF, AndroidUtilities.m50dp(4), AndroidUtilities.m50dp(4), paint2);
                    this.rectF.set(AndroidUtilities.m50dp(68), AndroidUtilities.m50dp(12) + i2, AndroidUtilities.m50dp(140), AndroidUtilities.m50dp(20) + i2);
                    checkRtl(this.rectF);
                    canvas.drawRoundRect(this.rectF, AndroidUtilities.m50dp(4), AndroidUtilities.m50dp(4), paint2);
                    this.rectF.set(AndroidUtilities.m50dp(68), AndroidUtilities.m50dp(34) + i2, AndroidUtilities.m50dp(268), AndroidUtilities.m50dp(42) + i2);
                    checkRtl(this.rectF);
                    canvas.drawRoundRect(this.rectF, AndroidUtilities.m50dp(4), AndroidUtilities.m50dp(4), paint2);
                    this.rectF.set(AndroidUtilities.m50dp(68), AndroidUtilities.m50dp(54) + i2, AndroidUtilities.m50dp((int) TsExtractor.TS_PACKET_SIZE), AndroidUtilities.m50dp(62) + i2);
                    checkRtl(this.rectF);
                    canvas.drawRoundRect(this.rectF, AndroidUtilities.m50dp(4), AndroidUtilities.m50dp(4), paint2);
                    if (this.showDate) {
                        this.rectF.set(getMeasuredWidth() - AndroidUtilities.m50dp(50), AndroidUtilities.m50dp(12) + i2, getMeasuredWidth() - AndroidUtilities.m50dp(12), AndroidUtilities.m50dp(20) + i2);
                        checkRtl(this.rectF);
                        canvas.drawRoundRect(this.rectF, AndroidUtilities.m50dp(4), AndroidUtilities.m50dp(4), paint2);
                    }
                    i2 += getCellHeight(getMeasuredWidth());
                    int i24 = i8 + 1;
                    if (this.isSingleCell && i24 >= this.itemsCount) {
                        break;
                    }
                    i8 = i24;
                }
            } else if (getViewType() == 6 || getViewType() == 10) {
                while (i2 <= getMeasuredHeight()) {
                    canvas.drawCircle(checkRtl(this.paddingLeft + AndroidUtilities.m50dp(9) + m50dp), (AndroidUtilities.m50dp(64) >> 1) + i2, AndroidUtilities.m50dp(23), paint2);
                    this.rectF.set(this.paddingLeft + AndroidUtilities.m50dp(68), AndroidUtilities.m50dp(17) + i2, this.paddingLeft + AndroidUtilities.m50dp(260), AndroidUtilities.m50dp(25) + i2);
                    checkRtl(this.rectF);
                    canvas.drawRoundRect(this.rectF, AndroidUtilities.m50dp(4), AndroidUtilities.m50dp(4), paint2);
                    this.rectF.set(this.paddingLeft + AndroidUtilities.m50dp(68), AndroidUtilities.m50dp(39) + i2, this.paddingLeft + AndroidUtilities.m50dp(140), AndroidUtilities.m50dp(47) + i2);
                    checkRtl(this.rectF);
                    canvas.drawRoundRect(this.rectF, AndroidUtilities.m50dp(4), AndroidUtilities.m50dp(4), paint2);
                    if (this.showDate) {
                        this.rectF.set(getMeasuredWidth() - AndroidUtilities.m50dp(50), AndroidUtilities.m50dp(20) + i2, getMeasuredWidth() - AndroidUtilities.m50dp(12), AndroidUtilities.m50dp(28) + i2);
                        checkRtl(this.rectF);
                        canvas.drawRoundRect(this.rectF, AndroidUtilities.m50dp(4), AndroidUtilities.m50dp(4), paint2);
                    }
                    i2 += getCellHeight(getMeasuredWidth());
                    int i25 = i8 + 1;
                    if (this.isSingleCell && i25 >= this.itemsCount) {
                        break;
                    }
                    i8 = i25;
                }
            } else if (getViewType() == 8) {
                while (i2 <= getMeasuredHeight()) {
                    canvas.drawCircle(checkRtl(this.paddingLeft + AndroidUtilities.m50dp(11) + m50dp9), (AndroidUtilities.m50dp(64) >> 1) + i2, AndroidUtilities.m50dp(23), paint2);
                    this.rectF.set(this.paddingLeft + AndroidUtilities.m50dp(68), AndroidUtilities.m50dp(17) + i2, this.paddingLeft + AndroidUtilities.m50dp(140), AndroidUtilities.m50dp(25) + i2);
                    checkRtl(this.rectF);
                    canvas.drawRoundRect(this.rectF, AndroidUtilities.m50dp(4), AndroidUtilities.m50dp(4), paint2);
                    this.rectF.set(this.paddingLeft + AndroidUtilities.m50dp(68), AndroidUtilities.m50dp(39) + i2, this.paddingLeft + AndroidUtilities.m50dp(260), AndroidUtilities.m50dp(47) + i2);
                    checkRtl(this.rectF);
                    canvas.drawRoundRect(this.rectF, AndroidUtilities.m50dp(4), AndroidUtilities.m50dp(4), paint2);
                    if (this.showDate) {
                        this.rectF.set(getMeasuredWidth() - AndroidUtilities.m50dp(50), AndroidUtilities.m50dp(20) + i2, getMeasuredWidth() - AndroidUtilities.m50dp(12), AndroidUtilities.m50dp(28) + i2);
                        checkRtl(this.rectF);
                        canvas.drawRoundRect(this.rectF, AndroidUtilities.m50dp(4), AndroidUtilities.m50dp(4), paint2);
                    }
                    i2 += getCellHeight(getMeasuredWidth());
                    int i26 = i8 + 1;
                    if (this.isSingleCell && i26 >= this.itemsCount) {
                        break;
                    }
                    i8 = i26;
                }
            } else if (getViewType() == 9) {
                while (i2 <= getMeasuredHeight()) {
                    canvas.drawCircle(checkRtl(AndroidUtilities.m50dp(35)), (getCellHeight(getMeasuredWidth()) >> 1) + i2, AndroidUtilities.m50dp(32) / 2, paint2);
                    this.rectF.set(AndroidUtilities.m50dp(72), AndroidUtilities.m50dp(16) + i2, AndroidUtilities.m50dp(268), i2 + AndroidUtilities.m50dp(24));
                    checkRtl(this.rectF);
                    canvas.drawRoundRect(this.rectF, AndroidUtilities.m50dp(4), AndroidUtilities.m50dp(4), paint2);
                    this.rectF.set(AndroidUtilities.m50dp(72), AndroidUtilities.m50dp(38) + i2, AndroidUtilities.m50dp(140), AndroidUtilities.m50dp(46) + i2);
                    checkRtl(this.rectF);
                    canvas.drawRoundRect(this.rectF, AndroidUtilities.m50dp(4), AndroidUtilities.m50dp(4), paint2);
                    if (this.showDate) {
                        this.rectF.set(getMeasuredWidth() - AndroidUtilities.m50dp(50), AndroidUtilities.m50dp(16) + i2, getMeasuredWidth() - AndroidUtilities.m50dp(12), AndroidUtilities.m50dp(24) + i2);
                        checkRtl(this.rectF);
                        canvas.drawRoundRect(this.rectF, AndroidUtilities.m50dp(4), AndroidUtilities.m50dp(4), paint2);
                    }
                    i2 += getCellHeight(getMeasuredWidth());
                    int i27 = i8 + 1;
                    if (this.isSingleCell && i27 >= this.itemsCount) {
                        break;
                    }
                    i8 = i27;
                }
            } else if (getViewType() == 11) {
                int i28 = 0;
                while (i2 <= getMeasuredHeight()) {
                    this.rectF.set(AndroidUtilities.m50dp(18), AndroidUtilities.m51dp(14.0f), (getMeasuredWidth() * 0.5f) + AndroidUtilities.m51dp(this.randomParams[0] * 40.0f), AndroidUtilities.m51dp(14.0f) + AndroidUtilities.m50dp(8));
                    checkRtl(this.rectF);
                    canvas.drawRoundRect(this.rectF, AndroidUtilities.m50dp(4), AndroidUtilities.m50dp(4), paint2);
                    this.rectF.set(getMeasuredWidth() - AndroidUtilities.m50dp(18), AndroidUtilities.m51dp(14.0f), (getMeasuredWidth() - (getMeasuredWidth() * 0.2f)) - AndroidUtilities.m51dp(this.randomParams[0] * 20.0f), AndroidUtilities.m51dp(14.0f) + AndroidUtilities.m50dp(8));
                    checkRtl(this.rectF);
                    canvas.drawRoundRect(this.rectF, AndroidUtilities.m50dp(4), AndroidUtilities.m50dp(4), paint2);
                    i2 += getCellHeight(getMeasuredWidth());
                    i28++;
                    if (this.isSingleCell && i28 >= this.itemsCount) {
                        break;
                    }
                }
            } else if (getViewType() == 12) {
                int m50dp24 = i2 + AndroidUtilities.m50dp(14);
                while (m50dp24 <= getMeasuredHeight()) {
                    int measuredWidth3 = getMeasuredWidth() / 4;
                    for (int i29 = 0; i29 < 4; i29++) {
                        float f4 = (measuredWidth3 * i29) + (measuredWidth3 / 2.0f);
                        canvas.drawCircle(f4, AndroidUtilities.m50dp(7) + m50dp24 + (AndroidUtilities.m50dp(56) / 2.0f), AndroidUtilities.m51dp(28.0f), paint2);
                        float m50dp25 = AndroidUtilities.m50dp(7) + m50dp24 + AndroidUtilities.m50dp(56) + AndroidUtilities.m50dp(16);
                        RectF rectF = AndroidUtilities.rectTmp;
                        rectF.set(f4 - AndroidUtilities.m50dp(24), m50dp25 - AndroidUtilities.m50dp(4), f4 + AndroidUtilities.m50dp(24), m50dp25 + AndroidUtilities.m50dp(4));
                        canvas.drawRoundRect(rectF, AndroidUtilities.m50dp(4), AndroidUtilities.m50dp(4), paint2);
                    }
                    m50dp24 += getCellHeight(getMeasuredWidth());
                    if (this.isSingleCell) {
                        break;
                    }
                }
            } else if (getViewType() == 13) {
                float measuredHeight = getMeasuredHeight() / 2.0f;
                RectF rectF2 = AndroidUtilities.rectTmp;
                rectF2.set(AndroidUtilities.m50dp(40), measuredHeight - AndroidUtilities.m50dp(4), getMeasuredWidth() - AndroidUtilities.m50dp(120), AndroidUtilities.m50dp(4) + measuredHeight);
                canvas.drawRoundRect(rectF2, AndroidUtilities.m50dp(4), AndroidUtilities.m50dp(4), paint2);
                if (this.backgroundPaint == null) {
                    Paint paint3 = new Paint(1);
                    this.backgroundPaint = paint3;
                    paint3.setColor(Theme.getColor("actionBarDefaultSubmenuBackground"));
                }
                for (int i30 = 0; i30 < 3; i30++) {
                    canvas.drawCircle((getMeasuredWidth() - AndroidUtilities.m50dp(56)) + AndroidUtilities.m50dp(13) + (AndroidUtilities.m50dp(12) * i30), measuredHeight, AndroidUtilities.m51dp(13.0f), this.backgroundPaint);
                    canvas.drawCircle((getMeasuredWidth() - AndroidUtilities.m50dp(56)) + AndroidUtilities.m50dp(13) + (AndroidUtilities.m50dp(12) * i30), measuredHeight, AndroidUtilities.m51dp(12.0f), paint2);
                }
            } else if (getViewType() == 14 || getViewType() == 17) {
                int m50dp26 = AndroidUtilities.m50dp(12);
                int m50dp27 = AndroidUtilities.m50dp(77);
                int m50dp28 = AndroidUtilities.m50dp(4);
                float m50dp29 = AndroidUtilities.m50dp(21);
                float m50dp30 = AndroidUtilities.m50dp(41);
                while (m50dp26 < getMeasuredWidth()) {
                    if (this.backgroundPaint == null) {
                        this.backgroundPaint = new Paint(i9);
                    }
                    this.backgroundPaint.setColor(Theme.getColor("dialogBackground", this.resourcesProvider));
                    RectF rectF3 = AndroidUtilities.rectTmp;
                    int i31 = m50dp26 + m50dp27;
                    rectF3.set(AndroidUtilities.m50dp(4) + m50dp26, AndroidUtilities.m50dp(4), i31 - AndroidUtilities.m50dp(4), getMeasuredHeight() - AndroidUtilities.m50dp(4));
                    canvas.drawRoundRect(rectF3, AndroidUtilities.m50dp(6), AndroidUtilities.m50dp(6), paint2);
                    if (getViewType() == 14) {
                        float m50dp31 = AndroidUtilities.m50dp(i3) + m50dp28;
                        float f5 = m50dp26;
                        float m50dp32 = AndroidUtilities.m50dp(22) + m50dp28 + f5;
                        this.rectF.set(m50dp32, m50dp31, m50dp32 + m50dp30, m50dp31 + m50dp29);
                        RectF rectF4 = this.rectF;
                        canvas.drawRoundRect(rectF4, rectF4.height() * 0.5f, this.rectF.height() * 0.5f, this.backgroundPaint);
                        float m50dp33 = m50dp31 + AndroidUtilities.m50dp(4) + m50dp29;
                        float m50dp34 = f5 + AndroidUtilities.m50dp(5) + m50dp28;
                        this.rectF.set(m50dp34, m50dp33, m50dp34 + m50dp30, m50dp33 + m50dp29);
                        RectF rectF5 = this.rectF;
                        canvas.drawRoundRect(rectF5, rectF5.height() * 0.5f, this.rectF.height() * 0.5f, this.backgroundPaint);
                    } else if (getViewType() == 17) {
                        float m50dp35 = AndroidUtilities.m50dp(5);
                        float m50dp36 = AndroidUtilities.m50dp(32);
                        float f6 = m50dp26 + ((m50dp27 - m50dp36) / 2.0f);
                        rectF3.set(f6, AndroidUtilities.m50dp(21), m50dp36 + f6, m50dp2 + AndroidUtilities.m50dp(32));
                        canvas.drawRoundRect(rectF3, m50dp35, m50dp35, this.backgroundPaint);
                    }
                    canvas.drawCircle(m50dp26 + (m50dp27 / 2), getMeasuredHeight() - AndroidUtilities.m50dp(20), AndroidUtilities.m50dp(8), this.backgroundPaint);
                    m50dp26 = i31;
                    i9 = 1;
                    i3 = 8;
                }
            } else if (getViewType() == 15) {
                int m50dp37 = AndroidUtilities.m50dp(23);
                int m50dp38 = AndroidUtilities.m50dp(4);
                while (i2 <= getMeasuredHeight()) {
                    float f7 = m50dp37;
                    canvas.drawCircle(checkRtl(this.paddingLeft + AndroidUtilities.m50dp(12)) + f7, AndroidUtilities.m50dp(8) + i2 + m50dp37, f7, paint2);
                    this.rectF.set(this.paddingLeft + AndroidUtilities.m50dp(74), AndroidUtilities.m50dp(12) + i2, this.paddingLeft + AndroidUtilities.m50dp(260), AndroidUtilities.m50dp(20) + i2);
                    checkRtl(this.rectF);
                    float f8 = m50dp38;
                    canvas.drawRoundRect(this.rectF, f8, f8, paint2);
                    this.rectF.set(this.paddingLeft + AndroidUtilities.m50dp(74), AndroidUtilities.m50dp(36) + i2, this.paddingLeft + AndroidUtilities.m50dp(140), AndroidUtilities.m50dp(42) + i2);
                    checkRtl(this.rectF);
                    canvas.drawRoundRect(this.rectF, f8, f8, paint2);
                    i2 += getCellHeight(getMeasuredWidth());
                    int i32 = i8 + 1;
                    if (this.isSingleCell && i32 >= this.itemsCount) {
                        break;
                    }
                    i8 = i32;
                }
            } else if (getViewType() == 16 || getViewType() == 23) {
                int i33 = 0;
                while (i2 <= getMeasuredHeight()) {
                    canvas.drawCircle(checkRtl(this.paddingLeft + AndroidUtilities.m50dp(8) + m50dp3), AndroidUtilities.m50dp(24) + i2, AndroidUtilities.m50dp(18), paint2);
                    this.rectF.set(this.paddingLeft + AndroidUtilities.m50dp(58), AndroidUtilities.m50dp(20) + i2, getWidth() - AndroidUtilities.m50dp(53), AndroidUtilities.m50dp(28) + i2);
                    checkRtl(this.rectF);
                    canvas.drawRoundRect(this.rectF, AndroidUtilities.m50dp(8), AndroidUtilities.m50dp(8), paint2);
                    if (i33 < 4) {
                        canvas.drawCircle(checkRtl((getWidth() - AndroidUtilities.m50dp(12)) - m50dp4), AndroidUtilities.m50dp(24) + i2, AndroidUtilities.m50dp(12), paint2);
                    }
                    i2 += getCellHeight(getMeasuredWidth());
                    i33++;
                    if (this.isSingleCell && i33 >= this.itemsCount) {
                        break;
                    }
                }
                this.rectF.set(this.paddingLeft + AndroidUtilities.m50dp(8), AndroidUtilities.m50dp(20) + i2, getWidth() - AndroidUtilities.m50dp(8), AndroidUtilities.m50dp(28) + i2);
                checkRtl(this.rectF);
                canvas.drawRoundRect(this.rectF, AndroidUtilities.m50dp(8), AndroidUtilities.m50dp(8), paint2);
                this.rectF.set(this.paddingLeft + AndroidUtilities.m50dp(8), AndroidUtilities.m50dp(36) + i2, getWidth() - AndroidUtilities.m50dp(53), i2 + AndroidUtilities.m50dp(44));
                checkRtl(this.rectF);
                canvas.drawRoundRect(this.rectF, AndroidUtilities.m50dp(8), AndroidUtilities.m50dp(8), paint2);
            } else {
                int i34 = this.viewType;
                if (i34 == 21) {
                    while (i2 <= getMeasuredHeight()) {
                        canvas.drawCircle(checkRtl(AndroidUtilities.m50dp(20) + m50dp8), (AndroidUtilities.m50dp(58) >> 1) + i2, AndroidUtilities.m50dp(46) >> 1, paint2);
                        this.rectF.set(AndroidUtilities.m50dp(74), AndroidUtilities.m50dp(16) + i2, AndroidUtilities.m50dp(140), AndroidUtilities.m50dp(24) + i2);
                        checkRtl(this.rectF);
                        canvas.drawRoundRect(this.rectF, AndroidUtilities.m50dp(4), AndroidUtilities.m50dp(4), paint2);
                        this.rectF.set(AndroidUtilities.m50dp(74), AndroidUtilities.m50dp(38) + i2, AndroidUtilities.m50dp(260), AndroidUtilities.m50dp(46) + i2);
                        checkRtl(this.rectF);
                        canvas.drawRoundRect(this.rectF, AndroidUtilities.m50dp(4), AndroidUtilities.m50dp(4), paint2);
                        i2 += getCellHeight(getMeasuredWidth());
                        int i35 = i8 + 1;
                        if (this.isSingleCell && i35 >= this.itemsCount) {
                            break;
                        }
                        i8 = i35;
                    }
                } else if (i34 == 22) {
                    while (i2 <= getMeasuredHeight()) {
                        canvas.drawCircle(checkRtl(AndroidUtilities.m50dp(20) + m50dp7), AndroidUtilities.m50dp(6) + i2 + m50dp7, AndroidUtilities.m50dp(48) >> 1, paint2);
                        this.rectF.set(AndroidUtilities.m50dp(76), AndroidUtilities.m50dp(16) + i2, AndroidUtilities.m50dp(140), AndroidUtilities.m50dp(24) + i2);
                        checkRtl(this.rectF);
                        canvas.drawRoundRect(this.rectF, AndroidUtilities.m50dp(4), AndroidUtilities.m50dp(4), paint2);
                        this.rectF.set(AndroidUtilities.m50dp(76), AndroidUtilities.m50dp(38) + i2, AndroidUtilities.m50dp(260), AndroidUtilities.m50dp(46) + i2);
                        checkRtl(this.rectF);
                        canvas.drawRoundRect(this.rectF, AndroidUtilities.m50dp(4), AndroidUtilities.m50dp(4), paint2);
                        i2 += getCellHeight(getMeasuredWidth());
                        int i36 = i8 + 1;
                        if (this.isSingleCell && i36 >= this.itemsCount) {
                            break;
                        }
                        i8 = i36;
                    }
                } else if (i34 == 25) {
                    while (i2 <= getMeasuredHeight()) {
                        canvas.drawCircle(AndroidUtilities.m50dp(17) + m50dp6, AndroidUtilities.m50dp(6) + i2 + m50dp6, AndroidUtilities.m50dp(38) >> 1, paint2);
                        this.rectF.set(AndroidUtilities.m50dp(76), AndroidUtilities.m50dp(21) + i2, AndroidUtilities.m50dp(220), AndroidUtilities.m50dp(29) + i2);
                        canvas.drawRoundRect(this.rectF, AndroidUtilities.m50dp(4), AndroidUtilities.m50dp(4), paint2);
                        i2 += getCellHeight(getMeasuredWidth());
                        int i37 = i8 + 1;
                        if (this.isSingleCell && i37 >= this.itemsCount) {
                            break;
                        }
                        i8 = i37;
                    }
                } else if (i34 == 26) {
                    while (i2 <= getMeasuredHeight()) {
                        canvas.drawCircle(LocaleController.isRTL ? (getMeasuredWidth() - AndroidUtilities.m50dp(21)) - m50dp5 : AndroidUtilities.m50dp(21) + m50dp5, AndroidUtilities.m50dp(16) + i2 + m50dp5, AndroidUtilities.m50dp(21) >> 1, paint2);
                        this.rectF.set(AndroidUtilities.m50dp(60), AndroidUtilities.m50dp(21) + i2, AndroidUtilities.m50dp(190), AndroidUtilities.m50dp(29) + i2);
                        checkRtl(this.rectF);
                        canvas.drawRoundRect(this.rectF, AndroidUtilities.m50dp(4), AndroidUtilities.m50dp(4), paint2);
                        this.rectF.set(getMeasuredWidth() - AndroidUtilities.m50dp(16), AndroidUtilities.m50dp(21) + i2, getMeasuredWidth() - AndroidUtilities.m50dp(62), AndroidUtilities.m50dp(29) + i2);
                        checkRtl(this.rectF);
                        canvas.drawRoundRect(this.rectF, AndroidUtilities.m50dp(4), AndroidUtilities.m50dp(4), paint2);
                        i2 += getCellHeight(getMeasuredWidth());
                        int i38 = i8 + 1;
                        if (this.isSingleCell && i38 >= this.itemsCount) {
                            break;
                        }
                        i8 = i38;
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
            int m50dp = AndroidUtilities.m50dp(200);
            this.gradientWidth = m50dp;
            this.gradient = new LinearGradient((float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, m50dp, (float) BitmapDescriptorFactory.HUE_RED, new int[]{themedColor2, themedColor, themedColor, themedColor2}, new float[]{BitmapDescriptorFactory.HUE_RED, 0.4f, 0.6f, 1.0f}, Shader.TileMode.CLAMP);
        } else {
            int m50dp2 = AndroidUtilities.m50dp(600);
            this.gradientWidth = m50dp2;
            this.gradient = new LinearGradient((float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, m50dp2, new int[]{themedColor2, themedColor, themedColor, themedColor2}, new float[]{BitmapDescriptorFactory.HUE_RED, 0.4f, 0.6f, 1.0f}, Shader.TileMode.CLAMP);
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
            return AndroidUtilities.m50dp(60);
        }
        switch (getViewType()) {
            case 1:
                return AndroidUtilities.m50dp(78) + 1;
            case 2:
                return ((i - (AndroidUtilities.m50dp(2) * (getColumnsCount() - 1))) / getColumnsCount()) + AndroidUtilities.m50dp(2);
            case 3:
            case 4:
                return AndroidUtilities.m50dp(56);
            case 5:
                return AndroidUtilities.m50dp(80);
            case 6:
            case 18:
                return AndroidUtilities.m50dp(64);
            case 7:
                return AndroidUtilities.m50dp((SharedConfig.isDialogsCompactModeEnabled ? 48 : SharedConfig.useThreeLinesLayout ? 78 : 72) + 1);
            case 8:
                return AndroidUtilities.m50dp(61);
            case 9:
                return AndroidUtilities.m50dp(66);
            case 10:
                return AndroidUtilities.m50dp(58);
            case 11:
                return AndroidUtilities.m50dp(36);
            case 12:
                return AndroidUtilities.m50dp(103);
            case 13:
            case 14:
            case 17:
            case 20:
            default:
                return 0;
            case 15:
                return AndroidUtilities.m50dp(107);
            case 16:
            case 23:
                return AndroidUtilities.m50dp(50);
            case 19:
                return AndroidUtilities.m50dp(58);
            case 21:
                return AndroidUtilities.m50dp(58);
            case 22:
                return AndroidUtilities.m50dp(60);
            case 24:
                if (!SharedConfig.isDialogsCompactModeEnabled) {
                    r2 = (SharedConfig.useThreeLinesLayout ? 76 : 64) + 1;
                }
                return AndroidUtilities.m50dp(r2);
            case 25:
                return AndroidUtilities.m50dp(51);
            case 26:
                return AndroidUtilities.m50dp(50) + 1;
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

    private int getThemedColor(String str) {
        Theme.ResourcesProvider resourcesProvider = this.resourcesProvider;
        Integer color = resourcesProvider != null ? resourcesProvider.getColor(str) : null;
        return color != null ? color.intValue() : Theme.getColor(str);
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
