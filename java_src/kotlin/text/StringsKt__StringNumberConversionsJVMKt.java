package kotlin.text;

import java.math.BigDecimal;
import java.math.BigInteger;
import kotlin.jvm.internal.Intrinsics;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: StringNumberConversionsJVM.kt */
/* loaded from: classes4.dex */
public class StringsKt__StringNumberConversionsJVMKt extends StringsKt__StringBuilderKt {
    public static BigInteger toBigIntegerOrNull(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return toBigIntegerOrNull(str, 10);
    }

    public static final BigInteger toBigIntegerOrNull(String str, int i) {
        int checkRadix;
        Intrinsics.checkNotNullParameter(str, "<this>");
        CharsKt__CharJVMKt.checkRadix(i);
        int length = str.length();
        if (length != 0) {
            if (length == 1) {
                if (CharsKt__CharJVMKt.digitOf(str.charAt(0), i) < 0) {
                    return null;
                }
            } else {
                for (int i2 = str.charAt(0) == '-' ? 1 : 0; i2 < length; i2++) {
                    if (CharsKt__CharJVMKt.digitOf(str.charAt(i2), i) < 0) {
                        return null;
                    }
                }
            }
            checkRadix = CharsKt__CharJVMKt.checkRadix(i);
            return new BigInteger(str, checkRadix);
        }
        return null;
    }

    public static BigDecimal toBigDecimalOrNull(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        try {
            if (ScreenFloatValueRegEx.value.matches(str)) {
                return new BigDecimal(str);
            }
            return null;
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    public static Double toDoubleOrNull(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        try {
            if (ScreenFloatValueRegEx.value.matches(str)) {
                return Double.valueOf(Double.parseDouble(str));
            }
            return null;
        } catch (NumberFormatException unused) {
            return null;
        }
    }
}
