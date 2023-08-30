package org.bouncycastle.crypto.digests;

import org.bouncycastle.util.Memoable;
import org.bouncycastle.util.Pack;
/* loaded from: classes4.dex */
public class SHA512Digest extends LongDigest {
    public SHA512Digest() {
    }

    public SHA512Digest(SHA512Digest sHA512Digest) {
        super(sHA512Digest);
    }

    @Override // org.bouncycastle.util.Memoable
    public Memoable copy() {
        return new SHA512Digest(this);
    }

    @Override // org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int i) {
        finish();
        Pack.longToBigEndian(this.f1338H1, bArr, i);
        Pack.longToBigEndian(this.f1339H2, bArr, i + 8);
        Pack.longToBigEndian(this.f1340H3, bArr, i + 16);
        Pack.longToBigEndian(this.f1341H4, bArr, i + 24);
        Pack.longToBigEndian(this.f1342H5, bArr, i + 32);
        Pack.longToBigEndian(this.f1343H6, bArr, i + 40);
        Pack.longToBigEndian(this.f1344H7, bArr, i + 48);
        Pack.longToBigEndian(this.f1345H8, bArr, i + 56);
        reset();
        return 64;
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return "SHA-512";
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return 64;
    }

    @Override // org.bouncycastle.crypto.digests.LongDigest, org.bouncycastle.crypto.Digest
    public void reset() {
        super.reset();
        this.f1338H1 = 7640891576956012808L;
        this.f1339H2 = -4942790177534073029L;
        this.f1340H3 = 4354685564936845355L;
        this.f1341H4 = -6534734903238641935L;
        this.f1342H5 = 5840696475078001361L;
        this.f1343H6 = -7276294671716946913L;
        this.f1344H7 = 2270897969802886507L;
        this.f1345H8 = 6620516959819538809L;
    }

    @Override // org.bouncycastle.util.Memoable
    public void reset(Memoable memoable) {
        copyIn((SHA512Digest) memoable);
    }
}
