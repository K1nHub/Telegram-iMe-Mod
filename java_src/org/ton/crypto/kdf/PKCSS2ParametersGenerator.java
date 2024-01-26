package org.ton.crypto.kdf;

import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.jvm.internal.Intrinsics;
import org.ton.crypto.digest.Digest;
import org.ton.crypto.mac.hmac.HMac;
/* compiled from: PKCSS2ParametersGenerator.kt */
/* loaded from: classes6.dex */
public final class PKCSS2ParametersGenerator extends PBEParametersGenerator {
    private final HMac hMac;
    private final byte[] state;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PKCSS2ParametersGenerator(HMac hMac, byte[] password, byte[] salt, int i) {
        super(password, salt, i);
        Intrinsics.checkNotNullParameter(hMac, "hMac");
        Intrinsics.checkNotNullParameter(password, "password");
        Intrinsics.checkNotNullParameter(salt, "salt");
        this.hMac = hMac;
        this.state = new byte[hMac.getMacSize()];
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public PKCSS2ParametersGenerator(Digest digest, byte[] password, byte[] salt, int i) {
        this(new HMac(digest), password, salt, i);
        Intrinsics.checkNotNullParameter(digest, "digest");
        Intrinsics.checkNotNullParameter(password, "password");
        Intrinsics.checkNotNullParameter(salt, "salt");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public PKCSS2ParametersGenerator(HMac hMac) {
        this(hMac, new byte[0], new byte[0], 0);
        Intrinsics.checkNotNullParameter(hMac, "hMac");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public PKCSS2ParametersGenerator(Digest digest) {
        this(digest, new byte[0], new byte[0], 0);
        Intrinsics.checkNotNullParameter(digest, "digest");
    }

    public byte[] generateDerivedParameters(int i) {
        return generateDerivedKey(i / 8);
    }

    private final byte[] generateDerivedKey(int i) {
        int macSize = this.hMac.getMacSize();
        int i2 = ((i + macSize) - 1) / macSize;
        byte[] bArr = new byte[4];
        byte[] bArr2 = new byte[i2 * macSize];
        this.hMac.init(getPassword());
        if (1 <= i2) {
            int i3 = 1;
            int i4 = 0;
            while (true) {
                bArr[0] = (byte) (i3 >>> 24);
                bArr[1] = (byte) (i3 >>> 16);
                bArr[2] = (byte) (i3 >>> 8);
                bArr[3] = (byte) i3;
                m27f(getSalt(), getIterationCount(), bArr, bArr2, i4);
                i4 += macSize;
                if (i3 == i2) {
                    break;
                }
                i3++;
            }
        }
        return bArr2;
    }

    /* renamed from: f */
    private final void m27f(byte[] bArr, int i, byte[] bArr2, byte[] bArr3, int i2) {
        if (!(bArr.length == 0)) {
            this.hMac.update(bArr);
        }
        this.hMac.update(bArr2);
        this.hMac.build(this.state);
        ArraysKt___ArraysJvmKt.copyInto$default(this.state, bArr3, i2, 0, 0, 12, (Object) null);
        for (int i3 = 1; i3 < i; i3++) {
            this.hMac.update(this.state);
            this.hMac.build(this.state);
            int length = this.state.length;
            for (int i4 = 0; i4 < length; i4++) {
                int i5 = i2 + i4;
                bArr3[i5] = (byte) (bArr3[i5] ^ this.state[i4]);
            }
        }
    }
}
