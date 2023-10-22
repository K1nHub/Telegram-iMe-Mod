package org.ton.crypto;

import kotlin.jvm.internal.Intrinsics;
import kotlin.text.CharsKt__CharJVMKt;
/* compiled from: hex.kt */
/* loaded from: classes6.dex */
public final class HexKt {
    private static final char[] DIGITS;

    static {
        char[] charArray = "0123456789abcdef".toCharArray();
        Intrinsics.checkNotNullExpressionValue(charArray, "this as java.lang.String).toCharArray()");
        DIGITS = charArray;
    }

    public static final String hex(byte[] bytes) {
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        StringBuilder sb = new StringBuilder(bytes.length * 2);
        for (byte b : bytes) {
            int i = b & 255;
            char[] cArr = DIGITS;
            sb.append(cArr[i >> 4]);
            sb.append(cArr[i & 15]);
        }
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "StringBuilder(capacity).…builderAction).toString()");
        return sb2;
    }

    public static final byte[] hex(String s) {
        int checkRadix;
        int checkRadix2;
        Intrinsics.checkNotNullParameter(s, "s");
        int length = s.length() / 2;
        byte[] bArr = new byte[length];
        for (int i = 0; i < length; i++) {
            int i2 = i * 2;
            String valueOf = String.valueOf(s.charAt(i2));
            checkRadix = CharsKt__CharJVMKt.checkRadix(16);
            String valueOf2 = String.valueOf(s.charAt(i2 + 1));
            checkRadix2 = CharsKt__CharJVMKt.checkRadix(16);
            bArr[i] = (byte) (Integer.parseInt(valueOf2, checkRadix2) | (Integer.parseInt(valueOf, checkRadix) << 4));
        }
        return bArr;
    }
}
