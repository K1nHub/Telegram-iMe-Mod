package org.ton.bitstring;
/* compiled from: MutableBitString.kt */
/* loaded from: classes6.dex */
public interface MutableBitString extends BitString {
    MutableBitString plus(Iterable<Boolean> iterable);

    MutableBitString plus(boolean z);

    MutableBitString plus(byte[] bArr);

    MutableBitString plus(boolean[] zArr);
}
