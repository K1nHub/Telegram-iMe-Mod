package io.github.andreypfau.curve25519.ed25519;

import io.github.andreypfau.curve25519.constants.tables.EdwardsBasepointTableKt;
import io.github.andreypfau.curve25519.edwards.CompressedEdwardsY;
import io.github.andreypfau.curve25519.edwards.EdwardsPoint;
import io.github.andreypfau.curve25519.internal.Sha512Kt;
import io.github.andreypfau.curve25519.scalar.Scalar;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: Ed25519PrivateKey.kt */
/* loaded from: classes4.dex */
public final class Ed25519PrivateKey {
    private final byte[] data;

    static {
        new Companion(null);
    }

    public Ed25519PrivateKey(byte[] data) {
        Intrinsics.checkNotNullParameter(data, "data");
        this.data = data;
    }

    public final byte[] getData$curve25519_kotlin() {
        return this.data;
    }

    public final Ed25519PublicKey publicKey() {
        byte[] copyOfRange;
        copyOfRange = ArraysKt___ArraysJvmKt.copyOfRange(this.data, 32, 64);
        return new Ed25519PublicKey(copyOfRange);
    }

    public final byte[] sign(byte[] message) {
        Intrinsics.checkNotNullParameter(message, "message");
        return sign$default(this, message, new byte[64], 0, 4, null);
    }

    public static /* synthetic */ byte[] sign$default(Ed25519PrivateKey ed25519PrivateKey, byte[] bArr, byte[] bArr2, int i, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            i = 0;
        }
        return ed25519PrivateKey.sign(bArr, bArr2, i);
    }

    public final byte[] sign(byte[] message, byte[] destination, int i) {
        byte[] copyOfRange;
        byte[] plus;
        byte[] copyOfRange2;
        byte[] plus2;
        byte[] plus3;
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(destination, "destination");
        byte[] sha512$default = Sha512Kt.sha512$default(this.data, 0, 32, null, 0, 0, 56, null);
        sha512$default[0] = (byte) (sha512$default[0] & 248);
        sha512$default[31] = (byte) (sha512$default[31] & Byte.MAX_VALUE);
        sha512$default[31] = (byte) (sha512$default[31] | 64);
        copyOfRange = ArraysKt___ArraysJvmKt.copyOfRange(sha512$default, 32, sha512$default.length);
        plus = ArraysKt___ArraysJvmKt.plus(copyOfRange, message);
        byte[] sha512$default2 = Sha512Kt.sha512$default(plus, 0, 0, null, 0, 0, 62, null);
        Scalar.Companion companion = Scalar.Companion;
        Scalar fromWideByteArray$default = Scalar.Companion.fromWideByteArray$default(companion, sha512$default2, 0, null, 6, null);
        CompressedEdwardsY from$default = CompressedEdwardsY.Companion.from$default(CompressedEdwardsY.Companion, new EdwardsPoint().mulBasepoint(EdwardsBasepointTableKt.getED25519_BASEPOINT_TABLE(), fromWideByteArray$default), null, 2, null);
        Scalar scalar = new Scalar(null, 1, null);
        byte[] data = from$default.getData();
        byte[] bArr = this.data;
        copyOfRange2 = ArraysKt___ArraysJvmKt.copyOfRange(bArr, 32, bArr.length);
        plus2 = ArraysKt___ArraysJvmKt.plus(data, copyOfRange2);
        plus3 = ArraysKt___ArraysJvmKt.plus(plus2, message);
        Scalar.setWideByteArray$default(scalar, Sha512Kt.sha512$default(plus3, 0, 0, null, 0, 0, 62, null), 0, 2, null);
        scalar.mul(scalar, Scalar.Companion.fromByteArray$default(companion, sha512$default, 0, null, 6, null));
        scalar.add(scalar, fromWideByteArray$default);
        ArraysKt___ArraysJvmKt.copyInto$default(from$default.getData(), destination, i, 0, 0, 12, (Object) null);
        scalar.toByteArray(destination, i + 32);
        return destination;
    }

    public static /* synthetic */ byte[] sharedKey$default(Ed25519PrivateKey ed25519PrivateKey, Ed25519PublicKey ed25519PublicKey, byte[] bArr, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            bArr = new byte[32];
        }
        if ((i2 & 4) != 0) {
            i = 0;
        }
        return ed25519PrivateKey.sharedKey(ed25519PublicKey, bArr, i);
    }

    public final byte[] sharedKey(Ed25519PublicKey publicKey, byte[] output, int i) {
        Intrinsics.checkNotNullParameter(publicKey, "publicKey");
        Intrinsics.checkNotNullParameter(output, "output");
        return Ed25519.sharedKey(this, publicKey, output, i);
    }

    /* compiled from: Ed25519PrivateKey.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
