package org.bouncycastle.crypto.digests;

import org.bouncycastle.util.Memoable;
import org.bouncycastle.util.Pack;
/* loaded from: classes4.dex */
public class SHA1Digest extends GeneralDigest {

    /* renamed from: H1 */
    private int f1252H1;

    /* renamed from: H2 */
    private int f1253H2;

    /* renamed from: H3 */
    private int f1254H3;

    /* renamed from: H4 */
    private int f1255H4;

    /* renamed from: H5 */
    private int f1256H5;

    /* renamed from: X */
    private int[] f1257X;
    private int xOff;

    public SHA1Digest() {
        this.f1257X = new int[80];
        reset();
    }

    public SHA1Digest(SHA1Digest sHA1Digest) {
        super(sHA1Digest);
        this.f1257X = new int[80];
        copyIn(sHA1Digest);
    }

    private void copyIn(SHA1Digest sHA1Digest) {
        this.f1252H1 = sHA1Digest.f1252H1;
        this.f1253H2 = sHA1Digest.f1253H2;
        this.f1254H3 = sHA1Digest.f1254H3;
        this.f1255H4 = sHA1Digest.f1255H4;
        this.f1256H5 = sHA1Digest.f1256H5;
        int[] iArr = sHA1Digest.f1257X;
        System.arraycopy(iArr, 0, this.f1257X, 0, iArr.length);
        this.xOff = sHA1Digest.xOff;
    }

    /* renamed from: f */
    private int m68f(int i, int i2, int i3) {
        return ((~i) & i3) | (i2 & i);
    }

    /* renamed from: g */
    private int m67g(int i, int i2, int i3) {
        return (i & i3) | (i & i2) | (i2 & i3);
    }

    /* renamed from: h */
    private int m66h(int i, int i2, int i3) {
        return (i ^ i2) ^ i3;
    }

    @Override // org.bouncycastle.util.Memoable
    public Memoable copy() {
        return new SHA1Digest(this);
    }

