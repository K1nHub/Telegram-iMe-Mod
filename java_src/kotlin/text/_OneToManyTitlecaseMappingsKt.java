package kotlin.text;

import java.util.Locale;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: _OneToManyTitlecaseMappings.kt */
/* loaded from: classes4.dex */
public final class _OneToManyTitlecaseMappingsKt {
    public static final String titlecaseImpl(char c) {
        String valueOf = String.valueOf(c);
        Intrinsics.checkNotNull(valueOf, "null cannot be cast to non-null type java.lang.String");
        Locale locale = Locale.ROOT;
        String upperCase = valueOf.toUpperCase(locale);
        Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(Locale.ROOT)");
        if (upperCase.length() > 1) {
            if (c == 329) {
                return upperCase;
            }
            char charAt = upperCase.charAt(0);
            Intrinsics.checkNotNull(upperCase, "null cannot be cast to non-null type java.lang.String");
            String substring = upperCase.substring(1);
            Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String).substring(startIndex)");
            Intrinsics.checkNotNull(substring, "null cannot be cast to non-null type java.lang.String");
            String lowerCase = substring.toLowerCase(locale);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
            return charAt + lowerCase;
        }
        return String.valueOf(Character.toTitleCase(c));
    }
}
