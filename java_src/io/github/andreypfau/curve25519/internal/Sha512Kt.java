package io.github.andreypfau.curve25519.internal;

import java.security.MessageDigest;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: sha512.kt */
/* loaded from: classes4.dex */
public final class Sha512Kt {
    public static /* synthetic */ byte[] sha512$default(byte[] bArr, int i, int i2, byte[] bArr2, int i3, int i4, int i5, Object obj) {
        if ((i5 & 2) != 0) {
            i = 0;
        }
        if ((i5 & 4) != 0) {
            i2 = bArr.length - i;
        }
        if ((i5 & 8) != 0) {
            bArr2 = new byte[64];
        }
        if ((i5 & 16) != 0) {
            i3 = 0;
        }
        if ((i5 & 32) != 0) {
            i4 = 64;
        }
        return sha512(bArr, i, i2, bArr2, i3, i4);
    }

    public static final byte[] sha512(byte[] rawData, int i, int i2, byte[] output, int i3, int i4) {
        Intrinsics.checkNotNullParameter(rawData, "rawData");
        Intrinsics.checkNotNullParameter(output, "output");
        MessageDigest messageDigest = MessageDigest.getInstance("SHA-512");
        messageDigest.update(rawData, i, i2);
        messageDigest.digest(output, i3, i4);
        return output;
    }
}
