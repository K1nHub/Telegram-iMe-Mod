package org.ton.cell;

import java.math.BigInteger;
import java.util.List;
import kotlin.ULong;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.internal.Intrinsics;
import org.ton.bigint.BigIntJvmKt;
import org.ton.bitstring.BitString;
import org.ton.bitstring.ByteBackedBitString;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CellSlice.kt */
/* loaded from: classes6.dex */
public final class CellSliceByteBackedBitString extends CellSliceImpl {
    private final ByteBackedBitString bits;

    @Override // org.ton.cell.CellSliceImpl, org.ton.cell.CellSlice
    public ByteBackedBitString getBits() {
        return this.bits;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CellSliceByteBackedBitString(ByteBackedBitString bits, List<? extends Cell> refs) {
        super(bits, refs, 0, 0, 12, null);
        Intrinsics.checkNotNullParameter(bits, "bits");
        Intrinsics.checkNotNullParameter(refs, "refs");
        this.bits = bits;
    }

    public final byte[] getData() {
        return getBits().getBytes();
    }

    public final byte getBits(int i, int i2) {
        int i3;
        int i4;
        int bitsPosition = getBitsPosition() + i;
        int i5 = bitsPosition / 8;
        int i6 = bitsPosition % 8;
        if (i6 == 0) {
            i3 = getData()[i5] & 255;
        } else {
            int i7 = 8 - i6;
            if (i2 <= i7) {
                i4 = ((getData()[i5] & 255) >> (i7 - i2)) & ((1 << i2) - 1);
                return (byte) i4;
            }
            int i8 = i5 < getData().length ? 0 | ((getData()[i5] & 255) << 8) : 0;
            if (i5 < getData().length - 1) {
                i8 |= getData()[i5 + 1] & 255;
            }
            i3 = (byte) (i8 >> i7);
        }
        i4 = i3 >> (8 - i2);
        return (byte) i4;
    }

    public final byte getByte(int i) {
        return getBits(i, 8);
    }

    /* renamed from: getLong-I7RO_PI  reason: not valid java name */
    public final long m5071getLongI7RO_PI(int i) {
        long j = 0;
        if (i == 0) {
            return 0L;
        }
        int i2 = i / 8;
        int i3 = i % 8;
        for (int i4 = 0; i4 < i2; i4++) {
            j = ULong.m1989constructorimpl(j | ULong.m1989constructorimpl(ULong.m1989constructorimpl(getByte(i4 * 8) & 255) << ((7 - i4) * 8)));
        }
        if (i3 != 0) {
            j = ULong.m1989constructorimpl(j | ULong.m1989constructorimpl(ULong.m1989constructorimpl(getBits(i2 * 8, i3) & 255) << (((7 - i2) * 8) + (8 - i3))));
        }
        return ULong.m1989constructorimpl(j >>> (64 - i));
    }

    @Override // org.ton.cell.CellSliceImpl, org.ton.cell.CellSlice
    public BitString preloadBits(int i) {
        int lastIndex;
        int i2 = i / 8;
        int i3 = i % 8;
        byte[] bArr = new byte[(i3 != 0 ? 1 : 0) + i2];
        if (getBitsPosition() % 8 == 0) {
            int bitsPosition = getBitsPosition() / 8;
            ArraysKt___ArraysJvmKt.copyInto$default(getData(), bArr, 0, bitsPosition, bitsPosition + i2, 2, (Object) null);
        } else {
            for (int i4 = 0; i4 < i2; i4++) {
                bArr[i4] = getByte(i4 * 8);
            }
        }
        if (i3 != 0) {
            int bits = getBits(i2 * 8, i3) << (8 - i3);
            lastIndex = ArraysKt___ArraysKt.getLastIndex(bArr);
            bArr[lastIndex] = (byte) bits;
        }
        return BitString.Companion.m43of(bArr, i);
    }

    @Override // org.ton.cell.CellSliceImpl
    public BigInteger preloadUInt(int i) {
        int compare;
        String m29m;
        if (i == 0) {
            return BigIntJvmKt.toBigInt(0);
        }
        if (i > 64) {
            return super.preloadUInt(i);
        }
        if (i == 8) {
            return BigIntJvmKt.toBigInt(getByte(0) & 255);
        }
        long m5071getLongI7RO_PI = m5071getLongI7RO_PI(i);
        compare = Long.compare(m5071getLongI7RO_PI ^ Long.MIN_VALUE, ULong.m1989constructorimpl(Long.MAX_VALUE) ^ Long.MIN_VALUE);
        if (compare > 0) {
            m29m = CellSliceByteBackedBitString$$ExternalSyntheticBackport1.m29m(m5071getLongI7RO_PI, 10);
            return new BigInteger(m29m, 10);
        }
        return BigIntJvmKt.toBigInt(m5071getLongI7RO_PI);
    }

    @Override // org.ton.cell.CellSliceImpl, org.ton.cell.CellSlice
    public BigInteger preloadInt(int i) {
        if (i == 0) {
            return BigIntJvmKt.toBigInt(0);
        }
        if (i > 64) {
            return super.preloadInt(i);
        }
        long m5071getLongI7RO_PI = m5071getLongI7RO_PI(i);
        long j = 1 << (i - 1);
        if (m5071getLongI7RO_PI >= j) {
            return BigIntJvmKt.toBigInt(m5071getLongI7RO_PI - (j * 2));
        }
        return BigIntJvmKt.toBigInt(m5071getLongI7RO_PI);
    }

    @Override // org.ton.cell.CellSliceImpl
    public long preloadTinyInt(int i) {
        if (i == 0) {
            return 0L;
        }
        if (i <= 64) {
            long m5071getLongI7RO_PI = m5071getLongI7RO_PI(i);
            long j = 1 << (i - 1);
            return m5071getLongI7RO_PI >= j ? m5071getLongI7RO_PI - (j * 2) : m5071getLongI7RO_PI;
        }
        throw new IllegalArgumentException("expected length in 0..64, actual: " + i);
    }
}