    @Override // org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int i) {
        finish();
        Pack.intToBigEndian(this.f1252H1, bArr, i);
        Pack.intToBigEndian(this.f1253H2, bArr, i + 4);
        Pack.intToBigEndian(this.f1254H3, bArr, i + 8);
        Pack.intToBigEndian(this.f1255H4, bArr, i + 12);
        Pack.intToBigEndian(this.f1256H5, bArr, i + 16);
        reset();
        return 20;
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return "SHA-1";
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return 20;
    }

    @Override // org.bouncycastle.crypto.digests.GeneralDigest
    protected void processBlock() {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        for (int i13 = 16; i13 < 80; i13++) {
            int[] iArr = this.f1257X;
            int i14 = ((iArr[i13 - 3] ^ iArr[i13 - 8]) ^ iArr[i13 - 14]) ^ iArr[i13 - 16];
            iArr[i13] = (i14 >>> 31) | (i14 << 1);
        }
        int i15 = this.f1252H1;
        int i16 = this.f1253H2;
        int i17 = this.f1254H3;
        int i18 = this.f1255H4;
        int i19 = this.f1256H5;
        int i20 = 0;
        int i21 = 0;
        while (i20 < 4) {
            int i22 = i21 + 1;
            int m68f = i19 + ((i15 << 5) | (i15 >>> 27)) + m68f(i16, i17, i18) + this.f1257X[i21] + 1518500249;
            int i23 = (i16 >>> 2) | (i16 << 30);
            int i24 = i22 + 1;
            int m68f2 = i18 + ((m68f << 5) | (m68f >>> 27)) + m68f(i15, i23, i17) + this.f1257X[i22] + 1518500249;
            int i25 = (i15 >>> 2) | (i15 << 30);
            int i26 = i24 + 1;
            int m68f3 = i17 + ((m68f2 << 5) | (m68f2 >>> 27)) + m68f(m68f, i25, i23) + this.f1257X[i24] + 1518500249;
            i19 = (m68f >>> 2) | (m68f << 30);
            int i27 = i26 + 1;
            i16 = i23 + ((m68f3 << 5) | (m68f3 >>> 27)) + m68f(m68f2, i19, i25) + this.f1257X[i26] + 1518500249;
            i18 = (m68f2 >>> 2) | (m68f2 << 30);
            i15 = i25 + ((i16 << 5) | (i16 >>> 27)) + m68f(m68f3, i18, i19) + this.f1257X[i27] + 1518500249;
            i17 = (m68f3 >>> 2) | (m68f3 << 30);
            i20++;
            i21 = i27 + 1;
        }
        int i28 = 0;
        while (i28 < 4) {
            int i29 = i21 + 1;
            int m66h = i19 + ((i15 << 5) | (i15 >>> 27)) + m66h(i16, i17, i18) + this.f1257X[i21] + 1859775393;
            int i30 = (i16 >>> 2) | (i16 << 30);
            int i31 = i29 + 1;
            int m66h2 = i18 + ((m66h << 5) | (m66h >>> 27)) + m66h(i15, i30, i17) + this.f1257X[i29] + 1859775393;
            int i32 = (i15 >>> 2) | (i15 << 30);
            int i33 = i31 + 1;
            int m66h3 = i17 + ((m66h2 << 5) | (m66h2 >>> 27)) + m66h(m66h, i32, i30) + this.f1257X[i31] + 1859775393;
            i19 = (m66h >>> 2) | (m66h << 30);
            int i34 = i33 + 1;
            i16 = i30 + ((m66h3 << 5) | (m66h3 >>> 27)) + m66h(m66h2, i19, i32) + this.f1257X[i33] + 1859775393;
            i18 = (m66h2 >>> 2) | (m66h2 << 30);
            i15 = i32 + ((i16 << 5) | (i16 >>> 27)) + m66h(m66h3, i18, i19) + this.f1257X[i34] + 1859775393;
            i17 = (m66h3 >>> 2) | (m66h3 << 30);
            i28++;
            i21 = i34 + 1;
        }
        int i35 = 0;
        while (i35 < 4) {
            int m67g = i19 + (((((i15 << 5) | (i15 >>> 27)) + m67g(i16, i17, i18)) + this.f1257X[i21]) - 1894007588);
            int m67g2 = i18 + (((((m67g << 5) | (m67g >>> 27)) + m67g(i15, i8, i17)) + this.f1257X[i7]) - 1894007588);
            int m67g3 = i17 + (((((m67g2 << 5) | (m67g2 >>> 27)) + m67g(m67g, i10, i8)) + this.f1257X[i9]) - 1894007588);
            i19 = (m67g >>> 2) | (m67g << 30);
            i16 = ((i16 >>> 2) | (i16 << 30)) + (((((m67g3 << 5) | (m67g3 >>> 27)) + m67g(m67g2, i19, i10)) + this.f1257X[i11]) - 1894007588);
            i18 = (m67g2 >>> 2) | (m67g2 << 30);
            i15 = ((i15 >>> 2) | (i15 << 30)) + (((((i16 << 5) | (i16 >>> 27)) + m67g(m67g3, i18, i19)) + this.f1257X[i12]) - 1894007588);
            i17 = (m67g3 >>> 2) | (m67g3 << 30);
            i35++;
            i21 = i21 + 1 + 1 + 1 + 1 + 1;
        }
        int i36 = 0;
        while (i36 <= 3) {
            int m66h4 = i19 + (((((i15 << 5) | (i15 >>> 27)) + m66h(i16, i17, i18)) + this.f1257X[i21]) - 899497514);
            int m66h5 = i18 + (((((m66h4 << 5) | (m66h4 >>> 27)) + m66h(i15, i2, i17)) + this.f1257X[i]) - 899497514);
            int m66h6 = i17 + (((((m66h5 << 5) | (m66h5 >>> 27)) + m66h(m66h4, i4, i2)) + this.f1257X[i3]) - 899497514);
            i19 = (m66h4 >>> 2) | (m66h4 << 30);
            i16 = ((i16 >>> 2) | (i16 << 30)) + (((((m66h6 << 5) | (m66h6 >>> 27)) + m66h(m66h5, i19, i4)) + this.f1257X[i5]) - 899497514);
            i18 = (m66h5 >>> 2) | (m66h5 << 30);
            i15 = ((i15 >>> 2) | (i15 << 30)) + (((((i16 << 5) | (i16 >>> 27)) + m66h(m66h6, i18, i19)) + this.f1257X[i6]) - 899497514);
            i17 = (m66h6 >>> 2) | (m66h6 << 30);
            i36++;
            i21 = i21 + 1 + 1 + 1 + 1 + 1;
        }
        this.f1252H1 += i15;
        this.f1253H2 += i16;
        this.f1254H3 += i17;
        this.f1255H4 += i18;
        this.f1256H5 += i19;
        this.xOff = 0;
        for (int i37 = 0; i37 < 16; i37++) {
            this.f1257X[i37] = 0;
        }
    }

    @Override // org.bouncycastle.crypto.digests.GeneralDigest
    protected void processLength(long j) {
        if (this.xOff > 14) {
            processBlock();
        }
        int[] iArr = this.f1257X;
        iArr[14] = (int) (j >>> 32);
        iArr[15] = (int) j;
    }

    @Override // org.bouncycastle.crypto.digests.GeneralDigest
    protected void processWord(byte[] bArr, int i) {
        int i2 = i + 1;
        int i3 = i2 + 1;
        int i4 = (bArr[i3 + 1] & 255) | (bArr[i] << 24) | ((bArr[i2] & 255) << 16) | ((bArr[i3] & 255) << 8);
        int[] iArr = this.f1257X;
        int i5 = this.xOff;
        iArr[i5] = i4;
        int i6 = i5 + 1;
        this.xOff = i6;
        if (i6 == 16) {
            processBlock();
        }
    }

    @Override // org.bouncycastle.crypto.digests.GeneralDigest, org.bouncycastle.crypto.Digest
    public void reset() {
        super.reset();
        this.f1252H1 = 1732584193;
        this.f1253H2 = -271733879;
        this.f1254H3 = -1732584194;
        this.f1255H4 = 271733878;
        this.f1256H5 = -1009589776;
        this.xOff = 0;
        int i = 0;
        while (true) {
            int[] iArr = this.f1257X;
            if (i == iArr.length) {
                return;
            }
            iArr[i] = 0;
            i++;
        }
    }

    @Override // org.bouncycastle.util.Memoable
    public void reset(Memoable memoable) {
        SHA1Digest sHA1Digest = (SHA1Digest) memoable;
        super.copyIn((GeneralDigest) sHA1Digest);
        copyIn(sHA1Digest);
    }
}
