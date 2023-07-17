package org.bouncycastle.pqc.crypto.lms;

import org.bouncycastle.crypto.Digest;
/* loaded from: classes4.dex */
class SeedDerive {

    /* renamed from: I */
    private final byte[] f1406I;
    private final Digest digest;

    /* renamed from: j */
    private int f1407j;
    private final byte[] masterSeed;

    /* renamed from: q */
    private int f1408q;

    public SeedDerive(byte[] bArr, byte[] bArr2, Digest digest) {
        this.f1406I = bArr;
        this.masterSeed = bArr2;
        this.digest = digest;
    }

    public void deriveSeed(byte[] bArr, boolean z, int i) {
        deriveSeed(bArr, i);
        if (z) {
            this.f1407j++;
        }
    }

    public byte[] deriveSeed(byte[] bArr, int i) {
        if (bArr.length >= this.digest.getDigestSize()) {
            Digest digest = this.digest;
            byte[] bArr2 = this.f1406I;
            digest.update(bArr2, 0, bArr2.length);
            this.digest.update((byte) (this.f1408q >>> 24));
            this.digest.update((byte) (this.f1408q >>> 16));
            this.digest.update((byte) (this.f1408q >>> 8));
            this.digest.update((byte) this.f1408q);
            this.digest.update((byte) (this.f1407j >>> 8));
            this.digest.update((byte) this.f1407j);
            this.digest.update((byte) -1);
            Digest digest2 = this.digest;
            byte[] bArr3 = this.masterSeed;
            digest2.update(bArr3, 0, bArr3.length);
            this.digest.doFinal(bArr, i);
            return bArr;
        }
        throw new IllegalArgumentException("target length is less than digest size.");
    }

    public void setJ(int i) {
        this.f1407j = i;
    }

    public void setQ(int i) {
        this.f1408q = i;
    }
}
