package org.bouncycastle.crypto.digests;

import org.bouncycastle.util.Memoable;
import org.bouncycastle.util.Pack;
/* loaded from: classes4.dex */
public class SHA224Digest extends GeneralDigest {

    /* renamed from: K */
    static final int[] f1343K = {1116352408, 1899447441, -1245643825, -373957723, 961987163, 1508970993, -1841331548, -1424204075, -670586216, 310598401, 607225278, 1426881987, 1925078388, -2132889090, -1680079193, -1046744716, -459576895, -272742522, 264347078, 604807628, 770255983, 1249150122, 1555081692, 1996064986, -1740746414, -1473132947, -1341970488, -1084653625, -958395405, -710438585, 113926993, 338241895, 666307205, 773529912, 1294757372, 1396182291, 1695183700, 1986661051, -2117940946, -1838011259, -1564481375, -1474664885, -1035236496, -949202525, -778901479, -694614492, -200395387, 275423344, 430227734, 506948616, 659060556, 883997877, 958139571, 1322822218, 1537002063, 1747873779, 1955562222, 2024104815, -2067236844, -1933114872, -1866530822, -1538233109, -1090935817, -965641998};

    /* renamed from: H1 */
    private int f1344H1;

    /* renamed from: H2 */
    private int f1345H2;

    /* renamed from: H3 */
    private int f1346H3;

    /* renamed from: H4 */
    private int f1347H4;

    /* renamed from: H5 */
    private int f1348H5;

    /* renamed from: H6 */
    private int f1349H6;

    /* renamed from: H7 */
    private int f1350H7;

    /* renamed from: H8 */
    private int f1351H8;

    /* renamed from: X */
    private int[] f1352X;
    private int xOff;

    public SHA224Digest() {
        this.f1352X = new int[64];
        reset();
    }

    public SHA224Digest(SHA224Digest sHA224Digest) {
        super(sHA224Digest);
        this.f1352X = new int[64];
        doCopy(sHA224Digest);
    }

    /* renamed from: Ch */
    private int m83Ch(int i, int i2, int i3) {
        return ((~i) & i3) ^ (i2 & i);
    }

    private int Maj(int i, int i2, int i3) {
        return ((i & i3) ^ (i & i2)) ^ (i2 & i3);
    }

    private int Sum0(int i) {
        return ((i << 10) | (i >>> 22)) ^ (((i >>> 2) | (i << 30)) ^ ((i >>> 13) | (i << 19)));
    }

    private int Sum1(int i) {
        return ((i << 7) | (i >>> 25)) ^ (((i >>> 6) | (i << 26)) ^ ((i >>> 11) | (i << 21)));
    }

    private int Theta0(int i) {
        return (i >>> 3) ^ (((i >>> 7) | (i << 25)) ^ ((i >>> 18) | (i << 14)));
    }

    private int Theta1(int i) {
        return (i >>> 10) ^ (((i >>> 17) | (i << 15)) ^ ((i >>> 19) | (i << 13)));
    }

    private void doCopy(SHA224Digest sHA224Digest) {
        super.copyIn(sHA224Digest);
        this.f1344H1 = sHA224Digest.f1344H1;
        this.f1345H2 = sHA224Digest.f1345H2;
        this.f1346H3 = sHA224Digest.f1346H3;
        this.f1347H4 = sHA224Digest.f1347H4;
        this.f1348H5 = sHA224Digest.f1348H5;
        this.f1349H6 = sHA224Digest.f1349H6;
        this.f1350H7 = sHA224Digest.f1350H7;
        this.f1351H8 = sHA224Digest.f1351H8;
        int[] iArr = sHA224Digest.f1352X;
        System.arraycopy(iArr, 0, this.f1352X, 0, iArr.length);
        this.xOff = sHA224Digest.xOff;
    }

    @Override // org.bouncycastle.util.Memoable
    public Memoable copy() {
        return new SHA224Digest(this);
    }

