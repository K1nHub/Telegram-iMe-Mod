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
        Pack.longToBigEndian(this.f1325H1, bArr, i);
        Pack.longToBigEndian(this.f1326H2, bArr, i + 8);
        Pack.longToBigEndian(this.f1327H3, bArr, i + 16);
        Pack.longToBigEndian(this.f1328H4, bArr, i + 24);
        Pack.longToBigEndian(this.f1329H5, bArr, i + 32);
        Pack.longToBigEndian(this.f1330H6, bArr, i + 40);
        Pack.longToBigEndian(this.f1331H7, bArr, i + 48);
        Pack.longToBigEndian(this.f1332H8, bArr, i + 56);
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
        this.f1325H1 = 7640891576956012808L;
        this.f1326H2 = -4942790177534073029L;
        this.f1327H3 = 4354685564936845355L;
        this.f1328H4 = -6534734903238641935L;
        this.f1329H5 = 5840696475078001361L;
        this.f1330H6 = -7276294671716946913L;
        this.f1331H7 = 2270897969802886507L;
        this.f1332H8 = 6620516959819538809L;
    }

    @Override // org.bouncycastle.util.Memoable
    public void reset(Memoable memoable) {
        copyIn((SHA512Digest) memoable);
    }
}
