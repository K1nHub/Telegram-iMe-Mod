package org.bouncycastle.pqc.crypto.lms;

import org.bouncycastle.crypto.Digest;
/* loaded from: classes4.dex */
class SeedDerive {

    /* renamed from: I */
    private final byte[] f1324I;
    private final Digest digest;

    /* renamed from: j */
    private int f1325j;
    private final byte[] masterSeed;

    /* renamed from: q */
    private int f1326q;

    public SeedDerive(byte[] bArr, byte[] bArr2, Digest digest) {
        this.f1324I = bArr;
        this.masterSeed = bArr2;
        this.digest = digest;
    }

    public void deriveSeed(byte[] bArr, boolean z, int i) {
        deriveSeed(bArr, i);
        if (z) {
            this.f1325j++;
        }
    }

    public byte[] deriveSeed(byte[] bArr, int i) {
        if (bArr.length >= this.digest.getDigestSize()) {
            Digest digest = this.digest;
            byte[] bArr2 = this.f1324I;
            digest.update(bArr2, 0, bArr2.length);
            this.digest.update((byte) (this.f1326q >>> 24));
            this.digest.update((byte) (this.f1326q >>> 16));
            this.digest.update((byte) (this.f1326q >>> 8));
            this.digest.update((byte) this.f1326q);
            this.digest.update((byte) (this.f1325j >>> 8));
            this.digest.update((byte) this.f1325j);
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
        this.f1325j = i;
    }

    public void setQ(int i) {
        this.f1326q = i;
    }
}
