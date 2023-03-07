package org.bouncycastle.math.raw;

import java.math.BigInteger;
import org.bouncycastle.util.Pack;
/* loaded from: classes4.dex */
public abstract class Nat224 {
    public static int add(int[] iArr, int[] iArr2, int[] iArr3) {
        long j = (iArr[0] & 4294967295L) + (iArr2[0] & 4294967295L) + 0;
        iArr3[0] = (int) j;
        long j2 = (j >>> 32) + (iArr[1] & 4294967295L) + (iArr2[1] & 4294967295L);
        iArr3[1] = (int) j2;
        long j3 = (j2 >>> 32) + (iArr[2] & 4294967295L) + (iArr2[2] & 4294967295L);
        iArr3[2] = (int) j3;
        long j4 = (j3 >>> 32) + (iArr[3] & 4294967295L) + (iArr2[3] & 4294967295L);
        iArr3[3] = (int) j4;
        long j5 = (j4 >>> 32) + (iArr[4] & 4294967295L) + (iArr2[4] & 4294967295L);
        iArr3[4] = (int) j5;
        long j6 = (j5 >>> 32) + (iArr[5] & 4294967295L) + (iArr2[5] & 4294967295L);
        iArr3[5] = (int) j6;
        long j7 = (j6 >>> 32) + (iArr[6] & 4294967295L) + (iArr2[6] & 4294967295L);
        iArr3[6] = (int) j7;
        return (int) (j7 >>> 32);
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
        long j5 = (j4 >>> 32) + (iArr[4] & 4294967295L) + (iArr2[4] & 4294967295L) + (iArr3[4] & 4294967295L);
        iArr3[4] = (int) j5;
        long j6 = (j5 >>> 32) + (iArr[5] & 4294967295L) + (iArr2[5] & 4294967295L) + (iArr3[5] & 4294967295L);
        iArr3[5] = (int) j6;
        long j7 = (j6 >>> 32) + (iArr[6] & 4294967295L) + (iArr2[6] & 4294967295L) + (iArr3[6] & 4294967295L);
        iArr3[6] = (int) j7;
        return (int) (j7 >>> 32);
    }

    public static void copy(int[] iArr, int i, int[] iArr2, int i2) {
        iArr2[i2 + 0] = iArr[i + 0];
        iArr2[i2 + 1] = iArr[i + 1];
        iArr2[i2 + 2] = iArr[i + 2];
        iArr2[i2 + 3] = iArr[i + 3];
        iArr2[i2 + 4] = iArr[i + 4];
        iArr2[i2 + 5] = iArr[i + 5];
        iArr2[i2 + 6] = iArr[i + 6];
    }

    public static void copy(int[] iArr, int[] iArr2) {
        iArr2[0] = iArr[0];
        iArr2[1] = iArr[1];
        iArr2[2] = iArr[2];
        iArr2[3] = iArr[3];
        iArr2[4] = iArr[4];
        iArr2[5] = iArr[5];
        iArr2[6] = iArr[6];
    }

    public static int[] create() {
        return new int[7];
    }

    public static int[] createExt() {
        return new int[14];
    }

    /* renamed from: eq */
    public static boolean m65eq(int[] iArr, int[] iArr2) {
        for (int i = 6; i >= 0; i--) {
            if (iArr[i] != iArr2[i]) {
                return false;
            }
        }
        return true;
    }

