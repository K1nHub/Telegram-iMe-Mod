package org.ton.crypto.mac;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: Mac.kt */
/* loaded from: classes6.dex */
public interface Mac {
    byte[] build(byte[] bArr, int i);

    void update(byte[] bArr);

    void update(byte[] bArr, int i, int i2);

    /* compiled from: Mac.kt */
    /* loaded from: classes6.dex */
    public static final class DefaultImpls {
        public static void update(Mac mac, byte[] input) {
            Intrinsics.checkNotNullParameter(input, "input");
            mac.update(input, 0, input.length);
        }

        public static void plusAssign(Mac mac, byte[] input) {
            Intrinsics.checkNotNullParameter(input, "input");
            mac.update(input);
        }

        public static byte[] build(Mac mac, byte[] output) {
            Intrinsics.checkNotNullParameter(output, "output");
            return mac.build(output, 0);
        }
    }
}
