package org.bouncycastle.math.p043ec.custom.sec;

import java.math.BigInteger;
import org.bouncycastle.math.p043ec.ECCurve;
import org.bouncycastle.math.p043ec.ECFieldElement;
import org.bouncycastle.math.p043ec.ECLookupTable;
import org.bouncycastle.math.p043ec.ECPoint;
import org.bouncycastle.math.raw.Nat256;
import org.bouncycastle.util.encoders.Hex;
/* renamed from: org.bouncycastle.math.ec.custom.sec.SecT193R2Curve */
/* loaded from: classes4.dex */
public class SecT193R2Curve extends ECCurve.AbstractF2m {
    protected SecT193R2Point infinity;

    public SecT193R2Curve() {
        super(193, 15, 0, 0);
        this.infinity = new SecT193R2Point(this, null, null);
        this.f1307a = fromBigInteger(new BigInteger(1, Hex.decode("0163F35A5137C2CE3EA6ED8667190B0BC43ECD69977702709B")));
        this.f1308b = fromBigInteger(new BigInteger(1, Hex.decode("00C9BB9E8927D4D64C377E2AB2856A5B16E3EFB7F61D4316AE")));
        this.order = new BigInteger(1, Hex.decode("010000000000000000000000015AAB561B005413CCD4EE99D5"));
        this.cofactor = BigInteger.valueOf(2L);
        this.coord = 6;
    }

    @Override // org.bouncycastle.math.p043ec.ECCurve
    protected ECCurve cloneCurve() {
        return new SecT193R2Curve();
    }

    @Override // org.bouncycastle.math.p043ec.ECCurve
    public ECLookupTable createCacheSafeLookupTable(ECPoint[] eCPointArr, int i, final int i2) {
        final long[] jArr = new long[i2 * 4 * 2];
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            ECPoint eCPoint = eCPointArr[i + i4];
            Nat256.copy64(((SecT193FieldElement) eCPoint.getRawXCoord()).f1371x, 0, jArr, i3);
            int i5 = i3 + 4;
            Nat256.copy64(((SecT193FieldElement) eCPoint.getRawYCoord()).f1371x, 0, jArr, i5);
            i3 = i5 + 4;
        }
        return new ECLookupTable() { // from class: org.bouncycastle.math.ec.custom.sec.SecT193R2Curve.1
            @Override // org.bouncycastle.math.p043ec.ECLookupTable
            public int getSize() {
                return i2;
            }

            @Override // org.bouncycastle.math.p043ec.ECLookupTable
            public ECPoint lookup(int i6) {
                long[] create64 = Nat256.create64();
                long[] create642 = Nat256.create64();
                int i7 = 0;
                for (int i8 = 0; i8 < i2; i8++) {
                    long j = ((i8 ^ i6) - 1) >> 31;
                    for (int i9 = 0; i9 < 4; i9++) {
                        long j2 = create64[i9];
                        long[] jArr2 = jArr;
                        create64[i9] = j2 ^ (jArr2[i7 + i9] & j);
                        create642[i9] = create642[i9] ^ (jArr2[(i7 + 4) + i9] & j);
                    }
                    i7 += 8;
                }
                return SecT193R2Curve.this.createRawPoint(new SecT193FieldElement(create64), new SecT193FieldElement(create642), false);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.bouncycastle.math.p043ec.ECCurve
    public ECPoint createRawPoint(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, boolean z) {
        return new SecT193R2Point(this, eCFieldElement, eCFieldElement2, z);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.bouncycastle.math.p043ec.ECCurve
    public ECPoint createRawPoint(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr, boolean z) {
        return new SecT193R2Point(this, eCFieldElement, eCFieldElement2, eCFieldElementArr, z);
    }

    @Override // org.bouncycastle.math.p043ec.ECCurve
    public ECFieldElement fromBigInteger(BigInteger bigInteger) {
        return new SecT193FieldElement(bigInteger);
    }

    @Override // org.bouncycastle.math.p043ec.ECCurve
    public int getFieldSize() {
        return 193;
    }

    @Override // org.bouncycastle.math.p043ec.ECCurve
    public ECPoint getInfinity() {
        return this.infinity;
    }

    @Override // org.bouncycastle.math.p043ec.ECCurve.AbstractF2m
    public boolean isKoblitz() {
        return false;
    }

    @Override // org.bouncycastle.math.p043ec.ECCurve
    public boolean supportsCoordinateSystem(int i) {
        return i == 6;
    }
}