    public static int[] fromBigInteger(BigInteger bigInteger) {
        if (bigInteger.signum() < 0 || bigInteger.bitLength() > 224) {
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

    public static int getBit(int[] iArr, int i) {
        int i2;
        if (i == 0) {
            i2 = iArr[0];
        } else {
            int i3 = i >> 5;
            if (i3 < 0 || i3 >= 7) {
                return 0;
            }
            i2 = iArr[i3] >>> (i & 31);
        }
        return i2 & 1;
    }

    public static boolean gte(int[] iArr, int[] iArr2) {
        for (int i = 6; i >= 0; i--) {
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
        for (int i = 1; i < 7; i++) {
            if (iArr[i] != 0) {
                return false;
            }
        }
        return true;
    }

    public static boolean isZero(int[] iArr) {
        for (int i = 0; i < 7; i++) {
            if (iArr[i] != 0) {
                return false;
            }
        }
        return true;
    }

    public static void mul(int[] iArr, int[] iArr2, int[] iArr3) {
        long j = iArr2[0] & 4294967295L;
        long j2 = iArr2[1] & 4294967295L;
        long j3 = iArr2[2] & 4294967295L;
        long j4 = iArr2[3] & 4294967295L;
        long j5 = iArr2[4] & 4294967295L;
        long j6 = iArr2[5] & 4294967295L;
        long j7 = iArr2[6] & 4294967295L;
        long j8 = iArr[0] & 4294967295L;
        long j9 = (j8 * j) + 0;
        iArr3[0] = (int) j9;
        long j10 = (j9 >>> 32) + (j8 * j2);
        iArr3[1] = (int) j10;
        long j11 = (j10 >>> 32) + (j8 * j3);
        iArr3[2] = (int) j11;
        long j12 = (j11 >>> 32) + (j8 * j4);
        iArr3[3] = (int) j12;
        long j13 = (j12 >>> 32) + (j8 * j5);
        iArr3[4] = (int) j13;
        long j14 = (j13 >>> 32) + (j8 * j6);
        iArr3[5] = (int) j14;
        long j15 = (j14 >>> 32) + (j8 * j7);
        iArr3[6] = (int) j15;
        int i = (int) (j15 >>> 32);
        iArr3[7] = i;
        int i2 = 1;
        for (int i3 = 7; i2 < i3; i3 = 7) {
            long j16 = iArr[i2] & 4294967295L;
            int i4 = i2 + 0;
            long j17 = (j16 * j) + (iArr3[i4] & 4294967295L) + 0;
            iArr3[i4] = (int) j17;
            int i5 = i2 + 1;
            long j18 = j2;
            long j19 = (j17 >>> 32) + (j16 * j2) + (iArr3[i5] & 4294967295L);
            iArr3[i5] = (int) j19;
            int i6 = i2 + 2;
            long j20 = j6;
            long j21 = (j19 >>> 32) + (j16 * j3) + (iArr3[i6] & 4294967295L);
            iArr3[i6] = (int) j21;
            int i7 = i2 + 3;
            long j22 = (j21 >>> 32) + (j16 * j4) + (iArr3[i7] & 4294967295L);
            iArr3[i7] = (int) j22;
            int i8 = i2 + 4;
            long j23 = (j22 >>> 32) + (j16 * j5) + (iArr3[i8] & 4294967295L);
            iArr3[i8] = (int) j23;
            int i9 = i2 + 5;
            long j24 = (j23 >>> 32) + (j16 * j20) + (iArr3[i9] & 4294967295L);
            iArr3[i9] = (int) j24;
            int i10 = i2 + 6;
            long j25 = (j24 >>> 32) + (j16 * j7) + (iArr3[i10] & 4294967295L);
            iArr3[i10] = (int) j25;
            iArr3[i2 + 7] = (int) (j25 >>> 32);
            i2 = i5;
            j = j;
            j2 = j18;
            j6 = j20;
        }
    }

    public static long mul33Add(int i, int[] iArr, int i2, int[] iArr2, int i3, int[] iArr3, int i4) {
        long j = i & 4294967295L;
        long j2 = iArr[i2 + 0] & 4294967295L;
        long j3 = (j * j2) + (iArr2[i3 + 0] & 4294967295L) + 0;
        iArr3[i4 + 0] = (int) j3;
        long j4 = iArr[i2 + 1] & 4294967295L;
        long j5 = (j3 >>> 32) + (j * j4) + j2 + (iArr2[i3 + 1] & 4294967295L);
        iArr3[i4 + 1] = (int) j5;
        long j6 = j5 >>> 32;
        long j7 = iArr[i2 + 2] & 4294967295L;
        long j8 = j6 + (j * j7) + j4 + (iArr2[i3 + 2] & 4294967295L);
        iArr3[i4 + 2] = (int) j8;
        long j9 = iArr[i2 + 3] & 4294967295L;
        long j10 = (j8 >>> 32) + (j * j9) + j7 + (iArr2[i3 + 3] & 4294967295L);
        iArr3[i4 + 3] = (int) j10;
        long j11 = iArr[i2 + 4] & 4294967295L;
        long j12 = (j10 >>> 32) + (j * j11) + j9 + (iArr2[i3 + 4] & 4294967295L);
        iArr3[i4 + 4] = (int) j12;
        long j13 = iArr[i2 + 5] & 4294967295L;
        long j14 = (j12 >>> 32) + (j * j13) + j11 + (iArr2[i3 + 5] & 4294967295L);
        iArr3[i4 + 5] = (int) j14;
        long j15 = iArr[i2 + 6] & 4294967295L;
        long j16 = (j14 >>> 32) + (j * j15) + j13 + (4294967295L & iArr2[i3 + 6]);
        iArr3[i4 + 6] = (int) j16;
        return (j16 >>> 32) + j15;
    }

    public static int mul33DWordAdd(int i, long j, int[] iArr, int i2) {
        long j2 = i & 4294967295L;
        long j3 = j & 4294967295L;
        int i3 = i2 + 0;
        long j4 = (j2 * j3) + (iArr[i3] & 4294967295L) + 0;
        iArr[i3] = (int) j4;
        long j5 = j >>> 32;
        long j6 = (j2 * j5) + j3;
        int i4 = i2 + 1;
        long j7 = (j4 >>> 32) + j6 + (iArr[i4] & 4294967295L);
        iArr[i4] = (int) j7;
        int i5 = i2 + 2;
        long j8 = (j7 >>> 32) + j5 + (iArr[i5] & 4294967295L);
        iArr[i5] = (int) j8;
        int i6 = i2 + 3;
        long j9 = (j8 >>> 32) + (4294967295L & iArr[i6]);
        iArr[i6] = (int) j9;
        if ((j9 >>> 32) == 0) {
            return 0;
        }
        return Nat.incAt(7, iArr, i2, 4);
    }

    public static int mul33WordAdd(int i, int i2, int[] iArr, int i3) {
        long j = i2 & 4294967295L;
        int i4 = i3 + 0;
        long j2 = ((i & 4294967295L) * j) + (iArr[i4] & 4294967295L) + 0;
        iArr[i4] = (int) j2;
        int i5 = i3 + 1;
        long j3 = (j2 >>> 32) + j + (iArr[i5] & 4294967295L);
        iArr[i5] = (int) j3;
        long j4 = j3 >>> 32;
        int i6 = i3 + 2;
        long j5 = j4 + (iArr[i6] & 4294967295L);
        iArr[i6] = (int) j5;
        if ((j5 >>> 32) == 0) {
            return 0;
        }
        return Nat.incAt(7, iArr, i3, 3);
    }

    public static int mulAddTo(int[] iArr, int[] iArr2, int[] iArr3) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        long j = 4294967295L;
        long j2 = iArr2[0] & 4294967295L;
        long j3 = iArr2[1] & 4294967295L;
        long j4 = iArr2[2] & 4294967295L;
        long j5 = iArr2[3] & 4294967295L;
        long j6 = iArr2[4] & 4294967295L;
        long j7 = iArr2[5] & 4294967295L;
        long j8 = iArr2[6] & 4294967295L;
        long j9 = 0;
        int i8 = 0;
        while (i8 < 7) {
            long j10 = j8;
            long j11 = iArr[i8] & j;
            long j12 = j7;
            long j13 = (j11 * j2) + (iArr3[i] & j) + 0;
            iArr3[i8 + 0] = (int) j13;
            int i9 = i8 + 1;
            long j14 = j3;
            long j15 = (j13 >>> 32) + (j11 * j3) + (iArr3[i9] & j);
            iArr3[i9] = (int) j15;
            long j16 = (j15 >>> 32) + (j11 * j4) + (iArr3[i2] & j);
            iArr3[i8 + 2] = (int) j16;
            long j17 = (j16 >>> 32) + (j11 * j5) + (iArr3[i3] & j);
            iArr3[i8 + 3] = (int) j17;
            long j18 = (j17 >>> 32) + (j11 * j6) + (iArr3[i4] & j);
            iArr3[i8 + 4] = (int) j18;
            long j19 = (j18 >>> 32) + (j11 * j12) + (iArr3[i5] & j);
            iArr3[i8 + 5] = (int) j19;
            long j20 = (j19 >>> 32) + (j11 * j10) + (iArr3[i6] & j);
            iArr3[i8 + 6] = (int) j20;
            long j21 = (j20 >>> 32) + j9 + (iArr3[i7] & j);
            iArr3[i8 + 7] = (int) j21;
            j9 = j21 >>> 32;
            i8 = i9;
            j8 = j10;
            j7 = j12;
            j3 = j14;
            j = 4294967295L;
        }
        return (int) j9;
    }

    public static void square(int[] iArr, int[] iArr2) {
        long j = iArr[0] & 4294967295L;
        int i = 14;
        int i2 = 6;
        int i3 = 0;
        while (true) {
            int i4 = i2 - 1;
            long j2 = iArr[i2] & 4294967295L;
            long j3 = j2 * j2;
            int i5 = i - 1;
            iArr2[i5] = (i3 << 31) | ((int) (j3 >>> 33));
            i = i5 - 1;
            iArr2[i] = (int) (j3 >>> 1);
            int i6 = (int) j3;
            if (i4 <= 0) {
                long j4 = j * j;
                iArr2[0] = (int) j4;
                long j5 = iArr[1] & 4294967295L;
                long j6 = (((i6 << 31) & 4294967295L) | (j4 >>> 33)) + (j5 * j);
                int i7 = (int) j6;
                iArr2[1] = (i7 << 1) | (((int) (j4 >>> 32)) & 1);
                int i8 = i7 >>> 31;
                long j7 = (iArr2[2] & 4294967295L) + (j6 >>> 32);
                long j8 = iArr[2] & 4294967295L;
                long j9 = j7 + (j8 * j);
                int i9 = (int) j9;
                iArr2[2] = (i9 << 1) | i8;
                long j10 = (iArr2[3] & 4294967295L) + (j9 >>> 32) + (j8 * j5);
                long j11 = (iArr2[4] & 4294967295L) + (j10 >>> 32);
                long j12 = iArr[3] & 4294967295L;
                long j13 = (iArr2[5] & 4294967295L) + (j11 >>> 32);
                long j14 = j11 & 4294967295L;
                long j15 = (iArr2[6] & 4294967295L) + (j13 >>> 32);
                long j16 = (j10 & 4294967295L) + (j12 * j);
                int i10 = (int) j16;
                iArr2[3] = (i9 >>> 31) | (i10 << 1);
                int i11 = i10 >>> 31;
                long j17 = j14 + (j16 >>> 32) + (j12 * j5);
                long j18 = (j13 & 4294967295L) + (j17 >>> 32) + (j12 * j8);
                long j19 = j15 + (j18 >>> 32);
                long j20 = iArr[4] & 4294967295L;
                long j21 = (iArr2[7] & 4294967295L) + (j19 >>> 32);
                long j22 = j19 & 4294967295L;
                long j23 = (iArr2[8] & 4294967295L) + (j21 >>> 32);
                long j24 = (j17 & 4294967295L) + (j20 * j);
                int i12 = (int) j24;
                iArr2[4] = (i12 << 1) | i11;
                long j25 = (j18 & 4294967295L) + (j24 >>> 32) + (j20 * j5);
                long j26 = j22 + (j25 >>> 32) + (j20 * j8);
                long j27 = (j21 & 4294967295L) + (j26 >>> 32) + (j20 * j12);
                long j28 = j23 + (j27 >>> 32);
                long j29 = j27 & 4294967295L;
                long j30 = iArr[5] & 4294967295L;
                long j31 = (iArr2[9] & 4294967295L) + (j28 >>> 32);
                long j32 = j28 & 4294967295L;
                long j33 = (iArr2[10] & 4294967295L) + (j31 >>> 32);
                long j34 = (j25 & 4294967295L) + (j30 * j);
                int i13 = (int) j34;
                iArr2[5] = (i13 << 1) | (i12 >>> 31);
                long j35 = (j26 & 4294967295L) + (j34 >>> 32) + (j30 * j5);
                long j36 = j29 + (j35 >>> 32) + (j30 * j8);
                long j37 = j32 + (j36 >>> 32) + (j30 * j12);
                long j38 = (j31 & 4294967295L) + (j37 >>> 32) + (j30 * j20);
                long j39 = j33 + (j38 >>> 32);
                long j40 = j38 & 4294967295L;
                long j41 = iArr[6] & 4294967295L;
                long j42 = (iArr2[11] & 4294967295L) + (j39 >>> 32);
                long j43 = 4294967295L & j42;
                long j44 = (j35 & 4294967295L) + (j * j41);
                int i14 = (int) j44;
                iArr2[6] = (i13 >>> 31) | (i14 << 1);
                int i15 = i14 >>> 31;
                long j45 = (j36 & 4294967295L) + (j44 >>> 32) + (j41 * j5);
                long j46 = (j37 & 4294967295L) + (j45 >>> 32) + (j41 * j8);
                long j47 = j40 + (j46 >>> 32) + (j41 * j12);
                long j48 = (j39 & 4294967295L) + (j47 >>> 32) + (j41 * j20);
                long j49 = j43 + (j48 >>> 32) + (j41 * j30);
                long j50 = (iArr2[12] & 4294967295L) + (j42 >>> 32) + (j49 >>> 32);
                int i16 = (int) j45;
                iArr2[7] = i15 | (i16 << 1);
                int i17 = (int) j46;
                iArr2[8] = (i16 >>> 31) | (i17 << 1);
                int i18 = (int) j47;
                iArr2[9] = (i17 >>> 31) | (i18 << 1);
                int i19 = i18 >>> 31;
                int i20 = (int) j48;
                iArr2[10] = i19 | (i20 << 1);
                int i21 = i20 >>> 31;
                int i22 = (int) j49;
                iArr2[11] = i21 | (i22 << 1);
                int i23 = i22 >>> 31;
                int i24 = (int) j50;
                iArr2[12] = i23 | (i24 << 1);
                iArr2[13] = (i24 >>> 31) | ((iArr2[13] + ((int) (j50 >>> 32))) << 1);
                return;
            }
            i2 = i4;
            i3 = i6;
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
        long j5 = (j4 >> 32) + ((iArr[4] & 4294967295L) - (iArr2[4] & 4294967295L));
        iArr3[4] = (int) j5;
        long j6 = (j5 >> 32) + ((iArr[5] & 4294967295L) - (iArr2[5] & 4294967295L));
        iArr3[5] = (int) j6;
        long j7 = (j6 >> 32) + ((iArr[6] & 4294967295L) - (iArr2[6] & 4294967295L));
        iArr3[6] = (int) j7;
        return (int) (j7 >> 32);
    }

    public static int subFrom(int[] iArr, int[] iArr2) {
        long j = ((iArr2[0] & 4294967295L) - (iArr[0] & 4294967295L)) + 0;
        iArr2[0] = (int) j;
        long j2 = (j >> 32) + ((iArr2[1] & 4294967295L) - (iArr[1] & 4294967295L));
        iArr2[1] = (int) j2;
        long j3 = (j2 >> 32) + ((iArr2[2] & 4294967295L) - (iArr[2] & 4294967295L));
        iArr2[2] = (int) j3;
        long j4 = (j3 >> 32) + ((iArr2[3] & 4294967295L) - (iArr[3] & 4294967295L));
        iArr2[3] = (int) j4;
        long j5 = (j4 >> 32) + ((iArr2[4] & 4294967295L) - (iArr[4] & 4294967295L));
        iArr2[4] = (int) j5;
        long j6 = (j5 >> 32) + ((iArr2[5] & 4294967295L) - (iArr[5] & 4294967295L));
        iArr2[5] = (int) j6;
        long j7 = (j6 >> 32) + ((iArr2[6] & 4294967295L) - (4294967295L & iArr[6]));
        iArr2[6] = (int) j7;
        return (int) (j7 >> 32);
    }

    public static BigInteger toBigInteger(int[] iArr) {
        byte[] bArr = new byte[28];
        for (int i = 0; i < 7; i++) {
            int i2 = iArr[i];
            if (i2 != 0) {
                Pack.intToBigEndian(i2, bArr, (6 - i) << 2);
            }
        }
        return new BigInteger(1, bArr);
    }

    public static void zero(int[] iArr) {
        iArr[0] = 0;
        iArr[1] = 0;
        iArr[2] = 0;
        iArr[3] = 0;
        iArr[4] = 0;
        iArr[5] = 0;
        iArr[6] = 0;
    }
}
