package io.github.andreypfau.curve25519.scalar;

import io.github.andreypfau.curve25519.constants.ConstantsKt;
import io.github.andreypfau.curve25519.internal.BinaryKt;
import io.github.andreypfau.curve25519.internal.Scalar64Kt;
import kotlin.ULong;
import kotlin.ULongArray;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: UnpackedScalar.kt */
/* loaded from: classes4.dex */
public final class UnpackedScalar {
    private final long[] data;

    public /* synthetic */ UnpackedScalar(long j, long j2, long j3, long j4, long j5, DefaultConstructorMarker defaultConstructorMarker) {
        this(j, j2, j3, j4, j5);
    }

    public /* synthetic */ UnpackedScalar(long[] jArr, DefaultConstructorMarker defaultConstructorMarker) {
        this(jArr);
    }

    private UnpackedScalar(long[] jArr) {
        this.data = jArr;
    }

    public /* synthetic */ UnpackedScalar(long[] jArr, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? ULongArray.m2000constructorimpl(5) : jArr, null);
    }

    /* renamed from: getData-Y2RjT0g */
    public final long[] m1903getDataY2RjT0g() {
        return this.data;
    }

    private UnpackedScalar(long j, long j2, long j3, long j4, long j5) {
        this(new long[]{j, j2, j3, j4, j5}, null);
    }

    public final void add(UnpackedScalar a, UnpackedScalar b) {
        Intrinsics.checkNotNullParameter(a, "a");
        Intrinsics.checkNotNullParameter(b, "b");
        long j = 0;
        for (int i = 0; i < 5; i++) {
            j = ULong.m1994constructorimpl(ULong.m1994constructorimpl(ULongArray.m2005getsVKNKU(a.m1903getDataY2RjT0g(), i) + ULongArray.m2005getsVKNKU(b.m1903getDataY2RjT0g(), i)) + ULong.m1994constructorimpl(j >>> 52));
            ULongArray.m2010setk8EXiF4(this.data, i, ULong.m1994constructorimpl(ConstantsKt.getLOW_52_BIT_NASK() & j));
        }
        sub(this, ConstantsKt.getL());
    }

    public static /* synthetic */ void bytes$default(UnpackedScalar unpackedScalar, byte[] bArr, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        unpackedScalar.bytes(bArr, i);
    }

    public final void bytes(byte[] input, int i) {
        Intrinsics.checkNotNullParameter(input, "input");
        long[] jArr = new long[4];
        for (int i2 = 0; i2 < 4; i2++) {
            jArr[i2] = BinaryKt.getULongLE(input, (i2 * 8) + i);
        }
        long[] m2001constructorimpl = ULongArray.m2001constructorimpl(jArr);
        long m1994constructorimpl = ULong.m1994constructorimpl(ULong.m1994constructorimpl(281474976710656L) - 1);
        ULongArray.m2010setk8EXiF4(this.data, 0, ULong.m1994constructorimpl(ULongArray.m2005getsVKNKU(m2001constructorimpl, 0) & ConstantsKt.getLOW_52_BIT_NASK()));
        ULongArray.m2010setk8EXiF4(this.data, 1, ULong.m1994constructorimpl(ULong.m1994constructorimpl(ULong.m1994constructorimpl(ULongArray.m2005getsVKNKU(m2001constructorimpl, 0) >>> 52) | ULong.m1994constructorimpl(ULongArray.m2005getsVKNKU(m2001constructorimpl, 1) << 12)) & ConstantsKt.getLOW_52_BIT_NASK()));
        ULongArray.m2010setk8EXiF4(this.data, 2, ULong.m1994constructorimpl(ULong.m1994constructorimpl(ULong.m1994constructorimpl(ULongArray.m2005getsVKNKU(m2001constructorimpl, 1) >>> 40) | ULong.m1994constructorimpl(ULongArray.m2005getsVKNKU(m2001constructorimpl, 2) << 24)) & ConstantsKt.getLOW_52_BIT_NASK()));
        ULongArray.m2010setk8EXiF4(this.data, 3, ULong.m1994constructorimpl(ULong.m1994constructorimpl(ULong.m1994constructorimpl(ULongArray.m2005getsVKNKU(m2001constructorimpl, 2) >>> 28) | ULong.m1994constructorimpl(ULongArray.m2005getsVKNKU(m2001constructorimpl, 3) << 36)) & ConstantsKt.getLOW_52_BIT_NASK()));
        ULongArray.m2010setk8EXiF4(this.data, 4, ULong.m1994constructorimpl(ULong.m1994constructorimpl(ULongArray.m2005getsVKNKU(m2001constructorimpl, 3) >>> 16) & m1994constructorimpl));
    }

    public final void bytesWide(byte[] input, int i) {
        Intrinsics.checkNotNullParameter(input, "input");
        long[] jArr = new long[8];
        for (int i2 = 0; i2 < 8; i2++) {
            jArr[i2] = BinaryKt.getULongLE(input, i + (i2 * 8));
        }
        long[] m2001constructorimpl = ULongArray.m2001constructorimpl(jArr);
        UnpackedScalar unpackedScalar = new UnpackedScalar(ULong.m1994constructorimpl(ULongArray.m2005getsVKNKU(m2001constructorimpl, 0) & ConstantsKt.getLOW_52_BIT_NASK()), ULong.m1994constructorimpl(ULong.m1994constructorimpl(ULong.m1994constructorimpl(ULongArray.m2005getsVKNKU(m2001constructorimpl, 0) >>> 52) | ULong.m1994constructorimpl(ULongArray.m2005getsVKNKU(m2001constructorimpl, 1) << 12)) & ConstantsKt.getLOW_52_BIT_NASK()), ULong.m1994constructorimpl(ULong.m1994constructorimpl(ULong.m1994constructorimpl(ULongArray.m2005getsVKNKU(m2001constructorimpl, 1) >>> 40) | ULong.m1994constructorimpl(ULongArray.m2005getsVKNKU(m2001constructorimpl, 2) << 24)) & ConstantsKt.getLOW_52_BIT_NASK()), ULong.m1994constructorimpl(ULong.m1994constructorimpl(ULong.m1994constructorimpl(ULongArray.m2005getsVKNKU(m2001constructorimpl, 2) >>> 28) | ULong.m1994constructorimpl(ULongArray.m2005getsVKNKU(m2001constructorimpl, 3) << 36)) & ConstantsKt.getLOW_52_BIT_NASK()), ULong.m1994constructorimpl(ULong.m1994constructorimpl(ULong.m1994constructorimpl(ULongArray.m2005getsVKNKU(m2001constructorimpl, 3) >>> 16) | ULong.m1994constructorimpl(ULongArray.m2005getsVKNKU(m2001constructorimpl, 4) << 48)) & ConstantsKt.getLOW_52_BIT_NASK()), null);
        UnpackedScalar unpackedScalar2 = new UnpackedScalar(ULong.m1994constructorimpl(ULong.m1994constructorimpl(ULongArray.m2005getsVKNKU(m2001constructorimpl, 4) >>> 4) & ConstantsKt.getLOW_52_BIT_NASK()), ULong.m1994constructorimpl(ULong.m1994constructorimpl(ULong.m1994constructorimpl(ULongArray.m2005getsVKNKU(m2001constructorimpl, 4) >>> 56) | ULong.m1994constructorimpl(ULongArray.m2005getsVKNKU(m2001constructorimpl, 5) << 8)) & ConstantsKt.getLOW_52_BIT_NASK()), ULong.m1994constructorimpl(ULong.m1994constructorimpl(ULong.m1994constructorimpl(ULongArray.m2005getsVKNKU(m2001constructorimpl, 5) >>> 44) | ULong.m1994constructorimpl(ULongArray.m2005getsVKNKU(m2001constructorimpl, 6) << 20)) & ConstantsKt.getLOW_52_BIT_NASK()), ULong.m1994constructorimpl(ULong.m1994constructorimpl(ULong.m1994constructorimpl(ULongArray.m2005getsVKNKU(m2001constructorimpl, 6) >>> 32) | ULong.m1994constructorimpl(ULongArray.m2005getsVKNKU(m2001constructorimpl, 7) << 32)) & ConstantsKt.getLOW_52_BIT_NASK()), ULong.m1994constructorimpl(ULongArray.m2005getsVKNKU(m2001constructorimpl, 7) >>> 20), null);
        unpackedScalar.montgomeryMul(unpackedScalar, ConstantsKt.getR());
        unpackedScalar2.montgomeryMul(unpackedScalar2, ConstantsKt.getRR());
        add(unpackedScalar2, unpackedScalar);
    }

    public static /* synthetic */ byte[] toByteArray$default(UnpackedScalar unpackedScalar, byte[] bArr, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            bArr = new byte[32];
        }
        if ((i2 & 2) != 0) {
            i = 0;
        }
        return unpackedScalar.toByteArray(bArr, i);
    }

    public final byte[] toByteArray(byte[] buf, int i) {
        Intrinsics.checkNotNullParameter(buf, "buf");
        buf[i] = (byte) ULongArray.m2005getsVKNKU(this.data, 0);
        buf[i + 1] = (byte) ULong.m1994constructorimpl(ULongArray.m2005getsVKNKU(this.data, 0) >>> 8);
        buf[i + 2] = (byte) ULong.m1994constructorimpl(ULongArray.m2005getsVKNKU(this.data, 0) >>> 16);
        buf[i + 3] = (byte) ULong.m1994constructorimpl(ULongArray.m2005getsVKNKU(this.data, 0) >>> 24);
        buf[i + 4] = (byte) ULong.m1994constructorimpl(ULongArray.m2005getsVKNKU(this.data, 0) >>> 32);
        buf[i + 5] = (byte) ULong.m1994constructorimpl(ULongArray.m2005getsVKNKU(this.data, 0) >>> 40);
        buf[i + 6] = (byte) ULong.m1994constructorimpl(ULong.m1994constructorimpl(ULongArray.m2005getsVKNKU(this.data, 0) >>> 48) | ULong.m1994constructorimpl(ULongArray.m2005getsVKNKU(this.data, 1) << 4));
        buf[i + 7] = (byte) ULong.m1994constructorimpl(ULongArray.m2005getsVKNKU(this.data, 1) >>> 4);
        buf[i + 8] = (byte) ULong.m1994constructorimpl(ULongArray.m2005getsVKNKU(this.data, 1) >>> 12);
        buf[i + 9] = (byte) ULong.m1994constructorimpl(ULongArray.m2005getsVKNKU(this.data, 1) >>> 20);
        buf[i + 10] = (byte) ULong.m1994constructorimpl(ULongArray.m2005getsVKNKU(this.data, 1) >>> 28);
        buf[i + 11] = (byte) ULong.m1994constructorimpl(ULongArray.m2005getsVKNKU(this.data, 1) >>> 36);
        buf[i + 12] = (byte) ULong.m1994constructorimpl(ULongArray.m2005getsVKNKU(this.data, 1) >>> 44);
        buf[i + 13] = (byte) ULongArray.m2005getsVKNKU(this.data, 2);
        buf[i + 14] = (byte) ULong.m1994constructorimpl(ULongArray.m2005getsVKNKU(this.data, 2) >>> 8);
        buf[i + 15] = (byte) ULong.m1994constructorimpl(ULongArray.m2005getsVKNKU(this.data, 2) >>> 16);
        buf[i + 16] = (byte) ULong.m1994constructorimpl(ULongArray.m2005getsVKNKU(this.data, 2) >>> 24);
        buf[i + 17] = (byte) ULong.m1994constructorimpl(ULongArray.m2005getsVKNKU(this.data, 2) >>> 32);
        buf[i + 18] = (byte) ULong.m1994constructorimpl(ULongArray.m2005getsVKNKU(this.data, 2) >>> 40);
        buf[i + 19] = (byte) ULong.m1994constructorimpl(ULong.m1994constructorimpl(ULongArray.m2005getsVKNKU(this.data, 2) >>> 48) | ULong.m1994constructorimpl(ULongArray.m2005getsVKNKU(this.data, 3) << 4));
        buf[i + 20] = (byte) ULong.m1994constructorimpl(ULongArray.m2005getsVKNKU(this.data, 3) >>> 4);
        buf[i + 21] = (byte) ULong.m1994constructorimpl(ULongArray.m2005getsVKNKU(this.data, 3) >>> 12);
        buf[i + 22] = (byte) ULong.m1994constructorimpl(ULongArray.m2005getsVKNKU(this.data, 3) >>> 20);
        buf[i + 23] = (byte) ULong.m1994constructorimpl(ULongArray.m2005getsVKNKU(this.data, 3) >>> 28);
        buf[i + 24] = (byte) ULong.m1994constructorimpl(ULongArray.m2005getsVKNKU(this.data, 3) >>> 36);
        buf[i + 25] = (byte) ULong.m1994constructorimpl(ULongArray.m2005getsVKNKU(this.data, 3) >>> 44);
        buf[i + 26] = (byte) ULongArray.m2005getsVKNKU(this.data, 4);
        buf[i + 27] = (byte) ULong.m1994constructorimpl(ULongArray.m2005getsVKNKU(this.data, 4) >>> 8);
        buf[i + 28] = (byte) ULong.m1994constructorimpl(ULongArray.m2005getsVKNKU(this.data, 4) >>> 16);
        buf[i + 29] = (byte) ULong.m1994constructorimpl(ULongArray.m2005getsVKNKU(this.data, 4) >>> 24);
        buf[i + 30] = (byte) ULong.m1994constructorimpl(ULongArray.m2005getsVKNKU(this.data, 4) >>> 32);
        buf[i + 31] = (byte) ULong.m1994constructorimpl(ULongArray.m2005getsVKNKU(this.data, 4) >>> 40);
        return buf;
    }

    public final void mul(UnpackedScalar a, UnpackedScalar b) {
        Intrinsics.checkNotNullParameter(a, "a");
        Intrinsics.checkNotNullParameter(b, "b");
        Scalar64Kt.m1897scalarMontgomeryReduceGR1PJdc(Scalar64Kt.m1900scalarMulInternalNHtdf0s$default(a.data, b.data, null, 4, null), this.data);
        Scalar64Kt.m1897scalarMontgomeryReduceGR1PJdc(Scalar64Kt.m1900scalarMulInternalNHtdf0s$default(this.data, ConstantsKt.getRR().data, null, 4, null), this.data);
    }

    public final void sub(UnpackedScalar a, UnpackedScalar b) {
        Intrinsics.checkNotNullParameter(a, "a");
        Intrinsics.checkNotNullParameter(b, "b");
        long j = 0;
        long j2 = 0;
        for (int i = 0; i < 5; i++) {
            j2 = ULong.m1994constructorimpl(ULongArray.m2005getsVKNKU(a.data, i) - ULong.m1994constructorimpl(ULongArray.m2005getsVKNKU(b.data, i) + ULong.m1994constructorimpl(j2 >>> 63)));
            ULongArray.m2010setk8EXiF4(this.data, i, ULong.m1994constructorimpl(ConstantsKt.getLOW_52_BIT_NASK() & j2));
        }
        long m1994constructorimpl = ULong.m1994constructorimpl(ULong.m1994constructorimpl(ULong.m1994constructorimpl(j2 >>> 63) ^ 1) - ULong.m1994constructorimpl(1L));
        for (int i2 = 0; i2 < 5; i2++) {
            j = ULong.m1994constructorimpl(ULong.m1994constructorimpl(ULongArray.m2005getsVKNKU(this.data, i2) + ULong.m1994constructorimpl(ULongArray.m2005getsVKNKU(ConstantsKt.getL().data, i2) & m1994constructorimpl)) + ULong.m1994constructorimpl(j >>> 52));
            ULongArray.m2010setk8EXiF4(this.data, i2, ULong.m1994constructorimpl(ConstantsKt.getLOW_52_BIT_NASK() & j));
        }
    }

    public final void montgomeryMul(UnpackedScalar a, UnpackedScalar b) {
        Intrinsics.checkNotNullParameter(a, "a");
        Intrinsics.checkNotNullParameter(b, "b");
        sub(new UnpackedScalar(Scalar64Kt.m1898scalarMontgomeryReduceGR1PJdc$default(Scalar64Kt.m1900scalarMulInternalNHtdf0s$default(a.data, b.data, null, 4, null), null, 2, null), null), ConstantsKt.getL());
    }
}
