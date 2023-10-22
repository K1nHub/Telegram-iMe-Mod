package org.ton.crypto;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: Encryptor.kt */
/* loaded from: classes6.dex */
public final class EncryptorFail implements Encryptor {
    public static final EncryptorFail INSTANCE = new EncryptorFail();

    private EncryptorFail() {
    }

    @Override // org.ton.crypto.Encryptor
    public byte[] encrypt(byte[] data) {
        Intrinsics.checkNotNullParameter(data, "data");
        throw new IllegalStateException("Fail encryptor");
    }
}
