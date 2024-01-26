package io.ktor.util;

import io.ktor.utils.p032io.core.BytePacketBuilder;
import io.ktor.utils.p032io.core.ByteReadPacket;
import io.ktor.utils.p032io.core.Input;
import io.ktor.utils.p032io.core.InputArraysKt;
import io.ktor.utils.p032io.core.StringsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
/* compiled from: Base64.kt */
/* loaded from: classes4.dex */
public final class Base64Kt {
    private static final int[] BASE64_INVERSE_ALPHABET;

    public static final Input decodeBase64Bytes(ByteReadPacket byteReadPacket) {
        int i;
        Intrinsics.checkNotNullParameter(byteReadPacket, "<this>");
        BytePacketBuilder bytePacketBuilder = new BytePacketBuilder(null, 1, null);
        try {
            byte[] bArr = new byte[4];
            while (byteReadPacket.getRemaining() > 0) {
                int readAvailable$default = InputArraysKt.readAvailable$default(byteReadPacket, bArr, 0, 0, 6, null);
                int i2 = 0;
                int i3 = 0;
                int i4 = 0;
                while (i2 < 4) {
                    i3 |= ((byte) (((byte) BASE64_INVERSE_ALPHABET[bArr[i2] & 255]) & 63)) << ((3 - i4) * 6);
                    i2++;
                    i4++;
                }
                int i5 = 4 - readAvailable$default;
                if (i5 <= 2) {
                    while (true) {
                        bytePacketBuilder.writeByte((byte) ((i3 >> (i * 8)) & 255));
                        i = i != i5 ? i - 1 : 2;
                    }
                }
            }
            return bytePacketBuilder.build();
        } catch (Throwable th) {
            bytePacketBuilder.release();
            throw th;
        }
    }

    public static final byte[] decodeBase64Bytes(String str) {
        int lastIndex;
        String str2;
        Intrinsics.checkNotNullParameter(str, "<this>");
        BytePacketBuilder bytePacketBuilder = new BytePacketBuilder(null, 1, null);
        try {
            lastIndex = StringsKt__StringsKt.getLastIndex(str);
            while (true) {
                if (-1 >= lastIndex) {
                    str2 = "";
                    break;
                }
                if (!(str.charAt(lastIndex) == '=')) {
                    str2 = str.substring(0, lastIndex + 1);
                    Intrinsics.checkNotNullExpressionValue(str2, "this as java.lang.String…ing(startIndex, endIndex)");
                    break;
                }
                lastIndex--;
            }
            StringsKt.writeText$default(bytePacketBuilder, str2, 0, 0, null, 14, null);
            return StringsKt.readBytes(decodeBase64Bytes(bytePacketBuilder.build()));
        } catch (Throwable th) {
            bytePacketBuilder.release();
            throw th;
        }
    }

    static {
        int indexOf$default;
        int[] iArr = new int[256];
        for (int i = 0; i < 256; i++) {
            indexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/", (char) i, 0, false, 6, (Object) null);
            iArr[i] = indexOf$default;
        }
        BASE64_INVERSE_ALPHABET = iArr;
    }

    public static final String encodeBase64(byte[] bArr) {
        int i;
        String concatToString;
        int i2;
        String concatToString2;
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        int i3 = 3;
        char[] cArr = new char[((bArr.length * 8) / 6) + 3];
        int i4 = 0;
        int i5 = 0;
        while (true) {
            int i6 = i4 + 3;
            if (i6 > bArr.length) {
                break;
            }
            int i7 = (bArr[i4 + 2] & 255) | ((bArr[i4] & 255) << 16) | ((bArr[i4 + 1] & 255) << 8);
            int i8 = 3;
            while (-1 < i8) {
                cArr[i5] = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".charAt((i7 >> (i8 * 6)) & 63);
                i8--;
                i5++;
            }
            i4 = i6;
        }
        int length = bArr.length - i4;
        if (length == 0) {
            concatToString2 = StringsKt__StringsJVMKt.concatToString(cArr, 0, i5);
            return concatToString2;
        }
        if (length == 1) {
            i = ((bArr[i4] & 255) << 16) | 0;
        } else {
            i = ((bArr[i4 + 1] & 255) << 8) | ((bArr[i4] & 255) << 16);
        }
        int i9 = i | 0;
        int i10 = ((3 - length) * 8) / 6;
        if (i10 <= 3) {
            while (true) {
                i2 = i5 + 1;
                cArr[i5] = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".charAt((i9 >> (i3 * 6)) & 63);
                if (i3 == i10) {
                    break;
                }
                i3--;
                i5 = i2;
            }
            i5 = i2;
        }
        int i11 = 0;
        while (i11 < i10) {
            cArr[i5] = '=';
            i11++;
            i5++;
        }
        concatToString = StringsKt__StringsJVMKt.concatToString(cArr, 0, i5);
        return concatToString;
    }
}
