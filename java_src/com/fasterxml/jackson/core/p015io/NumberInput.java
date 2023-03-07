package com.fasterxml.jackson.core.p015io;
/* renamed from: com.fasterxml.jackson.core.io.NumberInput */
/* loaded from: classes.dex */
public final class NumberInput {
    static final String MIN_LONG_STR_NO_SIGN = String.valueOf(Long.MIN_VALUE).substring(1);
    static final String MAX_LONG_STR = String.valueOf(Long.MAX_VALUE);

    public static boolean inLongRange(String str, boolean z) {
        String str2 = z ? MIN_LONG_STR_NO_SIGN : MAX_LONG_STR;
        int length = str2.length();
        int length2 = str.length();
        if (length2 < length) {
            return true;
        }
        if (length2 > length) {
            return false;
        }
        for (int i = 0; i < length; i++) {
            int charAt = str.charAt(i) - str2.charAt(i);
            if (charAt != 0) {
                return charAt < 0;
            }
        }
        return true;
    }
}
