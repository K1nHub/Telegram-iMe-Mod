package org.ton.crypto;

import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: AesCtr.kt */
/* loaded from: classes6.dex */
public final class AesCtr {
    private final Cipher cipher;

    public AesCtr(byte[] key, byte[] iv) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(iv, "iv");
        Cipher cipher = Cipher.getInstance("AES/CTR/NoPadding");
        cipher.init(1, new SecretKeySpec(key, "AES"), new IvParameterSpec(iv));
        this.cipher = cipher;
    }

    public static /* synthetic */ byte[] update$default(AesCtr aesCtr, byte[] bArr, byte[] bArr2, int i, Object obj) {
        if ((i & 2) != 0) {
            bArr2 = new byte[bArr.length];
        }
        return aesCtr.update(bArr, bArr2);
    }

    public final byte[] update(byte[] input, byte[] output) {
        Intrinsics.checkNotNullParameter(input, "input");
        Intrinsics.checkNotNullParameter(output, "output");
        this.cipher.update(input, 0, input.length, output, 0);
        return output;
    }
}
