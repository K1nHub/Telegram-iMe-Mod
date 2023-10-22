package org.ton.crypto;

import io.github.andreypfau.curve25519.ed25519.Ed25519PrivateKey;
import io.github.andreypfau.curve25519.ed25519.Ed25519PublicKey;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: Ed25519.kt */
/* loaded from: classes6.dex */
public final class EncryptorEd25519 implements Encryptor {
    private final Ed25519PrivateKey privateKey;
    private final Ed25519PublicKey publicKey;

    public EncryptorEd25519(Ed25519PublicKey publicKey, Ed25519PrivateKey ed25519PrivateKey) {
        Intrinsics.checkNotNullParameter(publicKey, "publicKey");
        this.publicKey = publicKey;
        this.privateKey = ed25519PrivateKey;
    }

    public /* synthetic */ EncryptorEd25519(Ed25519PublicKey ed25519PublicKey, Ed25519PrivateKey ed25519PrivateKey, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(ed25519PublicKey, (i & 2) != 0 ? null : ed25519PrivateKey);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public EncryptorEd25519(byte[] data) {
        this(new Ed25519PublicKey(data), null, 2, null);
        Intrinsics.checkNotNullParameter(data, "data");
    }

    @Override // org.ton.crypto.Encryptor
    public byte[] encrypt(byte[] data) {
        byte[] plus;
        Intrinsics.checkNotNullParameter(data, "data");
        Ed25519PrivateKey ed25519PrivateKey = this.privateKey;
        if (ed25519PrivateKey == null) {
            ed25519PrivateKey = io.github.andreypfau.curve25519.ed25519.Ed25519.generateKey(SecureRandom.INSTANCE);
        }
        plus = ArraysKt___ArraysJvmKt.plus(ed25519PrivateKey.publicKey().toByteArray(), new EncryptorAes(Ed25519PrivateKey.sharedKey$default(ed25519PrivateKey, this.publicKey, null, 0, 6, null)).encrypt(data));
        return plus;
    }
}
