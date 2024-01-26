package org.ton.crypto.mac.hmac;

import kotlin.jvm.internal.Intrinsics;
import org.ton.crypto.digest.Digest;
/* compiled from: HMac.kt */
/* loaded from: classes6.dex */
public final class HMacKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final int byteLength(Digest digest) {
        String algorithmName = digest.getAlgorithmName();
        if (Intrinsics.areEqual(algorithmName, "SHA-256")) {
            return 64;
        }
        if (Intrinsics.areEqual(algorithmName, "SHA-512")) {
            return 128;
        }
        throw new IllegalArgumentException("Unsupported digest algorithm: " + digest.getAlgorithmName());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void xorPad(byte[] bArr, int i, int i2, byte b) {
        int i3 = i2 + i;
        while (i < i3) {
            bArr[i] = (byte) (bArr[i] ^ b);
            i++;
        }
    }
}
