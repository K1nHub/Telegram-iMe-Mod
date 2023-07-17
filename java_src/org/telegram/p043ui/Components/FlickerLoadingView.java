package org.telegram.p043ui.Components;

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
import org.telegram.p043ui.ActionBar.Theme;
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
        int m54dp;
        int m54dp2;
        int m54dp3;
        int m54dp4;
        int m54dp5;
        int m54dp6;
        int m54dp7;
        int m54dp8;
        int m54dp9;
        int m54dp10;
        int m54dp11;
        int m54dp12;
        int m54dp13;
        int m54dp14;
        int m54dp15;
        int m54dp16;
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
            int m54dp17 = i2 + AndroidUtilities.m54dp(32);
            int i3 = this.colorKey3;
            if (i3 >= 0) {
                this.headerPaint.setColor(getThemedColor(i3));
            }
            canvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), AndroidUtilities.m54dp(32), this.colorKey3 >= 0 ? this.headerPaint : paint2);
            i2 = m54dp17;
        }
        int i4 = 8;
        if (getViewType() == 100) {
            int cellHeight = getCellHeight(getMeasuredWidth()) / 2;
            int m54dp18 = AndroidUtilities.m54dp(18);
            int m54dp19 = AndroidUtilities.m54dp(16);
            int m54dp20 = AndroidUtilities.m54dp(4);
            int m54dp21 = AndroidUtilities.m54dp(6);
            int m54dp22 = AndroidUtilities.m54dp(6);
            int m54dp23 = AndroidUtilities.m54dp(8);
            int i5 = m54dp18 + m54dp19;
            int i6 = cellHeight - m54dp22;
            int i7 = m54dp22 + cellHeight;
            float f = cellHeight;
            canvas.drawCircle(checkRtl(i5), f, m54dp19, paint2);
            float f2 = i5 * 2;
            this.rectF.set(f2, i6 - m54dp21, (measuredWidth / 4) + i, i6);
            checkRtl(this.rectF);
            float f3 = m54dp20;
            canvas.drawRoundRect(this.rectF, f3, f3, paint2);
            this.rectF.set(f2, i7, (measuredWidth / 2) + i, m54dp21 + i7);
            checkRtl(this.rectF);
            canvas.drawRoundRect(this.rectF, f3, f3, paint2);
            canvas.drawCircle(checkRtl((measuredWidth - m54dp18) - m54dp23), f, m54dp23, paint2);
        } else {
            int i8 = 24;
            int i9 = 0;
            int i10 = 1;
            if (getViewType() == 7) {
                while (i2 <= getMeasuredHeight()) {
                    int cellHeight2 = getCellHeight(getMeasuredWidth());
                    canvas.drawCircle(checkRtl(AndroidUtilities.m54dp(10) + m54dp16), (cellHeight2 >> 1) + i2, AndroidUtilities.m54dp(28), paint2);
                    this.rectF.set(AndroidUtilities.m54dp(76), AndroidUtilities.m54dp(16) + i2, AndroidUtilities.m54dp(148), AndroidUtilities.m54dp(24) + i2);
                    checkRtl(this.rectF);
                    canvas.drawRoundRect(this.rectF, AndroidUtilities.m54dp(4), AndroidUtilities.m54dp(4), paint2);
                    this.rectF.set(AndroidUtilities.m54dp(76), AndroidUtilities.m54dp(38) + i2, AndroidUtilities.m54dp(268), AndroidUtilities.m54dp(46) + i2);
                    checkRtl(this.rectF);
                    canvas.drawRoundRect(this.rectF, AndroidUtilities.m54dp(4), AndroidUtilities.m54dp(4), paint2);
                    if (SharedConfig.useThreeLinesLayout) {
                        this.rectF.set(AndroidUtilities.m54dp(76), AndroidUtilities.m54dp(54) + i2, AndroidUtilities.m54dp(220), AndroidUtilities.m54dp(62) + i2);
                        checkRtl(this.rectF);
                        canvas.drawRoundRect(this.rectF, AndroidUtilities.m54dp(4), AndroidUtilities.m54dp(4), paint2);
                    }
                    if (this.showDate) {
                        this.rectF.set(getMeasuredWidth() - AndroidUtilities.m54dp(50), AndroidUtilities.m54dp(16) + i2, getMeasuredWidth() - AndroidUtilities.m54dp(12), AndroidUtilities.m54dp(24) + i2);
                        checkRtl(this.rectF);
                        canvas.drawRoundRect(this.rectF, AndroidUtilities.m54dp(4), AndroidUtilities.m54dp(4), paint2);
                    }
                    i2 += getCellHeight(getMeasuredWidth());
                    int i11 = i9 + 1;
                    if (this.isSingleCell && i11 >= this.itemsCount) {
                        break;
                    }
                    i9 = i11;
                }
            } else if (getViewType() == 24) {
                while (i2 <= getMeasuredHeight()) {
                    canvas.drawCircle(checkRtl(AndroidUtilities.m54dp(10) + m54dp15), AndroidUtilities.m54dp(10) + i2 + m54dp15, AndroidUtilities.m54dp(14), paint2);
                    canvas.save();
                    canvas.translate(BitmapDescriptorFactory.HUE_RED, -AndroidUtilities.m54dp(4));
                    this.rectF.set(AndroidUtilities.m54dp(50), AndroidUtilities.m54dp(16) + i2, AndroidUtilities.m54dp(148), AndroidUtilities.m54dp(24) + i2);
                    checkRtl(this.rectF);
                    canvas.drawRoundRect(this.rectF, AndroidUtilities.m54dp(4), AndroidUtilities.m54dp(4), paint2);
                    this.rectF.set(AndroidUtilities.m54dp(50), AndroidUtilities.m54dp(38) + i2, AndroidUtilities.m54dp(268), AndroidUtilities.m54dp(46) + i2);
                    checkRtl(this.rectF);
                    canvas.drawRoundRect(this.rectF, AndroidUtilities.m54dp(4), AndroidUtilities.m54dp(4), paint2);
                    if (SharedConfig.useThreeLinesLayout) {
                        this.rectF.set(AndroidUtilities.m54dp(50), AndroidUtilities.m54dp(54) + i2, AndroidUtilities.m54dp(220), AndroidUtilities.m54dp(62) + i2);
                        checkRtl(this.rectF);
                        canvas.drawRoundRect(this.rectF, AndroidUtilities.m54dp(4), AndroidUtilities.m54dp(4), paint2);
                    }
                    if (this.showDate) {
                        this.rectF.set(getMeasuredWidth() - AndroidUtilities.m54dp(50), AndroidUtilities.m54dp(16) + i2, getMeasuredWidth() - AndroidUtilities.m54dp(12), AndroidUtilities.m54dp(24) + i2);
                        checkRtl(this.rectF);
                        canvas.drawRoundRect(this.rectF, AndroidUtilities.m54dp(4), AndroidUtilities.m54dp(4), paint2);
                    }
                    canvas.restore();
                    i2 += getCellHeight(getMeasuredWidth());
                    int i12 = i9 + 1;
                    if (this.isSingleCell && i12 >= this.itemsCount) {
                        break;
                    }
                    i9 = i12;
                }
            } else if (getViewType() == 18) {
                int i13 = i2;
                while (i13 <= getMeasuredHeight()) {
                    canvas.drawCircle(checkRtl(this.paddingLeft + AndroidUtilities.m54dp(9) + m54dp14), AndroidUtilities.m54dp(32) + i13, AndroidUtilities.m54dp(25), paint2);
                    int i14 = (i9 % 2 == 0 ? 52 : 72) + 76;
                    this.rectF.set(AndroidUtilities.m54dp(76), AndroidUtilities.m54dp(20) + i13, AndroidUtilities.m54dp(i14), AndroidUtilities.m54dp(28) + i13);
                    checkRtl(this.rectF);
                    canvas.drawRoundRect(this.rectF, AndroidUtilities.m54dp(4), AndroidUtilities.m54dp(4), paint2);
                    int i15 = i14 + 8;
                    this.rectF.set(AndroidUtilities.m54dp(i15), AndroidUtilities.m54dp(20) + i13, AndroidUtilities.m54dp(i15 + 84), AndroidUtilities.m54dp(28) + i13);
                    checkRtl(this.rectF);
                    canvas.drawRoundRect(this.rectF, AndroidUtilities.m54dp(4), AndroidUtilities.m54dp(4), paint2);
                    this.rectF.set(AndroidUtilities.m54dp(76), AndroidUtilities.m54dp(42) + i13, AndroidUtilities.m54dp(140), AndroidUtilities.m54dp(50) + i13);
                    checkRtl(this.rectF);
                    canvas.drawRoundRect(this.rectF, AndroidUtilities.m54dp(4), AndroidUtilities.m54dp(4), paint2);
                    canvas.drawLine(AndroidUtilities.m54dp(76), getCellHeight(getMeasuredWidth()) + i13, getMeasuredWidth(), getCellHeight(getMeasuredWidth()) + i13, paint2);
                    i13 += getCellHeight(getMeasuredWidth());
                    int i16 = i9 + 1;
                    if (this.isSingleCell && i16 >= this.itemsCount) {
                        break;
                    }
                    i9 = i16;
                }
            } else if (getViewType() == 19) {
                int i17 = i2;
                while (i17 <= getMeasuredHeight()) {
                    canvas.drawCircle(checkRtl(this.paddingLeft + AndroidUtilities.m54dp(9) + m54dp13), AndroidUtilities.m54dp(29) + i17, AndroidUtilities.m54dp(20), paint2);
                    this.rectF.set(AndroidUtilities.m54dp(76), AndroidUtilities.m54dp(16) + i17, AndroidUtilities.m54dp((i9 % 2 == 0 ? 92 : 128) + 76), AndroidUtilities.m54dp(i8) + i17);
                    checkRtl(this.rectF);
                    canvas.drawRoundRect(this.rectF, AndroidUtilities.m54dp(4), AndroidUtilities.m54dp(4), paint2);
                    this.rectF.set(AndroidUtilities.m54dp(76), AndroidUtilities.m54dp(38) + i17, AndroidUtilities.m54dp((int) PsExtractor.VIDEO_STREAM_MASK), AndroidUtilities.m54dp(46) + i17);
                    checkRtl(this.rectF);
                    canvas.drawRoundRect(this.rectF, AndroidUtilities.m54dp(4), AndroidUtilities.m54dp(4), paint2);
                    int i18 = i8;
                    canvas.drawLine(AndroidUtilities.m54dp(76), getCellHeight(getMeasuredWidth()) + i17, getMeasuredWidth(), getCellHeight(getMeasuredWidth()) + i17, paint2);
                    i17 += getCellHeight(getMeasuredWidth());
                    int i19 = i9 + 1;
                    if (this.isSingleCell && i19 >= this.itemsCount) {
                        break;
                    }
                    i9 = i19;
                    i8 = i18;
                }
            } else if (getViewType() == 1) {
                while (i2 <= getMeasuredHeight()) {
                    canvas.drawCircle(checkRtl(AndroidUtilities.m54dp(9) + m54dp12), (AndroidUtilities.m54dp(78) >> 1) + i2, AndroidUtilities.m54dp(25), paint2);
                    this.rectF.set(AndroidUtilities.m54dp(68), AndroidUtilities.m54dp(20) + i2, AndroidUtilities.m54dp(140), AndroidUtilities.m54dp(28) + i2);
                    checkRtl(this.rectF);
                    canvas.drawRoundRect(this.rectF, AndroidUtilities.m54dp(4), AndroidUtilities.m54dp(4), paint2);
                    this.rectF.set(AndroidUtilities.m54dp(68), AndroidUtilities.m54dp(42) + i2, AndroidUtilities.m54dp(260), AndroidUtilities.m54dp(50) + i2);
                    checkRtl(this.rectF);
                    canvas.drawRoundRect(this.rectF, AndroidUtilities.m54dp(4), AndroidUtilities.m54dp(4), paint2);
                    if (this.showDate) {
                        this.rectF.set(getMeasuredWidth() - AndroidUtilities.m54dp(50), AndroidUtilities.m54dp(20) + i2, getMeasuredWidth() - AndroidUtilities.m54dp(12), AndroidUtilities.m54dp(28) + i2);
                        checkRtl(this.rectF);
                        canvas.drawRoundRect(this.rectF, AndroidUtilities.m54dp(4), AndroidUtilities.m54dp(4), paint2);
                    }
                    i2 += getCellHeight(getMeasuredWidth());
                    int i20 = i9 + 1;
                    if (this.isSingleCell && i20 >= this.itemsCount) {
                        break;
                    }
                    i9 = i20;
                }
            } else if (getViewType() == 2) {
                int measuredWidth2 = (getMeasuredWidth() - (AndroidUtilities.m54dp(2) * (getColumnsCount() - 1))) / getColumnsCount();
                int i21 = i2;
                int i22 = 0;
                while (true) {
                    if (i21 >= getMeasuredHeight() && !this.isSingleCell) {
                        break;
                    }
                    for (int i23 = 0; i23 < getColumnsCount(); i23++) {
                        if (i22 != 0 || i23 >= this.skipDrawItemsCount) {
                            canvas.drawRect((measuredWidth2 + AndroidUtilities.m54dp(2)) * i23, i21, m54dp11 + measuredWidth2, i21 + measuredWidth2, paint2);
                        }
                    }
                    i21 += measuredWidth2 + AndroidUtilities.m54dp(2);
                    i22++;
                    if (this.isSingleCell && i22 >= 2) {
                        break;
                    }
                }
            } else if (getViewType() == 3) {
                while (i2 <= getMeasuredHeight()) {
                    this.rectF.set(AndroidUtilities.m54dp(12), AndroidUtilities.m54dp(8) + i2, AndroidUtilities.m54dp(52), AndroidUtilities.m54dp(48) + i2);
                    checkRtl(this.rectF);
                    canvas.drawRoundRect(this.rectF, AndroidUtilities.m54dp(4), AndroidUtilities.m54dp(4), paint2);
                    this.rectF.set(AndroidUtilities.m54dp(68), AndroidUtilities.m54dp(12) + i2, AndroidUtilities.m54dp(140), AndroidUtilities.m54dp(20) + i2);
                    checkRtl(this.rectF);
                    canvas.drawRoundRect(this.rectF, AndroidUtilities.m54dp(4), AndroidUtilities.m54dp(4), paint2);
                    this.rectF.set(AndroidUtilities.m54dp(68), AndroidUtilities.m54dp(34) + i2, AndroidUtilities.m54dp(260), AndroidUtilities.m54dp(42) + i2);
                    checkRtl(this.rectF);
                    canvas.drawRoundRect(this.rectF, AndroidUtilities.m54dp(4), AndroidUtilities.m54dp(4), paint2);
                    if (this.showDate) {
                        this.rectF.set(getMeasuredWidth() - AndroidUtilities.m54dp(50), AndroidUtilities.m54dp(12) + i2, getMeasuredWidth() - AndroidUtilities.m54dp(12), AndroidUtilities.m54dp(20) + i2);
                        checkRtl(this.rectF);
                        canvas.drawRoundRect(this.rectF, AndroidUtilities.m54dp(4), AndroidUtilities.m54dp(4), paint2);
                    }
                    i2 += getCellHeight(getMeasuredWidth());
                    int i24 = i9 + 1;
                    if (this.isSingleCell && i24 >= this.itemsCount) {
                        break;
                    }
                    i9 = i24;
                }
            } else if (getViewType() == 4) {
                while (i2 <= getMeasuredHeight()) {
                    canvas.drawCircle(checkRtl(AndroidUtilities.m54dp(12) + m54dp10), AndroidUtilities.m54dp(6) + i2 + m54dp10, AndroidUtilities.m54dp(44) >> 1, paint2);
                    this.rectF.set(AndroidUtilities.m54dp(68), AndroidUtilities.m54dp(12) + i2, AndroidUtilities.m54dp(140), AndroidUtilities.m54dp(20) + i2);
                    checkRtl(this.rectF);
                    canvas.drawRoundRect(this.rectF, AndroidUtilities.m54dp(4), AndroidUtilities.m54dp(4), paint2);
                    this.rectF.set(AndroidUtilities.m54dp(68), AndroidUtilities.m54dp(34) + i2, AndroidUtilities.m54dp(260), AndroidUtilities.m54dp(42) + i2);
                    checkRtl(this.rectF);
                    canvas.drawRoundRect(this.rectF, AndroidUtilities.m54dp(4), AndroidUtilities.m54dp(4), paint2);
                    if (this.showDate) {
                        this.rectF.set(getMeasuredWidth() - AndroidUtilities.m54dp(50), AndroidUtilities.m54dp(12) + i2, getMeasuredWidth() - AndroidUtilities.m54dp(12), AndroidUtilities.m54dp(20) + i2);
                        checkRtl(this.rectF);
                        canvas.drawRoundRect(this.rectF, AndroidUtilities.m54dp(4), AndroidUtilities.m54dp(4), paint2);
                    }
                    i2 += getCellHeight(getMeasuredWidth());
                    int i25 = i9 + 1;
                    if (this.isSingleCell && i25 >= this.itemsCount) {
                        break;
                    }
                    i9 = i25;
                }
            } else if (getViewType() == 5) {
                while (i2 <= getMeasuredHeight()) {
                    this.rectF.set(AndroidUtilities.m54dp(10), AndroidUtilities.m54dp(11) + i2, AndroidUtilities.m54dp(62), AndroidUtilities.m54dp(63) + i2);
                    checkRtl(this.rectF);
                    canvas.drawRoundRect(this.rectF, AndroidUtilities.m54dp(4), AndroidUtilities.m54dp(4), paint2);
                    this.rectF.set(AndroidUtilities.m54dp(68), AndroidUtilities.m54dp(12) + i2, AndroidUtilities.m54dp(140), AndroidUtilities.m54dp(20) + i2);
                    checkRtl(this.rectF);
                    canvas.drawRoundRect(this.rectF, AndroidUtilities.m54dp(4), AndroidUtilities.m54dp(4), paint2);
                    this.rectF.set(AndroidUtilities.m54dp(68), AndroidUtilities.m54dp(34) + i2, AndroidUtilities.m54dp(268), AndroidUtilities.m54dp(42) + i2);
                    checkRtl(this.rectF);
                    canvas.drawRoundRect(this.rectF, AndroidUtilities.m54dp(4), AndroidUtilities.m54dp(4), paint2);
                    this.rectF.set(AndroidUtilities.m54dp(68), AndroidUtilities.m54dp(54) + i2, AndroidUtilities.m54dp((int) TsExtractor.TS_PACKET_SIZE), AndroidUtilities.m54dp(62) + i2);
                    checkRtl(this.rectF);
                    canvas.drawRoundRect(this.rectF, AndroidUtilities.m54dp(4), AndroidUtilities.m54dp(4), paint2);
                    if (this.showDate) {
                        this.rectF.set(getMeasuredWidth() - AndroidUtilities.m54dp(50), AndroidUtilities.m54dp(12) + i2, getMeasuredWidth() - AndroidUtilities.m54dp(12), AndroidUtilities.m54dp(20) + i2);
                        checkRtl(this.rectF);
                        canvas.drawRoundRect(this.rectF, AndroidUtilities.m54dp(4), AndroidUtilities.m54dp(4), paint2);
                    }
                    i2 += getCellHeight(getMeasuredWidth());
                    int i26 = i9 + 1;
                    if (this.isSingleCell && i26 >= this.itemsCount) {
                        break;
                    }
                    i9 = i26;
                }
            } else if (getViewType() == 6 || getViewType() == 10) {
                while (i2 <= getMeasuredHeight()) {
                    canvas.drawCircle(checkRtl(this.paddingLeft + AndroidUtilities.m54dp(9) + m54dp), (AndroidUtilities.m54dp(64) >> 1) + i2, AndroidUtilities.m54dp(23), paint2);
                    this.rectF.set(this.paddingLeft + AndroidUtilities.m54dp(68), AndroidUtilities.m54dp(17) + i2, this.paddingLeft + AndroidUtilities.m54dp(260), AndroidUtilities.m54dp(25) + i2);
                    checkRtl(this.rectF);
                    canvas.drawRoundRect(this.rectF, AndroidUtilities.m54dp(4), AndroidUtilities.m54dp(4), paint2);
                    this.rectF.set(this.paddingLeft + AndroidUtilities.m54dp(68), AndroidUtilities.m54dp(39) + i2, this.paddingLeft + AndroidUtilities.m54dp(140), AndroidUtilities.m54dp(47) + i2);
                    checkRtl(this.rectF);
                    canvas.drawRoundRect(this.rectF, AndroidUtilities.m54dp(4), AndroidUtilities.m54dp(4), paint2);
                    if (this.showDate) {
                        this.rectF.set(getMeasuredWidth() - AndroidUtilities.m54dp(50), AndroidUtilities.m54dp(20) + i2, getMeasuredWidth() - AndroidUtilities.m54dp(12), AndroidUtilities.m54dp(28) + i2);
                        checkRtl(this.rectF);
                        canvas.drawRoundRect(this.rectF, AndroidUtilities.m54dp(4), AndroidUtilities.m54dp(4), paint2);
                    }
                    i2 += getCellHeight(getMeasuredWidth());
                    int i27 = i9 + 1;
                    if (this.isSingleCell && i27 >= this.itemsCount) {
                        break;
                    }
                    i9 = i27;
                }
            } else if (getViewType() == 8) {
                while (i2 <= getMeasuredHeight()) {
                    canvas.drawCircle(checkRtl(this.paddingLeft + AndroidUtilities.m54dp(11) + m54dp9), (AndroidUtilities.m54dp(64) >> 1) + i2, AndroidUtilities.m54dp(23), paint2);
                    this.rectF.set(this.paddingLeft + AndroidUtilities.m54dp(68), AndroidUtilities.m54dp(17) + i2, this.paddingLeft + AndroidUtilities.m54dp(140), AndroidUtilities.m54dp(25) + i2);
                    checkRtl(this.rectF);
                    canvas.drawRoundRect(this.rectF, AndroidUtilities.m54dp(4), AndroidUtilities.m54dp(4), paint2);
                    this.rectF.set(this.paddingLeft + AndroidUtilities.m54dp(68), AndroidUtilities.m54dp(39) + i2, this.paddingLeft + AndroidUtilities.m54dp(260), AndroidUtilities.m54dp(47) + i2);
                    checkRtl(this.rectF);
                    canvas.drawRoundRect(this.rectF, AndroidUtilities.m54dp(4), AndroidUtilities.m54dp(4), paint2);
                    if (this.showDate) {
                        this.rectF.set(getMeasuredWidth() - AndroidUtilities.m54dp(50), AndroidUtilities.m54dp(20) + i2, getMeasuredWidth() - AndroidUtilities.m54dp(12), AndroidUtilities.m54dp(28) + i2);
                        checkRtl(this.rectF);
                        canvas.drawRoundRect(this.rectF, AndroidUtilities.m54dp(4), AndroidUtilities.m54dp(4), paint2);
                    }
                    i2 += getCellHeight(getMeasuredWidth());
                    int i28 = i9 + 1;
                    if (this.isSingleCell && i28 >= this.itemsCount) {
                        break;
                    }
                    i9 = i28;
                }
            } else if (getViewType() == 9) {
                while (i2 <= getMeasuredHeight()) {
                    canvas.drawCircle(checkRtl(AndroidUtilities.m54dp(35)), (getCellHeight(getMeasuredWidth()) >> 1) + i2, AndroidUtilities.m54dp(32) / 2, paint2);
                    this.rectF.set(AndroidUtilities.m54dp(72), AndroidUtilities.m54dp(16) + i2, AndroidUtilities.m54dp(268), i2 + AndroidUtilities.m54dp(24));
                    checkRtl(this.rectF);
                    canvas.drawRoundRect(this.rectF, AndroidUtilities.m54dp(4), AndroidUtilities.m54dp(4), paint2);
                    this.rectF.set(AndroidUtilities.m54dp(72), AndroidUtilities.m54dp(38) + i2, AndroidUtilities.m54dp(140), AndroidUtilities.m54dp(46) + i2);
                    checkRtl(this.rectF);
                    canvas.drawRoundRect(this.rectF, AndroidUtilities.m54dp(4), AndroidUtilities.m54dp(4), paint2);
                    if (this.showDate) {
                        this.rectF.set(getMeasuredWidth() - AndroidUtilities.m54dp(50), AndroidUtilities.m54dp(16) + i2, getMeasuredWidth() - AndroidUtilities.m54dp(12), AndroidUtilities.m54dp(24) + i2);
                        checkRtl(this.rectF);
                        canvas.drawRoundRect(this.rectF, AndroidUtilities.m54dp(4), AndroidUtilities.m54dp(4), paint2);
                    }
                    i2 += getCellHeight(getMeasuredWidth());
                    int i29 = i9 + 1;
                    if (this.isSingleCell && i29 >= this.itemsCount) {
                        break;
                    }
                    i9 = i29;
                }
            } else if (getViewType() == 11) {
                int i30 = 0;
                while (i2 <= getMeasuredHeight()) {
                    this.rectF.set(AndroidUtilities.m54dp(18), AndroidUtilities.m55dp(14.0f), (getMeasuredWidth() * 0.5f) + AndroidUtilities.m55dp(this.randomParams[0] * 40.0f), AndroidUtilities.m55dp(14.0f) + AndroidUtilities.m54dp(8));
                    checkRtl(this.rectF);
                    canvas.drawRoundRect(this.rectF, AndroidUtilities.m54dp(4), AndroidUtilities.m54dp(4), paint2);
                    this.rectF.set(getMeasuredWidth() - AndroidUtilities.m54dp(18), AndroidUtilities.m55dp(14.0f), (getMeasuredWidth() - (getMeasuredWidth() * 0.2f)) - AndroidUtilities.m55dp(this.randomParams[0] * 20.0f), AndroidUtilities.m55dp(14.0f) + AndroidUtilities.m54dp(8));
                    checkRtl(this.rectF);
                    canvas.drawRoundRect(this.rectF, AndroidUtilities.m54dp(4), AndroidUtilities.m54dp(4), paint2);
                    i2 += getCellHeight(getMeasuredWidth());
                    i30++;
                    if (this.isSingleCell && i30 >= this.itemsCount) {
                        break;
                    }
                }
            } else if (getViewType() == 12) {
                int m54dp24 = i2 + AndroidUtilities.m54dp(14);
                while (m54dp24 <= getMeasuredHeight()) {
                    int measuredWidth3 = getMeasuredWidth() / 4;
                    for (int i31 = 0; i31 < 4; i31++) {
                        float f4 = (measuredWidth3 * i31) + (measuredWidth3 / 2.0f);
                        canvas.drawCircle(f4, AndroidUtilities.m54dp(7) + m54dp24 + (AndroidUtilities.m54dp(56) / 2.0f), AndroidUtilities.m55dp(28.0f), paint2);
                        float m54dp25 = AndroidUtilities.m54dp(7) + m54dp24 + AndroidUtilities.m54dp(56) + AndroidUtilities.m54dp(16);
                        RectF rectF = AndroidUtilities.rectTmp;
                        rectF.set(f4 - AndroidUtilities.m54dp(24), m54dp25 - AndroidUtilities.m54dp(4), f4 + AndroidUtilities.m54dp(24), m54dp25 + AndroidUtilities.m54dp(4));
                        canvas.drawRoundRect(rectF, AndroidUtilities.m54dp(4), AndroidUtilities.m54dp(4), paint2);
                    }
                    m54dp24 += getCellHeight(getMeasuredWidth());
                    if (this.isSingleCell) {
                        break;
                    }
                }
            } else if (getViewType() == 13) {
                float measuredHeight = getMeasuredHeight() / 2.0f;
                RectF rectF2 = AndroidUtilities.rectTmp;
                rectF2.set(AndroidUtilities.m54dp(40), measuredHeight - AndroidUtilities.m54dp(4), getMeasuredWidth() - AndroidUtilities.m54dp(120), AndroidUtilities.m54dp(4) + measuredHeight);
                canvas.drawRoundRect(rectF2, AndroidUtilities.m54dp(4), AndroidUtilities.m54dp(4), paint2);
                if (this.backgroundPaint == null) {
                    Paint paint3 = new Paint(1);
                    this.backgroundPaint = paint3;
                    paint3.setColor(Theme.getColor(Theme.key_actionBarDefaultSubmenuBackground));
                }
                for (int i32 = 0; i32 < 3; i32++) {
                    canvas.drawCircle((getMeasuredWidth() - AndroidUtilities.m54dp(56)) + AndroidUtilities.m54dp(13) + (AndroidUtilities.m54dp(12) * i32), measuredHeight, AndroidUtilities.m55dp(13.0f), this.backgroundPaint);
                    canvas.drawCircle((getMeasuredWidth() - AndroidUtilities.m54dp(56)) + AndroidUtilities.m54dp(13) + (AndroidUtilities.m54dp(12) * i32), measuredHeight, AndroidUtilities.m55dp(12.0f), paint2);
                }
            } else if (getViewType() == 14 || getViewType() == 17) {
                int m54dp26 = AndroidUtilities.m54dp(12);
                int m54dp27 = AndroidUtilities.m54dp(77);
                int m54dp28 = AndroidUtilities.m54dp(4);
                float m54dp29 = AndroidUtilities.m54dp(21);
                float m54dp30 = AndroidUtilities.m54dp(41);
                while (m54dp26 < getMeasuredWidth()) {
                    if (this.backgroundPaint == null) {
                        this.backgroundPaint = new Paint(i10);
                    }
                    this.backgroundPaint.setColor(Theme.getColor(Theme.key_dialogBackground, this.resourcesProvider));
                    RectF rectF3 = AndroidUtilities.rectTmp;
                    int i33 = m54dp26 + m54dp27;
                    rectF3.set(AndroidUtilities.m54dp(4) + m54dp26, AndroidUtilities.m54dp(4), i33 - AndroidUtilities.m54dp(4), getMeasuredHeight() - AndroidUtilities.m54dp(4));
                    canvas.drawRoundRect(rectF3, AndroidUtilities.m54dp(6), AndroidUtilities.m54dp(6), paint2);
                    if (getViewType() == 14) {
                        float m54dp31 = AndroidUtilities.m54dp(i4) + m54dp28;
                        float f5 = m54dp26;
                        float m54dp32 = AndroidUtilities.m54dp(22) + m54dp28 + f5;
                        this.rectF.set(m54dp32, m54dp31, m54dp32 + m54dp30, m54dp31 + m54dp29);
                        RectF rectF4 = this.rectF;
                        canvas.drawRoundRect(rectF4, rectF4.height() * 0.5f, this.rectF.height() * 0.5f, this.backgroundPaint);
                        float m54dp33 = m54dp31 + AndroidUtilities.m54dp(4) + m54dp29;
                        float m54dp34 = f5 + AndroidUtilities.m54dp(5) + m54dp28;
                        this.rectF.set(m54dp34, m54dp33, m54dp34 + m54dp30, m54dp33 + m54dp29);
                        RectF rectF5 = this.rectF;
                        canvas.drawRoundRect(rectF5, rectF5.height() * 0.5f, this.rectF.height() * 0.5f, this.backgroundPaint);
                    } else if (getViewType() == 17) {
                        float m54dp35 = AndroidUtilities.m54dp(5);
                        float m54dp36 = AndroidUtilities.m54dp(32);
                        float f6 = m54dp26 + ((m54dp27 - m54dp36) / 2.0f);
                        rectF3.set(f6, AndroidUtilities.m54dp(21), m54dp36 + f6, m54dp2 + AndroidUtilities.m54dp(32));
                        canvas.drawRoundRect(rectF3, m54dp35, m54dp35, this.backgroundPaint);
                    }
                    canvas.drawCircle(m54dp26 + (m54dp27 / 2), getMeasuredHeight() - AndroidUtilities.m54dp(20), AndroidUtilities.m54dp(8), this.backgroundPaint);
                    i4 = 8;
                    m54dp26 = i33;
                    i10 = 1;
                }
            } else if (getViewType() == 15) {
                int m54dp37 = AndroidUtilities.m54dp(23);
                int m54dp38 = AndroidUtilities.m54dp(4);
                while (i2 <= getMeasuredHeight()) {
                    float f7 = m54dp37;
                    canvas.drawCircle(checkRtl(this.paddingLeft + AndroidUtilities.m54dp(12)) + f7, AndroidUtilities.m54dp(8) + i2 + m54dp37, f7, paint2);
                    this.rectF.set(this.paddingLeft + AndroidUtilities.m54dp(74), AndroidUtilities.m54dp(12) + i2, this.paddingLeft + AndroidUtilities.m54dp(260), AndroidUtilities.m54dp(20) + i2);
                    checkRtl(this.rectF);
                    float f8 = m54dp38;
                    canvas.drawRoundRect(this.rectF, f8, f8, paint2);
                    this.rectF.set(this.paddingLeft + AndroidUtilities.m54dp(74), AndroidUtilities.m54dp(36) + i2, this.paddingLeft + AndroidUtilities.m54dp(140), AndroidUtilities.m54dp(42) + i2);
                    checkRtl(this.rectF);
                    canvas.drawRoundRect(this.rectF, f8, f8, paint2);
                    i2 += getCellHeight(getMeasuredWidth());
                    int i34 = i9 + 1;
                    if (this.isSingleCell && i34 >= this.itemsCount) {
                        break;
                    }
                    i9 = i34;
                }
            } else if (getViewType() == 16 || getViewType() == 23) {
                int i35 = 0;
                while (i2 <= getMeasuredHeight()) {
                    canvas.drawCircle(checkRtl(this.paddingLeft + AndroidUtilities.m54dp(8) + m54dp3), AndroidUtilities.m54dp(24) + i2, AndroidUtilities.m54dp(18), paint2);
                    this.rectF.set(this.paddingLeft + AndroidUtilities.m54dp(58), AndroidUtilities.m54dp(20) + i2, getWidth() - AndroidUtilities.m54dp(53), AndroidUtilities.m54dp(28) + i2);
                    checkRtl(this.rectF);
                    canvas.drawRoundRect(this.rectF, AndroidUtilities.m54dp(8), AndroidUtilities.m54dp(8), paint2);
                    if (i35 < 4) {
                        canvas.drawCircle(checkRtl((getWidth() - AndroidUtilities.m54dp(12)) - m54dp4), AndroidUtilities.m54dp(24) + i2, AndroidUtilities.m54dp(12), paint2);
                    }
                    i2 += getCellHeight(getMeasuredWidth());
                    i35++;
                    if (this.isSingleCell && i35 >= this.itemsCount) {
                        break;
                    }
                }
                this.rectF.set(this.paddingLeft + AndroidUtilities.m54dp(8), AndroidUtilities.m54dp(20) + i2, getWidth() - AndroidUtilities.m54dp(8), AndroidUtilities.m54dp(28) + i2);
                checkRtl(this.rectF);
                canvas.drawRoundRect(this.rectF, AndroidUtilities.m54dp(8), AndroidUtilities.m54dp(8), paint2);
                this.rectF.set(this.paddingLeft + AndroidUtilities.m54dp(8), AndroidUtilities.m54dp(36) + i2, getWidth() - AndroidUtilities.m54dp(53), i2 + AndroidUtilities.m54dp(44));
                checkRtl(this.rectF);
                canvas.drawRoundRect(this.rectF, AndroidUtilities.m54dp(8), AndroidUtilities.m54dp(8), paint2);
            } else {
                int i36 = this.viewType;
                if (i36 == 21) {
                    while (i2 <= getMeasuredHeight()) {
                        canvas.drawCircle(checkRtl(AndroidUtilities.m54dp(20) + m54dp8), (AndroidUtilities.m54dp(58) >> 1) + i2, AndroidUtilities.m54dp(46) >> 1, paint2);
                        this.rectF.set(AndroidUtilities.m54dp(74), AndroidUtilities.m54dp(16) + i2, AndroidUtilities.m54dp(140), AndroidUtilities.m54dp(24) + i2);
                        checkRtl(this.rectF);
                        canvas.drawRoundRect(this.rectF, AndroidUtilities.m54dp(4), AndroidUtilities.m54dp(4), paint2);
                        this.rectF.set(AndroidUtilities.m54dp(74), AndroidUtilities.m54dp(38) + i2, AndroidUtilities.m54dp(260), AndroidUtilities.m54dp(46) + i2);
                        checkRtl(this.rectF);
                        canvas.drawRoundRect(this.rectF, AndroidUtilities.m54dp(4), AndroidUtilities.m54dp(4), paint2);
                        i2 += getCellHeight(getMeasuredWidth());
                        int i37 = i9 + 1;
                        if (this.isSingleCell && i37 >= this.itemsCount) {
                            break;
                        }
                        i9 = i37;
                    }
                } else if (i36 == 22) {
                    while (i2 <= getMeasuredHeight()) {
                        canvas.drawCircle(checkRtl(AndroidUtilities.m54dp(20) + m54dp7), AndroidUtilities.m54dp(6) + i2 + m54dp7, AndroidUtilities.m54dp(48) >> 1, paint2);
                        this.rectF.set(AndroidUtilities.m54dp(76), AndroidUtilities.m54dp(16) + i2, AndroidUtilities.m54dp(140), AndroidUtilities.m54dp(24) + i2);
                        checkRtl(this.rectF);
                        canvas.drawRoundRect(this.rectF, AndroidUtilities.m54dp(4), AndroidUtilities.m54dp(4), paint2);
                        this.rectF.set(AndroidUtilities.m54dp(76), AndroidUtilities.m54dp(38) + i2, AndroidUtilities.m54dp(260), AndroidUtilities.m54dp(46) + i2);
                        checkRtl(this.rectF);
                        canvas.drawRoundRect(this.rectF, AndroidUtilities.m54dp(4), AndroidUtilities.m54dp(4), paint2);
                        i2 += getCellHeight(getMeasuredWidth());
                        int i38 = i9 + 1;
                        if (this.isSingleCell && i38 >= this.itemsCount) {
                            break;
                        }
                        i9 = i38;
                    }
                } else if (i36 == 25) {
                    while (i2 <= getMeasuredHeight()) {
                        canvas.drawCircle(AndroidUtilities.m54dp(17) + m54dp6, AndroidUtilities.m54dp(6) + i2 + m54dp6, AndroidUtilities.m54dp(38) >> 1, paint2);
                        this.rectF.set(AndroidUtilities.m54dp(76), AndroidUtilities.m54dp(21) + i2, AndroidUtilities.m54dp(220), AndroidUtilities.m54dp(29) + i2);
                        canvas.drawRoundRect(this.rectF, AndroidUtilities.m54dp(4), AndroidUtilities.m54dp(4), paint2);
                        i2 += getCellHeight(getMeasuredWidth());
                        int i39 = i9 + 1;
                        if (this.isSingleCell && i39 >= this.itemsCount) {
                            break;
                        }
                        i9 = i39;
                    }
                } else if (i36 == 26) {
                    while (i2 <= getMeasuredHeight()) {
                        canvas.drawCircle(LocaleController.isRTL ? (getMeasuredWidth() - AndroidUtilities.m54dp(21)) - m54dp5 : AndroidUtilities.m54dp(21) + m54dp5, AndroidUtilities.m54dp(16) + i2 + m54dp5, AndroidUtilities.m54dp(21) >> 1, paint2);
                        this.rectF.set(AndroidUtilities.m54dp(60), AndroidUtilities.m54dp(21) + i2, AndroidUtilities.m54dp(190), AndroidUtilities.m54dp(29) + i2);
                        checkRtl(this.rectF);
                        canvas.drawRoundRect(this.rectF, AndroidUtilities.m54dp(4), AndroidUtilities.m54dp(4), paint2);
                        this.rectF.set(getMeasuredWidth() - AndroidUtilities.m54dp(16), AndroidUtilities.m54dp(21) + i2, getMeasuredWidth() - AndroidUtilities.m54dp(62), AndroidUtilities.m54dp(29) + i2);
                        checkRtl(this.rectF);
                        canvas.drawRoundRect(this.rectF, AndroidUtilities.m54dp(4), AndroidUtilities.m54dp(4), paint2);
                        i2 += getCellHeight(getMeasuredWidth());
                        int i40 = i9 + 1;
                        if (this.isSingleCell && i40 >= this.itemsCount) {
                            break;
                        }
                        i9 = i40;
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
            int m54dp = AndroidUtilities.m54dp(200);
            this.gradientWidth = m54dp;
            this.gradient = new LinearGradient((float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, m54dp, (float) BitmapDescriptorFactory.HUE_RED, new int[]{themedColor2, themedColor, themedColor, themedColor2}, new float[]{BitmapDescriptorFactory.HUE_RED, 0.4f, 0.6f, 1.0f}, Shader.TileMode.CLAMP);
        } else {
            int m54dp2 = AndroidUtilities.m54dp(600);
            this.gradientWidth = m54dp2;
            this.gradient = new LinearGradient((float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, m54dp2, new int[]{themedColor2, themedColor, themedColor, themedColor2}, new float[]{BitmapDescriptorFactory.HUE_RED, 0.4f, 0.6f, 1.0f}, Shader.TileMode.CLAMP);
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
            return AndroidUtilities.m54dp(60);
        }
        switch (getViewType()) {
            case 1:
                return AndroidUtilities.m54dp(78) + 1;
            case 2:
                return ((i - (AndroidUtilities.m54dp(2) * (getColumnsCount() - 1))) / getColumnsCount()) + AndroidUtilities.m54dp(2);
            case 3:
            case 4:
                return AndroidUtilities.m54dp(56);
            case 5:
                return AndroidUtilities.m54dp(80);
            case 6:
            case 18:
                return AndroidUtilities.m54dp(64);
            case 7:
                return AndroidUtilities.m54dp((SharedConfig.isDialogsCompactModeEnabled ? 48 : SharedConfig.useThreeLinesLayout ? 78 : 72) + 1);
            case 8:
                return AndroidUtilities.m54dp(61);
            case 9:
                return AndroidUtilities.m54dp(66);
            case 10:
                return AndroidUtilities.m54dp(58);
            case 11:
                return AndroidUtilities.m54dp(36);
            case 12:
                return AndroidUtilities.m54dp(103);
            case 13:
            case 14:
            case 17:
            case 20:
            default:
                return 0;
            case 15:
                return AndroidUtilities.m54dp(107);
            case 16:
            case 23:
                return AndroidUtilities.m54dp(50);
            case 19:
                return AndroidUtilities.m54dp(58);
            case 21:
                return AndroidUtilities.m54dp(58);
            case 22:
                return AndroidUtilities.m54dp(60);
            case 24:
                if (!SharedConfig.isDialogsCompactModeEnabled) {
                    r2 = (SharedConfig.useThreeLinesLayout ? 76 : 64) + 1;
                }
                return AndroidUtilities.m54dp(r2);
            case 25:
                return AndroidUtilities.m54dp(51);
            case 26:
                return AndroidUtilities.m54dp(50) + 1;
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
