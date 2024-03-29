package org.telegram.p043ui.Components;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import android.os.SystemClock;
import android.text.TextPaint;
import android.view.View;
import com.google.android.exoplayer2.extractor.p015ts.PsExtractor;
import com.google.android.exoplayer2.extractor.p015ts.TsExtractor;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Random;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
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
    private float memberRequestButtonWidth;
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
        int m107dp;
        int m107dp2;
        int m107dp3;
        int m107dp4;
        int m107dp5;
        int m107dp6;
        int m107dp7;
        int m107dp8;
        int m107dp9;
        int m107dp10;
        int m107dp11;
        int m107dp12;
        int m107dp13;
        int m107dp14;
        int m107dp15;
        int m107dp16;
        int m107dp17;
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
            int m107dp18 = i2 + AndroidUtilities.m107dp(32);
            int i3 = this.colorKey3;
            if (i3 >= 0) {
                this.headerPaint.setColor(getThemedColor(i3));
            }
            canvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), AndroidUtilities.m107dp(32), this.colorKey3 >= 0 ? this.headerPaint : paint2);
            i2 = m107dp18;
        }
        int i4 = 4;
        if (getViewType() == 100) {
            int cellHeight = getCellHeight(getMeasuredWidth()) / 2;
            int m107dp19 = AndroidUtilities.m107dp(18);
            int m107dp20 = AndroidUtilities.m107dp(16);
            int m107dp21 = AndroidUtilities.m107dp(4);
            int m107dp22 = AndroidUtilities.m107dp(6);
            int m107dp23 = AndroidUtilities.m107dp(6);
            int m107dp24 = AndroidUtilities.m107dp(8);
            int i5 = m107dp19 + m107dp20;
            int i6 = cellHeight - m107dp23;
            int i7 = m107dp23 + cellHeight;
            float f = cellHeight;
            canvas.drawCircle(checkRtl(i5), f, m107dp20, paint2);
            float f2 = i5 * 2;
            this.rectF.set(f2, i6 - m107dp22, (measuredWidth / 4) + i, i6);
            checkRtl(this.rectF);
            float f3 = m107dp21;
            canvas.drawRoundRect(this.rectF, f3, f3, paint2);
            this.rectF.set(f2, i7, (measuredWidth / 2) + i, m107dp22 + i7);
            checkRtl(this.rectF);
            canvas.drawRoundRect(this.rectF, f3, f3, paint2);
            canvas.drawCircle(checkRtl((measuredWidth - m107dp19) - m107dp24), f, m107dp24, paint2);
        } else {
            int i8 = 10;
            int i9 = 28;
            int i10 = 0;
            int i11 = 12;
            int i12 = 1;
            if (getViewType() == 7) {
                while (i2 <= getMeasuredHeight()) {
                    int cellHeight2 = getCellHeight(getMeasuredWidth());
                    canvas.drawCircle(checkRtl(AndroidUtilities.m107dp(i8) + m107dp17), (cellHeight2 >> i12) + i2, AndroidUtilities.m107dp(i9), paint2);
                    this.rectF.set(AndroidUtilities.m107dp(76), AndroidUtilities.m107dp(16) + i2, AndroidUtilities.m107dp(148), i2 + AndroidUtilities.m107dp(24));
                    checkRtl(this.rectF);
                    canvas.drawRoundRect(this.rectF, AndroidUtilities.m107dp(4), AndroidUtilities.m107dp(4), paint2);
                    this.rectF.set(AndroidUtilities.m107dp(76), AndroidUtilities.m107dp(38) + i2, AndroidUtilities.m107dp(268), AndroidUtilities.m107dp(46) + i2);
                    checkRtl(this.rectF);
                    canvas.drawRoundRect(this.rectF, AndroidUtilities.m107dp(4), AndroidUtilities.m107dp(4), paint2);
                    if (SharedConfig.useThreeLinesLayout) {
                        this.rectF.set(AndroidUtilities.m107dp(76), AndroidUtilities.m107dp(54) + i2, AndroidUtilities.m107dp(220), AndroidUtilities.m107dp(62) + i2);
                        checkRtl(this.rectF);
                        canvas.drawRoundRect(this.rectF, AndroidUtilities.m107dp(4), AndroidUtilities.m107dp(4), paint2);
                    }
                    if (this.showDate) {
                        this.rectF.set(getMeasuredWidth() - AndroidUtilities.m107dp(50), AndroidUtilities.m107dp(16) + i2, getMeasuredWidth() - AndroidUtilities.m107dp(12), AndroidUtilities.m107dp(24) + i2);
                        checkRtl(this.rectF);
                        canvas.drawRoundRect(this.rectF, AndroidUtilities.m107dp(4), AndroidUtilities.m107dp(4), paint2);
                    }
                    i2 += getCellHeight(getMeasuredWidth());
                    int i13 = i10 + 1;
                    if (this.isSingleCell && i13 >= this.itemsCount) {
                        break;
                    }
                    i10 = i13;
                    i8 = 10;
                    i12 = 1;
                    i9 = 28;
                }
            } else if (getViewType() == 24) {
                while (i2 <= getMeasuredHeight()) {
                    canvas.drawCircle(checkRtl(AndroidUtilities.m107dp(10) + m107dp16), AndroidUtilities.m107dp(10) + i2 + m107dp16, AndroidUtilities.m107dp(14), paint2);
                    canvas.save();
                    canvas.translate(BitmapDescriptorFactory.HUE_RED, -AndroidUtilities.m107dp(4));
                    this.rectF.set(AndroidUtilities.m107dp(50), AndroidUtilities.m107dp(16) + i2, AndroidUtilities.m107dp(148), AndroidUtilities.m107dp(24) + i2);
                    checkRtl(this.rectF);
                    canvas.drawRoundRect(this.rectF, AndroidUtilities.m107dp(4), AndroidUtilities.m107dp(4), paint2);
                    this.rectF.set(AndroidUtilities.m107dp(50), AndroidUtilities.m107dp(38) + i2, AndroidUtilities.m107dp(268), AndroidUtilities.m107dp(46) + i2);
                    checkRtl(this.rectF);
                    canvas.drawRoundRect(this.rectF, AndroidUtilities.m107dp(4), AndroidUtilities.m107dp(4), paint2);
                    if (SharedConfig.useThreeLinesLayout) {
                        this.rectF.set(AndroidUtilities.m107dp(50), AndroidUtilities.m107dp(54) + i2, AndroidUtilities.m107dp(220), AndroidUtilities.m107dp(62) + i2);
                        checkRtl(this.rectF);
                        canvas.drawRoundRect(this.rectF, AndroidUtilities.m107dp(4), AndroidUtilities.m107dp(4), paint2);
                    }
                    if (this.showDate) {
                        this.rectF.set(getMeasuredWidth() - AndroidUtilities.m107dp(50), AndroidUtilities.m107dp(16) + i2, getMeasuredWidth() - AndroidUtilities.m107dp(12), AndroidUtilities.m107dp(24) + i2);
                        checkRtl(this.rectF);
                        canvas.drawRoundRect(this.rectF, AndroidUtilities.m107dp(4), AndroidUtilities.m107dp(4), paint2);
                    }
                    canvas.restore();
                    i2 += getCellHeight(getMeasuredWidth());
                    int i14 = i10 + 1;
                    if (this.isSingleCell && i14 >= this.itemsCount) {
                        break;
                    }
                    i10 = i14;
                }
            } else if (getViewType() == 18) {
                int i15 = i2;
                while (i15 <= getMeasuredHeight()) {
                    canvas.drawCircle(checkRtl(this.paddingLeft + AndroidUtilities.m107dp(9) + m107dp15), AndroidUtilities.m107dp(32) + i15, AndroidUtilities.m107dp(25), paint2);
                    int i16 = (i10 % 2 == 0 ? 52 : 72) + 76;
                    this.rectF.set(AndroidUtilities.m107dp(76), AndroidUtilities.m107dp(20) + i15, AndroidUtilities.m107dp(i16), AndroidUtilities.m107dp(28) + i15);
                    checkRtl(this.rectF);
                    canvas.drawRoundRect(this.rectF, AndroidUtilities.m107dp(4), AndroidUtilities.m107dp(4), paint2);
                    int i17 = i16 + 8;
                    this.rectF.set(AndroidUtilities.m107dp(i17), AndroidUtilities.m107dp(20) + i15, AndroidUtilities.m107dp(i17 + 84), AndroidUtilities.m107dp(28) + i15);
                    checkRtl(this.rectF);
                    canvas.drawRoundRect(this.rectF, AndroidUtilities.m107dp(4), AndroidUtilities.m107dp(4), paint2);
                    this.rectF.set(AndroidUtilities.m107dp(76), AndroidUtilities.m107dp(42) + i15, AndroidUtilities.m107dp(140), AndroidUtilities.m107dp(50) + i15);
                    checkRtl(this.rectF);
                    canvas.drawRoundRect(this.rectF, AndroidUtilities.m107dp(4), AndroidUtilities.m107dp(4), paint2);
                    canvas.drawLine(AndroidUtilities.m107dp(76), getCellHeight(getMeasuredWidth()) + i15, getMeasuredWidth(), getCellHeight(getMeasuredWidth()) + i15, paint2);
                    i15 += getCellHeight(getMeasuredWidth());
                    int i18 = i10 + 1;
                    if (this.isSingleCell && i18 >= this.itemsCount) {
                        break;
                    }
                    i10 = i18;
                }
            } else if (getViewType() == 19) {
                int i19 = i2;
                while (i19 <= getMeasuredHeight()) {
                    canvas.drawCircle(checkRtl(this.paddingLeft + AndroidUtilities.m107dp(9) + m107dp14), AndroidUtilities.m107dp(29) + i19, AndroidUtilities.m107dp(20), paint2);
                    this.rectF.set(AndroidUtilities.m107dp(76), AndroidUtilities.m107dp(16) + i19, AndroidUtilities.m107dp((i10 % 2 == 0 ? 92 : 128) + 76), AndroidUtilities.m107dp(24) + i19);
                    checkRtl(this.rectF);
                    canvas.drawRoundRect(this.rectF, AndroidUtilities.m107dp(4), AndroidUtilities.m107dp(4), paint2);
                    this.rectF.set(AndroidUtilities.m107dp(76), AndroidUtilities.m107dp(38) + i19, AndroidUtilities.m107dp((int) PsExtractor.VIDEO_STREAM_MASK), AndroidUtilities.m107dp(46) + i19);
                    checkRtl(this.rectF);
                    canvas.drawRoundRect(this.rectF, AndroidUtilities.m107dp(4), AndroidUtilities.m107dp(4), paint2);
                    canvas.drawLine(AndroidUtilities.m107dp(76), getCellHeight(getMeasuredWidth()) + i19, getMeasuredWidth(), getCellHeight(getMeasuredWidth()) + i19, paint2);
                    i19 += getCellHeight(getMeasuredWidth());
                    int i20 = i10 + 1;
                    if (this.isSingleCell && i20 >= this.itemsCount) {
                        break;
                    }
                    i10 = i20;
                }
            } else if (getViewType() == 1) {
                while (i2 <= getMeasuredHeight()) {
                    canvas.drawCircle(checkRtl(AndroidUtilities.m107dp(9) + m107dp13), (AndroidUtilities.m107dp(78) >> 1) + i2, AndroidUtilities.m107dp(25), paint2);
                    this.rectF.set(AndroidUtilities.m107dp(68), AndroidUtilities.m107dp(20) + i2, AndroidUtilities.m107dp(140), AndroidUtilities.m107dp(28) + i2);
                    checkRtl(this.rectF);
                    canvas.drawRoundRect(this.rectF, AndroidUtilities.m107dp(4), AndroidUtilities.m107dp(4), paint2);
                    this.rectF.set(AndroidUtilities.m107dp(68), AndroidUtilities.m107dp(42) + i2, AndroidUtilities.m107dp(260), AndroidUtilities.m107dp(50) + i2);
                    checkRtl(this.rectF);
                    canvas.drawRoundRect(this.rectF, AndroidUtilities.m107dp(4), AndroidUtilities.m107dp(4), paint2);
                    if (this.showDate) {
                        this.rectF.set(getMeasuredWidth() - AndroidUtilities.m107dp(50), AndroidUtilities.m107dp(20) + i2, getMeasuredWidth() - AndroidUtilities.m107dp(12), AndroidUtilities.m107dp(28) + i2);
                        checkRtl(this.rectF);
                        canvas.drawRoundRect(this.rectF, AndroidUtilities.m107dp(4), AndroidUtilities.m107dp(4), paint2);
                    }
                    i2 += getCellHeight(getMeasuredWidth());
                    int i21 = i10 + 1;
                    if (this.isSingleCell && i21 >= this.itemsCount) {
                        break;
                    }
                    i10 = i21;
                }
            } else if (getViewType() == 2 || getViewType() == 27) {
                int measuredWidth2 = (getMeasuredWidth() - (AndroidUtilities.m107dp(2) * (getColumnsCount() - 1))) / getColumnsCount();
                int i22 = getViewType() == 27 ? (int) (measuredWidth2 * 1.25f) : measuredWidth2;
                int i23 = i2;
                int i24 = 0;
                while (true) {
                    if (i23 >= getMeasuredHeight() && !this.isSingleCell) {
                        break;
                    }
                    for (int i25 = 0; i25 < getColumnsCount(); i25++) {
                        if (i24 != 0 || i25 >= this.skipDrawItemsCount) {
                            canvas.drawRect((AndroidUtilities.m107dp(2) + measuredWidth2) * i25, i23, m107dp + measuredWidth2, i23 + i22, paint2);
                        }
                    }
                    i23 += AndroidUtilities.m107dp(2) + i22;
                    i24++;
                    if (this.isSingleCell && i24 >= 2) {
                        break;
                    }
                }
            } else if (getViewType() == 3) {
                while (i2 <= getMeasuredHeight()) {
                    this.rectF.set(AndroidUtilities.m107dp(12), AndroidUtilities.m107dp(8) + i2, AndroidUtilities.m107dp(52), AndroidUtilities.m107dp(48) + i2);
                    checkRtl(this.rectF);
                    canvas.drawRoundRect(this.rectF, AndroidUtilities.m107dp(4), AndroidUtilities.m107dp(4), paint2);
                    this.rectF.set(AndroidUtilities.m107dp(68), AndroidUtilities.m107dp(12) + i2, AndroidUtilities.m107dp(140), AndroidUtilities.m107dp(20) + i2);
                    checkRtl(this.rectF);
                    canvas.drawRoundRect(this.rectF, AndroidUtilities.m107dp(4), AndroidUtilities.m107dp(4), paint2);
                    this.rectF.set(AndroidUtilities.m107dp(68), AndroidUtilities.m107dp(34) + i2, AndroidUtilities.m107dp(260), AndroidUtilities.m107dp(42) + i2);
                    checkRtl(this.rectF);
                    canvas.drawRoundRect(this.rectF, AndroidUtilities.m107dp(4), AndroidUtilities.m107dp(4), paint2);
                    if (this.showDate) {
                        this.rectF.set(getMeasuredWidth() - AndroidUtilities.m107dp(50), AndroidUtilities.m107dp(12) + i2, getMeasuredWidth() - AndroidUtilities.m107dp(12), AndroidUtilities.m107dp(20) + i2);
                        checkRtl(this.rectF);
                        canvas.drawRoundRect(this.rectF, AndroidUtilities.m107dp(4), AndroidUtilities.m107dp(4), paint2);
                    }
                    i2 += getCellHeight(getMeasuredWidth());
                    int i26 = i10 + 1;
                    if (this.isSingleCell && i26 >= this.itemsCount) {
                        break;
                    }
                    i10 = i26;
                }
            } else if (getViewType() == 4) {
                while (i2 <= getMeasuredHeight()) {
                    canvas.drawCircle(checkRtl(AndroidUtilities.m107dp(12) + m107dp12), AndroidUtilities.m107dp(6) + i2 + m107dp12, AndroidUtilities.m107dp(44) >> 1, paint2);
                    this.rectF.set(AndroidUtilities.m107dp(68), AndroidUtilities.m107dp(12) + i2, AndroidUtilities.m107dp(140), AndroidUtilities.m107dp(20) + i2);
                    checkRtl(this.rectF);
                    canvas.drawRoundRect(this.rectF, AndroidUtilities.m107dp(4), AndroidUtilities.m107dp(4), paint2);
                    this.rectF.set(AndroidUtilities.m107dp(68), AndroidUtilities.m107dp(34) + i2, AndroidUtilities.m107dp(260), AndroidUtilities.m107dp(42) + i2);
                    checkRtl(this.rectF);
                    canvas.drawRoundRect(this.rectF, AndroidUtilities.m107dp(4), AndroidUtilities.m107dp(4), paint2);
                    if (this.showDate) {
                        this.rectF.set(getMeasuredWidth() - AndroidUtilities.m107dp(50), AndroidUtilities.m107dp(12) + i2, getMeasuredWidth() - AndroidUtilities.m107dp(12), AndroidUtilities.m107dp(20) + i2);
                        checkRtl(this.rectF);
                        canvas.drawRoundRect(this.rectF, AndroidUtilities.m107dp(4), AndroidUtilities.m107dp(4), paint2);
                    }
                    i2 += getCellHeight(getMeasuredWidth());
                    int i27 = i10 + 1;
                    if (this.isSingleCell && i27 >= this.itemsCount) {
                        break;
                    }
                    i10 = i27;
                }
            } else if (getViewType() == 5) {
                while (i2 <= getMeasuredHeight()) {
                    this.rectF.set(AndroidUtilities.m107dp(10), AndroidUtilities.m107dp(11) + i2, AndroidUtilities.m107dp(62), AndroidUtilities.m107dp(63) + i2);
                    checkRtl(this.rectF);
                    canvas.drawRoundRect(this.rectF, AndroidUtilities.m107dp(4), AndroidUtilities.m107dp(4), paint2);
                    this.rectF.set(AndroidUtilities.m107dp(68), AndroidUtilities.m107dp(12) + i2, AndroidUtilities.m107dp(140), AndroidUtilities.m107dp(20) + i2);
                    checkRtl(this.rectF);
                    canvas.drawRoundRect(this.rectF, AndroidUtilities.m107dp(4), AndroidUtilities.m107dp(4), paint2);
                    this.rectF.set(AndroidUtilities.m107dp(68), AndroidUtilities.m107dp(34) + i2, AndroidUtilities.m107dp(268), AndroidUtilities.m107dp(42) + i2);
                    checkRtl(this.rectF);
                    canvas.drawRoundRect(this.rectF, AndroidUtilities.m107dp(4), AndroidUtilities.m107dp(4), paint2);
                    this.rectF.set(AndroidUtilities.m107dp(68), AndroidUtilities.m107dp(54) + i2, AndroidUtilities.m107dp((int) TsExtractor.TS_PACKET_SIZE), AndroidUtilities.m107dp(62) + i2);
                    checkRtl(this.rectF);
                    canvas.drawRoundRect(this.rectF, AndroidUtilities.m107dp(4), AndroidUtilities.m107dp(4), paint2);
                    if (this.showDate) {
                        this.rectF.set(getMeasuredWidth() - AndroidUtilities.m107dp(50), AndroidUtilities.m107dp(12) + i2, getMeasuredWidth() - AndroidUtilities.m107dp(12), AndroidUtilities.m107dp(20) + i2);
                        checkRtl(this.rectF);
                        canvas.drawRoundRect(this.rectF, AndroidUtilities.m107dp(4), AndroidUtilities.m107dp(4), paint2);
                    }
                    i2 += getCellHeight(getMeasuredWidth());
                    int i28 = i10 + 1;
                    if (this.isSingleCell && i28 >= this.itemsCount) {
                        break;
                    }
                    i10 = i28;
                }
            } else if (getViewType() == 6 || getViewType() == 10) {
                while (i2 <= getMeasuredHeight()) {
                    canvas.drawCircle(checkRtl(this.paddingLeft + AndroidUtilities.m107dp(9) + m107dp2), (AndroidUtilities.m107dp(64) >> 1) + i2, AndroidUtilities.m107dp(23), paint2);
                    this.rectF.set(this.paddingLeft + AndroidUtilities.m107dp(68), AndroidUtilities.m107dp(17) + i2, this.paddingLeft + AndroidUtilities.m107dp(260), AndroidUtilities.m107dp(25) + i2);
                    checkRtl(this.rectF);
                    canvas.drawRoundRect(this.rectF, AndroidUtilities.m107dp(4), AndroidUtilities.m107dp(4), paint2);
                    this.rectF.set(this.paddingLeft + AndroidUtilities.m107dp(68), AndroidUtilities.m107dp(39) + i2, this.paddingLeft + AndroidUtilities.m107dp(140), AndroidUtilities.m107dp(47) + i2);
                    checkRtl(this.rectF);
                    canvas.drawRoundRect(this.rectF, AndroidUtilities.m107dp(4), AndroidUtilities.m107dp(4), paint2);
                    if (this.showDate) {
                        this.rectF.set(getMeasuredWidth() - AndroidUtilities.m107dp(50), AndroidUtilities.m107dp(20) + i2, getMeasuredWidth() - AndroidUtilities.m107dp(12), AndroidUtilities.m107dp(28) + i2);
                        checkRtl(this.rectF);
                        canvas.drawRoundRect(this.rectF, AndroidUtilities.m107dp(4), AndroidUtilities.m107dp(4), paint2);
                    }
                    i2 += getCellHeight(getMeasuredWidth());
                    int i29 = i10 + 1;
                    if (this.isSingleCell && i29 >= this.itemsCount) {
                        break;
                    }
                    i10 = i29;
                }
            } else if (getViewType() == 8) {
                while (i2 <= getMeasuredHeight()) {
                    canvas.drawCircle(checkRtl(this.paddingLeft + AndroidUtilities.m107dp(11) + m107dp11), (AndroidUtilities.m107dp(64) >> 1) + i2, AndroidUtilities.m107dp(23), paint2);
                    this.rectF.set(this.paddingLeft + AndroidUtilities.m107dp(68), AndroidUtilities.m107dp(17) + i2, this.paddingLeft + AndroidUtilities.m107dp(140), AndroidUtilities.m107dp(25) + i2);
                    checkRtl(this.rectF);
                    canvas.drawRoundRect(this.rectF, AndroidUtilities.m107dp(4), AndroidUtilities.m107dp(4), paint2);
                    this.rectF.set(this.paddingLeft + AndroidUtilities.m107dp(68), AndroidUtilities.m107dp(39) + i2, this.paddingLeft + AndroidUtilities.m107dp(260), AndroidUtilities.m107dp(47) + i2);
                    checkRtl(this.rectF);
                    canvas.drawRoundRect(this.rectF, AndroidUtilities.m107dp(4), AndroidUtilities.m107dp(4), paint2);
                    if (this.showDate) {
                        this.rectF.set(getMeasuredWidth() - AndroidUtilities.m107dp(50), AndroidUtilities.m107dp(20) + i2, getMeasuredWidth() - AndroidUtilities.m107dp(12), AndroidUtilities.m107dp(28) + i2);
                        checkRtl(this.rectF);
                        canvas.drawRoundRect(this.rectF, AndroidUtilities.m107dp(4), AndroidUtilities.m107dp(4), paint2);
                    }
                    i2 += getCellHeight(getMeasuredWidth());
                    int i30 = i10 + 1;
                    if (this.isSingleCell && i30 >= this.itemsCount) {
                        break;
                    }
                    i10 = i30;
                }
            } else if (getViewType() == 9) {
                while (i2 <= getMeasuredHeight()) {
                    canvas.drawCircle(checkRtl(AndroidUtilities.m107dp(35)), (getCellHeight(getMeasuredWidth()) >> 1) + i2, AndroidUtilities.m107dp(32) / 2, paint2);
                    this.rectF.set(AndroidUtilities.m107dp(72), AndroidUtilities.m107dp(16) + i2, AndroidUtilities.m107dp(268), AndroidUtilities.m107dp(24) + i2);
                    checkRtl(this.rectF);
                    canvas.drawRoundRect(this.rectF, AndroidUtilities.m107dp(4), AndroidUtilities.m107dp(4), paint2);
                    this.rectF.set(AndroidUtilities.m107dp(72), AndroidUtilities.m107dp(38) + i2, AndroidUtilities.m107dp(140), AndroidUtilities.m107dp(46) + i2);
                    checkRtl(this.rectF);
                    canvas.drawRoundRect(this.rectF, AndroidUtilities.m107dp(4), AndroidUtilities.m107dp(4), paint2);
                    if (this.showDate) {
                        this.rectF.set(getMeasuredWidth() - AndroidUtilities.m107dp(50), AndroidUtilities.m107dp(16) + i2, getMeasuredWidth() - AndroidUtilities.m107dp(12), AndroidUtilities.m107dp(24) + i2);
                        checkRtl(this.rectF);
                        canvas.drawRoundRect(this.rectF, AndroidUtilities.m107dp(4), AndroidUtilities.m107dp(4), paint2);
                    }
                    i2 += getCellHeight(getMeasuredWidth());
                    int i31 = i10 + 1;
                    if (this.isSingleCell && i31 >= this.itemsCount) {
                        break;
                    }
                    i10 = i31;
                }
            } else if (getViewType() == 11) {
                int i32 = 0;
                while (i2 <= getMeasuredHeight()) {
                    this.rectF.set(AndroidUtilities.m107dp(18), AndroidUtilities.m108dp(14.0f), (getMeasuredWidth() * 0.5f) + AndroidUtilities.m108dp(this.randomParams[0] * 40.0f), AndroidUtilities.m108dp(14.0f) + AndroidUtilities.m107dp(8));
                    checkRtl(this.rectF);
                    canvas.drawRoundRect(this.rectF, AndroidUtilities.m107dp(4), AndroidUtilities.m107dp(4), paint2);
                    this.rectF.set(getMeasuredWidth() - AndroidUtilities.m107dp(18), AndroidUtilities.m108dp(14.0f), (getMeasuredWidth() - (getMeasuredWidth() * 0.2f)) - AndroidUtilities.m108dp(this.randomParams[0] * 20.0f), AndroidUtilities.m108dp(14.0f) + AndroidUtilities.m107dp(8));
                    checkRtl(this.rectF);
                    canvas.drawRoundRect(this.rectF, AndroidUtilities.m107dp(4), AndroidUtilities.m107dp(4), paint2);
                    i2 += getCellHeight(getMeasuredWidth());
                    i32++;
                    if (this.isSingleCell && i32 >= this.itemsCount) {
                        break;
                    }
                }
            } else if (getViewType() == 12) {
                int m107dp25 = i2 + AndroidUtilities.m107dp(14);
                while (m107dp25 <= getMeasuredHeight()) {
                    int measuredWidth3 = getMeasuredWidth() / 4;
                    for (int i33 = 0; i33 < 4; i33++) {
                        float f4 = (measuredWidth3 * i33) + (measuredWidth3 / 2.0f);
                        canvas.drawCircle(f4, AndroidUtilities.m107dp(7) + m107dp25 + (AndroidUtilities.m107dp(56) / 2.0f), AndroidUtilities.m108dp(28.0f), paint2);
                        float m107dp26 = AndroidUtilities.m107dp(7) + m107dp25 + AndroidUtilities.m107dp(56) + AndroidUtilities.m107dp(16);
                        RectF rectF = AndroidUtilities.rectTmp;
                        rectF.set(f4 - AndroidUtilities.m107dp(24), m107dp26 - AndroidUtilities.m107dp(4), f4 + AndroidUtilities.m107dp(24), m107dp26 + AndroidUtilities.m107dp(4));
                        canvas.drawRoundRect(rectF, AndroidUtilities.m107dp(4), AndroidUtilities.m107dp(4), paint2);
                    }
                    m107dp25 += getCellHeight(getMeasuredWidth());
                    if (this.isSingleCell) {
                        break;
                    }
                }
            } else if (getViewType() == 13) {
                float measuredHeight = getMeasuredHeight() / 2.0f;
                RectF rectF2 = AndroidUtilities.rectTmp;
                rectF2.set(AndroidUtilities.m107dp(40), measuredHeight - AndroidUtilities.m107dp(4), getMeasuredWidth() - AndroidUtilities.m107dp(120), AndroidUtilities.m107dp(4) + measuredHeight);
                canvas.drawRoundRect(rectF2, AndroidUtilities.m107dp(4), AndroidUtilities.m107dp(4), paint2);
                if (this.backgroundPaint == null) {
                    Paint paint3 = new Paint(1);
                    this.backgroundPaint = paint3;
                    paint3.setColor(Theme.getColor(Theme.key_actionBarDefaultSubmenuBackground));
                }
                for (int i34 = 0; i34 < 3; i34++) {
                    canvas.drawCircle((getMeasuredWidth() - AndroidUtilities.m107dp(56)) + AndroidUtilities.m107dp(13) + (AndroidUtilities.m107dp(12) * i34), measuredHeight, AndroidUtilities.m108dp(13.0f), this.backgroundPaint);
                    canvas.drawCircle((getMeasuredWidth() - AndroidUtilities.m107dp(56)) + AndroidUtilities.m107dp(13) + (AndroidUtilities.m107dp(12) * i34), measuredHeight, AndroidUtilities.m108dp(12.0f), paint2);
                }
            } else if (getViewType() == 14 || getViewType() == 17) {
                int m107dp27 = AndroidUtilities.m107dp(12);
                int m107dp28 = AndroidUtilities.m107dp(77);
                int m107dp29 = AndroidUtilities.m107dp(4);
                float m107dp30 = AndroidUtilities.m107dp(21);
                float m107dp31 = AndroidUtilities.m107dp(41);
                while (m107dp27 < getMeasuredWidth()) {
                    if (this.backgroundPaint == null) {
                        this.backgroundPaint = new Paint(1);
                    }
                    this.backgroundPaint.setColor(Theme.getColor(Theme.key_dialogBackground, this.resourcesProvider));
                    RectF rectF3 = AndroidUtilities.rectTmp;
                    int i35 = m107dp27 + m107dp28;
                    rectF3.set(AndroidUtilities.m107dp(i4) + m107dp27, AndroidUtilities.m107dp(i4), i35 - AndroidUtilities.m107dp(i4), getMeasuredHeight() - AndroidUtilities.m107dp(i4));
                    canvas.drawRoundRect(rectF3, AndroidUtilities.m107dp(6), AndroidUtilities.m107dp(6), paint2);
                    if (getViewType() == 14) {
                        float m107dp32 = AndroidUtilities.m107dp(8) + m107dp29;
                        float f5 = m107dp27;
                        float m107dp33 = AndroidUtilities.m107dp(22) + m107dp29 + f5;
                        this.rectF.set(m107dp33, m107dp32, m107dp33 + m107dp31, m107dp32 + m107dp30);
                        RectF rectF4 = this.rectF;
                        canvas.drawRoundRect(rectF4, rectF4.height() * 0.5f, this.rectF.height() * 0.5f, this.backgroundPaint);
                        float m107dp34 = m107dp32 + AndroidUtilities.m107dp(i4) + m107dp30;
                        float m107dp35 = f5 + AndroidUtilities.m107dp(5) + m107dp29;
                        this.rectF.set(m107dp35, m107dp34, m107dp35 + m107dp31, m107dp34 + m107dp30);
                        RectF rectF5 = this.rectF;
                        canvas.drawRoundRect(rectF5, rectF5.height() * 0.5f, this.rectF.height() * 0.5f, this.backgroundPaint);
                    } else if (getViewType() == 17) {
                        float m107dp36 = AndroidUtilities.m107dp(5);
                        float m107dp37 = AndroidUtilities.m107dp(32);
                        float f6 = m107dp27 + ((m107dp28 - m107dp37) / 2.0f);
                        rectF3.set(f6, AndroidUtilities.m107dp(21), m107dp37 + f6, m107dp3 + AndroidUtilities.m107dp(32));
                        canvas.drawRoundRect(rectF3, m107dp36, m107dp36, this.backgroundPaint);
                        canvas.drawCircle(m107dp27 + (m107dp28 / 2), getMeasuredHeight() - AndroidUtilities.m107dp(20), AndroidUtilities.m107dp(8), this.backgroundPaint);
                        m107dp27 = i35;
                        i4 = 4;
                    }
                    canvas.drawCircle(m107dp27 + (m107dp28 / 2), getMeasuredHeight() - AndroidUtilities.m107dp(20), AndroidUtilities.m107dp(8), this.backgroundPaint);
                    m107dp27 = i35;
                    i4 = 4;
                }
            } else if (getViewType() == 15) {
                int m107dp38 = AndroidUtilities.m107dp(23);
                int m107dp39 = AndroidUtilities.m107dp(4);
                while (i2 <= getMeasuredHeight()) {
                    canvas.drawCircle(checkRtl(this.paddingLeft + AndroidUtilities.m107dp(i11) + m107dp38), AndroidUtilities.m107dp(8) + i2 + m107dp38, m107dp38, paint2);
                    this.rectF.set(this.paddingLeft + AndroidUtilities.m107dp(74), AndroidUtilities.m107dp(i11) + i2, this.paddingLeft + AndroidUtilities.m107dp(260), AndroidUtilities.m107dp(20) + i2);
                    checkRtl(this.rectF);
                    float f7 = m107dp39;
                    canvas.drawRoundRect(this.rectF, f7, f7, paint2);
                    this.rectF.set(this.paddingLeft + AndroidUtilities.m107dp(74), AndroidUtilities.m107dp(36) + i2, this.paddingLeft + AndroidUtilities.m107dp(140), i2 + AndroidUtilities.m107dp(42));
                    checkRtl(this.rectF);
                    canvas.drawRoundRect(this.rectF, f7, f7, paint2);
                    if (this.memberRequestButtonWidth > BitmapDescriptorFactory.HUE_RED) {
                        this.rectF.set(this.paddingLeft + AndroidUtilities.m107dp(73), AndroidUtilities.m107dp(62) + i2, this.paddingLeft + AndroidUtilities.m107dp(73) + this.memberRequestButtonWidth, AndroidUtilities.m107dp(94) + i2);
                        checkRtl(this.rectF);
                        canvas.drawRoundRect(this.rectF, f7, f7, paint2);
                    }
                    i2 += getCellHeight(getMeasuredWidth());
                    int i36 = i10 + 1;
                    if (this.isSingleCell && i36 >= this.itemsCount) {
                        break;
                    }
                    i10 = i36;
                    i11 = 12;
                }
            } else if (getViewType() == 16 || getViewType() == 23) {
                int i37 = 0;
                while (i2 <= getMeasuredHeight()) {
                    canvas.drawCircle(checkRtl(this.paddingLeft + AndroidUtilities.m107dp(8) + m107dp4), AndroidUtilities.m107dp(24) + i2, AndroidUtilities.m107dp(18), paint2);
                    this.rectF.set(this.paddingLeft + AndroidUtilities.m107dp(58), AndroidUtilities.m107dp(20) + i2, getWidth() - AndroidUtilities.m107dp(53), AndroidUtilities.m107dp(28) + i2);
                    checkRtl(this.rectF);
                    canvas.drawRoundRect(this.rectF, AndroidUtilities.m107dp(8), AndroidUtilities.m107dp(8), paint2);
                    if (i37 < 4) {
                        canvas.drawCircle(checkRtl((getWidth() - AndroidUtilities.m107dp(12)) - m107dp5), AndroidUtilities.m107dp(24) + i2, AndroidUtilities.m107dp(12), paint2);
                    }
                    i2 += getCellHeight(getMeasuredWidth());
                    i37++;
                    if (this.isSingleCell && i37 >= this.itemsCount) {
                        break;
                    }
                }
                this.rectF.set(this.paddingLeft + AndroidUtilities.m107dp(8), AndroidUtilities.m107dp(20) + i2, getWidth() - AndroidUtilities.m107dp(8), AndroidUtilities.m107dp(28) + i2);
                checkRtl(this.rectF);
                canvas.drawRoundRect(this.rectF, AndroidUtilities.m107dp(8), AndroidUtilities.m107dp(8), paint2);
                this.rectF.set(this.paddingLeft + AndroidUtilities.m107dp(8), AndroidUtilities.m107dp(36) + i2, getWidth() - AndroidUtilities.m107dp(53), i2 + AndroidUtilities.m107dp(44));
                checkRtl(this.rectF);
                canvas.drawRoundRect(this.rectF, AndroidUtilities.m107dp(8), AndroidUtilities.m107dp(8), paint2);
            } else {
                int i38 = this.viewType;
                if (i38 == 21) {
                    while (i2 <= getMeasuredHeight()) {
                        canvas.drawCircle(checkRtl(AndroidUtilities.m107dp(20) + m107dp10), (AndroidUtilities.m107dp(58) >> 1) + i2, AndroidUtilities.m107dp(46) >> 1, paint2);
                        this.rectF.set(AndroidUtilities.m107dp(74), AndroidUtilities.m107dp(16) + i2, AndroidUtilities.m107dp(140), AndroidUtilities.m107dp(24) + i2);
                        checkRtl(this.rectF);
                        canvas.drawRoundRect(this.rectF, AndroidUtilities.m107dp(4), AndroidUtilities.m107dp(4), paint2);
                        this.rectF.set(AndroidUtilities.m107dp(74), AndroidUtilities.m107dp(38) + i2, AndroidUtilities.m107dp(260), i2 + AndroidUtilities.m107dp(46));
                        checkRtl(this.rectF);
                        canvas.drawRoundRect(this.rectF, AndroidUtilities.m107dp(4), AndroidUtilities.m107dp(4), paint2);
                        i2 += getCellHeight(getMeasuredWidth());
                        int i39 = i10 + 1;
                        if (this.isSingleCell && i39 >= this.itemsCount) {
                            break;
                        }
                        i10 = i39;
                    }
                } else if (i38 == 22) {
                    while (i2 <= getMeasuredHeight()) {
                        canvas.drawCircle(checkRtl(AndroidUtilities.m107dp(20) + m107dp9), AndroidUtilities.m107dp(6) + i2 + m107dp9, AndroidUtilities.m107dp(48) >> 1, paint2);
                        this.rectF.set(AndroidUtilities.m107dp(76), AndroidUtilities.m107dp(16) + i2, AndroidUtilities.m107dp(140), AndroidUtilities.m107dp(24) + i2);
                        checkRtl(this.rectF);
                        canvas.drawRoundRect(this.rectF, AndroidUtilities.m107dp(4), AndroidUtilities.m107dp(4), paint2);
                        this.rectF.set(AndroidUtilities.m107dp(76), AndroidUtilities.m107dp(38) + i2, AndroidUtilities.m107dp(260), i2 + AndroidUtilities.m107dp(46));
                        checkRtl(this.rectF);
                        canvas.drawRoundRect(this.rectF, AndroidUtilities.m107dp(4), AndroidUtilities.m107dp(4), paint2);
                        i2 += getCellHeight(getMeasuredWidth());
                        int i40 = i10 + 1;
                        if (this.isSingleCell && i40 >= this.itemsCount) {
                            break;
                        }
                        i10 = i40;
                    }
                } else if (i38 == 25) {
                    while (i2 <= getMeasuredHeight()) {
                        canvas.drawCircle(AndroidUtilities.m107dp(17) + m107dp8, AndroidUtilities.m107dp(6) + i2 + m107dp8, AndroidUtilities.m107dp(38) >> 1, paint2);
                        this.rectF.set(AndroidUtilities.m107dp(76), AndroidUtilities.m107dp(21) + i2, AndroidUtilities.m107dp(220), AndroidUtilities.m107dp(29) + i2);
                        canvas.drawRoundRect(this.rectF, AndroidUtilities.m107dp(4), AndroidUtilities.m107dp(4), paint2);
                        i2 += getCellHeight(getMeasuredWidth());
                        int i41 = i10 + 1;
                        if (this.isSingleCell && i41 >= this.itemsCount) {
                            break;
                        }
                        i10 = i41;
                    }
                } else if (i38 == 26) {
                    while (i2 <= getMeasuredHeight()) {
                        canvas.drawCircle(LocaleController.isRTL ? (getMeasuredWidth() - AndroidUtilities.m107dp(21)) - m107dp7 : AndroidUtilities.m107dp(21) + m107dp7, AndroidUtilities.m107dp(16) + i2 + m107dp7, AndroidUtilities.m107dp(21) >> 1, paint2);
                        this.rectF.set(AndroidUtilities.m107dp(60), AndroidUtilities.m107dp(21) + i2, AndroidUtilities.m107dp(190), AndroidUtilities.m107dp(29) + i2);
                        checkRtl(this.rectF);
                        canvas.drawRoundRect(this.rectF, AndroidUtilities.m107dp(4), AndroidUtilities.m107dp(4), paint2);
                        this.rectF.set(getMeasuredWidth() - AndroidUtilities.m107dp(16), AndroidUtilities.m107dp(21) + i2, getMeasuredWidth() - AndroidUtilities.m107dp(62), AndroidUtilities.m107dp(29) + i2);
                        checkRtl(this.rectF);
                        canvas.drawRoundRect(this.rectF, AndroidUtilities.m107dp(4), AndroidUtilities.m107dp(4), paint2);
                        i2 += getCellHeight(getMeasuredWidth());
                        int i42 = i10 + 1;
                        if (this.isSingleCell && i42 >= this.itemsCount) {
                            break;
                        }
                        i10 = i42;
                    }
                } else if (getViewType() == 28) {
                    while (i2 <= getMeasuredHeight()) {
                        canvas.drawCircle(checkRtl(this.paddingLeft + AndroidUtilities.m107dp(10) + m107dp6), (AndroidUtilities.m107dp(58) >> 1) + i2, AndroidUtilities.m107dp(24), paint2);
                        this.rectF.set(this.paddingLeft + AndroidUtilities.m107dp(68), AndroidUtilities.m107dp(17) + i2, this.paddingLeft + AndroidUtilities.m107dp(260), AndroidUtilities.m107dp(25) + i2);
                        checkRtl(this.rectF);
                        canvas.drawRoundRect(this.rectF, AndroidUtilities.m107dp(4), AndroidUtilities.m107dp(4), paint2);
                        this.rectF.set(this.paddingLeft + AndroidUtilities.m107dp(68), AndroidUtilities.m107dp(39) + i2, this.paddingLeft + AndroidUtilities.m107dp(140), AndroidUtilities.m107dp(47) + i2);
                        checkRtl(this.rectF);
                        canvas.drawRoundRect(this.rectF, AndroidUtilities.m107dp(4), AndroidUtilities.m107dp(4), paint2);
                        if (this.showDate) {
                            this.rectF.set(getMeasuredWidth() - AndroidUtilities.m107dp(50), AndroidUtilities.m107dp(20) + i2, getMeasuredWidth() - AndroidUtilities.m107dp(12), AndroidUtilities.m107dp(28) + i2);
                            checkRtl(this.rectF);
                            canvas.drawRoundRect(this.rectF, AndroidUtilities.m107dp(4), AndroidUtilities.m107dp(4), paint2);
                        }
                        i2 += getCellHeight(getMeasuredWidth());
                        int i43 = i10 + 1;
                        if (this.isSingleCell && i43 >= this.itemsCount) {
                            break;
                        }
                        i10 = i43;
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
            int m107dp = AndroidUtilities.m107dp(200);
            this.gradientWidth = m107dp;
            this.gradient = new LinearGradient((float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, m107dp, (float) BitmapDescriptorFactory.HUE_RED, new int[]{themedColor2, themedColor, themedColor, themedColor2}, new float[]{BitmapDescriptorFactory.HUE_RED, 0.4f, 0.6f, 1.0f}, Shader.TileMode.CLAMP);
        } else {
            int m107dp2 = AndroidUtilities.m107dp(600);
            this.gradientWidth = m107dp2;
            this.gradient = new LinearGradient((float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, m107dp2, new int[]{themedColor2, themedColor, themedColor, themedColor2}, new float[]{BitmapDescriptorFactory.HUE_RED, 0.4f, 0.6f, 1.0f}, Shader.TileMode.CLAMP);
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
            return AndroidUtilities.m107dp(60);
        }
        switch (getViewType()) {
            case 1:
                return AndroidUtilities.m107dp(78) + 1;
            case 2:
                return ((i - (AndroidUtilities.m107dp(2) * (getColumnsCount() - 1))) / getColumnsCount()) + AndroidUtilities.m107dp(2);
            case 3:
            case 4:
                return AndroidUtilities.m107dp(56);
            case 5:
                return AndroidUtilities.m107dp(80);
            case 6:
            case 18:
                return AndroidUtilities.m107dp(64);
            case 7:
                return AndroidUtilities.m107dp((SharedConfig.isDialogsCompactModeEnabled ? 48 : SharedConfig.useThreeLinesLayout ? 78 : 72) + 1);
            case 8:
                return AndroidUtilities.m107dp(61);
            case 9:
                return AndroidUtilities.m107dp(66);
            case 10:
                return AndroidUtilities.m107dp(58);
            case 11:
                return AndroidUtilities.m107dp(36);
            case 12:
                return AndroidUtilities.m107dp(103);
            case 13:
            case 14:
            case 17:
            case 20:
            case 27:
            default:
                return 0;
            case 15:
                return AndroidUtilities.m107dp(107);
            case 16:
            case 23:
                return AndroidUtilities.m107dp(50);
            case 19:
                return AndroidUtilities.m107dp(58);
            case 21:
                return AndroidUtilities.m107dp(58);
            case 22:
                return AndroidUtilities.m107dp(60);
            case 24:
                if (!SharedConfig.isDialogsCompactModeEnabled) {
                    r2 = (SharedConfig.useThreeLinesLayout ? 76 : 64) + 1;
                }
                return AndroidUtilities.m107dp(r2);
            case 25:
                return AndroidUtilities.m107dp(51);
            case 26:
                return AndroidUtilities.m107dp(50) + 1;
            case 28:
                return AndroidUtilities.m107dp(58);
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

    public void setMemberRequestButton(boolean z) {
        int i;
        String str;
        TextPaint textPaint = new TextPaint(1);
        textPaint.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        textPaint.setTextSize(AndroidUtilities.m107dp(14));
        float m107dp = AndroidUtilities.m107dp(34);
        if (z) {
            i = C3632R.string.AddToChannel;
            str = "AddToChannel";
        } else {
            i = C3632R.string.AddToGroup;
            str = "AddToGroup";
        }
        this.memberRequestButtonWidth = m107dp + textPaint.measureText(LocaleController.getString(str, i));
    }
}
