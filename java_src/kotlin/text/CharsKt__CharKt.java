package kotlin.text;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Char.kt */
/* loaded from: classes4.dex */
public class CharsKt__CharKt extends CharsKt__CharJVMKt {
    public static int digitToInt(char c, int i) {
        Integer digitToIntOrNull = digitToIntOrNull(c, i);
        if (digitToIntOrNull != null) {
            return digitToIntOrNull.intValue();
        }
        throw new IllegalArgumentException("Char " + c + " is not a digit in the given radix=" + i);
    }

    public static final Integer digitToIntOrNull(char c, int i) {
        CharsKt__CharJVMKt.checkRadix(i);
        Integer valueOf = Integer.valueOf(CharsKt__CharJVMKt.digitOf(c, i));
        if (valueOf.intValue() >= 0) {
            return valueOf;
        }
        return null;
    }

    public static String titlecase(char c) {
        return _OneToManyTitlecaseMappingsKt.titlecaseImpl(c);
    }

    public static final boolean equals(char c, char c2, boolean z) {
        if (c == c2) {
            return true;
        }
        if (z) {
            char upperCase = Character.toUpperCase(c);
            char upperCase2 = Character.toUpperCase(c2);
            return upperCase == upperCase2 || Character.toLowerCase(upperCase) == Character.toLowerCase(upperCase2);
        }
        return false;
    }
}
