package org.telegram.p043ui.Cells;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.ImageSpan;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.LocaleController;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.LayoutHelper;
/* renamed from: org.telegram.ui.Cells.SettingsSearchCell */
/* loaded from: classes5.dex */
public class SettingsSearchCell extends FrameLayout {
    private ImageView imageView;
    private int left;
    private boolean needDivider;
    private TextView textView;
    private TextView valueTextView;

    /* renamed from: org.telegram.ui.Cells.SettingsSearchCell$VerticalImageSpan */
    /* loaded from: classes5.dex */
    public static class VerticalImageSpan extends ImageSpan {
        public VerticalImageSpan(Drawable drawable) {
            super(drawable);
        }

        @Override // android.text.style.DynamicDrawableSpan, android.text.style.ReplacementSpan
        public int getSize(Paint paint, CharSequence charSequence, int i, int i2, Paint.FontMetricsInt fontMetricsInt) {
            Rect bounds = getDrawable().getBounds();
            if (fontMetricsInt != null) {
                Paint.FontMetricsInt fontMetricsInt2 = paint.getFontMetricsInt();
                int i3 = fontMetricsInt2.descent;
                int i4 = fontMetricsInt2.ascent;
                int i5 = i4 + ((i3 - i4) / 2);
                int i6 = (bounds.bottom - bounds.top) / 2;
                int i7 = i5 - i6;
                fontMetricsInt.ascent = i7;
                fontMetricsInt.top = i7;
                int i8 = i5 + i6;
                fontMetricsInt.bottom = i8;
                fontMetricsInt.descent = i8;
            }
            return bounds.right;
        }

        @Override // android.text.style.DynamicDrawableSpan, android.text.style.ReplacementSpan
        public void draw(Canvas canvas, CharSequence charSequence, int i, int i2, float f, int i3, int i4, int i5, Paint paint) {
            Drawable drawable = getDrawable();
            canvas.save();
            Paint.FontMetricsInt fontMetricsInt = paint.getFontMetricsInt();
            int i6 = fontMetricsInt.descent;
            canvas.translate(f, ((i4 + i6) - ((i6 - fontMetricsInt.ascent) / 2)) - ((drawable.getBounds().bottom - drawable.getBounds().top) / 2));
            if (LocaleController.isRTL) {
                canvas.scale(-1.0f, 1.0f, drawable.getIntrinsicWidth() / 2, drawable.getIntrinsicHeight() / 2);
            }
            drawable.draw(canvas);
            canvas.restore();
        }
    }

