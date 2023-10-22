package org.ton.bitstring;

import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Locale;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.ranges.IntRange;
import kotlin.text.StringsKt__StringsKt;
import org.ton.bitstring.BitString;
import org.ton.bitstring.exception.BitStringUnderflowException;
import org.ton.crypto.HexKt;
import p033j$.util.Iterator;
import p033j$.util.function.Consumer;
/* compiled from: ByteBackedBitString.kt */
/* loaded from: classes6.dex */
public class ByteBackedBitString implements BitString {
    public static final Companion Companion = new Companion(null);
    private final byte[] bytes;
    private final int size;

    /* JADX INFO: Access modifiers changed from: protected */
    public static final byte[] constructByteArray(int i) {
        return Companion.constructByteArray(i);
    }

    protected static final byte[] constructByteArray(byte[] bArr, int i) {
        return Companion.constructByteArray(bArr, i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static final byte[] expandByteArray(byte[] bArr, int i) {
        return Companion.expandByteArray(bArr, i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static final boolean get(byte[] bArr, int i) {
        return Companion.get(bArr, i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ByteBackedBitString(int i, byte[] bytes) {
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        this.size = i;
        this.bytes = bytes;
    }

    @Override // org.ton.bitstring.BitString
    public BitString commonPrefixWith(BitString bitString) {
        return BitString.DefaultImpls.commonPrefixWith(this, bitString);
    }

    @Override // java.lang.Comparable
    public int compareTo(BitString bitString) {
        return BitString.DefaultImpls.compareTo(this, bitString);
    }

    @Override // org.ton.bitstring.BitString
    public BitString slice(int i, int i2) {
        return BitString.DefaultImpls.slice(this, i, i2);
    }

    @Override // org.ton.bitstring.BitString
    public BitString slice(IntRange intRange) {
        return BitString.DefaultImpls.slice(this, intRange);
    }

    @Override // org.ton.bitstring.BitString
    public String toBinary() {
        return BitString.DefaultImpls.toBinary(this);
    }

    @Override // org.ton.bitstring.BitString
    public int getSize() {
        return this.size;
    }

    public byte[] getBytes() {
        return this.bytes;
    }

    @Override // org.ton.bitstring.BitString
    public boolean get(int i) {
        Boolean orNull = getOrNull(i);
        if (orNull != null) {
            return orNull.booleanValue();
        }
        throw new BitStringUnderflowException();
    }

    public Boolean getOrNull(int i) {
        boolean z = false;
        if (i >= 0 && i <= getSize()) {
            z = true;
        }
        if (z) {
            return Boolean.valueOf(get(getBytes(), i));
        }
        return null;
    }

    @Override // org.ton.bitstring.BitString
    public byte[] toByteArray(boolean z) {
        byte[] appendAugmentTag;
        if (z && getSize() % 8 != 0) {
            appendAugmentTag = ByteBackedBitStringKt.appendAugmentTag(getBytes(), getSize());
            return appendAugmentTag;
        }
        byte[] bytes = getBytes();
        byte[] copyOf = Arrays.copyOf(bytes, bytes.length);
        Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(this, size)");
        return copyOf;
    }

    @Override // org.ton.bitstring.BitString
    public boolean[] toBooleanArray() {
        List list;
        boolean[] booleanArray;
        list = CollectionsKt___CollectionsKt.toList(this);
        booleanArray = CollectionsKt___CollectionsKt.toBooleanArray(list);
        return booleanArray;
    }

    @Override // org.ton.bitstring.BitString
    public BitString toBitString() {
        int size = getSize();
        byte[] bytes = getBytes();
        byte[] copyOf = Arrays.copyOf(bytes, bytes.length);
        Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(this, size)");
        return new ByteBackedBitString(size, copyOf);
    }

    @Override // java.lang.Iterable
    public Iterator<Boolean> iterator() {
        return new BitStringIterator(this, 0, 2, null);
    }

    public String toString() {
        return "x{" + toHex() + '}';
    }

    @Override // org.ton.bitstring.BitString
    public String toHex() {
        int lastIndex;
        int lastIndex2;
        int lastIndex3;
        int lastIndex4;
        if (getSize() == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder(HexKt.hex(appendTag(getBytes(), getSize())));
        int size = getSize() % 8;
        if (size == 0) {
            lastIndex3 = StringsKt__StringsKt.getLastIndex(sb);
            Intrinsics.checkNotNullExpressionValue(sb.deleteCharAt(lastIndex3), "this.deleteCharAt(index)");
            lastIndex4 = StringsKt__StringsKt.getLastIndex(sb);
            Intrinsics.checkNotNullExpressionValue(sb.deleteCharAt(lastIndex4), "this.deleteCharAt(index)");
        } else {
            boolean z = false;
            if (1 <= size && size < 4) {
                z = true;
            }
            if (z) {
                lastIndex2 = StringsKt__StringsKt.getLastIndex(sb);
                sb.setCharAt(lastIndex2, '_');
            } else if (size == 4) {
                lastIndex = StringsKt__StringsKt.getLastIndex(sb);
                Intrinsics.checkNotNullExpressionValue(sb.deleteCharAt(lastIndex), "this.deleteCharAt(index)");
            } else {
                sb.append('_');
            }
        }
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "result.toString()");
        String upperCase = sb2.toUpperCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(Locale.ROOT)");
        return upperCase;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof BitString) {
            BitString bitString = (BitString) obj;
            if (getSize() != bitString.getSize()) {
                return false;
            }
            if (obj instanceof ByteBackedBitString) {
                if (!Arrays.equals(getBytes(), ((ByteBackedBitString) obj).getBytes())) {
                    return false;
                }
            } else if (!Arrays.equals(toBooleanArray(), bitString.toBooleanArray())) {
                return false;
            }
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (getSize() * 31) + Arrays.hashCode(getBytes());
    }

    /* compiled from: ByteBackedBitString.kt */
    /* loaded from: classes6.dex */
    public static class BitStringIterator implements ListIterator<Boolean>, KMappedMarker, p033j$.util.Iterator {
        private final BitString bitString;
        private int index;

        @Override // java.util.ListIterator
        public /* bridge */ /* synthetic */ void add(Boolean bool) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // p033j$.util.Iterator
        public /* synthetic */ void forEachRemaining(Consumer consumer) {
            Iterator.CC.$default$forEachRemaining(this, consumer);
        }

        @Override // java.util.ListIterator, java.util.Iterator, p033j$.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.ListIterator
        public /* bridge */ /* synthetic */ void set(Boolean bool) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        public BitStringIterator(BitString bitString, int i) {
            Intrinsics.checkNotNullParameter(bitString, "bitString");
            this.bitString = bitString;
            this.index = i;
        }

        public /* synthetic */ BitStringIterator(BitString bitString, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(bitString, (i2 & 2) != 0 ? 0 : i);
        }

        @Override // java.util.ListIterator, java.util.Iterator, p033j$.util.Iterator
        public boolean hasNext() {
            return this.index < this.bitString.getSize();
        }

        @Override // java.util.ListIterator
        public boolean hasPrevious() {
            return this.index - 1 >= 0;
        }

        @Override // java.util.ListIterator, java.util.Iterator, p033j$.util.Iterator
        public Boolean next() {
            BitString bitString = this.bitString;
            int i = this.index;
            this.index = i + 1;
            return Boolean.valueOf(bitString.get(i));
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            return this.index + 1;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.ListIterator
        public Boolean previous() {
            BitString bitString = this.bitString;
            int i = this.index;
            this.index = i - 1;
            return Boolean.valueOf(bitString.get(i));
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            return this.index - 1;
        }
    }

    private final byte[] appendTag(byte[] bArr, int i) {
        int lastIndex;
        int lastIndex2;
        int lastIndex3;
        int i2 = i % 8;
        if (i2 != 0) {
            if (!(bArr.length == 0)) {
                byte[] copyOf = Arrays.copyOf(bArr, (i / 8) + 1);
                Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(this, newSize)");
                lastIndex2 = ArraysKt___ArraysKt.getLastIndex(copyOf);
                int i3 = copyOf[lastIndex2];
                if (i2 != 7) {
                    i3 >>= 7 - i2;
                }
                int i4 = i3 | 1;
                if (i2 != 7) {
                    i4 <<= 7 - i2;
                }
                lastIndex3 = ArraysKt___ArraysKt.getLastIndex(copyOf);
                copyOf[lastIndex3] = (byte) i4;
                return copyOf;
            }
        }
        byte[] copyOf2 = Arrays.copyOf(bArr, (i / 8) + 1);
        Intrinsics.checkNotNullExpressionValue(copyOf2, "copyOf(this, newSize)");
        lastIndex = ArraysKt___ArraysKt.getLastIndex(copyOf2);
        copyOf2[lastIndex] = Byte.MIN_VALUE;
        return copyOf2;
    }

    /* compiled from: ByteBackedBitString.kt */
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* renamed from: of */
        public final ByteBackedBitString m41of(int i) {
            return new ByteBackedBitString(i, ByteBackedBitString.constructByteArray(i));
        }

        /* renamed from: of */
        public final ByteBackedBitString m40of(byte[] bytes, int i) {
            Intrinsics.checkNotNullParameter(bytes, "bytes");
            return new ByteBackedBitString(i, ByteBackedBitString.constructByteArray(bytes, i));
        }

        protected final byte[] constructByteArray(byte[] bytes, int i) {
            Intrinsics.checkNotNullParameter(bytes, "bytes");
            byte[] copyOf = Arrays.copyOf(bytes, bytesSize(i));
            Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(this, newSize)");
            return copyOf;
        }

        protected final byte[] expandByteArray(byte[] bytes, int i) {
            Intrinsics.checkNotNullParameter(bytes, "bytes");
            return bytes.length == bytesSize(i) ? bytes : ByteBackedBitString.constructByteArray(bytes, i);
        }

        protected final byte[] constructByteArray(int i) {
            return new byte[bytesSize(i)];
        }

        protected final boolean get(byte[] bytes, int i) {
            Intrinsics.checkNotNullParameter(bytes, "bytes");
            return ((byte) (bytes[i / 8] & ((byte) (1 << (7 - (i % 8)))))) != 0;
        }

        private final int bytesSize(int i) {
            return (i / 8) + (i % 8 == 0 ? 0 : 1);
        }
    }
}
