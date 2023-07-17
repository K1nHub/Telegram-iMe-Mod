package org.telegram.p043ui.Components.Premium;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.os.SystemClock;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BillingController;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C3417R;
import org.telegram.messenger.GenericProvider;
import org.telegram.messenger.LocaleController;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.CheckBox2;
import org.telegram.p043ui.Components.CheckBoxBase;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.Premium.GiftPremiumBottomSheet;
/* renamed from: org.telegram.ui.Components.Premium.PremiumGiftTierCell */
/* loaded from: classes6.dex */
public class PremiumGiftTierCell extends ViewGroup {
    private CheckBox2 checkBox;
    private int color0;
    private int color1;
    private int colorKey1;
    private int colorKey2;
    protected TextView discountView;
    private PremiumGiftTierCell globalGradientView;
    private LinearGradient gradient;
    private int gradientWidth;
    private boolean isDrawingGradient;
    private long lastUpdateTime;
    private int leftPaddingToTextDp;
    private Matrix matrix;
    private Paint paint;
    private int parentWidth;
    private float parentXOffset;
    private TextView pricePerMonthView;
    private TextView priceTotalView;
    protected GiftPremiumBottomSheet.GiftTier tier;
    private TextView titleView;
    private int totalTranslation;

    public PremiumGiftTierCell(Context context) {
        super(context);
        this.leftPaddingToTextDp = 24;
        this.colorKey1 = Theme.key_windowBackgroundWhite;
        this.colorKey2 = Theme.key_windowBackgroundGray;
        this.paint = new Paint();
        this.matrix = new Matrix();
        CheckBox2 checkBox2 = new CheckBox2(context, 24);
        this.checkBox = checkBox2;
        checkBox2.setDrawBackgroundAsArc(10);
        CheckBox2 checkBox22 = this.checkBox;
        int i = Theme.key_radioBackground;
        checkBox22.setColor(i, i, Theme.key_checkboxCheck);
        addView(this.checkBox);
        TextView textView = new TextView(context);
        this.titleView = textView;
        textView.setTextSize(1, 16.0f);
        this.titleView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText));
        addView(this.titleView, LayoutHelper.createFrame(-2, -2, (LocaleController.isRTL ? 5 : 3) | 48, 0, 8, 0, 0));
        TextView textView2 = new TextView(context);
        this.discountView = textView2;
        textView2.setTextSize(1, 14.0f);
        this.discountView.setTextColor(-1);
        this.discountView.setPadding(AndroidUtilities.m54dp(3), 0, AndroidUtilities.m54dp(3), 0);
        this.discountView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        addView(this.discountView, LayoutHelper.createFrame(-2, -2, (LocaleController.isRTL ? 5 : 3) | 80, 0, 0, 0, 8));
        TextView textView3 = new TextView(context);
        this.pricePerMonthView = textView3;
        textView3.setTextSize(1, 14.0f);
        TextView textView4 = this.pricePerMonthView;
        int i2 = Theme.key_windowBackgroundWhiteGrayText;
        textView4.setTextColor(Theme.getColor(i2));
        addView(this.pricePerMonthView, LayoutHelper.createFrame(-2, -2, (LocaleController.isRTL ? 5 : 3) | 80, 0, 0, 0, 8));
        TextView textView5 = new TextView(context);
        this.priceTotalView = textView5;
        textView5.setTextSize(1, 16.0f);
        this.priceTotalView.setTextColor(Theme.getColor(i2));
        addView(this.priceTotalView, LayoutHelper.createFrame(-2, -2, 8388613));
        setPadding(AndroidUtilities.m54dp(24), AndroidUtilities.m54dp(12), AndroidUtilities.m54dp(16), AndroidUtilities.m54dp(12));
        setClipToPadding(false);
        setWillNotDraw(false);
    }

    public void setParentXOffset(float f) {
        this.parentXOffset = f;
    }

    public void setGlobalGradientView(PremiumGiftTierCell premiumGiftTierCell) {
        this.globalGradientView = premiumGiftTierCell;
    }

    public void setProgressDelegate(CheckBoxBase.ProgressDelegate progressDelegate) {
        this.checkBox.setProgressDelegate(progressDelegate);
    }

    public void setCirclePaintProvider(GenericProvider<Void, Paint> genericProvider) {
        this.checkBox.setCirclePaintProvider(genericProvider);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        Rect rect = AndroidUtilities.rectTmp2;
        rect.set(AndroidUtilities.m54dp(8) + getPaddingLeft(), (int) ((getMeasuredHeight() - this.checkBox.getMeasuredHeight()) / 2.0f), 0, 0);
        checkRtlAndLayout(this.checkBox);
        rect.set(((getMeasuredWidth() - this.priceTotalView.getMeasuredWidth()) - AndroidUtilities.m54dp(16)) - getPaddingRight(), (int) ((getMeasuredHeight() - this.priceTotalView.getMeasuredHeight()) / 2.0f), 0, 0);
        checkRtlAndLayout(this.priceTotalView);
        rect.set(AndroidUtilities.m54dp(this.leftPaddingToTextDp + 8) + this.checkBox.getMeasuredWidth() + getPaddingLeft(), getPaddingTop(), 0, 0);
        checkRtlAndLayout(this.titleView);
        if (this.discountView.getVisibility() == 0) {
            rect.set(AndroidUtilities.m54dp(this.leftPaddingToTextDp + 8) + this.checkBox.getMeasuredWidth() + getPaddingLeft(), (getMeasuredHeight() - this.discountView.getMeasuredHeight()) - getPaddingBottom(), 0, 0);
            checkRtlAndLayout(this.discountView);
        }
        rect.set(AndroidUtilities.m54dp(this.leftPaddingToTextDp + 8 + (this.discountView.getVisibility() == 0 ? 6 : 0)) + this.checkBox.getMeasuredWidth() + this.discountView.getMeasuredWidth() + getPaddingLeft(), (getMeasuredHeight() - this.pricePerMonthView.getMeasuredHeight()) - getPaddingBottom(), 0, 0);
        checkRtlAndLayout(this.pricePerMonthView);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        if (this.isDrawingGradient) {
            Paint paint = this.paint;
            PremiumGiftTierCell premiumGiftTierCell = this.globalGradientView;
            if (premiumGiftTierCell != null) {
                paint = premiumGiftTierCell.paint;
            }
            drawChild(canvas, this.checkBox, getDrawingTime());
            updateColors();
            updateGradient();
            RectF rectF = AndroidUtilities.rectTmp;
            rectF.set(this.priceTotalView.getLeft(), this.priceTotalView.getTop() + AndroidUtilities.m54dp(4), this.priceTotalView.getRight(), this.priceTotalView.getBottom() - AndroidUtilities.m54dp(4));
            canvas.drawRoundRect(rectF, AndroidUtilities.m54dp(8), AndroidUtilities.m54dp(8), paint);
            rectF.set(this.pricePerMonthView.getLeft(), AndroidUtilities.m54dp(42), this.pricePerMonthView.getRight(), AndroidUtilities.m54dp(54));
            canvas.drawRoundRect(rectF, AndroidUtilities.m54dp(8), AndroidUtilities.m54dp(8), paint);
            rectF.set(this.titleView.getLeft(), this.titleView.getTop() + AndroidUtilities.m54dp(4), this.titleView.getRight(), this.titleView.getBottom() - AndroidUtilities.m54dp(4));
            canvas.drawRoundRect(rectF, AndroidUtilities.m54dp(8), AndroidUtilities.m54dp(8), paint);
            invalidate();
            return;
        }
        super.dispatchDraw(canvas);
    }

    private void checkRtlAndLayout(View view) {
        Rect rect = AndroidUtilities.rectTmp2;
        rect.right = rect.left + view.getMeasuredWidth();
        rect.bottom = rect.top + view.getMeasuredHeight();
        if (LocaleController.isRTL) {
            int i = rect.right;
            rect.right = getWidth() - rect.left;
            rect.left = getWidth() - i;
        }
        view.layout(rect.left, rect.top, rect.right, rect.bottom);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i);
        int m54dp = AndroidUtilities.m54dp(68);
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m54dp(28), 1073741824);
        this.checkBox.measure(makeMeasureSpec, makeMeasureSpec);
        this.priceTotalView.measure(View.MeasureSpec.makeMeasureSpec(size - this.checkBox.getMeasuredWidth(), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(m54dp, Integer.MIN_VALUE));
        this.titleView.measure(View.MeasureSpec.makeMeasureSpec((size - this.checkBox.getMeasuredWidth()) - this.priceTotalView.getMeasuredWidth(), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(m54dp, Integer.MIN_VALUE));
        if (this.discountView.getVisibility() == 0) {
            this.discountView.measure(View.MeasureSpec.makeMeasureSpec((size - this.checkBox.getMeasuredWidth()) - this.priceTotalView.getMeasuredWidth(), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(m54dp, Integer.MIN_VALUE));
        } else {
            this.discountView.measure(View.MeasureSpec.makeMeasureSpec(0, 1073741824), View.MeasureSpec.makeMeasureSpec(0, 1073741824));
        }
        this.pricePerMonthView.measure(View.MeasureSpec.makeMeasureSpec(((size - this.checkBox.getMeasuredWidth()) - this.priceTotalView.getMeasuredWidth()) - this.discountView.getMeasuredWidth(), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(m54dp, Integer.MIN_VALUE));
        setMeasuredDimension(size, m54dp);
    }

    public void setChecked(boolean z, boolean z2) {
        this.checkBox.setChecked(z, z2);
    }

    public void bind(GiftPremiumBottomSheet.GiftTier giftTier) {
        this.tier = giftTier;
        this.titleView.setText(LocaleController.formatPluralString("Months", giftTier.getMonths(), new Object[0]));
        boolean z = !BuildVars.useInvoiceBilling() && (!BillingController.getInstance().isReady() || giftTier.getGooglePlayProductDetails() == null);
        this.isDrawingGradient = z;
        if (!z) {
            if (giftTier.getDiscount() <= 0) {
                this.discountView.setVisibility(8);
            } else {
                this.discountView.setText(LocaleController.formatString(C3417R.string.GiftPremiumOptionDiscount, Integer.valueOf(giftTier.getDiscount())));
                this.discountView.setVisibility(0);
            }
            this.pricePerMonthView.setText(LocaleController.formatString(C3417R.string.PricePerMonth, giftTier.getFormattedPricePerMonth()));
            this.priceTotalView.setText(giftTier.getFormattedPrice());
        } else {
            this.discountView.setText(LocaleController.formatString(C3417R.string.GiftPremiumOptionDiscount, 10));
            this.discountView.setVisibility(0);
            this.pricePerMonthView.setText(LocaleController.formatString(C3417R.string.PricePerMonth, 100));
            this.priceTotalView.setText("USD00,00");
        }
        requestLayout();
    }

    public void updateGradient() {
        PremiumGiftTierCell premiumGiftTierCell = this.globalGradientView;
        if (premiumGiftTierCell != null) {
            premiumGiftTierCell.updateGradient();
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
        this.lastUpdateTime = elapsedRealtime;
        int i2 = (int) (this.totalTranslation + (((float) (abs * i)) / 400.0f));
        this.totalTranslation = i2;
        if (i2 >= i * 4) {
            this.totalTranslation = (-this.gradientWidth) * 2;
        }
        this.matrix.setTranslate(this.totalTranslation + this.parentXOffset, BitmapDescriptorFactory.HUE_RED);
        LinearGradient linearGradient = this.gradient;
        if (linearGradient != null) {
            linearGradient.setLocalMatrix(this.matrix);
        }
    }

    public void updateColors() {
        PremiumGiftTierCell premiumGiftTierCell = this.globalGradientView;
        if (premiumGiftTierCell != null) {
            premiumGiftTierCell.updateColors();
            return;
        }
        int color = Theme.getColor(this.colorKey1);
        int color2 = Theme.getColor(this.colorKey2);
        if (this.color1 == color2 && this.color0 == color) {
            return;
        }
        this.color0 = color;
        this.color1 = color2;
        int m54dp = AndroidUtilities.m54dp(200);
        this.gradientWidth = m54dp;
        LinearGradient linearGradient = new LinearGradient((float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, m54dp, (float) BitmapDescriptorFactory.HUE_RED, new int[]{color2, color, color, color2}, new float[]{BitmapDescriptorFactory.HUE_RED, 0.4f, 0.6f, 1.0f}, Shader.TileMode.CLAMP);
        this.gradient = linearGradient;
        this.paint.setShader(linearGradient);
    }
}
