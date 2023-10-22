package org.ton.bitstring;

import java.util.Iterator;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import kotlin.sequences.SequencesKt__SequenceBuilderKt;
import org.ton.bitstring.BitString;
/* compiled from: EmptyBitString.kt */
/* loaded from: classes6.dex */
public final class EmptyBitString implements BitString {
    public static final EmptyBitString INSTANCE = new EmptyBitString();

    @Override // java.lang.Comparable
    public int compareTo(BitString other) {
        Intrinsics.checkNotNullParameter(other, "other");
        return -1;
    }

    @Override // org.ton.bitstring.BitString
    public int getSize() {
        return 0;
    }

    @Override // org.ton.bitstring.BitString
    public boolean[] toBooleanArray() {
        return new boolean[0];
    }

    @Override // org.ton.bitstring.BitString
    public byte[] toByteArray(boolean z) {
        return new byte[0];
    }

    @Override // org.ton.bitstring.BitString
    public String toHex() {
        return "";
    }

    public String toString() {
        return "x{}";
    }

    private EmptyBitString() {
    }

    @Override // org.ton.bitstring.BitString
    public BitString commonPrefixWith(BitString bitString) {
        return BitString.DefaultImpls.commonPrefixWith(this, bitString);
    }

    @Override // org.ton.bitstring.BitString
    public String toBinary() {
        return BitString.DefaultImpls.toBinary(this);
    }

    @Override // org.ton.bitstring.BitString
    public BitString toBitString() {
        return BitString.DefaultImpls.toBitString(this);
    }

    @Override // org.ton.bitstring.BitString
    public boolean get(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // org.ton.bitstring.BitString
    public BitString slice(IntRange indices) {
        Intrinsics.checkNotNullParameter(indices, "indices");
        if (indices.getFirst() == 0 && indices.getLast() == 0) {
            return this;
        }
        throw new IndexOutOfBoundsException(indices.toString());
    }

    @Override // org.ton.bitstring.BitString
    public BitString slice(int i, int i2) {
        if (i == 0 && i2 == 0) {
            return this;
        }
        throw new IndexOutOfBoundsException(new IntRange(i, i2).toString());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && (obj instanceof BitString) && ((BitString) obj).getSize() == 0;
    }

    @Override // java.lang.Iterable
    public Iterator<Boolean> iterator() {
        Iterator<Boolean> it;
        it = SequencesKt__SequenceBuilderKt.iterator(new EmptyBitString$iterator$1(null));
        return it;
    }
}
