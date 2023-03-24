package org.bouncycastle.math.raw;

import java.math.BigInteger;
import org.bouncycastle.util.Pack;
/* loaded from: classes4.dex */
public abstract class Nat128 {
    public static int add(int[] iArr, int[] iArr2, int[] iArr3) {
        long j = (iArr[0] & 4294967295L) + (iArr2[0] & 4294967295L) + 0;
        iArr3[0] = (int) j;
        long j2 = (j >>> 32) + (iArr[1] & 4294967295L) + (iArr2[1] & 4294967295L);
        iArr3[1] = (int) j2;
        long j3 = (j2 >>> 32) + (iArr[2] & 4294967295L) + (iArr2[2] & 4294967295L);
        iArr3[2] = (int) j3;
        long j4 = (j3 >>> 32) + (iArr[3] & 4294967295L) + (iArr2[3] & 4294967295L);
        iArr3[3] = (int) j4;
        return (int) (j4 >>> 32);
    }

    public static int addBothTo(int[] iArr, int[] iArr2, int[] iArr3) {
        long j = (iArr[0] & 4294967295L) + (iArr2[0] & 4294967295L) + (iArr3[0] & 4294967295L) + 0;
        iArr3[0] = (int) j;
        long j2 = (j >>> 32) + (iArr[1] & 4294967295L) + (iArr2[1] & 4294967295L) + (iArr3[1] & 4294967295L);
        iArr3[1] = (int) j2;
        long j3 = (j2 >>> 32) + (iArr[2] & 4294967295L) + (iArr2[2] & 4294967295L) + (iArr3[2] & 4294967295L);
        iArr3[2] = (int) j3;
        long j4 = (j3 >>> 32) + (iArr[3] & 4294967295L) + (iArr2[3] & 4294967295L) + (iArr3[3] & 4294967295L);
        iArr3[3] = (int) j4;
        return (int) (j4 >>> 32);
    }

    public static void copy(int[] iArr, int i, int[] iArr2, int i2) {
        iArr2[i2 + 0] = iArr[i + 0];
        iArr2[i2 + 1] = iArr[i + 1];
        iArr2[i2 + 2] = iArr[i + 2];
        iArr2[i2 + 3] = iArr[i + 3];
    }

    public static void copy64(long[] jArr, int i, long[] jArr2, int i2) {
        jArr2[i2 + 0] = jArr[i + 0];
        jArr2[i2 + 1] = jArr[i + 1];
    }

    public static int[] create() {
        return new int[4];
    }

    public static long[] create64() {
        return new long[2];
    }

    public static int[] createExt() {
        return new int[8];
    }

    public static long[] createExt64() {
        return new long[4];
    }

    /* renamed from: eq */
    public static boolean m68eq(int[] iArr, int[] iArr2) {
        for (int i = 3; i >= 0; i--) {
            if (iArr[i] != iArr2[i]) {
                return false;
            }
        }
        return true;
    }

    public static boolean eq64(long[] jArr, long[] jArr2) {
        for (int i = 1; i >= 0; i--) {
            if (jArr[i] != jArr2[i]) {
                return false;
            }
        }
        return true;
    }

    public static int[] fromBigInteger(BigInteger bigInteger) {
        if (bigInteger.signum() < 0 || bigInteger.bitLength() > 128) {
            throw new IllegalArgumentException();
        }
        int[] create = create();
        int i = 0;
        while (bigInteger.signum() != 0) {
            create[i] = bigInteger.intValue();
            bigInteger = bigInteger.shiftRight(32);
            i++;
        }
        return create;
    }

    public static long[] fromBigInteger64(BigInteger bigInteger) {
        if (bigInteger.signum() < 0 || bigInteger.bitLength() > 128) {
            throw new IllegalArgumentException();
        }
        long[] create64 = create64();
        int i = 0;
        while (bigInteger.signum() != 0) {
            create64[i] = bigInteger.longValue();
            bigInteger = bigInteger.shiftRight(64);
            i++;
        }
        return create64;
    }

    public static int getBit(int[] iArr, int i) {
        int i2;
        if (i == 0) {
            i2 = iArr[0];
        } else {
            int i3 = i >> 5;
            if (i3 < 0 || i3 >= 4) {
                return 0;
            }
            i2 = iArr[i3] >>> (i & 31);
        }
        return i2 & 1;
    }

    public static boolean gte(int[] iArr, int[] iArr2) {
        for (int i = 3; i >= 0; i--) {
            int i2 = iArr[i] ^ Integer.MIN_VALUE;
            int i3 = Integer.MIN_VALUE ^ iArr2[i];
            if (i2 < i3) {
                return false;
            }
            if (i2 > i3) {
                return true;
            }
        }
        return true;
    }

