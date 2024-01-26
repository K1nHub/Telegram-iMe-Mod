package org.ton.crypto;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: AesCtr.kt */
/* loaded from: classes6.dex */
public final class DecryptorAes implements Decryptor {
    public DecryptorAes(byte[] secret) {
        Intrinsics.checkNotNullParameter(secret, "secret");
    }
}
