package org.ton.crypto;

import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.jvm.internal.Intrinsics;
import org.ton.crypto.digest.DigestJvmKt;
/* compiled from: AesCtr.kt */
/* loaded from: classes6.dex */
public final class EncryptorAes implements Encryptor {
    private final byte[] secret;

    public EncryptorAes(byte[] secret) {
        Intrinsics.checkNotNullParameter(secret, "secret");
        this.secret = secret;
    }

    @Override // org.ton.crypto.Encryptor
    public byte[] encrypt(byte[] data) {
        byte[] plus;
        Intrinsics.checkNotNullParameter(data, "data");
        byte[] sha256 = DigestJvmKt.sha256(data);
        byte[] bArr = new byte[32];
        ArraysKt___ArraysJvmKt.copyInto(this.secret, bArr, 0, 0, 16);
        ArraysKt___ArraysJvmKt.copyInto(sha256, bArr, 16, 16, 32);
        byte[] bArr2 = new byte[16];
        ArraysKt___ArraysJvmKt.copyInto(sha256, bArr2, 0, 0, 4);
        ArraysKt___ArraysJvmKt.copyInto(this.secret, bArr2, 4, 20, 32);
        plus = ArraysKt___ArraysJvmKt.plus(sha256, AesCtr.update$default(new AesCtr(bArr, bArr2), data, null, 2, null));
        return plus;
    }
}
