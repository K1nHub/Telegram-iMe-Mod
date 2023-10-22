package io.github.andreypfau.curve25519.ed25519;

import io.github.andreypfau.curve25519.constants.tables.EdwardsBasepointTableKt;
import io.github.andreypfau.curve25519.edwards.CompressedEdwardsY;
import io.github.andreypfau.curve25519.edwards.EdwardsPoint;
import io.github.andreypfau.curve25519.internal.Sha512Kt;
import io.github.andreypfau.curve25519.scalar.Scalar;
import io.github.andreypfau.curve25519.x25519.X25519;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.random.Random;
/* compiled from: Ed25519.kt */
/* loaded from: classes4.dex */
public final class Ed25519 {
    public static final Ed25519 INSTANCE = new Ed25519();

    private Ed25519() {
    }

    public static final Ed25519PrivateKey generateKey(Random random) {
        Intrinsics.checkNotNullParameter(random, "random");
        return keyFromSeed(random.nextBytes(32));
    }

    public static final Ed25519PrivateKey keyFromSeed(byte[] seed) {
        Intrinsics.checkNotNullParameter(seed, "seed");
        byte[] bArr = new byte[64];
        keyFromSeed$default(seed, bArr, 0, 4, null);
        return new Ed25519PrivateKey(bArr);
    }

    public static /* synthetic */ byte[] keyFromSeed$default(byte[] bArr, byte[] bArr2, int i, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            i = 0;
        }
        return keyFromSeed(bArr, bArr2, i);
    }

    public static final byte[] keyFromSeed(byte[] seed, byte[] output, int i) {
        Intrinsics.checkNotNullParameter(seed, "seed");
        Intrinsics.checkNotNullParameter(output, "output");
        if (!(seed.length == 32)) {
            throw new IllegalArgumentException(("ed25519: bad length: " + seed.length).toString());
        }
        byte[] sha512$default = Sha512Kt.sha512$default(seed, 0, 0, null, 0, 0, 62, null);
        sha512$default[0] = (byte) (sha512$default[0] & 248);
        sha512$default[31] = (byte) (sha512$default[31] & Byte.MAX_VALUE);
        sha512$default[31] = (byte) (sha512$default[31] | 64);
        Scalar scalar = new Scalar(null, 1, null);
        Scalar.setByteArray$default(scalar, sha512$default, 0, 2, null);
        CompressedEdwardsY from$default = CompressedEdwardsY.Companion.from$default(CompressedEdwardsY.Companion, EdwardsPoint.Companion.mul$default(EdwardsPoint.Companion, EdwardsBasepointTableKt.getED25519_BASEPOINT_TABLE(), scalar, null, 4, null), null, 2, null);
        ArraysKt___ArraysJvmKt.copyInto$default(seed, output, i, 0, 0, 12, (Object) null);
        ArraysKt___ArraysJvmKt.copyInto$default(from$default.getData(), output, i + 32, 0, 0, 12, (Object) null);
        return output;
    }

    public static final byte[] sharedKey(Ed25519PrivateKey privateKey, Ed25519PublicKey publicKey, byte[] output, int i) {
        Intrinsics.checkNotNullParameter(privateKey, "privateKey");
        Intrinsics.checkNotNullParameter(publicKey, "publicKey");
        Intrinsics.checkNotNullParameter(output, "output");
        return X25519.x25519(X25519.toX25519$default(privateKey, (byte[]) null, 0, 6, (Object) null), X25519.toX25519$default(publicKey, (byte[]) null, 0, 6, (Object) null), output, i);
    }
}
