package org.telegram.p043ui.Components.Premium.boosts;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.style.ReplacementSpan;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.LocaleController;
import org.telegram.p043ui.ActionBar.Theme;
/* renamed from: org.telegram.ui.Components.Premium.boosts.DiscountSpan */
/* loaded from: classes6.dex */
public class DiscountSpan extends ReplacementSpan {
    private int color;
    int discount;
    float height;
    StaticLayout layout;
    float width;
    TextPaint textPaint = new TextPaint(1);
    Paint bgPaint = new Paint(1);

    public static CharSequence applySpan(CharSequence charSequence, int i) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("d ");
        spannableStringBuilder.append(charSequence);
        DiscountSpan discountSpan = new DiscountSpan(11.0f, i);
        discountSpan.setColor(Theme.getColor(Theme.key_premiumGradient1));
        spannableStringBuilder.setSpan(discountSpan, 0, 1, 0);
        return spannableStringBuilder;
    }

    public DiscountSpan(float f, int i) {
        this.textPaint.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.bgPaint.setStyle(Paint.Style.FILL);
        this.textPaint.setTextSize(AndroidUtilities.m108dp(f));
        this.discount = i;
    }

    public void setColor(int i) {
        this.color = i;
    }

    public void makeLayout() {
        if (this.layout == null) {
            StaticLayout staticLayout = new StaticLayout(LocaleController.formatString(C3632R.string.GiftPremiumOptionDiscount, Integer.valueOf(this.discount)), this.textPaint, AndroidUtilities.displaySize.x, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
            this.layout = staticLayout;
            this.width = staticLayout.getLineWidth(0);
            this.height = this.layout.getHeight();
        }
    }

    @Override // android.text.style.ReplacementSpan
    public int getSize(Paint paint, CharSequence charSequence, int i, int i2, Paint.FontMetricsInt fontMetricsInt) {
        makeLayout();
        return (int) (AndroidUtilities.m107dp(13) + this.width);
    }

    @Override // android.text.style.ReplacementSpan
    public void draw(Canvas canvas, CharSequence charSequence, int i, int i2, float f, int i3, int i4, int i5, Paint paint) {
        makeLayout();
        int i6 = this.color;
        if (i6 == 0) {
            i6 = paint.getColor();
        }
        this.bgPaint.setColor(i6);
        this.textPaint.setColor(AndroidUtilities.computePerceivedBrightness(i6) > 0.721f ? -16777216 : -1);
        float m107dp = f + AndroidUtilities.m107dp(6);
        float m108dp = (i4 - this.height) + AndroidUtilities.m108dp(2.0f);
        RectF rectF = AndroidUtilities.rectTmp;
        rectF.set(m107dp, m108dp, this.width + m107dp, this.height + m108dp);
        float m108dp2 = AndroidUtilities.m108dp(4.0f);
        rectF.inset(AndroidUtilities.m108dp(-4.5f), AndroidUtilities.m108dp(-1.66f));
        canvas.drawRoundRect(rectF, m108dp2, m108dp2, this.bgPaint);
        canvas.save();
        canvas.translate(m107dp, m108dp);
        this.layout.draw(canvas);
        canvas.restore();
    }
}
