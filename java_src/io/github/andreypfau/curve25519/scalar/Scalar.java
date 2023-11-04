package io.github.andreypfau.curve25519.scalar;

import io.github.andreypfau.curve25519.constants.ConstantsKt;
import io.github.andreypfau.curve25519.internal.Scalar64Kt;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: Scalar.kt */
/* loaded from: classes4.dex */
public final class Scalar {
    public static final Companion Companion = new Companion(null);
    private final byte[] data;

    public Scalar(byte[] data) {
        Intrinsics.checkNotNullParameter(data, "data");
        this.data = data;
    }

    public /* synthetic */ Scalar(byte[] bArr, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? new byte[32] : bArr);
    }

    public final byte[] getData() {
        return this.data;
    }

    public final byte[] toByteArray(byte[] output, int i) {
        byte[] copyInto$default;
        Intrinsics.checkNotNullParameter(output, "output");
        copyInto$default = ArraysKt___ArraysJvmKt.copyInto$default(this.data, output, i, 0, 0, 12, (Object) null);
        return copyInto$default;
    }

    public static /* synthetic */ Scalar setByteArray$default(Scalar scalar, byte[] bArr, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        return scalar.setByteArray(bArr, i);
    }

    public final Scalar setByteArray(byte[] input, int i) {
        Intrinsics.checkNotNullParameter(input, "input");
        Companion.fromByteArray(input, i, this);
        return this;
    }

    public static /* synthetic */ Scalar setWideByteArray$default(Scalar scalar, byte[] bArr, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        return scalar.setWideByteArray(bArr, i);
    }

    public final Scalar setWideByteArray(byte[] input, int i) {
        Intrinsics.checkNotNullParameter(input, "input");
        Companion.fromWideByteArray(input, i, this);
        return this;
    }

    public final byte[] bits() {
        byte[] bArr = new byte[256];
        for (int i = 0; i < 256; i++) {
            bArr[i] = (byte) ((this.data[i >> 3] >> (i & 7)) & 1);
        }
        return bArr;
    }

    public final UnpackedScalar unpack() {
        UnpackedScalar unpackedScalar = new UnpackedScalar(null, 1, null);
        UnpackedScalar.bytes$default(unpackedScalar, this.data, 0, 2, null);
        return unpackedScalar;
    }

    public static /* synthetic */ byte[] toRadix16$default(Scalar scalar, byte[] bArr, int i, Object obj) {
        if ((i & 1) != 0) {
            bArr = new byte[64];
        }
        return scalar.toRadix16(bArr);
    }

    public final byte[] toRadix16(byte[] output) {
        Intrinsics.checkNotNullParameter(output, "output");
        int i = 0;
        for (int i2 = 0; i2 < 32; i2++) {
            int i3 = i2 * 2;
            byte[] bArr = this.data;
            output[i3] = (byte) ((bArr[i2] >>> 0) & 15);
            output[i3 + 1] = (byte) ((bArr[i2] >>> 4) & 15);
        }
        while (i < 63) {
            int i4 = (output[i] + 8) >> 4;
            output[i] = (byte) (output[i] - (i4 << 4));
            i++;
            output[i] = (byte) (output[i] + i4);
        }
        return output;
    }

    public final void pack(UnpackedScalar us) {
        Intrinsics.checkNotNullParameter(us, "us");
        UnpackedScalar.toByteArray$default(us, this.data, 0, 2, null);
    }

    public final void mul(Scalar a, Scalar b) {
        Intrinsics.checkNotNullParameter(a, "a");
        Intrinsics.checkNotNullParameter(b, "b");
        UnpackedScalar unpack = a.unpack();
        unpack.mul(unpack, b.unpack());
        pack(unpack);
    }

    public final void add(Scalar a, Scalar b) {
        Intrinsics.checkNotNullParameter(a, "a");
        Intrinsics.checkNotNullParameter(b, "b");
        UnpackedScalar unpack = a.unpack();
        unpack.add(unpack, b.unpack());
        Scalar64Kt.m1897scalarMontgomeryReduceGR1PJdc(Scalar64Kt.m1900scalarMulInternalNHtdf0s$default(unpack.m1903getDataY2RjT0g(), ConstantsKt.getR().m1903getDataY2RjT0g(), null, 4, null), unpack.m1903getDataY2RjT0g());
        pack(unpack);
    }

    /* compiled from: Scalar.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public static /* synthetic */ Scalar fromByteArray$default(Companion companion, byte[] bArr, int i, Scalar scalar, int i2, Object obj) {
            if ((i2 & 2) != 0) {
                i = 0;
            }
            if ((i2 & 4) != 0) {
                scalar = new Scalar(null, 1, null);
            }
            return companion.fromByteArray(bArr, i, scalar);
        }

        public final Scalar fromByteArray(byte[] input, int i, Scalar output) {
            Intrinsics.checkNotNullParameter(input, "input");
            Intrinsics.checkNotNullParameter(output, "output");
            ArraysKt___ArraysJvmKt.copyInto(input, output.getData(), 0, i, i + 32);
            output.getData()[31] = (byte) (output.getData()[31] & Byte.MAX_VALUE);
            return output;
        }

        public static /* synthetic */ Scalar fromWideByteArray$default(Companion companion, byte[] bArr, int i, Scalar scalar, int i2, Object obj) {
            if ((i2 & 2) != 0) {
                i = 0;
            }
            if ((i2 & 4) != 0) {
                scalar = new Scalar(null, 1, null);
            }
            return companion.fromWideByteArray(bArr, i, scalar);
        }

        public final Scalar fromWideByteArray(byte[] byteArray, int i, Scalar output) {
            Intrinsics.checkNotNullParameter(byteArray, "byteArray");
            Intrinsics.checkNotNullParameter(output, "output");
            UnpackedScalar unpackedScalar = new UnpackedScalar(null, 1, null);
            unpackedScalar.bytesWide(byteArray, i);
            output.pack(unpackedScalar);
            return output;
        }
    }
}
