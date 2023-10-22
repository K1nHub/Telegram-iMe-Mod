package org.ton.crypto;

import io.github.andreypfau.curve25519.ed25519.Ed25519PrivateKey;
import io.github.andreypfau.curve25519.ed25519.Ed25519PublicKey;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: Ed25519.kt */
/* loaded from: classes6.dex */
public final class DecryptorEd25519 implements Decryptor {
    private final Ed25519PrivateKey privateKey;

    public DecryptorEd25519(Ed25519PrivateKey privateKey, Ed25519PublicKey ed25519PublicKey) {
        Intrinsics.checkNotNullParameter(privateKey, "privateKey");
        this.privateKey = privateKey;
    }

    public /* synthetic */ DecryptorEd25519(Ed25519PrivateKey ed25519PrivateKey, Ed25519PublicKey ed25519PublicKey, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(ed25519PrivateKey, (i & 2) != 0 ? null : ed25519PublicKey);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DecryptorEd25519(byte[] data) {
        this(io.github.andreypfau.curve25519.ed25519.Ed25519.keyFromSeed(data), null, 2, null);
        Intrinsics.checkNotNullParameter(data, "data");
    }

    @Override // org.ton.crypto.Decryptor
    public byte[] sign(byte[] message) {
        Intrinsics.checkNotNullParameter(message, "message");
        return this.privateKey.sign(message);
    }
}
