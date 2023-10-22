package org.ton.bitstring;

import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.ton.bitstring.ByteBackedBitString;
/* compiled from: ByteBackedMutableBitString.kt */
/* loaded from: classes6.dex */
public class ByteBackedMutableBitString extends ByteBackedBitString implements MutableBitString {
    public static final Companion Companion = new Companion(null);
    private byte[] bytes;
    private int size;

    protected static final boolean set(byte[] bArr, int i, boolean z) {
        return Companion.set(bArr, i, z);
    }

    @Override // org.ton.bitstring.MutableBitString
    public /* bridge */ /* synthetic */ MutableBitString plus(Iterable iterable) {
        return plus((Iterable<Boolean>) iterable);
    }

    @Override // org.ton.bitstring.ByteBackedBitString
    public byte[] getBytes() {
        return this.bytes;
    }

    public void setBytes(byte[] bArr) {
        Intrinsics.checkNotNullParameter(bArr, "<set-?>");
        this.bytes = bArr;
    }

    @Override // org.ton.bitstring.ByteBackedBitString, org.ton.bitstring.BitString
    public int getSize() {
        return this.size;
    }

    public void setSize(int i) {
        this.size = i;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ByteBackedMutableBitString(byte[] bytes, int i) {
        super(i, bytes);
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        this.bytes = bytes;
        this.size = i;
    }

    public boolean set(int i, boolean z) {
        byte[] expandByteArray = ByteBackedBitString.expandByteArray(getBytes(), i + 1);
        boolean z2 = set(expandByteArray, i, z);
        setBytes(expandByteArray);
        return z2;
    }

    @Override // org.ton.bitstring.MutableBitString
    public ByteBackedMutableBitString plus(boolean[] bits) {
        Iterable<Boolean> asIterable;
        Intrinsics.checkNotNullParameter(bits, "bits");
        asIterable = ArraysKt___ArraysKt.asIterable(bits);
        return plus(asIterable);
    }

    @Override // org.ton.bitstring.MutableBitString
    public ByteBackedMutableBitString plus(byte[] bytes) {
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        return plus(bytes, bytes.length * 8);
    }

    @Override // org.ton.bitstring.MutableBitString
    public ByteBackedMutableBitString plus(Iterable<Boolean> bits) {
        List list;
        Intrinsics.checkNotNullParameter(bits, "bits");
        list = CollectionsKt___CollectionsKt.toList(bits);
        return plus((Collection<Boolean>) list);
    }

    public ByteBackedMutableBitString plus(Collection<Boolean> bits) {
        Intrinsics.checkNotNullParameter(bits, "bits");
        if (bits instanceof ByteBackedBitString) {
            plus(((ByteBackedBitString) bits).getBytes(), bits.size());
        } else {
            int size = bits.size();
            byte[] expandByteArray = ByteBackedBitString.expandByteArray(getBytes(), getSize() + size);
            int i = 0;
            for (Object obj : bits) {
                int i2 = i + 1;
                if (i < 0) {
                    CollectionsKt__CollectionsKt.throwIndexOverflow();
                }
                set(expandByteArray, getSize() + i, ((Boolean) obj).booleanValue());
                i = i2;
            }
            setBytes(expandByteArray);
            setSize(getSize() + size);
        }
        return this;
    }

    @Override // org.ton.bitstring.MutableBitString
    public MutableBitString plus(boolean z) {
        List listOf;
        listOf = CollectionsKt__CollectionsJVMKt.listOf(Boolean.valueOf(z));
        return plus((Collection<Boolean>) listOf);
    }

    public ByteBackedMutableBitString plus(byte[] bytes, int i) {
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        if (i != 0) {
            if (getSize() % 8 == 0) {
                if (i % 8 == 0) {
                    appendWithoutShifting(bytes, i);
                } else {
                    appendWithShifting(bytes, i);
                }
            } else {
                appendWithDoubleShifting(bytes, i);
            }
        }
        return this;
    }

    private final void appendWithoutShifting(byte[] bArr, int i) {
        if (!(getSize() % 8 == 0)) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        if (!(i % 8 == 0)) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        byte[] expandByteArray = ByteBackedBitString.expandByteArray(getBytes(), getSize() + i);
        ArraysKt___ArraysJvmKt.copyInto$default(bArr, expandByteArray, getSize() / 8, 0, i / 8, 4, (Object) null);
        setBytes(expandByteArray);
        setSize(getSize() + i);
    }

    private final void appendWithShifting(byte[] bArr, int i) {
        if (!(getSize() % 8 == 0)) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        int i2 = i % 8;
        if (!(i2 != 0)) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        byte[] expandByteArray = ByteBackedBitString.expandByteArray(getBytes(), getSize() + i);
        int i3 = i / 8;
        ArraysKt___ArraysJvmKt.copyInto$default(bArr, expandByteArray, getSize() / 8, 0, i3 + 1, 4, (Object) null);
        int i4 = 8 - i2;
        expandByteArray[(getSize() + i) / 8] = (byte) ((bArr[i3] >> i4) << i4);
        setBytes(expandByteArray);
        setSize(getSize() + i);
    }

    private final void appendWithDoubleShifting(byte[] bArr, int i) {
        int lastIndex;
        int lastIndex2;
        int size = getSize() % 8;
        byte[] copyOf = Arrays.copyOf(getBytes(), (getSize() / 8) + bArr.length + 1);
        Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(this, newSize)");
        int size2 = getSize() / 8;
        int i2 = 8 - size;
        int i3 = copyOf[size2] >> i2;
        int length = bArr.length;
        int i4 = 0;
        int i5 = 0;
        while (i4 < length) {
            i3 = (i3 << 8) | (bArr[i4] & 255);
            copyOf[i5 + size2] = (byte) (i3 >> size);
            i4++;
            i5++;
        }
        copyOf[size2 + bArr.length] = (byte) (i3 << i2);
        int size3 = getSize() + i;
        int i6 = size3 % 8;
        if (i6 == 0) {
            setBytes(ByteBackedBitString.expandByteArray(copyOf, size3));
            setSize(size3);
            return;
        }
        byte[] expandByteArray = ByteBackedBitString.expandByteArray(copyOf, size3);
        lastIndex = ArraysKt___ArraysKt.getLastIndex(expandByteArray);
        int i7 = 8 - i6;
        int i8 = (expandByteArray[lastIndex] >> i7) << i7;
        lastIndex2 = ArraysKt___ArraysKt.getLastIndex(expandByteArray);
        expandByteArray[lastIndex2] = (byte) i8;
        setBytes(expandByteArray);
        setSize(size3);
    }

    /* compiled from: ByteBackedMutableBitString.kt */
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public static /* synthetic */ ByteBackedMutableBitString of$default(Companion companion, int i, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                i = 0;
            }
            return companion.m39of(i);
        }

        /* renamed from: of */
        public final ByteBackedMutableBitString m39of(int i) {
            ByteBackedBitString.Companion companion = ByteBackedBitString.Companion;
            return new ByteBackedMutableBitString(ByteBackedBitString.constructByteArray(i), i);
        }

        protected final boolean set(byte[] bytes, int i, boolean z) {
            Intrinsics.checkNotNullParameter(bytes, "bytes");
            int i2 = i / 8;
            byte b = (byte) (1 << (7 - (i % 8)));
            ByteBackedBitString.Companion companion = ByteBackedBitString.Companion;
            boolean z2 = ByteBackedBitString.get(bytes, i);
            if (z) {
                bytes[i2] = (byte) (bytes[i2] | b);
            } else {
                bytes[i2] = (byte) (bytes[i2] & ((byte) (~b)));
            }
            return z2;
        }
    }
}