    public SettingsSearchCell(Context context) {
        super(context);
        TextView textView = new TextView(context);
        this.textView = textView;
        textView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText));
        this.textView.setTextSize(1, 16.0f);
        this.textView.setGravity(LocaleController.isRTL ? 5 : 3);
        this.textView.setLines(1);
        this.textView.setMaxLines(1);
        this.textView.setSingleLine(true);
        this.textView.setEllipsize(TextUtils.TruncateAt.END);
        TextView textView2 = this.textView;
        boolean z = LocaleController.isRTL;
        addView(textView2, LayoutHelper.createFrame(-2, -2, z ? 5 : 3, z ? 16 : 71, 10, z ? 71 : 16, 0));
        TextView textView3 = new TextView(context);
        this.valueTextView = textView3;
        textView3.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2));
        this.valueTextView.setTextSize(1, 13.0f);
        this.valueTextView.setLines(1);
        this.valueTextView.setMaxLines(1);
        this.valueTextView.setSingleLine(true);
        this.valueTextView.setGravity(LocaleController.isRTL ? 5 : 3);
        TextView textView4 = this.valueTextView;
        boolean z2 = LocaleController.isRTL;
        addView(textView4, LayoutHelper.createFrame(-2, -2, z2 ? 5 : 3, z2 ? 16 : 71, 33, z2 ? 71 : 16, 0));
        ImageView imageView = new ImageView(context);
        this.imageView = imageView;
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        this.imageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_windowBackgroundWhiteGrayIcon), PorterDuff.Mode.MULTIPLY));
        addView(this.imageView, LayoutHelper.createFrame(48, 48, LocaleController.isRTL ? 5 : 3, 10, 8, 10, 0));
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(64) + (this.needDivider ? 1 : 0), 1073741824));
    }

    public void setTextAndValueAndIcon(CharSequence charSequence, String[] strArr, int i, boolean z) {
        this.textView.setText(charSequence);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.textView.getLayoutParams();
        layoutParams.leftMargin = AndroidUtilities.m107dp(LocaleController.isRTL ? 16 : 71);
        layoutParams.rightMargin = AndroidUtilities.m107dp(LocaleController.isRTL ? 71 : 16);
        if (strArr != null) {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            for (int i2 = 0; i2 < strArr.length; i2++) {
                if (i2 != 0) {
                    spannableStringBuilder.append((CharSequence) " > ");
                    Drawable mutate = getContext().getResources().getDrawable(C3632R.C3634drawable.settings_arrow).mutate();
                    mutate.setBounds(0, 0, mutate.getIntrinsicWidth(), mutate.getIntrinsicHeight());
                    mutate.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2), PorterDuff.Mode.MULTIPLY));
                    spannableStringBuilder.setSpan(new VerticalImageSpan(mutate), spannableStringBuilder.length() - 2, spannableStringBuilder.length() - 1, 33);
                }
                spannableStringBuilder.append((CharSequence) strArr[i2]);
            }
            this.valueTextView.setText(spannableStringBuilder);
            this.valueTextView.setVisibility(0);
            layoutParams.topMargin = AndroidUtilities.m107dp(10);
            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) this.valueTextView.getLayoutParams();
            layoutParams2.leftMargin = AndroidUtilities.m107dp(LocaleController.isRTL ? 16 : 71);
            layoutParams2.rightMargin = AndroidUtilities.m107dp(LocaleController.isRTL ? 71 : 16);
        } else {
            layoutParams.topMargin = AndroidUtilities.m107dp(21);
            this.valueTextView.setVisibility(8);
        }
        if (i != 0) {
            this.imageView.setImageResource(i);
            this.imageView.setVisibility(0);
        } else {
            this.imageView.setVisibility(8);
        }
        this.left = 69;
        this.needDivider = z;
        setWillNotDraw(!z);
    }

    public void setTextAndValue(CharSequence charSequence, String[] strArr, boolean z, boolean z2) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.textView.getLayoutParams();
        if (z) {
            this.valueTextView.setText(charSequence);
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            for (int i = 0; i < strArr.length; i++) {
                if (i != 0) {
                    spannableStringBuilder.append((CharSequence) " > ");
                    Drawable mutate = getContext().getResources().getDrawable(C3632R.C3634drawable.settings_arrow).mutate();
                    mutate.setBounds(0, 0, mutate.getIntrinsicWidth(), mutate.getIntrinsicHeight());
                    mutate.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText), PorterDuff.Mode.MULTIPLY));
                    spannableStringBuilder.setSpan(new VerticalImageSpan(mutate), spannableStringBuilder.length() - 2, spannableStringBuilder.length() - 1, 33);
                }
                spannableStringBuilder.append((CharSequence) strArr[i]);
            }
            this.textView.setText(spannableStringBuilder);
            this.valueTextView.setVisibility(0);
            layoutParams.topMargin = AndroidUtilities.m107dp(10);
        } else {
            this.textView.setText(charSequence);
            if (strArr != null) {
                SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder();
                for (int i2 = 0; i2 < strArr.length; i2++) {
                    if (i2 != 0) {
                        spannableStringBuilder2.append((CharSequence) " > ");
                        Drawable mutate2 = getContext().getResources().getDrawable(C3632R.C3634drawable.settings_arrow).mutate();
                        mutate2.setBounds(0, 0, mutate2.getIntrinsicWidth(), mutate2.getIntrinsicHeight());
                        mutate2.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2), PorterDuff.Mode.MULTIPLY));
                        spannableStringBuilder2.setSpan(new VerticalImageSpan(mutate2), spannableStringBuilder2.length() - 2, spannableStringBuilder2.length() - 1, 33);
                    }
                    spannableStringBuilder2.append((CharSequence) strArr[i2]);
                }
                this.valueTextView.setText(spannableStringBuilder2);
                this.valueTextView.setVisibility(0);
                layoutParams.topMargin = AndroidUtilities.m107dp(10);
            } else {
                layoutParams.topMargin = AndroidUtilities.m107dp(21);
                this.valueTextView.setVisibility(8);
            }
        }
        int m107dp = AndroidUtilities.m107dp(16);
        layoutParams.rightMargin = m107dp;
        layoutParams.leftMargin = m107dp;
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) this.valueTextView.getLayoutParams();
        int m107dp2 = AndroidUtilities.m107dp(16);
        layoutParams2.rightMargin = m107dp2;
        layoutParams2.leftMargin = m107dp2;
        this.imageView.setVisibility(8);
        this.needDivider = z2;
        setWillNotDraw(!z2);
        this.left = 16;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.needDivider) {
            canvas.drawLine(LocaleController.isRTL ? BitmapDescriptorFactory.HUE_RED : AndroidUtilities.m107dp(this.left), getMeasuredHeight() - 1, getMeasuredWidth() - (LocaleController.isRTL ? AndroidUtilities.m107dp(this.left) : 0), getMeasuredHeight() - 1, Theme.dividerPaint);
        }
    }
}
