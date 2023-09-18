package com.trustwallet.walletconnect.extensions;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: ByteArray.kt */
/* loaded from: classes6.dex */
public final class ByteArrayKt {
    private static final char[] HEX_CHARS;

    static {
        char[] charArray = "0123456789abcdef".toCharArray();
        Intrinsics.checkNotNullExpressionValue(charArray, "this as java.lang.String).toCharArray()");
        HEX_CHARS = charArray;
    }

    public static final String toHex(byte[] bArr) {
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        StringBuffer stringBuffer = new StringBuffer();
        for (byte b : bArr) {
            char[] cArr = HEX_CHARS;
            stringBuffer.append(cArr[(b & 240) >>> 4]);
            stringBuffer.append(cArr[b & 15]);
        }
        String stringBuffer2 = stringBuffer.toString();
        Intrinsics.checkNotNullExpressionValue(stringBuffer2, "result.toString()");
        return stringBuffer2;
    }
}
