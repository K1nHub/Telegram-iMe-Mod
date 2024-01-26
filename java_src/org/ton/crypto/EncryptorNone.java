package org.ton.crypto;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: Encryptor.kt */
/* loaded from: classes6.dex */
public final class EncryptorNone implements Encryptor {
    public static final EncryptorNone INSTANCE = new EncryptorNone();

    @Override // org.ton.crypto.Encryptor
    public byte[] encrypt(byte[] data) {
        Intrinsics.checkNotNullParameter(data, "data");
        return data;
    }

    private EncryptorNone() {
    }
}
