package io.github.andreypfau.curve25519.internal;

import kotlin.UByte;
import kotlin.ULong;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: binary.kt */
/* loaded from: classes4.dex */
public final class BinaryKt {
    public static final long getLongLE(byte[] bArr, int i) {
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        return ((UByte.m1953constructorimpl(bArr[i + 7]) & 255) << 56) | (UByte.m1953constructorimpl(bArr[i]) & 255) | ((UByte.m1953constructorimpl(bArr[i + 1]) & 255) << 8) | ((UByte.m1953constructorimpl(bArr[i + 2]) & 255) << 16) | ((UByte.m1953constructorimpl(bArr[i + 3]) & 255) << 24) | ((UByte.m1953constructorimpl(bArr[i + 4]) & 255) << 32) | ((UByte.m1953constructorimpl(bArr[i + 5]) & 255) << 40) | ((UByte.m1953constructorimpl(bArr[i + 6]) & 255) << 48);
    }

    public static final long getULongLE(byte[] bArr, int i) {
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        return ULong.m1997constructorimpl(getLongLE(bArr, i));
    }

    public static final byte[] hex(String hexString) {
        int i;
        int i2;
        int i3;
        int i4;
        Intrinsics.checkNotNullParameter(hexString, "hexString");
        if (!(hexString.length() % 2 == 0)) {
            throw new IllegalArgumentException(hexString.toString());
        }
        byte[] bArr = new byte[hexString.length() / 2];
        for (int i5 = 0; i5 < hexString.length(); i5 += 2) {
            int i6 = i5 / 2;
            char charAt = hexString.charAt(i5);
            if ('0' <= charAt && charAt < ':') {
                i2 = charAt - '0';
            } else {
                if ('A' <= charAt && charAt < 'G') {
                    i = charAt - 'A';
                } else {
                    if (!('a' <= charAt && charAt < 'g')) {
                        throw new IllegalArgumentException('\'' + charAt + "' is not a valid hex character");
                    }
                    i = charAt - 'a';
                }
                i2 = i + 10;
            }
            int i7 = i2 << 4;
            char charAt2 = hexString.charAt(i5 + 1);
            if ('0' <= charAt2 && charAt2 < ':') {
                i4 = charAt2 - '0';
            } else {
                if ('A' <= charAt2 && charAt2 < 'G') {
                    i3 = charAt2 - 'A';
                } else {
                    if (!('a' <= charAt2 && charAt2 < 'g')) {
                        throw new IllegalArgumentException('\'' + charAt2 + "' is not a valid hex character");
                    }
                    i3 = charAt2 - 'a';
                }
                i4 = i3 + 10;
            }
            bArr[i6] = (byte) (i7 + i4);
        }
        return bArr;
    }
}
