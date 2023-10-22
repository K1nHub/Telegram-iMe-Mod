package org.ton.crypto;

import java.util.zip.CRC32;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: crc32.kt */
/* loaded from: classes6.dex */
public final class Crc32JvmKt {
    public static final int crc32(byte[] bytes, int i, int i2) {
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        CRC32 crc32 = new CRC32();
        crc32.update(bytes, i, i2);
        return (int) crc32.getValue();
    }

    public static final int crc32c(byte[] bytes, int i, int i2) {
        int i3;
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        int[][] castagnoli_table = Crc32Kt.getCASTAGNOLI_TABLE();
        if (i2 - i >= 16) {
            int i4 = -1;
            int i5 = (i + i2) & (-8);
            while (i < i5) {
                int i6 = i + 1;
                byte b = bytes[i];
                int i7 = i6 + 1;
                byte b2 = bytes[i6];
                int i8 = i7 + 1;
                byte b3 = bytes[i7];
                int i9 = i8 + 1;
                byte b4 = bytes[i8];
                int i10 = i9 + 1;
                byte b5 = bytes[i9];
                int i11 = i10 + 1;
                byte b6 = bytes[i10];
                int i12 = i11 + 1;
                int i13 = (((b | (b2 << 8)) | (b3 << 16)) | (b4 << 24)) ^ i4;
                i4 = ((((((castagnoli_table[0][bytes[i12]] ^ castagnoli_table[1][bytes[i11]]) ^ castagnoli_table[2][b6]) ^ castagnoli_table[3][b5]) ^ castagnoli_table[4][(i13 >>> 24) & 255]) ^ castagnoli_table[5][(i13 >>> 16) & 255]) ^ castagnoli_table[6][(i13 >>> 8) & 255]) ^ castagnoli_table[7][i13 & 255];
                i = i12 + 1;
            }
            i3 = ~i4;
        } else {
            i3 = 0;
        }
        if (i == i2) {
            return i3;
        }
        int[] iArr = castagnoli_table[0];
        int i14 = ~i3;
        while (i < i2) {
            i14 = (i14 >>> 8) ^ iArr[(bytes[i] ^ i14) & 255];
            i++;
        }
        return ~i14;
    }

    public static /* synthetic */ int crc32$default(byte[] bArr, int i, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            i2 = bArr.length - i;
        }
        return crc32(bArr, i, i2);
    }

    public static /* synthetic */ int crc32c$default(byte[] bArr, int i, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            i2 = bArr.length - i;
        }
        return crc32c(bArr, i, i2);
    }
}
