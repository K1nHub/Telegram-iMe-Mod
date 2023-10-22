package org.ton.crypto.digest;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: Digest.kt */
/* loaded from: classes6.dex */
public interface Digest {
    public static final Companion Companion = Companion.$$INSTANCE;

    byte[] build();

    byte[] build(byte[] bArr);

    byte[] build(byte[] bArr, int i);

    String getAlgorithmName();

    int getDigestSize();

    void reset();

    void update(byte[] bArr);

    void update(byte[] bArr, int i, int i2);

    /* compiled from: Digest.kt */
    /* loaded from: classes6.dex */
    public static final class DefaultImpls {
        public static void update(Digest digest, byte[] input) {
            Intrinsics.checkNotNullParameter(input, "input");
            digest.update(input, 0, input.length);
        }

        public static byte[] build(Digest digest) {
            return digest.build(new byte[digest.getDigestSize()]);
        }

        public static byte[] build(Digest digest, byte[] output) {
            Intrinsics.checkNotNullParameter(output, "output");
            return digest.build(output, 0);
        }
    }

    /* compiled from: Digest.kt */
    /* loaded from: classes6.dex */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }

        public final Digest sha256() {
            return DigestJvmKt.Digest("SHA-256");
        }

        public final Digest sha512() {
            return DigestJvmKt.Digest("SHA-512");
        }
    }
}