    public static boolean isOne(int[] iArr) {
        if (iArr[0] != 1) {
            return false;
        }
        for (int i = 1; i < 4; i++) {
            if (iArr[i] != 0) {
                return false;
            }
        }
        return true;
    }

    public static boolean isOne64(long[] jArr) {
        if (jArr[0] != 1) {
            return false;
        }
        for (int i = 1; i < 2; i++) {
            if (jArr[i] != 0) {
                return false;
            }
        }
        return true;
    }

    public static boolean isZero(int[] iArr) {
        for (int i = 0; i < 4; i++) {
            if (iArr[i] != 0) {
                return false;
            }
        }
        return true;
    }

    public static boolean isZero64(long[] jArr) {
        for (int i = 0; i < 2; i++) {
            if (jArr[i] != 0) {
                return false;
            }
        }
        return true;
    }

    public static void mul(int[] iArr, int[] iArr2, int[] iArr3) {
        long j = iArr2[0] & 4294967295L;
        int i = 1;
        long j2 = iArr2[1] & 4294967295L;
        long j3 = iArr2[2] & 4294967295L;
        long j4 = iArr2[3] & 4294967295L;
        long j5 = iArr[0] & 4294967295L;
        long j6 = (j5 * j) + 0;
        iArr3[0] = (int) j6;
        char c = ' ';
        long j7 = (j6 >>> 32) + (j5 * j2);
        iArr3[1] = (int) j7;
        long j8 = (j7 >>> 32) + (j5 * j3);
        iArr3[2] = (int) j8;
        long j9 = (j8 >>> 32) + (j5 * j4);
        iArr3[3] = (int) j9;
        iArr3[4] = (int) (j9 >>> 32);
        for (int i2 = 4; i < i2; i2 = 4) {
            long j10 = iArr[i] & 4294967295L;
            int i3 = i + 0;
            int i4 = i;
            long j11 = (j10 * j) + (iArr3[i3] & 4294967295L) + 0;
            iArr3[i3] = (int) j11;
            int i5 = i4 + 1;
            long j12 = j;
            long j13 = (j11 >>> c) + (j10 * j2) + (iArr3[i5] & 4294967295L);
            iArr3[i5] = (int) j13;
            int i6 = i4 + 2;
            long j14 = (j13 >>> 32) + (j10 * j3) + (iArr3[i6] & 4294967295L);
            iArr3[i6] = (int) j14;
            c = ' ';
            int i7 = i4 + 3;
            long j15 = (j14 >>> 32) + (j10 * j4) + (iArr3[i7] & 4294967295L);
            iArr3[i7] = (int) j15;
            iArr3[i4 + 4] = (int) (j15 >>> 32);
            i = i5;
            j = j12;
            j2 = j2;
        }
    }

