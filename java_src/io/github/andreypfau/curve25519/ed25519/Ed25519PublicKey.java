package io.github.andreypfau.curve25519.ed25519;

import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: Ed25519PublicKey.kt */
/* loaded from: classes4.dex */
public final class Ed25519PublicKey {
    private final byte[] data;
    private final int offset;

    static {
        new Companion(null);
    }

    public Ed25519PublicKey(byte[] data, int i) {
        Intrinsics.checkNotNullParameter(data, "data");
        this.data = data;
        this.offset = i;
    }

    public final byte[] getData$curve25519_kotlin() {
        return this.data;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public Ed25519PublicKey(byte[] r2) {
        /*
            r1 = this;
            java.lang.String r0 = "data"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r0)
            r0 = 32
            byte[] r2 = java.util.Arrays.copyOf(r2, r0)
            java.lang.String r0 = "copyOf(this, newSize)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r0)
            r0 = 0
            r1.<init>(r2, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.github.andreypfau.curve25519.ed25519.Ed25519PublicKey.<init>(byte[]):void");
    }

    public final byte[] toByteArray() {
        return toByteArray$default(this, new byte[32], 0, 2, null);
    }

    public static /* synthetic */ byte[] toByteArray$default(Ed25519PublicKey ed25519PublicKey, byte[] bArr, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        return ed25519PublicKey.toByteArray(bArr, i);
    }

    public final byte[] toByteArray(byte[] destination, int i) {
        byte[] copyInto;
        Intrinsics.checkNotNullParameter(destination, "destination");
        byte[] bArr = this.data;
        int i2 = this.offset;
        copyInto = ArraysKt___ArraysJvmKt.copyInto(bArr, destination, i, i2, i2 + 32);
        return copyInto;
    }

    /* compiled from: Ed25519PublicKey.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
