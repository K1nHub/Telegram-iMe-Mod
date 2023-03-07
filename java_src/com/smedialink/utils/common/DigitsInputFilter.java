package com.smedialink.utils.common;

import android.text.InputFilter;
import android.text.Spanned;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.StringsKt__StringsKt;
/* compiled from: DigitsInputFilter.kt */
/* loaded from: classes3.dex */
public final class DigitsInputFilter implements InputFilter {
    private final double max;
    private final int maxDigitsAfterLength;
    private final int maxIntegerDigitsLength;

    public DigitsInputFilter(int i, int i2, double d) {
        this.maxIntegerDigitsLength = i;
        this.maxDigitsAfterLength = i2;
        this.max = d;
    }

    public /* synthetic */ DigitsInputFilter(int i, int i2, double d, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, i2, (i3 & 4) != 0 ? Double.POSITIVE_INFINITY : d);
    }

    @Override // android.text.InputFilter
    public CharSequence filter(CharSequence source, int i, int i2, Spanned dest, int i3, int i4) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(dest, "dest");
        String allText = getAllText(source, dest, i3);
        String onlyDigitsPart = getOnlyDigitsPart(allText);
        if (allText.length() == 0) {
            return null;
        }
        try {
            return checkMaxValueRule(Double.parseDouble(onlyDigitsPart), onlyDigitsPart);
        } catch (NumberFormatException unused) {
            return "";
        }
    }

    private final CharSequence checkMaxValueRule(double d, String str) {
        return d > this.max ? "" : handleInputRules(str);
    }

    private final CharSequence handleInputRules(String str) {
        return isDecimalDigit(str) ? checkRuleForDecimalDigits(str) : checkRuleForIntegerDigits(str.length());
    }

    private final boolean isDecimalDigit(String str) {
        boolean contains$default;
        contains$default = StringsKt__StringsKt.contains$default((CharSequence) str, (CharSequence) ".", false, 2, (Object) null);
        return contains$default;
    }

    private final CharSequence checkRuleForDecimalDigits(String str) {
        int indexOf$default;
        int lastIndex;
        indexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) str, ".", 0, false, 6, (Object) null);
        lastIndex = StringsKt__StringsKt.getLastIndex(str);
        String substring = str.substring(indexOf$default, lastIndex);
        Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
        if (substring.length() > this.maxDigitsAfterLength) {
            return "";
        }
        return null;
    }

    private final CharSequence checkRuleForIntegerDigits(int i) {
        if (i > this.maxIntegerDigitsLength) {
            return "";
        }
        return null;
    }

    private final String getOnlyDigitsPart(String str) {
        return new Regex("[^0-9?!\\.]").replace(str, "");
    }

    private final String getAllText(CharSequence charSequence, Spanned spanned, int i) {
        if (spanned.toString().length() > 0) {
            if (charSequence.toString().length() == 0) {
                return deleteCharAtIndex(spanned, i);
            }
            String sb = new StringBuilder(spanned).insert(i, charSequence).toString();
            Intrinsics.checkNotNullExpressionValue(sb, "{\n                String….toString()\n            }");
            return sb;
        }
        return "";
    }

    private final String deleteCharAtIndex(Spanned spanned, int i) {
        StringBuilder sb = new StringBuilder(spanned);
        sb.deleteCharAt(i);
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "builder.toString()");
        return sb2;
    }
}
