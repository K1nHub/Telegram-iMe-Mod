package org.telegram.p044ui.Components;

import android.os.Build;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.FileLog;
/* renamed from: org.telegram.ui.Components.StaticLayoutEx */
/* loaded from: classes6.dex */
public class StaticLayoutEx {
    public static Layout.Alignment[] alignments = Layout.Alignment.values();

    public static Layout.Alignment ALIGN_RIGHT() {
        Layout.Alignment[] alignmentArr = alignments;
        return alignmentArr.length >= 5 ? alignmentArr[4] : Layout.Alignment.ALIGN_OPPOSITE;
    }

    public static Layout.Alignment ALIGN_LEFT() {
        Layout.Alignment[] alignmentArr = alignments;
        return alignmentArr.length >= 5 ? alignmentArr[3] : Layout.Alignment.ALIGN_NORMAL;
    }

    public static StaticLayout createStaticLayout2(CharSequence charSequence, TextPaint textPaint, int i, Layout.Alignment alignment, float f, float f2, boolean z, TextUtils.TruncateAt truncateAt, int i2, int i3) {
        if (Build.VERSION.SDK_INT >= 23) {
            return StaticLayout.Builder.obtain(charSequence, 0, charSequence.length(), textPaint, i2).setAlignment(alignment).setLineSpacing(f2, f).setIncludePad(z).setEllipsize(TextUtils.TruncateAt.END).setEllipsizedWidth(i2).setMaxLines(i3).setBreakStrategy(1).setHyphenationFrequency(0).build();
        }
        return createStaticLayout(charSequence, 0, charSequence.length(), textPaint, i, alignment, f, f2, z, truncateAt, i2, i3, true);
    }

    public static StaticLayout createStaticLayout(CharSequence charSequence, TextPaint textPaint, int i, Layout.Alignment alignment, float f, float f2, boolean z, TextUtils.TruncateAt truncateAt, int i2, int i3) {
        return createStaticLayout(charSequence, 0, charSequence.length(), textPaint, i, alignment, f, f2, z, truncateAt, i2, i3, true);
    }

    public static StaticLayout createStaticLayout(CharSequence charSequence, TextPaint textPaint, int i, Layout.Alignment alignment, float f, float f2, boolean z, TextUtils.TruncateAt truncateAt, int i2, int i3, boolean z2) {
        return createStaticLayout(charSequence, 0, charSequence.length(), textPaint, i, alignment, f, f2, z, truncateAt, i2, i3, z2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static StaticLayout createStaticLayout(CharSequence charSequence, int i, int i2, TextPaint textPaint, int i3, Layout.Alignment alignment, float f, float f2, boolean z, TextUtils.TruncateAt truncateAt, int i4, int i5, boolean z2) {
        StaticLayout staticLayout;
        int i6;
        int i7;
        int i8;
        StaticLayout staticLayout2;
        TextUtils.TruncateAt truncateAt2;
        int offsetForHorizontal;
        try {
            if (i5 == 1) {
                CharSequence ellipsize = TextUtils.ellipsize(charSequence, textPaint, i4, TextUtils.TruncateAt.END);
                try {
                    return new StaticLayout(ellipsize, 0, ellipsize.length(), textPaint, i3, alignment, f, f2, z);
                } catch (Exception e) {
                    e = e;
                    staticLayout = 0;
                }
            } else {
                int i9 = Build.VERSION.SDK_INT;
                if (i9 >= 23) {
                    staticLayout2 = StaticLayout.Builder.obtain(charSequence, 0, charSequence.length(), textPaint, i3).setAlignment(alignment).setLineSpacing(f2, f).setIncludePad(z).setEllipsize(null).setEllipsizedWidth(i4).setMaxLines(i5).setBreakStrategy(1).setHyphenationFrequency(0).build();
                    i6 = i9;
                    i7 = 1;
                    truncateAt2 = null;
                    i8 = i5;
                } else {
                    i6 = i9;
                    i7 = 1;
                    staticLayout = 0;
                    i8 = i5;
                    try {
                        staticLayout2 = new StaticLayout(charSequence, textPaint, i3, alignment, f, f2, z);
                        truncateAt2 = staticLayout;
                    } catch (Exception e2) {
                        e = e2;
                    }
                }
                if (staticLayout2.getLineCount() <= i8) {
                    return staticLayout2;
                }
                int i10 = i8 - 1;
                float lineLeft = staticLayout2.getLineLeft(i10);
                float lineWidth = staticLayout2.getLineWidth(i10);
                if (lineLeft != BitmapDescriptorFactory.HUE_RED) {
                    offsetForHorizontal = staticLayout2.getOffsetForHorizontal(i10, lineLeft);
                } else {
                    offsetForHorizontal = staticLayout2.getOffsetForHorizontal(i10, lineWidth);
                }
                if (lineWidth < i4 - AndroidUtilities.m54dp(10)) {
                    offsetForHorizontal += 3;
                }
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(charSequence.subSequence(0, Math.max(0, offsetForHorizontal - 3)));
                spannableStringBuilder.append((CharSequence) "…");
                if (i6 >= 23) {
                    return StaticLayout.Builder.obtain(spannableStringBuilder, 0, spannableStringBuilder.length(), textPaint, i3).setAlignment(alignment).setLineSpacing(f2, f).setIncludePad(z).setEllipsize(((AnimatedEmojiSpan[]) spannableStringBuilder.getSpans(0, spannableStringBuilder.length(), AnimatedEmojiSpan.class)).length > 0 ? truncateAt2 : truncateAt).setEllipsizedWidth(i4).setMaxLines(i8).setBreakStrategy(z2 ? i7 : 0).setHyphenationFrequency(0).build();
                }
                return new StaticLayout(spannableStringBuilder, textPaint, i3, alignment, f, f2, z);
            }
        } catch (Exception e3) {
            e = e3;
            staticLayout = 0;
        }
        FileLog.m49e(e);
        return staticLayout;
    }
}
