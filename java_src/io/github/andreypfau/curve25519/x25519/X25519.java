package io.github.andreypfau.curve25519.x25519;

import io.github.andreypfau.curve25519.constants.tables.EdwardsBasepointTableKt;
import io.github.andreypfau.curve25519.ed25519.Ed25519PrivateKey;
import io.github.andreypfau.curve25519.ed25519.Ed25519PublicKey;
import io.github.andreypfau.curve25519.edwards.CompressedEdwardsY;
import io.github.andreypfau.curve25519.edwards.EdwardsPoint;
import io.github.andreypfau.curve25519.internal.Sha512Kt;
import io.github.andreypfau.curve25519.montgomery.MontgomeryPoint;
import io.github.andreypfau.curve25519.scalar.Scalar;
import java.util.Arrays;
import kotlin.UInt;
import kotlin.ULong;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: X25519.kt */
/* loaded from: classes4.dex */
public final class X25519 {
    private static final byte[] BASEPOINT;
    public static final X25519 INSTANCE = new X25519();

    private X25519() {
    }

    static {
        byte[] bArr = new byte[32];
        bArr[0] = 9;
        BASEPOINT = bArr;
    }

    public static final byte[] x25519(byte[] scalar, byte[] point, byte[] output, int i) {
        int m1994constructorimpl;
        Intrinsics.checkNotNullParameter(scalar, "scalar");
        Intrinsics.checkNotNullParameter(point, "point");
        Intrinsics.checkNotNullParameter(output, "output");
        if (Arrays.equals(point, BASEPOINT)) {
            scalarBaseMult(scalar, output, i);
        } else {
            scalarMult(scalar, point, output, i);
            byte[] bArr = new byte[32];
            if (output.length != 32) {
                m1994constructorimpl = 0;
            } else {
                int length = output.length;
                int i2 = 0;
                for (int i3 = 0; i3 < length; i3++) {
                    i2 |= output[i3] ^ bArr[i3];
                }
                m1994constructorimpl = (int) ULong.m1994constructorimpl(ULong.m1994constructorimpl(ULong.m1994constructorimpl(UInt.m1972constructorimpl(i2 ^ 0) & 4294967295L) - ULong.m1994constructorimpl(1L)) >>> 63);
            }
            if (!(m1994constructorimpl != 1)) {
                throw new IllegalStateException("bad input point: low order point".toString());
            }
        }
        return output;
    }

    public static /* synthetic */ byte[] toX25519$default(Ed25519PublicKey ed25519PublicKey, byte[] bArr, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            bArr = new byte[32];
        }
        if ((i2 & 4) != 0) {
            i = 0;
        }
        return toX25519(ed25519PublicKey, bArr, i);
    }

    public static final byte[] toX25519(Ed25519PublicKey publicKey, byte[] output, int i) {
        Intrinsics.checkNotNullParameter(publicKey, "publicKey");
        Intrinsics.checkNotNullParameter(output, "output");
        ArraysKt___ArraysJvmKt.copyInto$default(MontgomeryPoint.Companion.from$default(MontgomeryPoint.Companion, EdwardsPoint.Companion.from$default(EdwardsPoint.Companion, new CompressedEdwardsY(publicKey.getData$curve25519_kotlin()), null, 2, null), null, 2, null).getData(), output, i, 0, 0, 12, (Object) null);
        return output;
    }

    public static /* synthetic */ byte[] toX25519$default(Ed25519PrivateKey ed25519PrivateKey, byte[] bArr, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            bArr = new byte[32];
        }
        if ((i2 & 4) != 0) {
            i = 0;
        }
        return toX25519(ed25519PrivateKey, bArr, i);
    }

    public static final byte[] toX25519(Ed25519PrivateKey privateKey, byte[] output, int i) {
        Intrinsics.checkNotNullParameter(privateKey, "privateKey");
        Intrinsics.checkNotNullParameter(output, "output");
        byte[] sha512$default = Sha512Kt.sha512$default(privateKey.getData$curve25519_kotlin(), 0, 32, null, 0, 0, 56, null);
        INSTANCE.clampScalar(sha512$default);
        ArraysKt___ArraysJvmKt.copyInto(sha512$default, output, i, 0, 32);
        return output;
    }

    private static final byte[] scalarBaseMult(byte[] bArr, byte[] bArr2, int i) {
        byte[] bArr3 = new byte[32];
        ArraysKt___ArraysJvmKt.copyInto$default(bArr, bArr3, 0, 0, 0, 14, (Object) null);
        INSTANCE.clampScalar(bArr3);
        ArraysKt___ArraysJvmKt.copyInto$default(MontgomeryPoint.Companion.from$default(MontgomeryPoint.Companion, new EdwardsPoint().mulBasepoint(EdwardsBasepointTableKt.getED25519_BASEPOINT_TABLE(), Scalar.Companion.fromByteArray$default(Scalar.Companion, bArr3, 0, null, 6, null)), null, 2, null).getData(), bArr2, i, 0, 0, 12, (Object) null);
        return bArr2;
    }

    private static final byte[] scalarMult(byte[] bArr, byte[] bArr2, byte[] bArr3, int i) {
        byte[] bArr4 = new byte[32];
        ArraysKt___ArraysJvmKt.copyInto$default(bArr, bArr4, 0, 0, 0, 14, (Object) null);
        INSTANCE.clampScalar(bArr4);
        Scalar fromByteArray$default = Scalar.Companion.fromByteArray$default(Scalar.Companion, bArr4, 0, null, 6, null);
        MontgomeryPoint montgomeryPoint = new MontgomeryPoint(bArr2);
        montgomeryPoint.mul(montgomeryPoint, fromByteArray$default);
        ArraysKt___ArraysJvmKt.copyInto$default(montgomeryPoint.getData(), bArr3, i, 0, 0, 12, (Object) null);
        return bArr3;
    }

    private final byte[] clampScalar(byte[] bArr) {
        bArr[0] = (byte) (bArr[0] & 248);
        bArr[31] = (byte) (bArr[31] & Byte.MAX_VALUE);
        bArr[31] = (byte) (bArr[31] | 64);
        return bArr;
    }
}
