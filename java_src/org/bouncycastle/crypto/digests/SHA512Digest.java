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
        Pack.longToBigEndian(this.f1243H1, bArr, i);
        Pack.longToBigEndian(this.f1244H2, bArr, i + 8);
        Pack.longToBigEndian(this.f1245H3, bArr, i + 16);
        Pack.longToBigEndian(this.f1246H4, bArr, i + 24);
        Pack.longToBigEndian(this.f1247H5, bArr, i + 32);
        Pack.longToBigEndian(this.f1248H6, bArr, i + 40);
        Pack.longToBigEndian(this.f1249H7, bArr, i + 48);
        Pack.longToBigEndian(this.f1250H8, bArr, i + 56);
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
        this.f1243H1 = 7640891576956012808L;
        this.f1244H2 = -4942790177534073029L;
        this.f1245H3 = 4354685564936845355L;
        this.f1246H4 = -6534734903238641935L;
        this.f1247H5 = 5840696475078001361L;
        this.f1248H6 = -7276294671716946913L;
        this.f1249H7 = 2270897969802886507L;
        this.f1250H8 = 6620516959819538809L;
    }

    @Override // org.bouncycastle.util.Memoable
    public void reset(Memoable memoable) {
        copyIn((SHA512Digest) memoable);
    }
}
