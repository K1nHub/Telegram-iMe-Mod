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
import org.telegram.messenger.C3419R;
import org.telegram.messenger.GenericProvider;
import org.telegram.messenger.LocaleController;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.CheckBox2;
import org.telegram.p043ui.Components.CheckBoxBase;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.PremiumPreviewFragment;
/* renamed from: org.telegram.ui.Components.Premium.PremiumTierCell */
/* loaded from: classes6.dex */
public class PremiumTierCell extends ViewGroup {
    private CheckBox2 checkBox;
    private int color0;
    private int color1;
    private int colorKey1;
    private int colorKey2;
    protected TextView discountView;
    private PremiumTierCell globalGradientView;
    private LinearGradient gradient;
    private int gradientWidth;
    private boolean hasDivider;
    private boolean isDrawingGradient;
    private long lastUpdateTime;
    private int leftPaddingToCheckboxDp;
    private int leftPaddingToTextDp;
    private Matrix matrix;
    private Paint paint;
    private int parentWidth;
    private float parentXOffset;
    private TextView pricePerMonthView;
    private TextView pricePerYearStrikeView;
    private TextView pricePerYearView;
    protected PremiumPreviewFragment.SubscriptionTier tier;
    private TextView titleView;
    private int totalTranslation;

    public PremiumTierCell(Context context) {
        super(context);
        this.leftPaddingToTextDp = 12;
        this.leftPaddingToCheckboxDp = 8;
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
        this.titleView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.titleView.setSingleLine();
        addView(this.titleView, LayoutHelper.createFrame(-2, -2, (LocaleController.isRTL ? 5 : 3) | 48, 0, 8, 0, 0));
        TextView textView2 = new TextView(context);
        this.discountView = textView2;
        textView2.setTextSize(1, 14.0f);
        this.discountView.setTextColor(-1);
        this.discountView.setPadding(AndroidUtilities.m72dp(3), 0, AndroidUtilities.m72dp(3), 0);
        this.discountView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        addView(this.discountView, LayoutHelper.createFrame(-2, -2, (LocaleController.isRTL ? 5 : 3) | 80, 0, 0, 0, 8));
        TextView textView3 = new TextView(context);
        this.pricePerYearStrikeView = textView3;
        textView3.setTextSize(1, 14.0f);
        TextView textView4 = this.pricePerYearStrikeView;
        int i2 = Theme.key_windowBackgroundWhiteGrayText;
        textView4.setTextColor(Theme.getColor(i2));
        this.pricePerYearStrikeView.getPaint().setStrikeThruText(true);
        this.pricePerYearStrikeView.setSingleLine();
        addView(this.pricePerYearStrikeView, LayoutHelper.createFrame(-2, -2, (LocaleController.isRTL ? 5 : 3) | 80, 0, 0, 0, 8));
        TextView textView5 = new TextView(context);
        this.pricePerYearView = textView5;
        textView5.setTextSize(1, 14.0f);
        this.pricePerYearView.setTextColor(Theme.getColor(i2));
        this.pricePerYearView.setSingleLine();
        addView(this.pricePerYearView, LayoutHelper.createFrame(-2, -2, (LocaleController.isRTL ? 5 : 3) | 80, 0, 0, 0, 8));
        TextView textView6 = new TextView(context);
        this.pricePerMonthView = textView6;
        textView6.setTextSize(1, 15.0f);
        this.pricePerMonthView.setTextColor(Theme.getColor(i2));
        this.pricePerMonthView.setSingleLine();
        addView(this.pricePerMonthView, LayoutHelper.createFrame(-2, -2, 8388613));
        setPadding(AndroidUtilities.m72dp(4), AndroidUtilities.m72dp(8), AndroidUtilities.m72dp(4), AndroidUtilities.m72dp(8));
        setClipToPadding(false);
        setWillNotDraw(false);
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        this.titleView.setAlpha(z ? 1.0f : 0.6f);
        this.pricePerMonthView.setAlpha(z ? 1.0f : 0.6f);
        this.checkBox.setAlpha(z ? 1.0f : 0.6f);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.hasDivider) {
            if (LocaleController.isRTL) {
                canvas.drawLine(BitmapDescriptorFactory.HUE_RED, getHeight() - 1, this.titleView.getRight(), getHeight() - 1, Theme.dividerPaint);
            } else {
                canvas.drawLine(this.titleView.getLeft(), getHeight() - 1, getWidth(), getHeight() - 1, Theme.dividerPaint);
            }
        }
    }

    public void setParentXOffset(float f) {
        this.parentXOffset = f;
    }

    public void setGlobalGradientView(PremiumTierCell premiumTierCell) {
        this.globalGradientView = premiumTierCell;
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
        rect.set(AndroidUtilities.m72dp(this.leftPaddingToCheckboxDp) + getPaddingLeft(), (int) ((getMeasuredHeight() - this.checkBox.getMeasuredHeight()) / 2.0f), 0, 0);
        checkRtlAndLayout(this.checkBox);
        int measuredHeight = (int) ((getMeasuredHeight() - this.pricePerMonthView.getMeasuredHeight()) / 2.0f);
        if (AndroidUtilities.m72dp(this.leftPaddingToCheckboxDp + this.leftPaddingToTextDp + 24) + this.checkBox.getMeasuredWidth() + (this.pricePerYearStrikeView.getVisibility() == 0 ? this.pricePerYearStrikeView.getMeasuredWidth() : 0) + this.pricePerYearView.getMeasuredWidth() + getPaddingLeft() > getMeasuredWidth() - this.pricePerMonthView.getMeasuredWidth() && this.discountView.getVisibility() == 0) {
            measuredHeight = getPaddingTop() + AndroidUtilities.m72dp(2);
        }
        rect.set(((getMeasuredWidth() - this.pricePerMonthView.getMeasuredWidth()) - AndroidUtilities.m72dp(16)) - getPaddingRight(), measuredHeight, 0, 0);
        checkRtlAndLayout(this.pricePerMonthView);
        rect.set(AndroidUtilities.m72dp(this.leftPaddingToCheckboxDp + this.leftPaddingToTextDp) + this.checkBox.getMeasuredWidth() + getPaddingLeft(), this.pricePerYearView.getVisibility() == 8 ? (int) ((getMeasuredHeight() - this.titleView.getMeasuredHeight()) / 2.0f) : getPaddingTop(), 0, 0);
        checkRtlAndLayout(this.titleView);
        if (this.discountView.getVisibility() == 0) {
            rect.set(AndroidUtilities.m72dp(this.leftPaddingToCheckboxDp + this.leftPaddingToTextDp + 6) + this.checkBox.getMeasuredWidth() + getPaddingLeft() + this.titleView.getMeasuredWidth(), getPaddingTop() + AndroidUtilities.m72dp(2), 0, 0);
            checkRtlAndLayout(this.discountView);
        }
        rect.set(AndroidUtilities.m72dp(this.leftPaddingToCheckboxDp + this.leftPaddingToTextDp) + this.checkBox.getMeasuredWidth() + getPaddingLeft(), (getMeasuredHeight() - this.pricePerYearStrikeView.getMeasuredHeight()) - getPaddingBottom(), 0, 0);
        checkRtlAndLayout(this.pricePerYearStrikeView);
        rect.set(AndroidUtilities.m72dp(this.leftPaddingToCheckboxDp + this.leftPaddingToTextDp) + this.checkBox.getMeasuredWidth() + (this.pricePerYearStrikeView.getVisibility() == 0 ? this.pricePerYearStrikeView.getMeasuredWidth() + AndroidUtilities.m72dp(6) : 0) + getPaddingLeft(), (getMeasuredHeight() - this.pricePerYearView.getMeasuredHeight()) - getPaddingBottom(), 0, 0);
        checkRtlAndLayout(this.pricePerYearView);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        if (this.isDrawingGradient) {
            Paint paint = this.paint;
            PremiumTierCell premiumTierCell = this.globalGradientView;
            if (premiumTierCell != null) {
                paint = premiumTierCell.paint;
            }
            drawChild(canvas, this.checkBox, getDrawingTime());
            updateColors();
            updateGradient();
            RectF rectF = AndroidUtilities.rectTmp;
            rectF.set(this.pricePerMonthView.getLeft(), this.pricePerMonthView.getTop() + AndroidUtilities.m72dp(4), this.pricePerMonthView.getRight(), this.pricePerMonthView.getBottom() - AndroidUtilities.m72dp(4));
            canvas.drawRoundRect(rectF, AndroidUtilities.m72dp(8), AndroidUtilities.m72dp(8), paint);
            rectF.set(this.pricePerYearStrikeView.getLeft(), this.pricePerYearStrikeView.getTop() + AndroidUtilities.m72dp(3), this.pricePerYearStrikeView.getRight(), this.pricePerYearStrikeView.getBottom() - AndroidUtilities.m72dp(3));
            canvas.drawRoundRect(rectF, AndroidUtilities.m72dp(8), AndroidUtilities.m72dp(8), paint);
            rectF.set(this.titleView.getLeft(), this.titleView.getTop() + AndroidUtilities.m72dp(4), this.titleView.getRight(), this.titleView.getBottom() - AndroidUtilities.m72dp(4));
            canvas.drawRoundRect(rectF, AndroidUtilities.m72dp(8), AndroidUtilities.m72dp(8), paint);
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
        int m72dp = AndroidUtilities.m72dp(58);
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m72dp(28), 1073741824);
        this.checkBox.measure(makeMeasureSpec, makeMeasureSpec);
        this.pricePerMonthView.measure(View.MeasureSpec.makeMeasureSpec(size - this.checkBox.getMeasuredWidth(), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(m72dp, Integer.MIN_VALUE));
        this.titleView.measure(View.MeasureSpec.makeMeasureSpec((size - this.checkBox.getMeasuredWidth()) - this.pricePerMonthView.getMeasuredWidth(), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(m72dp, Integer.MIN_VALUE));
        if (this.discountView.getVisibility() == 0) {
            this.discountView.measure(View.MeasureSpec.makeMeasureSpec((size - this.checkBox.getMeasuredWidth()) - this.pricePerMonthView.getMeasuredWidth(), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(m72dp, Integer.MIN_VALUE));
        } else {
            this.discountView.measure(View.MeasureSpec.makeMeasureSpec(0, 1073741824), View.MeasureSpec.makeMeasureSpec(0, 1073741824));
        }
        this.pricePerYearStrikeView.measure(View.MeasureSpec.makeMeasureSpec(size - this.checkBox.getMeasuredWidth(), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(m72dp, Integer.MIN_VALUE));
        this.pricePerYearView.measure(View.MeasureSpec.makeMeasureSpec(((size - this.checkBox.getMeasuredWidth()) - (this.pricePerYearStrikeView.getVisibility() == 0 ? this.pricePerYearStrikeView.getMeasuredWidth() : 0)) - AndroidUtilities.m72dp(6), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(m72dp, Integer.MIN_VALUE));
        if (this.pricePerYearView.getVisibility() != 0) {
            m72dp -= AndroidUtilities.m72dp(8);
        }
        setMeasuredDimension(size, m72dp);
    }

    public PremiumPreviewFragment.SubscriptionTier getTier() {
        return this.tier;
    }

    public void setChecked(boolean z, boolean z2) {
        this.checkBox.setChecked(z, z2);
    }

    public void bind(PremiumPreviewFragment.SubscriptionTier subscriptionTier, boolean z) {
        this.tier = subscriptionTier;
        this.hasDivider = z;
        int months = subscriptionTier.getMonths();
        if (months == 1) {
            this.titleView.setText(LocaleController.getString(C3419R.string.PremiumTierMonthly));
        } else if (months == 6) {
            this.titleView.setText(LocaleController.getString(C3419R.string.PremiumTierSemiannual));
        } else if (months != 12) {
            this.titleView.setText(LocaleController.formatPluralString("Months", subscriptionTier.getMonths(), new Object[0]));
        } else {
            this.titleView.setText(LocaleController.getString(C3419R.string.PremiumTierAnnual));
        }
        boolean z2 = !BuildVars.useInvoiceBilling() && (!BillingController.getInstance().isReady() || subscriptionTier.getOfferDetails() == null);
        this.isDrawingGradient = z2;
        if (!z2) {
            if (subscriptionTier.getDiscount() <= 0) {
                this.discountView.setVisibility(8);
                this.pricePerYearStrikeView.setVisibility(8);
                this.pricePerYearView.setVisibility(8);
            } else {
                this.discountView.setText(LocaleController.formatString(C3419R.string.GiftPremiumOptionDiscount, Integer.valueOf(subscriptionTier.getDiscount())));
                this.discountView.setVisibility(0);
                this.pricePerYearStrikeView.setVisibility(0);
                this.pricePerYearView.setVisibility(0);
            }
            this.pricePerYearStrikeView.setText(subscriptionTier.getFormattedPricePerYearRegular());
            this.pricePerYearView.setText(LocaleController.formatString(C3419R.string.PricePerYear, subscriptionTier.getFormattedPricePerYear()));
            this.pricePerMonthView.setText(LocaleController.formatString(C3419R.string.PricePerMonthMe, subscriptionTier.getFormattedPricePerMonth()));
            if (subscriptionTier.subscriptionOption.current) {
                this.pricePerYearView.setVisibility(0);
                this.pricePerYearView.setText(LocaleController.getString(C3419R.string.YourCurrentPlan));
            }
        } else {
            this.discountView.setText(LocaleController.formatString(C3419R.string.GiftPremiumOptionDiscount, 10));
            this.discountView.setVisibility(0);
            this.pricePerYearStrikeView.setVisibility(0);
            this.pricePerYearView.setVisibility(0);
            this.pricePerYearStrikeView.setText("USD00.00");
            this.pricePerYearView.setText(LocaleController.formatString(C3419R.string.PricePerYear, 1000));
            this.pricePerMonthView.setText(LocaleController.formatString(C3419R.string.PricePerMonthMe, 100));
        }
        requestLayout();
    }

    public void updateGradient() {
        PremiumTierCell premiumTierCell = this.globalGradientView;
        if (premiumTierCell != null) {
            premiumTierCell.updateGradient();
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
        PremiumTierCell premiumTierCell = this.globalGradientView;
        if (premiumTierCell != null) {
            premiumTierCell.updateColors();
            return;
        }
        int color = Theme.getColor(this.colorKey1);
        int color2 = Theme.getColor(this.colorKey2);
        if (this.color1 == color2 && this.color0 == color) {
            return;
        }
        this.color0 = color;
        this.color1 = color2;
        int m72dp = AndroidUtilities.m72dp(200);
        this.gradientWidth = m72dp;
        LinearGradient linearGradient = new LinearGradient((float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, m72dp, (float) BitmapDescriptorFactory.HUE_RED, new int[]{color2, color, color, color2}, new float[]{BitmapDescriptorFactory.HUE_RED, 0.4f, 0.6f, 1.0f}, Shader.TileMode.CLAMP);
        this.gradient = linearGradient;
        this.paint.setShader(linearGradient);
    }
}
