package io.github.andreypfau.curve25519.field;

import io.github.andreypfau.curve25519.constants.ConstantsKt;
import io.github.andreypfau.curve25519.internal.BinaryKt;
import io.github.andreypfau.curve25519.internal.FieldCommonKt;
import io.github.andreypfau.curve25519.internal.MathKt;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.UInt;
import kotlin.ULong;
import kotlin.ULongArray;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.collections.unsigned.UArraysKt___UArraysKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: FieldElement.kt */
/* loaded from: classes4.dex */
public final class FieldElement {
    public static final Companion Companion = new Companion(null);
    private final long[] inner;

    public /* synthetic */ FieldElement(long j, long j2, long j3, long j4, long j5, DefaultConstructorMarker defaultConstructorMarker) {
        this(j, j2, j3, j4, j5);
    }

    public /* synthetic */ FieldElement(long[] jArr, DefaultConstructorMarker defaultConstructorMarker) {
        this(jArr);
    }

    public String toString() {
        return "FieldElement(inner=" + ((Object) ULongArray.m2014toStringimpl(this.inner)) + ')';
    }

    private FieldElement(long[] jArr) {
        this.inner = jArr;
    }

    public /* synthetic */ FieldElement(long[] jArr, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? new long[]{0, 0, 0, 0, 0} : jArr, null);
    }

    /* renamed from: getInner-Y2RjT0g  reason: not valid java name */
    public final long[] m1891getInnerY2RjT0g() {
        return this.inner;
    }

    private FieldElement(long j, long j2, long j3, long j4, long j5) {
        this(new long[]{j, j2, j3, j4, j5}, null);
    }

    public final FieldElement add(FieldElement a, FieldElement b) {
        Intrinsics.checkNotNullParameter(a, "a");
        Intrinsics.checkNotNullParameter(b, "b");
        return Companion.add(a, b, this);
    }

    public final FieldElement sub(FieldElement a, FieldElement b) {
        Intrinsics.checkNotNullParameter(a, "a");
        Intrinsics.checkNotNullParameter(b, "b");
        return Companion.sub(a, b, this);
    }

    public final FieldElement mul(FieldElement a, FieldElement b) {
        Intrinsics.checkNotNullParameter(a, "a");
        Intrinsics.checkNotNullParameter(b, "b");
        return Companion.mul(a, b, this);
    }

    public final FieldElement negate(FieldElement t) {
        Intrinsics.checkNotNullParameter(t, "t");
        m1892reduceQwZRm1k(new long[]{ULong.m1997constructorimpl(36028797018963664L - ULongArray.m2008getsVKNKU(t.inner, 0)), ULong.m1997constructorimpl(36028797018963952L - ULongArray.m2008getsVKNKU(t.inner, 1)), ULong.m1997constructorimpl(36028797018963952L - ULongArray.m2008getsVKNKU(t.inner, 2)), ULong.m1997constructorimpl(36028797018963952L - ULongArray.m2008getsVKNKU(t.inner, 3)), ULong.m1997constructorimpl(36028797018963952L - ULongArray.m2008getsVKNKU(t.inner, 4))});
        return this;
    }

    public final void conditionalSwap(FieldElement other, int i) {
        Intrinsics.checkNotNullParameter(other, "other");
        long m2008getsVKNKU = ULongArray.m2008getsVKNKU(other.inner, 0);
        long m2008getsVKNKU2 = ULongArray.m2008getsVKNKU(this.inner, 0);
        long j = -i;
        long j2 = (m2008getsVKNKU ^ m2008getsVKNKU2) & j;
        ULongArray.m2013setk8EXiF4(other.inner, 0, ULong.m1997constructorimpl(m2008getsVKNKU ^ j2));
        ULongArray.m2013setk8EXiF4(this.inner, 0, ULong.m1997constructorimpl(m2008getsVKNKU2 ^ j2));
        long m2008getsVKNKU3 = ULongArray.m2008getsVKNKU(other.inner, 1);
        long m2008getsVKNKU4 = ULongArray.m2008getsVKNKU(this.inner, 1);
        long j3 = (m2008getsVKNKU3 ^ m2008getsVKNKU4) & j;
        ULongArray.m2013setk8EXiF4(other.inner, 1, ULong.m1997constructorimpl(m2008getsVKNKU3 ^ j3));
        ULongArray.m2013setk8EXiF4(this.inner, 1, ULong.m1997constructorimpl(m2008getsVKNKU4 ^ j3));
        long m2008getsVKNKU5 = ULongArray.m2008getsVKNKU(other.inner, 2);
        long m2008getsVKNKU6 = ULongArray.m2008getsVKNKU(this.inner, 2);
        long j4 = (m2008getsVKNKU5 ^ m2008getsVKNKU6) & j;
        ULongArray.m2013setk8EXiF4(other.inner, 2, ULong.m1997constructorimpl(m2008getsVKNKU5 ^ j4));
        ULongArray.m2013setk8EXiF4(this.inner, 2, ULong.m1997constructorimpl(m2008getsVKNKU6 ^ j4));
        long m2008getsVKNKU7 = ULongArray.m2008getsVKNKU(other.inner, 3);
        long m2008getsVKNKU8 = ULongArray.m2008getsVKNKU(this.inner, 3);
        long j5 = (m2008getsVKNKU7 ^ m2008getsVKNKU8) & j;
        ULongArray.m2013setk8EXiF4(other.inner, 3, ULong.m1997constructorimpl(m2008getsVKNKU7 ^ j5));
        ULongArray.m2013setk8EXiF4(this.inner, 3, ULong.m1997constructorimpl(m2008getsVKNKU8 ^ j5));
        long m2008getsVKNKU9 = ULongArray.m2008getsVKNKU(other.inner, 4);
        long m2008getsVKNKU10 = ULongArray.m2008getsVKNKU(this.inner, 4);
        long j6 = j & (m2008getsVKNKU9 ^ m2008getsVKNKU10);
        ULongArray.m2013setk8EXiF4(other.inner, 4, ULong.m1997constructorimpl(m2008getsVKNKU9 ^ j6));
        ULongArray.m2013setk8EXiF4(this.inner, 4, ULong.m1997constructorimpl(m2008getsVKNKU10 ^ j6));
    }

    public final void conditionalAssign(FieldElement other, int i) {
        Intrinsics.checkNotNullParameter(other, "other");
        long[] jArr = this.inner;
        long m2008getsVKNKU = ULongArray.m2008getsVKNKU(other.inner, 0);
        long m2008getsVKNKU2 = ULongArray.m2008getsVKNKU(this.inner, 0);
        long j = -i;
        ULongArray.m2013setk8EXiF4(jArr, 0, ULong.m1997constructorimpl(((m2008getsVKNKU ^ m2008getsVKNKU2) & j) ^ m2008getsVKNKU2));
        long[] jArr2 = this.inner;
        long m2008getsVKNKU3 = ULongArray.m2008getsVKNKU(other.inner, 1);
        long m2008getsVKNKU4 = ULongArray.m2008getsVKNKU(this.inner, 1);
        ULongArray.m2013setk8EXiF4(jArr2, 1, ULong.m1997constructorimpl(((m2008getsVKNKU3 ^ m2008getsVKNKU4) & j) ^ m2008getsVKNKU4));
        long[] jArr3 = this.inner;
        long m2008getsVKNKU5 = ULongArray.m2008getsVKNKU(other.inner, 2);
        long m2008getsVKNKU6 = ULongArray.m2008getsVKNKU(this.inner, 2);
        ULongArray.m2013setk8EXiF4(jArr3, 2, ULong.m1997constructorimpl(((m2008getsVKNKU5 ^ m2008getsVKNKU6) & j) ^ m2008getsVKNKU6));
        long[] jArr4 = this.inner;
        long m2008getsVKNKU7 = ULongArray.m2008getsVKNKU(other.inner, 3);
        long m2008getsVKNKU8 = ULongArray.m2008getsVKNKU(this.inner, 3);
        ULongArray.m2013setk8EXiF4(jArr4, 3, ULong.m1997constructorimpl(((m2008getsVKNKU7 ^ m2008getsVKNKU8) & j) ^ m2008getsVKNKU8));
        long[] jArr5 = this.inner;
        long m2008getsVKNKU9 = ULongArray.m2008getsVKNKU(other.inner, 4);
        long m2008getsVKNKU10 = ULongArray.m2008getsVKNKU(this.inner, 4);
        ULongArray.m2013setk8EXiF4(jArr5, 4, ULong.m1997constructorimpl(((m2008getsVKNKU9 ^ m2008getsVKNKU10) & j) ^ m2008getsVKNKU10));
    }

    public static /* synthetic */ FieldElement set$default(FieldElement fieldElement, FieldElement fieldElement2, FieldElement fieldElement3, int i, Object obj) {
        if ((i & 2) != 0) {
            fieldElement3 = fieldElement;
        }
        return fieldElement.set(fieldElement2, fieldElement3);
    }

    public final FieldElement set(FieldElement t, FieldElement output) {
        Intrinsics.checkNotNullParameter(t, "t");
        Intrinsics.checkNotNullParameter(output, "output");
        long[] jArr = t.inner;
        ArraysKt___ArraysJvmKt.copyInto(jArr, output.inner, 0, 0, ULongArray.m2009getSizeimpl(jArr));
        return output;
    }

    public static /* synthetic */ FieldElement zero$default(FieldElement fieldElement, FieldElement fieldElement2, int i, Object obj) {
        if ((i & 1) != 0) {
            fieldElement2 = fieldElement;
        }
        return fieldElement.zero(fieldElement2);
    }

    public final FieldElement zero(FieldElement output) {
        Intrinsics.checkNotNullParameter(output, "output");
        UArraysKt___UArraysKt.m2042fillK6DWlUc$default(output.inner, 0L, 0, 0, 6, null);
        return output;
    }

    public static /* synthetic */ FieldElement one$default(FieldElement fieldElement, FieldElement fieldElement2, int i, Object obj) {
        if ((i & 1) != 0) {
            fieldElement2 = fieldElement;
        }
        return fieldElement.one(fieldElement2);
    }

    public final FieldElement one(FieldElement output) {
        Intrinsics.checkNotNullParameter(output, "output");
        ULongArray.m2013setk8EXiF4(output.inner, 0, 1L);
        UArraysKt___UArraysKt.m2042fillK6DWlUc$default(output.inner, 0L, 1, 0, 4, null);
        return output;
    }

    public static /* synthetic */ FieldElement minusOne$default(FieldElement fieldElement, FieldElement fieldElement2, int i, Object obj) {
        if ((i & 1) != 0) {
            fieldElement2 = fieldElement;
        }
        return fieldElement.minusOne(fieldElement2);
    }

    public final FieldElement minusOne(FieldElement output) {
        Intrinsics.checkNotNullParameter(output, "output");
        ULongArray.m2013setk8EXiF4(output.inner, 0, 2251799813685228L);
        UArraysKt___UArraysKt.m2042fillK6DWlUc$default(output.inner, 2251799813685247L, 1, 0, 4, null);
        return output;
    }

    public final int isNegative() {
        return toBytes$default(this, null, 1, null)[0] & 1;
    }

    public final int constantTimeEquals(FieldElement other) {
        Intrinsics.checkNotNullParameter(other, "other");
        byte[] bytes$default = toBytes$default(this, null, 1, null);
        byte[] bytes$default2 = toBytes$default(other, null, 1, null);
        if (bytes$default.length != bytes$default2.length) {
            return 0;
        }
        int length = bytes$default.length;
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            i |= bytes$default[i2] ^ bytes$default2[i2];
        }
        return (int) ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULong.m1997constructorimpl(UInt.m1975constructorimpl(i ^ 0) & 4294967295L) - ULong.m1997constructorimpl(1L)) >>> 63);
    }

    public final void conditionalNegate(int i) {
        conditionalAssign(new FieldElement(null, 1, null).negate(this), i);
    }

    /* renamed from: reduce-QwZRm1k  reason: not valid java name */
    public final FieldElement m1892reduceQwZRm1k(long[] limbs) {
        Intrinsics.checkNotNullParameter(limbs, "limbs");
        return Companion.m1893reducetBf0fek(limbs, this);
    }

    public final FieldElement setBytes(byte[] input, int i) {
        Intrinsics.checkNotNullParameter(input, "input");
        return Companion.fromBytes(input, i, this);
    }

    public static /* synthetic */ byte[] toBytes$default(FieldElement fieldElement, byte[] bArr, int i, Object obj) {
        if ((i & 1) != 0) {
            bArr = new byte[32];
        }
        return fieldElement.toBytes(bArr);
    }

    public final byte[] toBytes(byte[] output) {
        long j;
        long j2;
        long j3;
        long j4;
        long j5;
        Intrinsics.checkNotNullParameter(output, "output");
        FieldElement fieldElement = new FieldElement(null, 1, null);
        fieldElement.m1892reduceQwZRm1k(this.inner);
        long[] jArr = fieldElement.inner;
        long m2008getsVKNKU = ULongArray.m2008getsVKNKU(jArr, 0);
        long m2008getsVKNKU2 = ULongArray.m2008getsVKNKU(jArr, 1);
        long m2008getsVKNKU3 = ULongArray.m2008getsVKNKU(jArr, 2);
        long m2008getsVKNKU4 = ULongArray.m2008getsVKNKU(jArr, 3);
        long m2008getsVKNKU5 = ULongArray.m2008getsVKNKU(jArr, 4);
        long j6 = 19 & 4294967295L;
        long m1997constructorimpl = ULong.m1997constructorimpl(m2008getsVKNKU + ULong.m1997constructorimpl(ULong.m1997constructorimpl(j6) * ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU5 + ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU4 + ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU3 + ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU2 + ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU + ULong.m1997constructorimpl(j6)) >>> 51)) >>> 51)) >>> 51)) >>> 51)) >>> 51)));
        long m1997constructorimpl2 = ULong.m1997constructorimpl(m2008getsVKNKU2 + ULong.m1997constructorimpl(m1997constructorimpl >>> 51));
        j = FieldElementKt.LOW_51_BIT_MASK;
        long m1997constructorimpl3 = ULong.m1997constructorimpl(m1997constructorimpl & j);
        long m1997constructorimpl4 = ULong.m1997constructorimpl(m2008getsVKNKU3 + ULong.m1997constructorimpl(m1997constructorimpl2 >>> 51));
        j2 = FieldElementKt.LOW_51_BIT_MASK;
        long m1997constructorimpl5 = ULong.m1997constructorimpl(m1997constructorimpl2 & j2);
        long m1997constructorimpl6 = ULong.m1997constructorimpl(m2008getsVKNKU4 + ULong.m1997constructorimpl(m1997constructorimpl4 >>> 51));
        j3 = FieldElementKt.LOW_51_BIT_MASK;
        long m1997constructorimpl7 = ULong.m1997constructorimpl(m1997constructorimpl4 & j3);
        long m1997constructorimpl8 = ULong.m1997constructorimpl(m2008getsVKNKU5 + ULong.m1997constructorimpl(m1997constructorimpl6 >>> 51));
        j4 = FieldElementKt.LOW_51_BIT_MASK;
        long m1997constructorimpl9 = ULong.m1997constructorimpl(m1997constructorimpl6 & j4);
        j5 = FieldElementKt.LOW_51_BIT_MASK;
        long m1997constructorimpl10 = ULong.m1997constructorimpl(m1997constructorimpl8 & j5);
        output[0] = (byte) m1997constructorimpl3;
        output[1] = (byte) ULong.m1997constructorimpl(m1997constructorimpl3 >>> 8);
        output[2] = (byte) ULong.m1997constructorimpl(m1997constructorimpl3 >>> 16);
        output[3] = (byte) ULong.m1997constructorimpl(m1997constructorimpl3 >>> 24);
        output[4] = (byte) ULong.m1997constructorimpl(m1997constructorimpl3 >>> 32);
        output[5] = (byte) ULong.m1997constructorimpl(m1997constructorimpl3 >>> 40);
        output[6] = (byte) ULong.m1997constructorimpl(ULong.m1997constructorimpl(m1997constructorimpl3 >>> 48) | ULong.m1997constructorimpl(m1997constructorimpl5 << 3));
        output[7] = (byte) ULong.m1997constructorimpl(m1997constructorimpl5 >>> 5);
        output[8] = (byte) ULong.m1997constructorimpl(m1997constructorimpl5 >>> 13);
        output[9] = (byte) ULong.m1997constructorimpl(m1997constructorimpl5 >>> 21);
        output[10] = (byte) ULong.m1997constructorimpl(m1997constructorimpl5 >>> 29);
        output[11] = (byte) ULong.m1997constructorimpl(m1997constructorimpl5 >>> 37);
        output[12] = (byte) ULong.m1997constructorimpl(ULong.m1997constructorimpl(m1997constructorimpl5 >>> 45) | ULong.m1997constructorimpl(m1997constructorimpl7 << 6));
        output[13] = (byte) ULong.m1997constructorimpl(m1997constructorimpl7 >>> 2);
        output[14] = (byte) ULong.m1997constructorimpl(m1997constructorimpl7 >>> 10);
        output[15] = (byte) ULong.m1997constructorimpl(m1997constructorimpl7 >>> 18);
        output[16] = (byte) ULong.m1997constructorimpl(m1997constructorimpl7 >>> 26);
        output[17] = (byte) ULong.m1997constructorimpl(m1997constructorimpl7 >>> 34);
        output[18] = (byte) ULong.m1997constructorimpl(m1997constructorimpl7 >>> 42);
        output[19] = (byte) ULong.m1997constructorimpl(ULong.m1997constructorimpl(m1997constructorimpl7 >>> 50) | ULong.m1997constructorimpl(m1997constructorimpl9 << 1));
        output[20] = (byte) ULong.m1997constructorimpl(m1997constructorimpl9 >>> 7);
        output[21] = (byte) ULong.m1997constructorimpl(m1997constructorimpl9 >>> 15);
        output[22] = (byte) ULong.m1997constructorimpl(m1997constructorimpl9 >>> 23);
        output[23] = (byte) ULong.m1997constructorimpl(m1997constructorimpl9 >>> 31);
        output[24] = (byte) ULong.m1997constructorimpl(m1997constructorimpl9 >>> 39);
        output[25] = (byte) ULong.m1997constructorimpl(ULong.m1997constructorimpl(m1997constructorimpl9 >>> 47) | ULong.m1997constructorimpl(m1997constructorimpl10 << 4));
        output[26] = (byte) ULong.m1997constructorimpl(m1997constructorimpl10 >>> 4);
        output[27] = (byte) ULong.m1997constructorimpl(m1997constructorimpl10 >>> 12);
        output[28] = (byte) ULong.m1997constructorimpl(m1997constructorimpl10 >>> 20);
        output[29] = (byte) ULong.m1997constructorimpl(m1997constructorimpl10 >>> 28);
        output[30] = (byte) ULong.m1997constructorimpl(m1997constructorimpl10 >>> 36);
        output[31] = (byte) ULong.m1997constructorimpl(m1997constructorimpl10 >>> 44);
        return output;
    }

    public final FieldElement square(FieldElement x) {
        Intrinsics.checkNotNullParameter(x, "x");
        return Companion.square(x, this);
    }

    public final FieldElement pow2k(FieldElement t, int i) {
        Intrinsics.checkNotNullParameter(t, "t");
        if (!(i > 0)) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        FieldCommonKt.m1894fePow2kHXTcExc(this.inner, t.inner, i);
        return this;
    }

    public final Pair<FieldElement, FieldElement> pow22501() {
        FieldElement fieldElement = new FieldElement(null, 1, null);
        FieldElement fieldElement2 = new FieldElement(null, 1, null);
        FieldElement fieldElement3 = new FieldElement(null, 1, null);
        FieldElement fieldElement4 = new FieldElement(null, 1, null);
        FieldElement fieldElement5 = new FieldElement(null, 1, null);
        fieldElement3.square(this);
        fieldElement4.pow2k(fieldElement3, 2);
        fieldElement4.mul(this, fieldElement4);
        fieldElement.mul(fieldElement3, fieldElement4);
        fieldElement3.square(fieldElement);
        fieldElement4.mul(fieldElement4, fieldElement3);
        fieldElement3.pow2k(fieldElement4, 5);
        fieldElement5.mul(fieldElement3, fieldElement4);
        fieldElement3.pow2k(fieldElement5, 10);
        fieldElement4.mul(fieldElement3, fieldElement5);
        fieldElement3.pow2k(fieldElement4, 20);
        fieldElement4.mul(fieldElement3, fieldElement4);
        fieldElement3.pow2k(fieldElement4, 10);
        fieldElement5.mul(fieldElement3, fieldElement5);
        fieldElement3.pow2k(fieldElement5, 50);
        fieldElement3.mul(fieldElement3, fieldElement5);
        fieldElement4.pow2k(fieldElement3, 100);
        fieldElement3.mul(fieldElement4, fieldElement3);
        fieldElement3.pow2k(fieldElement3, 50);
        fieldElement2.mul(fieldElement3, fieldElement5);
        return TuplesKt.m149to(fieldElement2, fieldElement);
    }

    public final void pow58() {
        FieldElement component1 = pow22501().component1();
        component1.pow2k(component1, 2);
        mul(this, component1);
    }

    public final FieldElement invert(FieldElement t) {
        Intrinsics.checkNotNullParameter(t, "t");
        return Companion.invert(t, this);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof FieldElement) && constantTimeEquals((FieldElement) obj) == 1;
    }

    public int hashCode() {
        return ULongArray.m2010hashCodeimpl(this.inner);
    }

    public final FieldElement mul12166(FieldElement t) {
        Intrinsics.checkNotNullParameter(t, "t");
        return Companion.mul121666(t, this);
    }

    /* compiled from: FieldElement.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final FieldElement one() {
            FieldElement fieldElement = new FieldElement(null, 1, null);
            FieldElement.one$default(fieldElement, null, 1, null);
            return fieldElement;
        }

        public final FieldElement minusOne() {
            FieldElement fieldElement = new FieldElement(null, 1, null);
            FieldElement.minusOne$default(fieldElement, null, 1, null);
            return fieldElement;
        }

        public static /* synthetic */ Pair sqrtRatioI$default(Companion companion, FieldElement fieldElement, FieldElement fieldElement2, FieldElement fieldElement3, int i, Object obj) {
            if ((i & 4) != 0) {
                fieldElement3 = new FieldElement(null, 1, null);
            }
            return companion.sqrtRatioI(fieldElement, fieldElement2, fieldElement3);
        }

        public final Pair<FieldElement, Integer> sqrtRatioI(FieldElement u, FieldElement v, FieldElement output) {
            Intrinsics.checkNotNullParameter(u, "u");
            Intrinsics.checkNotNullParameter(v, "v");
            Intrinsics.checkNotNullParameter(output, "output");
            FieldElement mul$default = mul$default(this, u, v, null, 4, null);
            FieldElement fieldElement = new FieldElement(null, 1, null);
            mul$default.pow58();
            fieldElement.mul(u, mul$default);
            FieldElement fieldElement2 = new FieldElement(null, 1, null);
            fieldElement2.square(fieldElement);
            fieldElement2.mul(fieldElement2, v);
            FieldElement fieldElement3 = new FieldElement(null, 1, null);
            FieldElement fieldElement4 = new FieldElement(null, 1, null);
            fieldElement3.negate(u);
            fieldElement4.mul(fieldElement3, ConstantsKt.getSQRT_M1());
            int constantTimeEquals = fieldElement2.constantTimeEquals(u);
            int constantTimeEquals2 = fieldElement2.constantTimeEquals(fieldElement3);
            int constantTimeEquals3 = fieldElement2.constantTimeEquals(fieldElement4);
            FieldElement fieldElement5 = new FieldElement(null, 1, null);
            fieldElement5.mul(fieldElement, ConstantsKt.getSQRT_M1());
            fieldElement.conditionalAssign(fieldElement5, constantTimeEquals3 | constantTimeEquals2);
            fieldElement.conditionalNegate(fieldElement.isNegative());
            FieldElement.set$default(output, fieldElement, null, 2, null);
            return TuplesKt.m149to(output, Integer.valueOf(constantTimeEquals | constantTimeEquals2));
        }

        public static /* synthetic */ FieldElement fromBytes$default(Companion companion, byte[] bArr, int i, FieldElement fieldElement, int i2, Object obj) {
            if ((i2 & 2) != 0) {
                i = 0;
            }
            if ((i2 & 4) != 0) {
                fieldElement = new FieldElement(null, 1, null);
            }
            return companion.fromBytes(bArr, i, fieldElement);
        }

        public final FieldElement fromBytes(byte[] bytes, int i, FieldElement output) {
            long j;
            long j2;
            long j3;
            long j4;
            long j5;
            Intrinsics.checkNotNullParameter(bytes, "bytes");
            Intrinsics.checkNotNullParameter(output, "output");
            long[] m1891getInnerY2RjT0g = output.m1891getInnerY2RjT0g();
            long uLongLE = BinaryKt.getULongLE(bytes, i);
            j = FieldElementKt.LOW_51_BIT_MASK;
            ULongArray.m2013setk8EXiF4(m1891getInnerY2RjT0g, 0, ULong.m1997constructorimpl(uLongLE & j));
            long[] m1891getInnerY2RjT0g2 = output.m1891getInnerY2RjT0g();
            long m1997constructorimpl = ULong.m1997constructorimpl(BinaryKt.getULongLE(bytes, i + 6) >>> 3);
            j2 = FieldElementKt.LOW_51_BIT_MASK;
            ULongArray.m2013setk8EXiF4(m1891getInnerY2RjT0g2, 1, ULong.m1997constructorimpl(m1997constructorimpl & j2));
            long[] m1891getInnerY2RjT0g3 = output.m1891getInnerY2RjT0g();
            long m1997constructorimpl2 = ULong.m1997constructorimpl(BinaryKt.getULongLE(bytes, i + 12) >>> 6);
            j3 = FieldElementKt.LOW_51_BIT_MASK;
            ULongArray.m2013setk8EXiF4(m1891getInnerY2RjT0g3, 2, ULong.m1997constructorimpl(m1997constructorimpl2 & j3));
            long[] m1891getInnerY2RjT0g4 = output.m1891getInnerY2RjT0g();
            long m1997constructorimpl3 = ULong.m1997constructorimpl(BinaryKt.getULongLE(bytes, i + 19) >>> 1);
            j4 = FieldElementKt.LOW_51_BIT_MASK;
            ULongArray.m2013setk8EXiF4(m1891getInnerY2RjT0g4, 3, ULong.m1997constructorimpl(m1997constructorimpl3 & j4));
            long[] m1891getInnerY2RjT0g5 = output.m1891getInnerY2RjT0g();
            long m1997constructorimpl4 = ULong.m1997constructorimpl(BinaryKt.getULongLE(bytes, i + 24) >>> 12);
            j5 = FieldElementKt.LOW_51_BIT_MASK;
            ULongArray.m2013setk8EXiF4(m1891getInnerY2RjT0g5, 4, ULong.m1997constructorimpl(m1997constructorimpl4 & j5));
            return output;
        }

        public static /* synthetic */ FieldElement invert$default(Companion companion, FieldElement fieldElement, FieldElement fieldElement2, int i, Object obj) {
            if ((i & 2) != 0) {
                fieldElement2 = new FieldElement(null, 1, null);
            }
            return companion.invert(fieldElement, fieldElement2);
        }

        public final FieldElement invert(FieldElement t, FieldElement output) {
            Intrinsics.checkNotNullParameter(t, "t");
            Intrinsics.checkNotNullParameter(output, "output");
            Pair<FieldElement, FieldElement> pow22501 = t.pow22501();
            FieldElement component1 = pow22501.component1();
            component1.pow2k(component1, 5);
            return mul(component1, pow22501.component2(), output);
        }

        public static /* synthetic */ FieldElement square$default(Companion companion, FieldElement fieldElement, FieldElement fieldElement2, int i, Object obj) {
            if ((i & 2) != 0) {
                fieldElement2 = new FieldElement(null, 1, null);
            }
            return companion.square(fieldElement, fieldElement2);
        }

        public final FieldElement square(FieldElement x, FieldElement output) {
            Intrinsics.checkNotNullParameter(x, "x");
            Intrinsics.checkNotNullParameter(output, "output");
            FieldCommonKt.m1894fePow2kHXTcExc(output.m1891getInnerY2RjT0g(), x.m1891getInnerY2RjT0g(), 1);
            return output;
        }

        public static /* synthetic */ FieldElement sub$default(Companion companion, FieldElement fieldElement, FieldElement fieldElement2, FieldElement fieldElement3, int i, Object obj) {
            if ((i & 4) != 0) {
                fieldElement3 = new FieldElement(null, 1, null);
            }
            return companion.sub(fieldElement, fieldElement2, fieldElement3);
        }

        public final FieldElement sub(FieldElement a, FieldElement b, FieldElement output) {
            Intrinsics.checkNotNullParameter(a, "a");
            Intrinsics.checkNotNullParameter(b, "b");
            Intrinsics.checkNotNullParameter(output, "output");
            return m1893reducetBf0fek(new long[]{ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULongArray.m2008getsVKNKU(a.m1891getInnerY2RjT0g(), 0) + 36028797018963664L) - ULongArray.m2008getsVKNKU(b.m1891getInnerY2RjT0g(), 0)), ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULongArray.m2008getsVKNKU(a.m1891getInnerY2RjT0g(), 1) + 36028797018963952L) - ULongArray.m2008getsVKNKU(b.m1891getInnerY2RjT0g(), 1)), ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULongArray.m2008getsVKNKU(a.m1891getInnerY2RjT0g(), 2) + 36028797018963952L) - ULongArray.m2008getsVKNKU(b.m1891getInnerY2RjT0g(), 2)), ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULongArray.m2008getsVKNKU(a.m1891getInnerY2RjT0g(), 3) + 36028797018963952L) - ULongArray.m2008getsVKNKU(b.m1891getInnerY2RjT0g(), 3)), ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULongArray.m2008getsVKNKU(a.m1891getInnerY2RjT0g(), 4) + 36028797018963952L) - ULongArray.m2008getsVKNKU(b.m1891getInnerY2RjT0g(), 4))}, output);
        }

        public static /* synthetic */ FieldElement add$default(Companion companion, FieldElement fieldElement, FieldElement fieldElement2, FieldElement fieldElement3, int i, Object obj) {
            if ((i & 4) != 0) {
                fieldElement3 = new FieldElement(null, 1, null);
            }
            return companion.add(fieldElement, fieldElement2, fieldElement3);
        }

        public final FieldElement add(FieldElement a, FieldElement b, FieldElement output) {
            Intrinsics.checkNotNullParameter(a, "a");
            Intrinsics.checkNotNullParameter(b, "b");
            Intrinsics.checkNotNullParameter(output, "output");
            ULongArray.m2013setk8EXiF4(output.m1891getInnerY2RjT0g(), 0, ULong.m1997constructorimpl(ULongArray.m2008getsVKNKU(a.m1891getInnerY2RjT0g(), 0) + ULongArray.m2008getsVKNKU(b.m1891getInnerY2RjT0g(), 0)));
            ULongArray.m2013setk8EXiF4(output.m1891getInnerY2RjT0g(), 1, ULong.m1997constructorimpl(ULongArray.m2008getsVKNKU(a.m1891getInnerY2RjT0g(), 1) + ULongArray.m2008getsVKNKU(b.m1891getInnerY2RjT0g(), 1)));
            ULongArray.m2013setk8EXiF4(output.m1891getInnerY2RjT0g(), 2, ULong.m1997constructorimpl(ULongArray.m2008getsVKNKU(a.m1891getInnerY2RjT0g(), 2) + ULongArray.m2008getsVKNKU(b.m1891getInnerY2RjT0g(), 2)));
            ULongArray.m2013setk8EXiF4(output.m1891getInnerY2RjT0g(), 3, ULong.m1997constructorimpl(ULongArray.m2008getsVKNKU(a.m1891getInnerY2RjT0g(), 3) + ULongArray.m2008getsVKNKU(b.m1891getInnerY2RjT0g(), 3)));
            ULongArray.m2013setk8EXiF4(output.m1891getInnerY2RjT0g(), 4, ULong.m1997constructorimpl(ULongArray.m2008getsVKNKU(a.m1891getInnerY2RjT0g(), 4) + ULongArray.m2008getsVKNKU(b.m1891getInnerY2RjT0g(), 4)));
            return output;
        }

        /* renamed from: reduce-tBf0fek  reason: not valid java name */
        public final FieldElement m1893reducetBf0fek(long[] limbs, FieldElement output) {
            long j;
            long j2;
            long j3;
            long j4;
            long j5;
            Intrinsics.checkNotNullParameter(limbs, "limbs");
            Intrinsics.checkNotNullParameter(output, "output");
            long m2008getsVKNKU = ULongArray.m2008getsVKNKU(limbs, 0);
            long m2008getsVKNKU2 = ULongArray.m2008getsVKNKU(limbs, 1);
            long m2008getsVKNKU3 = ULongArray.m2008getsVKNKU(limbs, 2);
            long m2008getsVKNKU4 = ULongArray.m2008getsVKNKU(limbs, 3);
            long m2008getsVKNKU5 = ULongArray.m2008getsVKNKU(limbs, 4);
            long m1997constructorimpl = ULong.m1997constructorimpl(m2008getsVKNKU >>> 51);
            long m1997constructorimpl2 = ULong.m1997constructorimpl(m2008getsVKNKU2 >>> 51);
            long m1997constructorimpl3 = ULong.m1997constructorimpl(m2008getsVKNKU3 >>> 51);
            long m1997constructorimpl4 = ULong.m1997constructorimpl(m2008getsVKNKU4 >>> 51);
            long m1997constructorimpl5 = ULong.m1997constructorimpl(m2008getsVKNKU5 >>> 51);
            j = FieldElementKt.LOW_51_BIT_MASK;
            long m1997constructorimpl6 = ULong.m1997constructorimpl(m2008getsVKNKU & j);
            j2 = FieldElementKt.LOW_51_BIT_MASK;
            long m1997constructorimpl7 = ULong.m1997constructorimpl(m2008getsVKNKU2 & j2);
            j3 = FieldElementKt.LOW_51_BIT_MASK;
            long m1997constructorimpl8 = ULong.m1997constructorimpl(m2008getsVKNKU3 & j3);
            j4 = FieldElementKt.LOW_51_BIT_MASK;
            long m1997constructorimpl9 = ULong.m1997constructorimpl(m2008getsVKNKU4 & j4);
            j5 = FieldElementKt.LOW_51_BIT_MASK;
            long m1997constructorimpl10 = ULong.m1997constructorimpl(m2008getsVKNKU5 & j5);
            ULongArray.m2013setk8EXiF4(output.m1891getInnerY2RjT0g(), 0, ULong.m1997constructorimpl(m1997constructorimpl6 + ULong.m1997constructorimpl(m1997constructorimpl5 * ULong.m1997constructorimpl(19 & 4294967295L))));
            ULongArray.m2013setk8EXiF4(output.m1891getInnerY2RjT0g(), 1, ULong.m1997constructorimpl(m1997constructorimpl7 + m1997constructorimpl));
            ULongArray.m2013setk8EXiF4(output.m1891getInnerY2RjT0g(), 2, ULong.m1997constructorimpl(m1997constructorimpl8 + m1997constructorimpl2));
            ULongArray.m2013setk8EXiF4(output.m1891getInnerY2RjT0g(), 3, ULong.m1997constructorimpl(m1997constructorimpl9 + m1997constructorimpl3));
            ULongArray.m2013setk8EXiF4(output.m1891getInnerY2RjT0g(), 4, ULong.m1997constructorimpl(m1997constructorimpl10 + m1997constructorimpl4));
            return output;
        }

        public static /* synthetic */ FieldElement mul$default(Companion companion, FieldElement fieldElement, FieldElement fieldElement2, FieldElement fieldElement3, int i, Object obj) {
            if ((i & 4) != 0) {
                fieldElement3 = new FieldElement(null, 1, null);
            }
            return companion.mul(fieldElement, fieldElement2, fieldElement3);
        }

        public final FieldElement mul(FieldElement a, FieldElement b, FieldElement output) {
            Intrinsics.checkNotNullParameter(a, "a");
            Intrinsics.checkNotNullParameter(b, "b");
            Intrinsics.checkNotNullParameter(output, "output");
            long[] m1891getInnerY2RjT0g = output.m1891getInnerY2RjT0g();
            long[] m1891getInnerY2RjT0g2 = a.m1891getInnerY2RjT0g();
            long[] m1891getInnerY2RjT0g3 = b.m1891getInnerY2RjT0g();
            long m2008getsVKNKU = ULongArray.m2008getsVKNKU(m1891getInnerY2RjT0g2, 0);
            long m2008getsVKNKU2 = ULongArray.m2008getsVKNKU(m1891getInnerY2RjT0g2, 1);
            long m2008getsVKNKU3 = ULongArray.m2008getsVKNKU(m1891getInnerY2RjT0g2, 2);
            long m2008getsVKNKU4 = ULongArray.m2008getsVKNKU(m1891getInnerY2RjT0g2, 3);
            long m2008getsVKNKU5 = ULongArray.m2008getsVKNKU(m1891getInnerY2RjT0g2, 4);
            long m2008getsVKNKU6 = ULongArray.m2008getsVKNKU(m1891getInnerY2RjT0g3, 0);
            long m2008getsVKNKU7 = ULongArray.m2008getsVKNKU(m1891getInnerY2RjT0g3, 1);
            long m2008getsVKNKU8 = ULongArray.m2008getsVKNKU(m1891getInnerY2RjT0g3, 2);
            long m2008getsVKNKU9 = ULongArray.m2008getsVKNKU(m1891getInnerY2RjT0g3, 3);
            long m2008getsVKNKU10 = ULongArray.m2008getsVKNKU(m1891getInnerY2RjT0g3, 4);
            long j = 19 & 4294967295L;
            long m1997constructorimpl = ULong.m1997constructorimpl(ULong.m1997constructorimpl(j) * m2008getsVKNKU2);
            long m1997constructorimpl2 = ULong.m1997constructorimpl(ULong.m1997constructorimpl(j) * m2008getsVKNKU3);
            long m1997constructorimpl3 = ULong.m1997constructorimpl(ULong.m1997constructorimpl(j) * m2008getsVKNKU4);
            long m1997constructorimpl4 = ULong.m1997constructorimpl(ULong.m1997constructorimpl(j) * m2008getsVKNKU5);
            long[] m2003constructorimpl = ULongArray.m2003constructorimpl(2);
            long[] m1895mul64h0OkrE = MathKt.m1895mul64h0OkrE(m2008getsVKNKU, m2008getsVKNKU6, m2003constructorimpl);
            long m2008getsVKNKU11 = ULongArray.m2008getsVKNKU(m1895mul64h0OkrE, 0);
            ULongArray.m2013setk8EXiF4(m2003constructorimpl, 0, ULongArray.m2008getsVKNKU(m1895mul64h0OkrE, 1));
            ULongArray.m2013setk8EXiF4(m2003constructorimpl, 1, m2008getsVKNKU11);
            long m2008getsVKNKU12 = ULongArray.m2008getsVKNKU(m2003constructorimpl, 1);
            long m2008getsVKNKU13 = ULongArray.m2008getsVKNKU(m2003constructorimpl, 0);
            long[] m1895mul64h0OkrE2 = MathKt.m1895mul64h0OkrE(m1997constructorimpl, m2008getsVKNKU10, m2003constructorimpl);
            long m2008getsVKNKU14 = ULongArray.m2008getsVKNKU(m1895mul64h0OkrE2, 0);
            long m2008getsVKNKU15 = ULongArray.m2008getsVKNKU(m1895mul64h0OkrE2, 1);
            ULongArray.m2013setk8EXiF4(m2003constructorimpl, 0, ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU13 + m2008getsVKNKU15) + 0));
            ULongArray.m2013setk8EXiF4(m2003constructorimpl, 1, ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU13 & m2008getsVKNKU15) | ULong.m1997constructorimpl(ULong.m1997constructorimpl(~ULongArray.m2008getsVKNKU(m2003constructorimpl, 0)) & ULong.m1997constructorimpl(m2008getsVKNKU13 | m2008getsVKNKU15))) >>> 63));
            long m2008getsVKNKU16 = ULongArray.m2008getsVKNKU(m2003constructorimpl, 0);
            ULongArray.m2013setk8EXiF4(m2003constructorimpl, 0, ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU12 + m2008getsVKNKU14) + ULongArray.m2008getsVKNKU(m2003constructorimpl, 1)));
            ULongArray.m2013setk8EXiF4(m2003constructorimpl, 1, ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU12 | m2008getsVKNKU14) & ULong.m1997constructorimpl(~ULongArray.m2008getsVKNKU(m2003constructorimpl, 0))) | ULong.m1997constructorimpl(m2008getsVKNKU12 & m2008getsVKNKU14)) >>> 63));
            long m2008getsVKNKU17 = ULongArray.m2008getsVKNKU(m2003constructorimpl, 0);
            ULongArray.m2013setk8EXiF4(m2003constructorimpl, 0, m2008getsVKNKU16);
            ULongArray.m2013setk8EXiF4(m2003constructorimpl, 1, m2008getsVKNKU17);
            long m2008getsVKNKU18 = ULongArray.m2008getsVKNKU(m2003constructorimpl, 1);
            long m2008getsVKNKU19 = ULongArray.m2008getsVKNKU(m2003constructorimpl, 0);
            long[] m1895mul64h0OkrE3 = MathKt.m1895mul64h0OkrE(m1997constructorimpl2, m2008getsVKNKU9, m2003constructorimpl);
            long m2008getsVKNKU20 = ULongArray.m2008getsVKNKU(m1895mul64h0OkrE3, 0);
            long m2008getsVKNKU21 = ULongArray.m2008getsVKNKU(m1895mul64h0OkrE3, 1);
            ULongArray.m2013setk8EXiF4(m2003constructorimpl, 0, ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU19 + m2008getsVKNKU21) + 0));
            ULongArray.m2013setk8EXiF4(m2003constructorimpl, 1, ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU19 | m2008getsVKNKU21) & ULong.m1997constructorimpl(~ULongArray.m2008getsVKNKU(m2003constructorimpl, 0))) | ULong.m1997constructorimpl(m2008getsVKNKU19 & m2008getsVKNKU21)) >>> 63));
            long m2008getsVKNKU22 = ULongArray.m2008getsVKNKU(m2003constructorimpl, 0);
            ULongArray.m2013setk8EXiF4(m2003constructorimpl, 0, ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU18 + m2008getsVKNKU20) + ULongArray.m2008getsVKNKU(m2003constructorimpl, 1)));
            ULongArray.m2013setk8EXiF4(m2003constructorimpl, 1, ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU18 & m2008getsVKNKU20) | ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU18 | m2008getsVKNKU20) & ULong.m1997constructorimpl(~ULongArray.m2008getsVKNKU(m2003constructorimpl, 0)))) >>> 63));
            long m2008getsVKNKU23 = ULongArray.m2008getsVKNKU(m2003constructorimpl, 0);
            ULongArray.m2013setk8EXiF4(m2003constructorimpl, 0, m2008getsVKNKU22);
            ULongArray.m2013setk8EXiF4(m2003constructorimpl, 1, m2008getsVKNKU23);
            long m2008getsVKNKU24 = ULongArray.m2008getsVKNKU(m2003constructorimpl, 1);
            long m2008getsVKNKU25 = ULongArray.m2008getsVKNKU(m2003constructorimpl, 0);
            long[] m1895mul64h0OkrE4 = MathKt.m1895mul64h0OkrE(m1997constructorimpl3, m2008getsVKNKU8, m2003constructorimpl);
            long m2008getsVKNKU26 = ULongArray.m2008getsVKNKU(m1895mul64h0OkrE4, 0);
            long m2008getsVKNKU27 = ULongArray.m2008getsVKNKU(m1895mul64h0OkrE4, 1);
            ULongArray.m2013setk8EXiF4(m2003constructorimpl, 0, ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU25 + m2008getsVKNKU27) + 0));
            ULongArray.m2013setk8EXiF4(m2003constructorimpl, 1, ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU25 | m2008getsVKNKU27) & ULong.m1997constructorimpl(~ULongArray.m2008getsVKNKU(m2003constructorimpl, 0))) | ULong.m1997constructorimpl(m2008getsVKNKU25 & m2008getsVKNKU27)) >>> 63));
            long m2008getsVKNKU28 = ULongArray.m2008getsVKNKU(m2003constructorimpl, 0);
            ULongArray.m2013setk8EXiF4(m2003constructorimpl, 0, ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU24 + m2008getsVKNKU26) + ULongArray.m2008getsVKNKU(m2003constructorimpl, 1)));
            ULongArray.m2013setk8EXiF4(m2003constructorimpl, 1, ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU24 & m2008getsVKNKU26) | ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU24 | m2008getsVKNKU26) & ULong.m1997constructorimpl(~ULongArray.m2008getsVKNKU(m2003constructorimpl, 0)))) >>> 63));
            long m2008getsVKNKU29 = ULongArray.m2008getsVKNKU(m2003constructorimpl, 0);
            ULongArray.m2013setk8EXiF4(m2003constructorimpl, 0, m2008getsVKNKU28);
            ULongArray.m2013setk8EXiF4(m2003constructorimpl, 1, m2008getsVKNKU29);
            long m2008getsVKNKU30 = ULongArray.m2008getsVKNKU(m2003constructorimpl, 1);
            long m2008getsVKNKU31 = ULongArray.m2008getsVKNKU(m2003constructorimpl, 0);
            long[] m1895mul64h0OkrE5 = MathKt.m1895mul64h0OkrE(m1997constructorimpl4, m2008getsVKNKU7, m2003constructorimpl);
            long m2008getsVKNKU32 = ULongArray.m2008getsVKNKU(m1895mul64h0OkrE5, 0);
            long m2008getsVKNKU33 = ULongArray.m2008getsVKNKU(m1895mul64h0OkrE5, 1);
            ULongArray.m2013setk8EXiF4(m2003constructorimpl, 0, ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU31 + m2008getsVKNKU33) + 0));
            ULongArray.m2013setk8EXiF4(m2003constructorimpl, 1, ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU31 | m2008getsVKNKU33) & ULong.m1997constructorimpl(~ULongArray.m2008getsVKNKU(m2003constructorimpl, 0))) | ULong.m1997constructorimpl(m2008getsVKNKU31 & m2008getsVKNKU33)) >>> 63));
            long m2008getsVKNKU34 = ULongArray.m2008getsVKNKU(m2003constructorimpl, 0);
            ULongArray.m2013setk8EXiF4(m2003constructorimpl, 0, ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU30 + m2008getsVKNKU32) + ULongArray.m2008getsVKNKU(m2003constructorimpl, 1)));
            ULongArray.m2013setk8EXiF4(m2003constructorimpl, 1, ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU30 | m2008getsVKNKU32) & ULong.m1997constructorimpl(~ULongArray.m2008getsVKNKU(m2003constructorimpl, 0))) | ULong.m1997constructorimpl(m2008getsVKNKU30 & m2008getsVKNKU32)) >>> 63));
            long m2008getsVKNKU35 = ULongArray.m2008getsVKNKU(m2003constructorimpl, 0);
            ULongArray.m2013setk8EXiF4(m2003constructorimpl, 0, m2008getsVKNKU34);
            ULongArray.m2013setk8EXiF4(m2003constructorimpl, 1, m2008getsVKNKU35);
            long[] m2003constructorimpl2 = ULongArray.m2003constructorimpl(2);
            long[] m1895mul64h0OkrE6 = MathKt.m1895mul64h0OkrE(m2008getsVKNKU, m2008getsVKNKU7, m2003constructorimpl2);
            long m2008getsVKNKU36 = ULongArray.m2008getsVKNKU(m1895mul64h0OkrE6, 0);
            ULongArray.m2013setk8EXiF4(m2003constructorimpl2, 0, ULongArray.m2008getsVKNKU(m1895mul64h0OkrE6, 1));
            ULongArray.m2013setk8EXiF4(m2003constructorimpl2, 1, m2008getsVKNKU36);
            long m2008getsVKNKU37 = ULongArray.m2008getsVKNKU(m2003constructorimpl2, 1);
            long m2008getsVKNKU38 = ULongArray.m2008getsVKNKU(m2003constructorimpl2, 0);
            long[] m1895mul64h0OkrE7 = MathKt.m1895mul64h0OkrE(m2008getsVKNKU2, m2008getsVKNKU6, m2003constructorimpl2);
            long m2008getsVKNKU39 = ULongArray.m2008getsVKNKU(m1895mul64h0OkrE7, 0);
            long m2008getsVKNKU40 = ULongArray.m2008getsVKNKU(m1895mul64h0OkrE7, 1);
            ULongArray.m2013setk8EXiF4(m2003constructorimpl2, 0, ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU38 + m2008getsVKNKU40) + 0));
            ULongArray.m2013setk8EXiF4(m2003constructorimpl2, 1, ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU38 & m2008getsVKNKU40) | ULong.m1997constructorimpl(ULong.m1997constructorimpl(~ULongArray.m2008getsVKNKU(m2003constructorimpl2, 0)) & ULong.m1997constructorimpl(m2008getsVKNKU38 | m2008getsVKNKU40))) >>> 63));
            long m2008getsVKNKU41 = ULongArray.m2008getsVKNKU(m2003constructorimpl2, 0);
            ULongArray.m2013setk8EXiF4(m2003constructorimpl2, 0, ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU37 + m2008getsVKNKU39) + ULongArray.m2008getsVKNKU(m2003constructorimpl2, 1)));
            ULongArray.m2013setk8EXiF4(m2003constructorimpl2, 1, ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU37 | m2008getsVKNKU39) & ULong.m1997constructorimpl(~ULongArray.m2008getsVKNKU(m2003constructorimpl2, 0))) | ULong.m1997constructorimpl(m2008getsVKNKU37 & m2008getsVKNKU39)) >>> 63));
            long m2008getsVKNKU42 = ULongArray.m2008getsVKNKU(m2003constructorimpl2, 0);
            ULongArray.m2013setk8EXiF4(m2003constructorimpl2, 0, m2008getsVKNKU41);
            ULongArray.m2013setk8EXiF4(m2003constructorimpl2, 1, m2008getsVKNKU42);
            long m2008getsVKNKU43 = ULongArray.m2008getsVKNKU(m2003constructorimpl2, 1);
            long m2008getsVKNKU44 = ULongArray.m2008getsVKNKU(m2003constructorimpl2, 0);
            long[] m1895mul64h0OkrE8 = MathKt.m1895mul64h0OkrE(m1997constructorimpl2, m2008getsVKNKU10, m2003constructorimpl2);
            long m2008getsVKNKU45 = ULongArray.m2008getsVKNKU(m1895mul64h0OkrE8, 0);
            long m2008getsVKNKU46 = ULongArray.m2008getsVKNKU(m1895mul64h0OkrE8, 1);
            ULongArray.m2013setk8EXiF4(m2003constructorimpl2, 0, ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU44 + m2008getsVKNKU46) + 0));
            ULongArray.m2013setk8EXiF4(m2003constructorimpl2, 1, ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU44 | m2008getsVKNKU46) & ULong.m1997constructorimpl(~ULongArray.m2008getsVKNKU(m2003constructorimpl2, 0))) | ULong.m1997constructorimpl(m2008getsVKNKU44 & m2008getsVKNKU46)) >>> 63));
            long m2008getsVKNKU47 = ULongArray.m2008getsVKNKU(m2003constructorimpl2, 0);
            ULongArray.m2013setk8EXiF4(m2003constructorimpl2, 0, ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU43 + m2008getsVKNKU45) + ULongArray.m2008getsVKNKU(m2003constructorimpl2, 1)));
            ULongArray.m2013setk8EXiF4(m2003constructorimpl2, 1, ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU43 | m2008getsVKNKU45) & ULong.m1997constructorimpl(~ULongArray.m2008getsVKNKU(m2003constructorimpl2, 0))) | ULong.m1997constructorimpl(m2008getsVKNKU43 & m2008getsVKNKU45)) >>> 63));
            long m2008getsVKNKU48 = ULongArray.m2008getsVKNKU(m2003constructorimpl2, 0);
            ULongArray.m2013setk8EXiF4(m2003constructorimpl2, 0, m2008getsVKNKU47);
            ULongArray.m2013setk8EXiF4(m2003constructorimpl2, 1, m2008getsVKNKU48);
            long m2008getsVKNKU49 = ULongArray.m2008getsVKNKU(m2003constructorimpl2, 1);
            long m2008getsVKNKU50 = ULongArray.m2008getsVKNKU(m2003constructorimpl2, 0);
            long[] m1895mul64h0OkrE9 = MathKt.m1895mul64h0OkrE(m1997constructorimpl3, m2008getsVKNKU9, m2003constructorimpl2);
            long m2008getsVKNKU51 = ULongArray.m2008getsVKNKU(m1895mul64h0OkrE9, 0);
            long m2008getsVKNKU52 = ULongArray.m2008getsVKNKU(m1895mul64h0OkrE9, 1);
            ULongArray.m2013setk8EXiF4(m2003constructorimpl2, 0, ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU50 + m2008getsVKNKU52) + 0));
            ULongArray.m2013setk8EXiF4(m2003constructorimpl2, 1, ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU50 | m2008getsVKNKU52) & ULong.m1997constructorimpl(~ULongArray.m2008getsVKNKU(m2003constructorimpl2, 0))) | ULong.m1997constructorimpl(m2008getsVKNKU50 & m2008getsVKNKU52)) >>> 63));
            long m2008getsVKNKU53 = ULongArray.m2008getsVKNKU(m2003constructorimpl2, 0);
            ULongArray.m2013setk8EXiF4(m2003constructorimpl2, 0, ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU49 + m2008getsVKNKU51) + ULongArray.m2008getsVKNKU(m2003constructorimpl2, 1)));
            ULongArray.m2013setk8EXiF4(m2003constructorimpl2, 1, ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU49 | m2008getsVKNKU51) & ULong.m1997constructorimpl(~ULongArray.m2008getsVKNKU(m2003constructorimpl2, 0))) | ULong.m1997constructorimpl(m2008getsVKNKU49 & m2008getsVKNKU51)) >>> 63));
            long m2008getsVKNKU54 = ULongArray.m2008getsVKNKU(m2003constructorimpl2, 0);
            ULongArray.m2013setk8EXiF4(m2003constructorimpl2, 0, m2008getsVKNKU53);
            ULongArray.m2013setk8EXiF4(m2003constructorimpl2, 1, m2008getsVKNKU54);
            long m2008getsVKNKU55 = ULongArray.m2008getsVKNKU(m2003constructorimpl2, 1);
            long m2008getsVKNKU56 = ULongArray.m2008getsVKNKU(m2003constructorimpl2, 0);
            long[] m1895mul64h0OkrE10 = MathKt.m1895mul64h0OkrE(m1997constructorimpl4, m2008getsVKNKU8, m2003constructorimpl2);
            long m2008getsVKNKU57 = ULongArray.m2008getsVKNKU(m1895mul64h0OkrE10, 0);
            long m2008getsVKNKU58 = ULongArray.m2008getsVKNKU(m1895mul64h0OkrE10, 1);
            ULongArray.m2013setk8EXiF4(m2003constructorimpl2, 0, ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU56 + m2008getsVKNKU58) + 0));
            ULongArray.m2013setk8EXiF4(m2003constructorimpl2, 1, ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU56 | m2008getsVKNKU58) & ULong.m1997constructorimpl(~ULongArray.m2008getsVKNKU(m2003constructorimpl2, 0))) | ULong.m1997constructorimpl(m2008getsVKNKU56 & m2008getsVKNKU58)) >>> 63));
            long m2008getsVKNKU59 = ULongArray.m2008getsVKNKU(m2003constructorimpl2, 0);
            ULongArray.m2013setk8EXiF4(m2003constructorimpl2, 0, ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU55 + m2008getsVKNKU57) + ULongArray.m2008getsVKNKU(m2003constructorimpl2, 1)));
            ULongArray.m2013setk8EXiF4(m2003constructorimpl2, 1, ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU55 | m2008getsVKNKU57) & ULong.m1997constructorimpl(~ULongArray.m2008getsVKNKU(m2003constructorimpl2, 0))) | ULong.m1997constructorimpl(m2008getsVKNKU55 & m2008getsVKNKU57)) >>> 63));
            long m2008getsVKNKU60 = ULongArray.m2008getsVKNKU(m2003constructorimpl2, 0);
            ULongArray.m2013setk8EXiF4(m2003constructorimpl2, 0, m2008getsVKNKU59);
            ULongArray.m2013setk8EXiF4(m2003constructorimpl2, 1, m2008getsVKNKU60);
            long[] m2003constructorimpl3 = ULongArray.m2003constructorimpl(2);
            long[] m1895mul64h0OkrE11 = MathKt.m1895mul64h0OkrE(m2008getsVKNKU, m2008getsVKNKU8, m2003constructorimpl3);
            long m2008getsVKNKU61 = ULongArray.m2008getsVKNKU(m1895mul64h0OkrE11, 0);
            ULongArray.m2013setk8EXiF4(m2003constructorimpl3, 0, ULongArray.m2008getsVKNKU(m1895mul64h0OkrE11, 1));
            ULongArray.m2013setk8EXiF4(m2003constructorimpl3, 1, m2008getsVKNKU61);
            long m2008getsVKNKU62 = ULongArray.m2008getsVKNKU(m2003constructorimpl3, 1);
            long m2008getsVKNKU63 = ULongArray.m2008getsVKNKU(m2003constructorimpl3, 0);
            long[] m1895mul64h0OkrE12 = MathKt.m1895mul64h0OkrE(m2008getsVKNKU2, m2008getsVKNKU7, m2003constructorimpl3);
            long m2008getsVKNKU64 = ULongArray.m2008getsVKNKU(m1895mul64h0OkrE12, 0);
            long m2008getsVKNKU65 = ULongArray.m2008getsVKNKU(m1895mul64h0OkrE12, 1);
            ULongArray.m2013setk8EXiF4(m2003constructorimpl3, 0, ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU63 + m2008getsVKNKU65) + 0));
            ULongArray.m2013setk8EXiF4(m2003constructorimpl3, 1, ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU63 | m2008getsVKNKU65) & ULong.m1997constructorimpl(~ULongArray.m2008getsVKNKU(m2003constructorimpl3, 0))) | ULong.m1997constructorimpl(m2008getsVKNKU63 & m2008getsVKNKU65)) >>> 63));
            long m2008getsVKNKU66 = ULongArray.m2008getsVKNKU(m2003constructorimpl3, 0);
            ULongArray.m2013setk8EXiF4(m2003constructorimpl3, 0, ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU62 + m2008getsVKNKU64) + ULongArray.m2008getsVKNKU(m2003constructorimpl3, 1)));
            ULongArray.m2013setk8EXiF4(m2003constructorimpl3, 1, ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU62 | m2008getsVKNKU64) & ULong.m1997constructorimpl(~ULongArray.m2008getsVKNKU(m2003constructorimpl3, 0))) | ULong.m1997constructorimpl(m2008getsVKNKU62 & m2008getsVKNKU64)) >>> 63));
            long m2008getsVKNKU67 = ULongArray.m2008getsVKNKU(m2003constructorimpl3, 0);
            ULongArray.m2013setk8EXiF4(m2003constructorimpl3, 0, m2008getsVKNKU66);
            ULongArray.m2013setk8EXiF4(m2003constructorimpl3, 1, m2008getsVKNKU67);
            long m2008getsVKNKU68 = ULongArray.m2008getsVKNKU(m2003constructorimpl3, 1);
            long m2008getsVKNKU69 = ULongArray.m2008getsVKNKU(m2003constructorimpl3, 0);
            long[] m1895mul64h0OkrE13 = MathKt.m1895mul64h0OkrE(m2008getsVKNKU3, m2008getsVKNKU6, m2003constructorimpl3);
            long m2008getsVKNKU70 = ULongArray.m2008getsVKNKU(m1895mul64h0OkrE13, 0);
            long m2008getsVKNKU71 = ULongArray.m2008getsVKNKU(m1895mul64h0OkrE13, 1);
            ULongArray.m2013setk8EXiF4(m2003constructorimpl3, 0, ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU69 + m2008getsVKNKU71) + 0));
            ULongArray.m2013setk8EXiF4(m2003constructorimpl3, 1, ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU69 | m2008getsVKNKU71) & ULong.m1997constructorimpl(~ULongArray.m2008getsVKNKU(m2003constructorimpl3, 0))) | ULong.m1997constructorimpl(m2008getsVKNKU69 & m2008getsVKNKU71)) >>> 63));
            long m2008getsVKNKU72 = ULongArray.m2008getsVKNKU(m2003constructorimpl3, 0);
            ULongArray.m2013setk8EXiF4(m2003constructorimpl3, 0, ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU68 + m2008getsVKNKU70) + ULongArray.m2008getsVKNKU(m2003constructorimpl3, 1)));
            ULongArray.m2013setk8EXiF4(m2003constructorimpl3, 1, ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU68 | m2008getsVKNKU70) & ULong.m1997constructorimpl(~ULongArray.m2008getsVKNKU(m2003constructorimpl3, 0))) | ULong.m1997constructorimpl(m2008getsVKNKU68 & m2008getsVKNKU70)) >>> 63));
            long m2008getsVKNKU73 = ULongArray.m2008getsVKNKU(m2003constructorimpl3, 0);
            ULongArray.m2013setk8EXiF4(m2003constructorimpl3, 0, m2008getsVKNKU72);
            ULongArray.m2013setk8EXiF4(m2003constructorimpl3, 1, m2008getsVKNKU73);
            long m2008getsVKNKU74 = ULongArray.m2008getsVKNKU(m2003constructorimpl3, 1);
            long m2008getsVKNKU75 = ULongArray.m2008getsVKNKU(m2003constructorimpl3, 0);
            long[] m1895mul64h0OkrE14 = MathKt.m1895mul64h0OkrE(m1997constructorimpl3, m2008getsVKNKU10, m2003constructorimpl3);
            long m2008getsVKNKU76 = ULongArray.m2008getsVKNKU(m1895mul64h0OkrE14, 0);
            long m2008getsVKNKU77 = ULongArray.m2008getsVKNKU(m1895mul64h0OkrE14, 1);
            ULongArray.m2013setk8EXiF4(m2003constructorimpl3, 0, ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU75 + m2008getsVKNKU77) + 0));
            ULongArray.m2013setk8EXiF4(m2003constructorimpl3, 1, ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU75 | m2008getsVKNKU77) & ULong.m1997constructorimpl(~ULongArray.m2008getsVKNKU(m2003constructorimpl3, 0))) | ULong.m1997constructorimpl(m2008getsVKNKU75 & m2008getsVKNKU77)) >>> 63));
            long m2008getsVKNKU78 = ULongArray.m2008getsVKNKU(m2003constructorimpl3, 0);
            ULongArray.m2013setk8EXiF4(m2003constructorimpl3, 0, ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU74 + m2008getsVKNKU76) + ULongArray.m2008getsVKNKU(m2003constructorimpl3, 1)));
            ULongArray.m2013setk8EXiF4(m2003constructorimpl3, 1, ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU74 | m2008getsVKNKU76) & ULong.m1997constructorimpl(~ULongArray.m2008getsVKNKU(m2003constructorimpl3, 0))) | ULong.m1997constructorimpl(m2008getsVKNKU74 & m2008getsVKNKU76)) >>> 63));
            long m2008getsVKNKU79 = ULongArray.m2008getsVKNKU(m2003constructorimpl3, 0);
            ULongArray.m2013setk8EXiF4(m2003constructorimpl3, 0, m2008getsVKNKU78);
            ULongArray.m2013setk8EXiF4(m2003constructorimpl3, 1, m2008getsVKNKU79);
            long m2008getsVKNKU80 = ULongArray.m2008getsVKNKU(m2003constructorimpl3, 1);
            long m2008getsVKNKU81 = ULongArray.m2008getsVKNKU(m2003constructorimpl3, 0);
            long[] m1895mul64h0OkrE15 = MathKt.m1895mul64h0OkrE(m1997constructorimpl4, m2008getsVKNKU9, m2003constructorimpl3);
            long m2008getsVKNKU82 = ULongArray.m2008getsVKNKU(m1895mul64h0OkrE15, 0);
            long m2008getsVKNKU83 = ULongArray.m2008getsVKNKU(m1895mul64h0OkrE15, 1);
            ULongArray.m2013setk8EXiF4(m2003constructorimpl3, 0, ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU81 + m2008getsVKNKU83) + 0));
            ULongArray.m2013setk8EXiF4(m2003constructorimpl3, 1, ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU81 | m2008getsVKNKU83) & ULong.m1997constructorimpl(~ULongArray.m2008getsVKNKU(m2003constructorimpl3, 0))) | ULong.m1997constructorimpl(m2008getsVKNKU81 & m2008getsVKNKU83)) >>> 63));
            long m2008getsVKNKU84 = ULongArray.m2008getsVKNKU(m2003constructorimpl3, 0);
            ULongArray.m2013setk8EXiF4(m2003constructorimpl3, 0, ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU80 + m2008getsVKNKU82) + ULongArray.m2008getsVKNKU(m2003constructorimpl3, 1)));
            ULongArray.m2013setk8EXiF4(m2003constructorimpl3, 1, ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU80 | m2008getsVKNKU82) & ULong.m1997constructorimpl(~ULongArray.m2008getsVKNKU(m2003constructorimpl3, 0))) | ULong.m1997constructorimpl(m2008getsVKNKU80 & m2008getsVKNKU82)) >>> 63));
            long m2008getsVKNKU85 = ULongArray.m2008getsVKNKU(m2003constructorimpl3, 0);
            ULongArray.m2013setk8EXiF4(m2003constructorimpl3, 0, m2008getsVKNKU84);
            ULongArray.m2013setk8EXiF4(m2003constructorimpl3, 1, m2008getsVKNKU85);
            long[] m2003constructorimpl4 = ULongArray.m2003constructorimpl(2);
            long[] m1895mul64h0OkrE16 = MathKt.m1895mul64h0OkrE(m2008getsVKNKU, m2008getsVKNKU9, m2003constructorimpl4);
            long m2008getsVKNKU86 = ULongArray.m2008getsVKNKU(m1895mul64h0OkrE16, 0);
            ULongArray.m2013setk8EXiF4(m2003constructorimpl4, 0, ULongArray.m2008getsVKNKU(m1895mul64h0OkrE16, 1));
            ULongArray.m2013setk8EXiF4(m2003constructorimpl4, 1, m2008getsVKNKU86);
            long m2008getsVKNKU87 = ULongArray.m2008getsVKNKU(m2003constructorimpl4, 1);
            long m2008getsVKNKU88 = ULongArray.m2008getsVKNKU(m2003constructorimpl4, 0);
            long[] m1895mul64h0OkrE17 = MathKt.m1895mul64h0OkrE(m2008getsVKNKU2, m2008getsVKNKU8, m2003constructorimpl4);
            long m2008getsVKNKU89 = ULongArray.m2008getsVKNKU(m1895mul64h0OkrE17, 0);
            long m2008getsVKNKU90 = ULongArray.m2008getsVKNKU(m1895mul64h0OkrE17, 1);
            ULongArray.m2013setk8EXiF4(m2003constructorimpl4, 0, ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU88 + m2008getsVKNKU90) + 0));
            ULongArray.m2013setk8EXiF4(m2003constructorimpl4, 1, ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU88 & m2008getsVKNKU90) | ULong.m1997constructorimpl(ULong.m1997constructorimpl(~ULongArray.m2008getsVKNKU(m2003constructorimpl4, 0)) & ULong.m1997constructorimpl(m2008getsVKNKU88 | m2008getsVKNKU90))) >>> 63));
            long m2008getsVKNKU91 = ULongArray.m2008getsVKNKU(m2003constructorimpl4, 0);
            ULongArray.m2013setk8EXiF4(m2003constructorimpl4, 0, ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU87 + m2008getsVKNKU89) + ULongArray.m2008getsVKNKU(m2003constructorimpl4, 1)));
            ULongArray.m2013setk8EXiF4(m2003constructorimpl4, 1, ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU87 | m2008getsVKNKU89) & ULong.m1997constructorimpl(~ULongArray.m2008getsVKNKU(m2003constructorimpl4, 0))) | ULong.m1997constructorimpl(m2008getsVKNKU87 & m2008getsVKNKU89)) >>> 63));
            long m2008getsVKNKU92 = ULongArray.m2008getsVKNKU(m2003constructorimpl4, 0);
            ULongArray.m2013setk8EXiF4(m2003constructorimpl4, 0, m2008getsVKNKU91);
            ULongArray.m2013setk8EXiF4(m2003constructorimpl4, 1, m2008getsVKNKU92);
            long m2008getsVKNKU93 = ULongArray.m2008getsVKNKU(m2003constructorimpl4, 1);
            long m2008getsVKNKU94 = ULongArray.m2008getsVKNKU(m2003constructorimpl4, 0);
            long[] m1895mul64h0OkrE18 = MathKt.m1895mul64h0OkrE(m2008getsVKNKU3, m2008getsVKNKU7, m2003constructorimpl4);
            long m2008getsVKNKU95 = ULongArray.m2008getsVKNKU(m1895mul64h0OkrE18, 0);
            long m2008getsVKNKU96 = ULongArray.m2008getsVKNKU(m1895mul64h0OkrE18, 1);
            ULongArray.m2013setk8EXiF4(m2003constructorimpl4, 0, ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU94 + m2008getsVKNKU96) + 0));
            ULongArray.m2013setk8EXiF4(m2003constructorimpl4, 1, ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU94 | m2008getsVKNKU96) & ULong.m1997constructorimpl(~ULongArray.m2008getsVKNKU(m2003constructorimpl4, 0))) | ULong.m1997constructorimpl(m2008getsVKNKU94 & m2008getsVKNKU96)) >>> 63));
            long m2008getsVKNKU97 = ULongArray.m2008getsVKNKU(m2003constructorimpl4, 0);
            ULongArray.m2013setk8EXiF4(m2003constructorimpl4, 0, ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU93 + m2008getsVKNKU95) + ULongArray.m2008getsVKNKU(m2003constructorimpl4, 1)));
            ULongArray.m2013setk8EXiF4(m2003constructorimpl4, 1, ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU93 | m2008getsVKNKU95) & ULong.m1997constructorimpl(~ULongArray.m2008getsVKNKU(m2003constructorimpl4, 0))) | ULong.m1997constructorimpl(m2008getsVKNKU93 & m2008getsVKNKU95)) >>> 63));
            long m2008getsVKNKU98 = ULongArray.m2008getsVKNKU(m2003constructorimpl4, 0);
            ULongArray.m2013setk8EXiF4(m2003constructorimpl4, 0, m2008getsVKNKU97);
            ULongArray.m2013setk8EXiF4(m2003constructorimpl4, 1, m2008getsVKNKU98);
            long m2008getsVKNKU99 = ULongArray.m2008getsVKNKU(m2003constructorimpl4, 1);
            long m2008getsVKNKU100 = ULongArray.m2008getsVKNKU(m2003constructorimpl4, 0);
            long[] m1895mul64h0OkrE19 = MathKt.m1895mul64h0OkrE(m2008getsVKNKU4, m2008getsVKNKU6, m2003constructorimpl4);
            long m2008getsVKNKU101 = ULongArray.m2008getsVKNKU(m1895mul64h0OkrE19, 0);
            long m2008getsVKNKU102 = ULongArray.m2008getsVKNKU(m1895mul64h0OkrE19, 1);
            ULongArray.m2013setk8EXiF4(m2003constructorimpl4, 0, ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU100 + m2008getsVKNKU102) + 0));
            ULongArray.m2013setk8EXiF4(m2003constructorimpl4, 1, ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU100 | m2008getsVKNKU102) & ULong.m1997constructorimpl(~ULongArray.m2008getsVKNKU(m2003constructorimpl4, 0))) | ULong.m1997constructorimpl(m2008getsVKNKU100 & m2008getsVKNKU102)) >>> 63));
            long m2008getsVKNKU103 = ULongArray.m2008getsVKNKU(m2003constructorimpl4, 0);
            ULongArray.m2013setk8EXiF4(m2003constructorimpl4, 0, ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU99 + m2008getsVKNKU101) + ULongArray.m2008getsVKNKU(m2003constructorimpl4, 1)));
            ULongArray.m2013setk8EXiF4(m2003constructorimpl4, 1, ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU99 | m2008getsVKNKU101) & ULong.m1997constructorimpl(~ULongArray.m2008getsVKNKU(m2003constructorimpl4, 0))) | ULong.m1997constructorimpl(m2008getsVKNKU99 & m2008getsVKNKU101)) >>> 63));
            long m2008getsVKNKU104 = ULongArray.m2008getsVKNKU(m2003constructorimpl4, 0);
            ULongArray.m2013setk8EXiF4(m2003constructorimpl4, 0, m2008getsVKNKU103);
            ULongArray.m2013setk8EXiF4(m2003constructorimpl4, 1, m2008getsVKNKU104);
            long m2008getsVKNKU105 = ULongArray.m2008getsVKNKU(m2003constructorimpl4, 1);
            long m2008getsVKNKU106 = ULongArray.m2008getsVKNKU(m2003constructorimpl4, 0);
            long[] m1895mul64h0OkrE20 = MathKt.m1895mul64h0OkrE(m1997constructorimpl4, m2008getsVKNKU10, m2003constructorimpl4);
            long m2008getsVKNKU107 = ULongArray.m2008getsVKNKU(m1895mul64h0OkrE20, 0);
            long m2008getsVKNKU108 = ULongArray.m2008getsVKNKU(m1895mul64h0OkrE20, 1);
            ULongArray.m2013setk8EXiF4(m2003constructorimpl4, 0, ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU106 + m2008getsVKNKU108) + 0));
            ULongArray.m2013setk8EXiF4(m2003constructorimpl4, 1, ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU106 | m2008getsVKNKU108) & ULong.m1997constructorimpl(~ULongArray.m2008getsVKNKU(m2003constructorimpl4, 0))) | ULong.m1997constructorimpl(m2008getsVKNKU106 & m2008getsVKNKU108)) >>> 63));
            long m2008getsVKNKU109 = ULongArray.m2008getsVKNKU(m2003constructorimpl4, 0);
            ULongArray.m2013setk8EXiF4(m2003constructorimpl4, 0, ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU105 + m2008getsVKNKU107) + ULongArray.m2008getsVKNKU(m2003constructorimpl4, 1)));
            ULongArray.m2013setk8EXiF4(m2003constructorimpl4, 1, ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU105 | m2008getsVKNKU107) & ULong.m1997constructorimpl(~ULongArray.m2008getsVKNKU(m2003constructorimpl4, 0))) | ULong.m1997constructorimpl(m2008getsVKNKU105 & m2008getsVKNKU107)) >>> 63));
            long m2008getsVKNKU110 = ULongArray.m2008getsVKNKU(m2003constructorimpl4, 0);
            ULongArray.m2013setk8EXiF4(m2003constructorimpl4, 0, m2008getsVKNKU109);
            ULongArray.m2013setk8EXiF4(m2003constructorimpl4, 1, m2008getsVKNKU110);
            long[] m2003constructorimpl5 = ULongArray.m2003constructorimpl(2);
            long[] m1895mul64h0OkrE21 = MathKt.m1895mul64h0OkrE(m2008getsVKNKU, m2008getsVKNKU10, m2003constructorimpl5);
            long m2008getsVKNKU111 = ULongArray.m2008getsVKNKU(m1895mul64h0OkrE21, 0);
            ULongArray.m2013setk8EXiF4(m2003constructorimpl5, 0, ULongArray.m2008getsVKNKU(m1895mul64h0OkrE21, 1));
            ULongArray.m2013setk8EXiF4(m2003constructorimpl5, 1, m2008getsVKNKU111);
            long m2008getsVKNKU112 = ULongArray.m2008getsVKNKU(m2003constructorimpl5, 1);
            long m2008getsVKNKU113 = ULongArray.m2008getsVKNKU(m2003constructorimpl5, 0);
            long[] m1895mul64h0OkrE22 = MathKt.m1895mul64h0OkrE(m2008getsVKNKU2, m2008getsVKNKU9, m2003constructorimpl5);
            long m2008getsVKNKU114 = ULongArray.m2008getsVKNKU(m1895mul64h0OkrE22, 0);
            long m2008getsVKNKU115 = ULongArray.m2008getsVKNKU(m1895mul64h0OkrE22, 1);
            ULongArray.m2013setk8EXiF4(m2003constructorimpl5, 0, ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU113 + m2008getsVKNKU115) + 0));
            ULongArray.m2013setk8EXiF4(m2003constructorimpl5, 1, ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU113 & m2008getsVKNKU115) | ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU113 | m2008getsVKNKU115) & ULong.m1997constructorimpl(~ULongArray.m2008getsVKNKU(m2003constructorimpl5, 0)))) >>> 63));
            long m2008getsVKNKU116 = ULongArray.m2008getsVKNKU(m2003constructorimpl5, 0);
            ULongArray.m2013setk8EXiF4(m2003constructorimpl5, 0, ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU112 + m2008getsVKNKU114) + ULongArray.m2008getsVKNKU(m2003constructorimpl5, 1)));
            ULongArray.m2013setk8EXiF4(m2003constructorimpl5, 1, ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU112 | m2008getsVKNKU114) & ULong.m1997constructorimpl(~ULongArray.m2008getsVKNKU(m2003constructorimpl5, 0))) | ULong.m1997constructorimpl(m2008getsVKNKU112 & m2008getsVKNKU114)) >>> 63));
            long m2008getsVKNKU117 = ULongArray.m2008getsVKNKU(m2003constructorimpl5, 0);
            ULongArray.m2013setk8EXiF4(m2003constructorimpl5, 0, m2008getsVKNKU116);
            ULongArray.m2013setk8EXiF4(m2003constructorimpl5, 1, m2008getsVKNKU117);
            long m2008getsVKNKU118 = ULongArray.m2008getsVKNKU(m2003constructorimpl5, 1);
            long m2008getsVKNKU119 = ULongArray.m2008getsVKNKU(m2003constructorimpl5, 0);
            long[] m1895mul64h0OkrE23 = MathKt.m1895mul64h0OkrE(m2008getsVKNKU3, m2008getsVKNKU8, m2003constructorimpl5);
            long m2008getsVKNKU120 = ULongArray.m2008getsVKNKU(m1895mul64h0OkrE23, 0);
            long m2008getsVKNKU121 = ULongArray.m2008getsVKNKU(m1895mul64h0OkrE23, 1);
            ULongArray.m2013setk8EXiF4(m2003constructorimpl5, 0, ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU119 + m2008getsVKNKU121) + 0));
            ULongArray.m2013setk8EXiF4(m2003constructorimpl5, 1, ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU119 | m2008getsVKNKU121) & ULong.m1997constructorimpl(~ULongArray.m2008getsVKNKU(m2003constructorimpl5, 0))) | ULong.m1997constructorimpl(m2008getsVKNKU119 & m2008getsVKNKU121)) >>> 63));
            long m2008getsVKNKU122 = ULongArray.m2008getsVKNKU(m2003constructorimpl5, 0);
            ULongArray.m2013setk8EXiF4(m2003constructorimpl5, 0, ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU118 + m2008getsVKNKU120) + ULongArray.m2008getsVKNKU(m2003constructorimpl5, 1)));
            ULongArray.m2013setk8EXiF4(m2003constructorimpl5, 1, ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU118 | m2008getsVKNKU120) & ULong.m1997constructorimpl(~ULongArray.m2008getsVKNKU(m2003constructorimpl5, 0))) | ULong.m1997constructorimpl(m2008getsVKNKU118 & m2008getsVKNKU120)) >>> 63));
            long m2008getsVKNKU123 = ULongArray.m2008getsVKNKU(m2003constructorimpl5, 0);
            ULongArray.m2013setk8EXiF4(m2003constructorimpl5, 0, m2008getsVKNKU122);
            ULongArray.m2013setk8EXiF4(m2003constructorimpl5, 1, m2008getsVKNKU123);
            long m2008getsVKNKU124 = ULongArray.m2008getsVKNKU(m2003constructorimpl5, 1);
            long m2008getsVKNKU125 = ULongArray.m2008getsVKNKU(m2003constructorimpl5, 0);
            long[] m1895mul64h0OkrE24 = MathKt.m1895mul64h0OkrE(m2008getsVKNKU4, m2008getsVKNKU7, m2003constructorimpl5);
            long m2008getsVKNKU126 = ULongArray.m2008getsVKNKU(m1895mul64h0OkrE24, 0);
            long m2008getsVKNKU127 = ULongArray.m2008getsVKNKU(m1895mul64h0OkrE24, 1);
            ULongArray.m2013setk8EXiF4(m2003constructorimpl5, 0, ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU125 + m2008getsVKNKU127) + 0));
            ULongArray.m2013setk8EXiF4(m2003constructorimpl5, 1, ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU125 | m2008getsVKNKU127) & ULong.m1997constructorimpl(~ULongArray.m2008getsVKNKU(m2003constructorimpl5, 0))) | ULong.m1997constructorimpl(m2008getsVKNKU125 & m2008getsVKNKU127)) >>> 63));
            long m2008getsVKNKU128 = ULongArray.m2008getsVKNKU(m2003constructorimpl5, 0);
            ULongArray.m2013setk8EXiF4(m2003constructorimpl5, 0, ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU124 + m2008getsVKNKU126) + ULongArray.m2008getsVKNKU(m2003constructorimpl5, 1)));
            ULongArray.m2013setk8EXiF4(m2003constructorimpl5, 1, ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU124 | m2008getsVKNKU126) & ULong.m1997constructorimpl(~ULongArray.m2008getsVKNKU(m2003constructorimpl5, 0))) | ULong.m1997constructorimpl(m2008getsVKNKU124 & m2008getsVKNKU126)) >>> 63));
            long m2008getsVKNKU129 = ULongArray.m2008getsVKNKU(m2003constructorimpl5, 0);
            ULongArray.m2013setk8EXiF4(m2003constructorimpl5, 0, m2008getsVKNKU128);
            ULongArray.m2013setk8EXiF4(m2003constructorimpl5, 1, m2008getsVKNKU129);
            long m2008getsVKNKU130 = ULongArray.m2008getsVKNKU(m2003constructorimpl5, 1);
            long m2008getsVKNKU131 = ULongArray.m2008getsVKNKU(m2003constructorimpl5, 0);
            long[] m1895mul64h0OkrE25 = MathKt.m1895mul64h0OkrE(m2008getsVKNKU5, m2008getsVKNKU6, m2003constructorimpl5);
            long m2008getsVKNKU132 = ULongArray.m2008getsVKNKU(m1895mul64h0OkrE25, 0);
            long m2008getsVKNKU133 = ULongArray.m2008getsVKNKU(m1895mul64h0OkrE25, 1);
            ULongArray.m2013setk8EXiF4(m2003constructorimpl5, 0, ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU131 + m2008getsVKNKU133) + 0));
            ULongArray.m2013setk8EXiF4(m2003constructorimpl5, 1, ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU131 | m2008getsVKNKU133) & ULong.m1997constructorimpl(~ULongArray.m2008getsVKNKU(m2003constructorimpl5, 0))) | ULong.m1997constructorimpl(m2008getsVKNKU131 & m2008getsVKNKU133)) >>> 63));
            long m2008getsVKNKU134 = ULongArray.m2008getsVKNKU(m2003constructorimpl5, 0);
            ULongArray.m2013setk8EXiF4(m2003constructorimpl5, 0, ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU130 + m2008getsVKNKU132) + ULongArray.m2008getsVKNKU(m2003constructorimpl5, 1)));
            ULongArray.m2013setk8EXiF4(m2003constructorimpl5, 1, ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU130 | m2008getsVKNKU132) & ULong.m1997constructorimpl(~ULongArray.m2008getsVKNKU(m2003constructorimpl5, 0))) | ULong.m1997constructorimpl(m2008getsVKNKU130 & m2008getsVKNKU132)) >>> 63));
            long m2008getsVKNKU135 = ULongArray.m2008getsVKNKU(m2003constructorimpl5, 0);
            ULongArray.m2013setk8EXiF4(m2003constructorimpl5, 0, m2008getsVKNKU134);
            ULongArray.m2013setk8EXiF4(m2003constructorimpl5, 1, m2008getsVKNKU135);
            long m1997constructorimpl5 = ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULongArray.m2008getsVKNKU(m2003constructorimpl, 1) << 13) | ULong.m1997constructorimpl(ULongArray.m2008getsVKNKU(m2003constructorimpl, 0) >>> 51));
            long m1997constructorimpl6 = ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULongArray.m2008getsVKNKU(m2003constructorimpl2, 1) << 13) | ULong.m1997constructorimpl(ULongArray.m2008getsVKNKU(m2003constructorimpl2, 0) >>> 51));
            long m1997constructorimpl7 = ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULongArray.m2008getsVKNKU(m2003constructorimpl3, 1) << 13) | ULong.m1997constructorimpl(ULongArray.m2008getsVKNKU(m2003constructorimpl3, 0) >>> 51));
            long m1997constructorimpl8 = ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULongArray.m2008getsVKNKU(m2003constructorimpl4, 1) << 13) | ULong.m1997constructorimpl(ULongArray.m2008getsVKNKU(m2003constructorimpl4, 0) >>> 51));
            ULongArray.m2013setk8EXiF4(m1891getInnerY2RjT0g, 0, ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULongArray.m2008getsVKNKU(m2003constructorimpl, 0) & ConstantsKt.getLOW_51_BIT_NASK()) + ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULongArray.m2008getsVKNKU(m2003constructorimpl5, 1) << 13) | ULong.m1997constructorimpl(ULongArray.m2008getsVKNKU(m2003constructorimpl5, 0) >>> 51)) * 19)));
            ULongArray.m2013setk8EXiF4(m1891getInnerY2RjT0g, 1, ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULongArray.m2008getsVKNKU(m2003constructorimpl2, 0) & ConstantsKt.getLOW_51_BIT_NASK()) + m1997constructorimpl5));
            ULongArray.m2013setk8EXiF4(m1891getInnerY2RjT0g, 2, ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULongArray.m2008getsVKNKU(m2003constructorimpl3, 0) & ConstantsKt.getLOW_51_BIT_NASK()) + m1997constructorimpl6));
            ULongArray.m2013setk8EXiF4(m1891getInnerY2RjT0g, 3, ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULongArray.m2008getsVKNKU(m2003constructorimpl4, 0) & ConstantsKt.getLOW_51_BIT_NASK()) + m1997constructorimpl7));
            ULongArray.m2013setk8EXiF4(m1891getInnerY2RjT0g, 4, ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULongArray.m2008getsVKNKU(m2003constructorimpl5, 0) & ConstantsKt.getLOW_51_BIT_NASK()) + m1997constructorimpl8));
            long m1997constructorimpl9 = ULong.m1997constructorimpl(ULongArray.m2008getsVKNKU(m1891getInnerY2RjT0g, 0) >>> 51);
            long m1997constructorimpl10 = ULong.m1997constructorimpl(ULongArray.m2008getsVKNKU(m1891getInnerY2RjT0g, 1) >>> 51);
            long m1997constructorimpl11 = ULong.m1997constructorimpl(ULongArray.m2008getsVKNKU(m1891getInnerY2RjT0g, 2) >>> 51);
            long m1997constructorimpl12 = ULong.m1997constructorimpl(ULongArray.m2008getsVKNKU(m1891getInnerY2RjT0g, 3) >>> 51);
            ULongArray.m2013setk8EXiF4(m1891getInnerY2RjT0g, 0, ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULongArray.m2008getsVKNKU(m1891getInnerY2RjT0g, 0) & ConstantsKt.getLOW_51_BIT_NASK()) + ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULongArray.m2008getsVKNKU(m1891getInnerY2RjT0g, 4) >>> 51) * ULong.m1997constructorimpl(j))));
            ULongArray.m2013setk8EXiF4(m1891getInnerY2RjT0g, 1, ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULongArray.m2008getsVKNKU(m1891getInnerY2RjT0g, 1) & ConstantsKt.getLOW_51_BIT_NASK()) + m1997constructorimpl9));
            ULongArray.m2013setk8EXiF4(m1891getInnerY2RjT0g, 2, ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULongArray.m2008getsVKNKU(m1891getInnerY2RjT0g, 2) & ConstantsKt.getLOW_51_BIT_NASK()) + m1997constructorimpl10));
            ULongArray.m2013setk8EXiF4(m1891getInnerY2RjT0g, 3, ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULongArray.m2008getsVKNKU(m1891getInnerY2RjT0g, 3) & ConstantsKt.getLOW_51_BIT_NASK()) + m1997constructorimpl11));
            ULongArray.m2013setk8EXiF4(m1891getInnerY2RjT0g, 4, ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULongArray.m2008getsVKNKU(m1891getInnerY2RjT0g, 4) & ConstantsKt.getLOW_51_BIT_NASK()) + m1997constructorimpl12));
            return output;
        }

        public static /* synthetic */ FieldElement square2$default(Companion companion, FieldElement fieldElement, FieldElement fieldElement2, int i, Object obj) {
            if ((i & 2) != 0) {
                fieldElement2 = new FieldElement(null, 1, null);
            }
            return companion.square2(fieldElement, fieldElement2);
        }

        public final FieldElement square2(FieldElement t, FieldElement output) {
            Intrinsics.checkNotNullParameter(t, "t");
            Intrinsics.checkNotNullParameter(output, "output");
            FieldCommonKt.m1894fePow2kHXTcExc(output.m1891getInnerY2RjT0g(), t.m1891getInnerY2RjT0g(), 1);
            for (int i = 0; i < 5; i++) {
                long[] m1891getInnerY2RjT0g = output.m1891getInnerY2RjT0g();
                ULongArray.m2013setk8EXiF4(m1891getInnerY2RjT0g, i, ULong.m1997constructorimpl(ULongArray.m2008getsVKNKU(m1891getInnerY2RjT0g, i) * 2));
            }
            return output;
        }

        public final FieldElement mul121666(FieldElement t, FieldElement output) {
            long j;
            long j2;
            long j3;
            long j4;
            long j5;
            long j6;
            Intrinsics.checkNotNullParameter(t, "t");
            Intrinsics.checkNotNullParameter(output, "output");
            long[] m1896mul64h0OkrE$default = MathKt.m1896mul64h0OkrE$default(ULongArray.m2008getsVKNKU(t.m1891getInnerY2RjT0g(), 0), 121666L, null, 4, null);
            long[] m1896mul64h0OkrE$default2 = MathKt.m1896mul64h0OkrE$default(ULongArray.m2008getsVKNKU(t.m1891getInnerY2RjT0g(), 1), 121666L, null, 4, null);
            long[] m1896mul64h0OkrE$default3 = MathKt.m1896mul64h0OkrE$default(ULongArray.m2008getsVKNKU(t.m1891getInnerY2RjT0g(), 2), 121666L, null, 4, null);
            long[] m1896mul64h0OkrE$default4 = MathKt.m1896mul64h0OkrE$default(ULongArray.m2008getsVKNKU(t.m1891getInnerY2RjT0g(), 3), 121666L, null, 4, null);
            long[] m1896mul64h0OkrE$default5 = MathKt.m1896mul64h0OkrE$default(ULongArray.m2008getsVKNKU(t.m1891getInnerY2RjT0g(), 4), 121666L, null, 4, null);
            long m1997constructorimpl = ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULongArray.m2008getsVKNKU(m1896mul64h0OkrE$default, 0) << 13) | ULong.m1997constructorimpl(ULongArray.m2008getsVKNKU(m1896mul64h0OkrE$default, 1) >>> 51));
            long m2008getsVKNKU = ULongArray.m2008getsVKNKU(m1896mul64h0OkrE$default2, 1);
            long[] m2003constructorimpl = ULongArray.m2003constructorimpl(2);
            ULongArray.m2013setk8EXiF4(m2003constructorimpl, 0, ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU + m1997constructorimpl) + 0));
            ULongArray.m2013setk8EXiF4(m2003constructorimpl, 1, ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU & m1997constructorimpl) | ULong.m1997constructorimpl(ULong.m1997constructorimpl(m1997constructorimpl | m2008getsVKNKU) & ULong.m1997constructorimpl(~ULongArray.m2008getsVKNKU(m2003constructorimpl, 0)))) >>> 63));
            long m2008getsVKNKU2 = ULongArray.m2008getsVKNKU(m2003constructorimpl, 0);
            long m2008getsVKNKU3 = ULongArray.m2008getsVKNKU(m2003constructorimpl, 1);
            long m2008getsVKNKU4 = ULongArray.m2008getsVKNKU(m1896mul64h0OkrE$default2, 0);
            long[] m2003constructorimpl2 = ULongArray.m2003constructorimpl(2);
            ULongArray.m2013setk8EXiF4(m2003constructorimpl2, 0, ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU4 + 0) + m2008getsVKNKU3));
            ULongArray.m2013setk8EXiF4(m2003constructorimpl2, 1, ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU4 | 0) & ULong.m1997constructorimpl(~ULongArray.m2008getsVKNKU(m2003constructorimpl2, 0))) | ULong.m1997constructorimpl(m2008getsVKNKU4 & 0)) >>> 63));
            ULongArray.m2013setk8EXiF4(m1896mul64h0OkrE$default2, 0, ULongArray.m2008getsVKNKU(m2003constructorimpl2, 0));
            ULongArray.m2013setk8EXiF4(m1896mul64h0OkrE$default2, 1, m2008getsVKNKU2);
            long m2008getsVKNKU5 = ULongArray.m2008getsVKNKU(m1896mul64h0OkrE$default, 1);
            j = FieldElementKt.LOW_51_BIT_MASK;
            long m1997constructorimpl2 = ULong.m1997constructorimpl(m2008getsVKNKU5 & j);
            long m1997constructorimpl3 = ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULongArray.m2008getsVKNKU(m1896mul64h0OkrE$default2, 0) << 13) | ULong.m1997constructorimpl(ULongArray.m2008getsVKNKU(m1896mul64h0OkrE$default2, 1) >>> 51));
            long m2008getsVKNKU6 = ULongArray.m2008getsVKNKU(m1896mul64h0OkrE$default3, 1);
            long[] m2003constructorimpl3 = ULongArray.m2003constructorimpl(2);
            ULongArray.m2013setk8EXiF4(m2003constructorimpl3, 0, ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU6 + m1997constructorimpl3) + 0));
            ULongArray.m2013setk8EXiF4(m2003constructorimpl3, 1, ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU6 & m1997constructorimpl3) | ULong.m1997constructorimpl(ULong.m1997constructorimpl(m1997constructorimpl3 | m2008getsVKNKU6) & ULong.m1997constructorimpl(~ULongArray.m2008getsVKNKU(m2003constructorimpl3, 0)))) >>> 63));
            long m2008getsVKNKU7 = ULongArray.m2008getsVKNKU(m2003constructorimpl3, 0);
            long m2008getsVKNKU8 = ULongArray.m2008getsVKNKU(m2003constructorimpl3, 1);
            long m2008getsVKNKU9 = ULongArray.m2008getsVKNKU(m1896mul64h0OkrE$default3, 0);
            long[] m2003constructorimpl4 = ULongArray.m2003constructorimpl(2);
            ULongArray.m2013setk8EXiF4(m2003constructorimpl4, 0, ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU9 + 0) + m2008getsVKNKU8));
            ULongArray.m2013setk8EXiF4(m2003constructorimpl4, 1, ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU9 & 0) | ULong.m1997constructorimpl(ULong.m1997constructorimpl(~ULongArray.m2008getsVKNKU(m2003constructorimpl4, 0)) & ULong.m1997constructorimpl(m2008getsVKNKU9 | 0))) >>> 63));
            ULongArray.m2013setk8EXiF4(m1896mul64h0OkrE$default3, 0, ULongArray.m2008getsVKNKU(m2003constructorimpl4, 0));
            ULongArray.m2013setk8EXiF4(m1896mul64h0OkrE$default3, 1, m2008getsVKNKU7);
            long m2008getsVKNKU10 = ULongArray.m2008getsVKNKU(m1896mul64h0OkrE$default2, 1);
            j2 = FieldElementKt.LOW_51_BIT_MASK;
            long m1997constructorimpl4 = ULong.m1997constructorimpl(m2008getsVKNKU10 & j2);
            long m1997constructorimpl5 = ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULongArray.m2008getsVKNKU(m1896mul64h0OkrE$default3, 0) << 13) | ULong.m1997constructorimpl(ULongArray.m2008getsVKNKU(m1896mul64h0OkrE$default3, 1) >>> 51));
            long m2008getsVKNKU11 = ULongArray.m2008getsVKNKU(m1896mul64h0OkrE$default4, 1);
            long[] m2003constructorimpl5 = ULongArray.m2003constructorimpl(2);
            ULongArray.m2013setk8EXiF4(m2003constructorimpl5, 0, ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU11 + m1997constructorimpl5) + 0));
            ULongArray.m2013setk8EXiF4(m2003constructorimpl5, 1, ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU11 & m1997constructorimpl5) | ULong.m1997constructorimpl(ULong.m1997constructorimpl(m1997constructorimpl5 | m2008getsVKNKU11) & ULong.m1997constructorimpl(~ULongArray.m2008getsVKNKU(m2003constructorimpl5, 0)))) >>> 63));
            long m2008getsVKNKU12 = ULongArray.m2008getsVKNKU(m2003constructorimpl5, 0);
            long m2008getsVKNKU13 = ULongArray.m2008getsVKNKU(m2003constructorimpl5, 1);
            long m2008getsVKNKU14 = ULongArray.m2008getsVKNKU(m1896mul64h0OkrE$default4, 0);
            long[] m2003constructorimpl6 = ULongArray.m2003constructorimpl(2);
            ULongArray.m2013setk8EXiF4(m2003constructorimpl6, 0, ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU14 + 0) + m2008getsVKNKU13));
            ULongArray.m2013setk8EXiF4(m2003constructorimpl6, 1, ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU14 & 0) | ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU14 | 0) & ULong.m1997constructorimpl(~ULongArray.m2008getsVKNKU(m2003constructorimpl6, 0)))) >>> 63));
            ULongArray.m2013setk8EXiF4(m1896mul64h0OkrE$default4, 0, ULongArray.m2008getsVKNKU(m2003constructorimpl6, 0));
            ULongArray.m2013setk8EXiF4(m1896mul64h0OkrE$default4, 1, m2008getsVKNKU12);
            long[] m1891getInnerY2RjT0g = output.m1891getInnerY2RjT0g();
            long m2008getsVKNKU15 = ULongArray.m2008getsVKNKU(m1896mul64h0OkrE$default3, 1);
            j3 = FieldElementKt.LOW_51_BIT_MASK;
            ULongArray.m2013setk8EXiF4(m1891getInnerY2RjT0g, 2, ULong.m1997constructorimpl(m2008getsVKNKU15 & j3));
            long m1997constructorimpl6 = ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULongArray.m2008getsVKNKU(m1896mul64h0OkrE$default4, 0) << 13) | ULong.m1997constructorimpl(ULongArray.m2008getsVKNKU(m1896mul64h0OkrE$default4, 1) >>> 51));
            long m2008getsVKNKU16 = ULongArray.m2008getsVKNKU(m1896mul64h0OkrE$default5, 1);
            long[] m2003constructorimpl7 = ULongArray.m2003constructorimpl(2);
            ULongArray.m2013setk8EXiF4(m2003constructorimpl7, 0, ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU16 + m1997constructorimpl6) + 0));
            ULongArray.m2013setk8EXiF4(m2003constructorimpl7, 1, ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULong.m1997constructorimpl(m1997constructorimpl6 | m2008getsVKNKU16) & ULong.m1997constructorimpl(~ULongArray.m2008getsVKNKU(m2003constructorimpl7, 0))) | ULong.m1997constructorimpl(m2008getsVKNKU16 & m1997constructorimpl6)) >>> 63));
            long m2008getsVKNKU17 = ULongArray.m2008getsVKNKU(m2003constructorimpl7, 0);
            long m2008getsVKNKU18 = ULongArray.m2008getsVKNKU(m2003constructorimpl7, 1);
            long m2008getsVKNKU19 = ULongArray.m2008getsVKNKU(m1896mul64h0OkrE$default5, 0);
            long[] m2003constructorimpl8 = ULongArray.m2003constructorimpl(2);
            ULongArray.m2013setk8EXiF4(m2003constructorimpl8, 0, ULong.m1997constructorimpl(ULong.m1997constructorimpl(m2008getsVKNKU19 + 0) + m2008getsVKNKU18));
            ULongArray.m2013setk8EXiF4(m2003constructorimpl8, 1, ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULong.m1997constructorimpl(~ULongArray.m2008getsVKNKU(m2003constructorimpl8, 0)) & ULong.m1997constructorimpl(m2008getsVKNKU19 | 0)) | ULong.m1997constructorimpl(m2008getsVKNKU19 & 0)) >>> 63));
            ULongArray.m2013setk8EXiF4(m1896mul64h0OkrE$default5, 0, ULongArray.m2008getsVKNKU(m2003constructorimpl8, 0));
            ULongArray.m2013setk8EXiF4(m1896mul64h0OkrE$default5, 1, m2008getsVKNKU17);
            long[] m1891getInnerY2RjT0g2 = output.m1891getInnerY2RjT0g();
            long m2008getsVKNKU20 = ULongArray.m2008getsVKNKU(m1896mul64h0OkrE$default4, 1);
            j4 = FieldElementKt.LOW_51_BIT_MASK;
            ULongArray.m2013setk8EXiF4(m1891getInnerY2RjT0g2, 3, ULong.m1997constructorimpl(m2008getsVKNKU20 & j4));
            long m1997constructorimpl7 = ULong.m1997constructorimpl(ULong.m1997constructorimpl(ULongArray.m2008getsVKNKU(m1896mul64h0OkrE$default5, 0) << 13) | ULong.m1997constructorimpl(ULongArray.m2008getsVKNKU(m1896mul64h0OkrE$default5, 1) >>> 51));
            long[] m1891getInnerY2RjT0g3 = output.m1891getInnerY2RjT0g();
            long m2008getsVKNKU21 = ULongArray.m2008getsVKNKU(m1896mul64h0OkrE$default5, 1);
            j5 = FieldElementKt.LOW_51_BIT_MASK;
            ULongArray.m2013setk8EXiF4(m1891getInnerY2RjT0g3, 4, ULong.m1997constructorimpl(m2008getsVKNKU21 & j5));
            long m1997constructorimpl8 = ULong.m1997constructorimpl(m1997constructorimpl2 + ULong.m1997constructorimpl(m1997constructorimpl7 * ULong.m1997constructorimpl(19 & 4294967295L)));
            ULongArray.m2013setk8EXiF4(output.m1891getInnerY2RjT0g(), 1, ULong.m1997constructorimpl(m1997constructorimpl4 + ULong.m1997constructorimpl(m1997constructorimpl8 >>> 51)));
            long[] m1891getInnerY2RjT0g4 = output.m1891getInnerY2RjT0g();
            j6 = FieldElementKt.LOW_51_BIT_MASK;
            ULongArray.m2013setk8EXiF4(m1891getInnerY2RjT0g4, 0, ULong.m1997constructorimpl(m1997constructorimpl8 & j6));
            return output;
        }
    }
}