    public static int mulAddTo(int[] iArr, int[] iArr2, int[] iArr3) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5 = 0;
        long j = 4294967295L;
        long j2 = iArr2[0] & 4294967295L;
        long j3 = iArr2[1] & 4294967295L;
        long j4 = iArr2[2] & 4294967295L;
        long j5 = iArr2[3] & 4294967295L;
        long j6 = 0;
        while (i5 < 4) {
            long j7 = iArr[i5] & j;
            long j8 = (j7 * j2) + (iArr3[i] & j) + 0;
            iArr3[i5 + 0] = (int) j8;
            int i6 = i5 + 1;
            long j9 = (j8 >>> 32) + (j7 * j3) + (iArr3[i6] & 4294967295L);
            iArr3[i6] = (int) j9;
            long j10 = (j9 >>> 32) + (j7 * j4) + (iArr3[i2] & 4294967295L);
            iArr3[i5 + 2] = (int) j10;
            long j11 = (j10 >>> 32) + (j7 * j5) + (iArr3[i3] & 4294967295L);
            iArr3[i5 + 3] = (int) j11;
            long j12 = (j11 >>> 32) + j6 + (iArr3[i4] & 4294967295L);
            iArr3[i5 + 4] = (int) j12;
            j6 = j12 >>> 32;
            i5 = i6;
            j = 4294967295L;
            j2 = j2;
            j3 = j3;
        }
        return (int) j6;
    }

    public static void square(int[] iArr, int[] iArr2) {
        long j = 4294967295L;
        long j2 = iArr[0] & 4294967295L;
        char c = 3;
        int i = 8;
        int i2 = 0;
        int i3 = 3;
        while (true) {
            int i4 = i3 - 1;
            long j3 = iArr[i3] & j;
            long j4 = j3 * j3;
            int i5 = i - 1;
            iArr2[i5] = (i2 << 31) | ((int) (j4 >>> 33));
            i = i5 - 1;
            iArr2[i] = (int) (j4 >>> 1);
            int i6 = (int) j4;
            if (i4 <= 0) {
                long j5 = j2 * j2;
                long j6 = ((i6 << 31) & j) | (j5 >>> 33);
                iArr2[0] = (int) j5;
                long j7 = iArr[1] & j;
                long j8 = j6 + (j7 * j2);
                int i7 = (int) j8;
                iArr2[1] = (i7 << 1) | (((int) (j5 >>> 32)) & 1);
                long j9 = (iArr2[2] & j) + (j8 >>> 32);
                long j10 = iArr[2] & j;
                long j11 = iArr2[c] & j;
                long j12 = iArr2[4] & j;
                long j13 = j9 + (j10 * j2);
                int i8 = (int) j13;
                iArr2[2] = (i8 << 1) | (i7 >>> 31);
                long j14 = j11 + (j13 >>> 32) + (j10 * j7);
                long j15 = j12 + (j14 >>> 32);
                long j16 = iArr[3] & 4294967295L;
                long j17 = (iArr2[5] & 4294967295L) + (j15 >>> 32);
                long j18 = (j14 & 4294967295L) + (j2 * j16);
                int i9 = (int) j18;
                iArr2[3] = (i9 << 1) | (i8 >>> 31);
                long j19 = (j15 & 4294967295L) + (j18 >>> 32) + (j7 * j16);
                long j20 = (j17 & 4294967295L) + (j19 >>> 32) + (j16 * j10);
                long j21 = (iArr2[6] & 4294967295L) + (j17 >>> 32) + (j20 >>> 32);
                int i10 = (int) j19;
                iArr2[4] = (i9 >>> 31) | (i10 << 1);
                int i11 = (int) (4294967295L & j20);
                iArr2[5] = (i10 >>> 31) | (i11 << 1);
                int i12 = i11 >>> 31;
                int i13 = (int) j21;
                iArr2[6] = i12 | (i13 << 1);
                iArr2[7] = (i13 >>> 31) | ((iArr2[7] + ((int) (j21 >>> 32))) << 1);
                return;
            }
            i3 = i4;
            i2 = i6;
            c = c;
            j = j;
        }
    }

    public static int sub(int[] iArr, int[] iArr2, int[] iArr3) {
        long j = ((iArr[0] & 4294967295L) - (iArr2[0] & 4294967295L)) + 0;
        iArr3[0] = (int) j;
        long j2 = (j >> 32) + ((iArr[1] & 4294967295L) - (iArr2[1] & 4294967295L));
        iArr3[1] = (int) j2;
        long j3 = (j2 >> 32) + ((iArr[2] & 4294967295L) - (iArr2[2] & 4294967295L));
        iArr3[2] = (int) j3;
        long j4 = (j3 >> 32) + ((iArr[3] & 4294967295L) - (iArr2[3] & 4294967295L));
        iArr3[3] = (int) j4;
        return (int) (j4 >> 32);
    }

    public static int subFrom(int[] iArr, int[] iArr2) {
        long j = ((iArr2[0] & 4294967295L) - (iArr[0] & 4294967295L)) + 0;
        iArr2[0] = (int) j;
        long j2 = (j >> 32) + ((iArr2[1] & 4294967295L) - (iArr[1] & 4294967295L));
        iArr2[1] = (int) j2;
        long j3 = (j2 >> 32) + ((iArr2[2] & 4294967295L) - (iArr[2] & 4294967295L));
        iArr2[2] = (int) j3;
        long j4 = (j3 >> 32) + ((iArr2[3] & 4294967295L) - (4294967295L & iArr[3]));
        iArr2[3] = (int) j4;
        return (int) (j4 >> 32);
    }

    public static BigInteger toBigInteger(int[] iArr) {
        byte[] bArr = new byte[16];
        for (int i = 0; i < 4; i++) {
            int i2 = iArr[i];
            if (i2 != 0) {
                Pack.intToBigEndian(i2, bArr, (3 - i) << 2);
            }
        }
        return new BigInteger(1, bArr);
    }

    public static BigInteger toBigInteger64(long[] jArr) {
        byte[] bArr = new byte[16];
        for (int i = 0; i < 2; i++) {
            long j = jArr[i];
            if (j != 0) {
                Pack.longToBigEndian(j, bArr, (1 - i) << 3);
            }
        }
        return new BigInteger(1, bArr);
    }

    public static void zero(int[] iArr) {
        iArr[0] = 0;
        iArr[1] = 0;
        iArr[2] = 0;
        iArr[3] = 0;
    }
}
