package org.ton.crypto;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: Ed25519.kt */
/* loaded from: classes6.dex */
public final class Ed25519 {
    static {
        new Ed25519();
    }

    private Ed25519() {
    }

    public static final byte[] publicKey(byte[] privateKey) {
        Intrinsics.checkNotNullParameter(privateKey, "privateKey");
        return io.github.andreypfau.curve25519.ed25519.Ed25519.keyFromSeed(privateKey).publicKey().toByteArray();
    }
}
