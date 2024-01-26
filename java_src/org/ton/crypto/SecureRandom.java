package org.ton.crypto;

import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.random.Random;
/* compiled from: SecureRandom.kt */
/* loaded from: classes6.dex */
public final class SecureRandom extends Random {
    public static final SecureRandom INSTANCE = new SecureRandom();
    private static final java.security.SecureRandom javaSecureRandom = new java.security.SecureRandom();

    private SecureRandom() {
    }

    @Override // kotlin.random.Random
    public int nextBits(int i) {
        return ((-i) >> 31) & (nextInt() >>> (32 - i));
    }

    @Override // kotlin.random.Random
    public int nextInt() {
        return javaSecureRandom.nextInt();
    }

    @Override // kotlin.random.Random
    public byte[] nextBytes(byte[] array, int i, int i2) {
        Intrinsics.checkNotNullParameter(array, "array");
        byte[] bArr = new byte[i2 - i];
        javaSecureRandom.nextBytes(bArr);
        ArraysKt___ArraysJvmKt.copyInto$default(bArr, array, i, 0, 0, 12, (Object) null);
        return array;
    }
}
