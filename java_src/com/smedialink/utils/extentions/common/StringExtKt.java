package com.smedialink.utils.extentions.common;

import android.text.SpannableStringBuilder;
import com.smedialink.utils.formatter.DateFormatter;
import java.util.Locale;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import kotlin.text.StringsKt___StringsKt;
import org.telegram.messenger.MessageObject;
/* compiled from: StringExt.kt */
/* loaded from: classes3.dex */
public final class StringExtKt {
    public static /* synthetic */ String formatISODate$default(String str, DateFormatter.DateType dateType, int i, Object obj) {
        if ((i & 1) != 0) {
            dateType = DateFormatter.DateType.ONLY_DATE;
        }
        return formatISODate(str, dateType);
    }

    public static final String formatISODate(String str, DateFormatter.DateType dateType) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(dateType, "dateType");
        return DateFormatter.format$default(dateType, DateFormatter.parse$default(DateFormatter.DateType.ISO, str, null, 4, null), null, 4, null);
    }

    public static final long parseISODate(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return DateFormatter.parse$default(DateFormatter.DateType.ISO, str, null, 4, null).getTime();
    }

    public static /* synthetic */ String stripZeros$default(String str, char c, int i, Object obj) {
        if ((i & 1) != 0) {
            c = '.';
        }
        return stripZeros(str, c);
    }

    public static final String stripZeros(String str, char c) {
        boolean contains$default;
        String trimEnd;
        char last;
        String dropLast;
        Intrinsics.checkNotNullParameter(str, "<this>");
        contains$default = StringsKt__StringsKt.contains$default((CharSequence) str, c, false, 2, (Object) null);
        if (contains$default) {
            trimEnd = StringsKt__StringsKt.trimEnd(str, '0');
            last = StringsKt___StringsKt.last(trimEnd);
            if (last == c) {
                dropLast = StringsKt___StringsKt.dropLast(trimEnd, 1);
                return dropLast;
            }
            return trimEnd;
        }
        return str;
    }

    public static /* synthetic */ String shortened$default(String str, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 12;
        }
        return shortened(str, i);
    }

    public static final String shortened(String str, int i) {
        String repeat;
        Intrinsics.checkNotNullParameter(str, "<this>");
        if (str.length() <= i) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        String substring = str.substring(0, i);
        Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
        sb.append(substring);
        repeat = StringsKt__StringsJVMKt.repeat(".", 3);
        sb.append(repeat);
        String substring2 = str.substring(str.length() - i, str.length());
        Intrinsics.checkNotNullExpressionValue(substring2, "this as java.lang.String…ing(startIndex, endIndex)");
        sb.append(substring2);
        return sb.toString();
    }

    public static final String capitalizeOnlyFirstSymbol(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Locale locale = Locale.ROOT;
        String lowerCase = str.toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
        if (lowerCase.length() > 0) {
            StringBuilder sb = new StringBuilder();
            String valueOf = String.valueOf(lowerCase.charAt(0));
            Intrinsics.checkNotNull(valueOf, "null cannot be cast to non-null type java.lang.String");
            String upperCase = valueOf.toUpperCase(locale);
            Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(Locale.ROOT)");
            sb.append((Object) upperCase);
            String substring = lowerCase.substring(1);
            Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String).substring(startIndex)");
            sb.append(substring);
            return sb.toString();
        }
        return lowerCase;
    }

    public static final SpannableStringBuilder addTwitterLinks(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(str);
        MessageObject.addTwitterLinks(spannableStringBuilder);
        return spannableStringBuilder;
    }
}
