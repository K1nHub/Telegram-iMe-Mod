package org.web3j.compat;

import java.math.BigInteger;
import java.nio.charset.Charset;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class Compat {
    public static final Charset UTF_8 = Charset.forName("UTF-8");

    static {
        BigInteger.valueOf(Long.MAX_VALUE);
        BigInteger.valueOf(Long.MIN_VALUE);
    }

    public static String join(CharSequence charSequence, CharSequence... charSequenceArr) {
        if (charSequenceArr.length == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder(charSequenceArr.length * 7);
        sb.append(charSequenceArr[0]);
        for (int i = 1; i < charSequenceArr.length; i++) {
            sb.append(charSequence);
            sb.append(charSequenceArr[i]);
        }
        return sb.toString();
    }

    public static <T> T requireNonNull(T t) {
        Objects.requireNonNull(t);
        return t;
    }

    public static boolean equals(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }
}