    @Override // org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int i) {
        finish();
        Pack.intToBigEndian(this.f1344H1, bArr, i);
        Pack.intToBigEndian(this.f1345H2, bArr, i + 4);
        Pack.intToBigEndian(this.f1346H3, bArr, i + 8);
        Pack.intToBigEndian(this.f1347H4, bArr, i + 12);
        Pack.intToBigEndian(this.f1348H5, bArr, i + 16);
        Pack.intToBigEndian(this.f1349H6, bArr, i + 20);
        Pack.intToBigEndian(this.f1350H7, bArr, i + 24);
        reset();
        return 28;
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return "SHA-224";
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return 28;
    }

    @Override // org.bouncycastle.crypto.digests.GeneralDigest
    protected void processBlock() {
        for (int i = 16; i <= 63; i++) {
            int[] iArr = this.f1352X;
            int Theta1 = Theta1(iArr[i - 2]);
            int[] iArr2 = this.f1352X;
            iArr[i] = Theta1 + iArr2[i - 7] + Theta0(iArr2[i - 15]) + this.f1352X[i - 16];
        }
        int i2 = this.f1344H1;
        int i3 = this.f1345H2;
        int i4 = this.f1346H3;
        int i5 = this.f1347H4;
        int i6 = this.f1348H5;
        int i7 = this.f1349H6;
        int i8 = this.f1350H7;
        int i9 = this.f1351H8;
        int i10 = 0;
        for (int i11 = 0; i11 < 8; i11++) {
            int Sum1 = Sum1(i6) + m83Ch(i6, i7, i8);
            int[] iArr3 = f1343K;
            int i12 = i9 + Sum1 + iArr3[i10] + this.f1352X[i10];
            int i13 = i5 + i12;
            int Sum0 = i12 + Sum0(i2) + Maj(i2, i3, i4);
            int i14 = i10 + 1;
            int Sum12 = i8 + Sum1(i13) + m83Ch(i13, i6, i7) + iArr3[i14] + this.f1352X[i14];
            int i15 = i4 + Sum12;
            int Sum02 = Sum12 + Sum0(Sum0) + Maj(Sum0, i2, i3);
            int i16 = i14 + 1;
            int Sum13 = i7 + Sum1(i15) + m83Ch(i15, i13, i6) + iArr3[i16] + this.f1352X[i16];
            int i17 = i3 + Sum13;
            int Sum03 = Sum13 + Sum0(Sum02) + Maj(Sum02, Sum0, i2);
            int i18 = i16 + 1;
            int Sum14 = i6 + Sum1(i17) + m83Ch(i17, i15, i13) + iArr3[i18] + this.f1352X[i18];
            int i19 = i2 + Sum14;
            int Sum04 = Sum14 + Sum0(Sum03) + Maj(Sum03, Sum02, Sum0);
            int i20 = i18 + 1;
            int Sum15 = i13 + Sum1(i19) + m83Ch(i19, i17, i15) + iArr3[i20] + this.f1352X[i20];
            i9 = Sum0 + Sum15;
            i5 = Sum15 + Sum0(Sum04) + Maj(Sum04, Sum03, Sum02);
            int i21 = i20 + 1;
            int Sum16 = i15 + Sum1(i9) + m83Ch(i9, i19, i17) + iArr3[i21] + this.f1352X[i21];
            i8 = Sum02 + Sum16;
            i4 = Sum16 + Sum0(i5) + Maj(i5, Sum04, Sum03);
            int i22 = i21 + 1;
            int Sum17 = i17 + Sum1(i8) + m83Ch(i8, i9, i19) + iArr3[i22] + this.f1352X[i22];
            i7 = Sum03 + Sum17;
            i3 = Sum17 + Sum0(i4) + Maj(i4, i5, Sum04);
            int i23 = i22 + 1;
            int Sum18 = i19 + Sum1(i7) + m83Ch(i7, i8, i9) + iArr3[i23] + this.f1352X[i23];
            i6 = Sum04 + Sum18;
            i2 = Sum18 + Sum0(i3) + Maj(i3, i4, i5);
            i10 = i23 + 1;
        }
        this.f1344H1 += i2;
        this.f1345H2 += i3;
        this.f1346H3 += i4;
        this.f1347H4 += i5;
        this.f1348H5 += i6;
        this.f1349H6 += i7;
        this.f1350H7 += i8;
        this.f1351H8 += i9;
        this.xOff = 0;
        for (int i24 = 0; i24 < 16; i24++) {
            this.f1352X[i24] = 0;
        }
    }

    @Override // org.bouncycastle.crypto.digests.GeneralDigest
    protected void processLength(long j) {
        if (this.xOff > 14) {
            processBlock();
        }
        int[] iArr = this.f1352X;
        iArr[14] = (int) (j >>> 32);
        iArr[15] = (int) (j & (-1));
    }

    @Override // org.bouncycastle.crypto.digests.GeneralDigest
    protected void processWord(byte[] bArr, int i) {
        int i2 = i + 1;
        int i3 = i2 + 1;
        int i4 = (bArr[i3 + 1] & 255) | (bArr[i] << 24) | ((bArr[i2] & 255) << 16) | ((bArr[i3] & 255) << 8);
        int[] iArr = this.f1352X;
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
        this.f1344H1 = -1056596264;
        this.f1345H2 = 914150663;
        this.f1346H3 = 812702999;
        this.f1347H4 = -150054599;
        this.f1348H5 = -4191439;
        this.f1349H6 = 1750603025;
        this.f1350H7 = 1694076839;
        this.f1351H8 = -1090891868;
        this.xOff = 0;
        int i = 0;
        while (true) {
            int[] iArr = this.f1352X;
            if (i == iArr.length) {
                return;
            }
            iArr[i] = 0;
            i++;
        }
    }

    @Override // org.bouncycastle.util.Memoable
    public void reset(Memoable memoable) {
        doCopy((SHA224Digest) memoable);
    }
}
