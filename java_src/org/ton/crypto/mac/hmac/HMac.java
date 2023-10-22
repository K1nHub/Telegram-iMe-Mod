package org.ton.crypto.mac.hmac;

import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.jvm.internal.Intrinsics;
import org.ton.crypto.digest.Digest;
import org.ton.crypto.mac.Mac;
/* compiled from: HMac.kt */
/* loaded from: classes6.dex */
public final class HMac implements Mac {
    private final int blockLength;
    private final Digest digest;
    private final int digestSize;
    private final byte[] inputPad;
    private final byte[] outputBuf;

    private HMac(Digest digest, int i) {
        this.digest = digest;
        this.blockLength = i;
        int digestSize = digest.getDigestSize();
        this.digestSize = digestSize;
        this.inputPad = new byte[i];
        this.outputBuf = new byte[i + digestSize];
    }

    public byte[] build(byte[] bArr) {
        return Mac.DefaultImpls.build(this, bArr);
    }

    public void plusAssign(byte[] bArr) {
        Mac.DefaultImpls.plusAssign(this, bArr);
    }

    @Override // org.ton.crypto.mac.Mac
    public void update(byte[] bArr) {
        Mac.DefaultImpls.update(this, bArr);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public HMac(org.ton.crypto.digest.Digest r2) {
        /*
            r1 = this;
            java.lang.String r0 = "digest"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r0)
            int r0 = org.ton.crypto.mac.hmac.HMacKt.access$byteLength(r2)
            r1.<init>(r2, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.ton.crypto.mac.hmac.HMac.<init>(org.ton.crypto.digest.Digest):void");
    }

    public int getMacSize() {
        return this.digestSize;
    }

    public HMac init(byte[] key) {
        Intrinsics.checkNotNullParameter(key, "key");
        this.digest.reset();
        int length = key.length;
        if (length > this.blockLength) {
            this.digest.update(key);
            this.digest.build(this.inputPad);
            length = this.digestSize;
        } else {
            ArraysKt___ArraysJvmKt.copyInto$default(key, this.inputPad, 0, 0, 0, 14, (Object) null);
        }
        byte[] bArr = this.inputPad;
        ArraysKt___ArraysJvmKt.fill(bArr, (byte) 0, length, bArr.length);
        ArraysKt___ArraysJvmKt.copyInto$default(this.inputPad, this.outputBuf, 0, 0, 0, 14, (Object) null);
        HMacKt.xorPad(this.inputPad, 0, this.blockLength, (byte) 54);
        HMacKt.xorPad(this.outputBuf, 0, this.blockLength, (byte) 92);
        this.digest.update(this.inputPad);
        return this;
    }

    @Override // org.ton.crypto.mac.Mac
    public void update(byte[] input, int i, int i2) {
        Intrinsics.checkNotNullParameter(input, "input");
        this.digest.update(input, i, i2);
    }

    @Override // org.ton.crypto.mac.Mac
    public byte[] build(byte[] output, int i) {
        Intrinsics.checkNotNullParameter(output, "output");
        this.digest.build(this.outputBuf, this.blockLength);
        this.digest.update(this.outputBuf);
        this.digest.build(output, i);
        byte[] bArr = this.outputBuf;
        ArraysKt___ArraysJvmKt.fill(bArr, (byte) 0, this.blockLength, bArr.length);
        this.digest.update(this.inputPad);
        return output;
    }
}
