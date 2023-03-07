package org.bouncycastle.math.p043ec.custom.sec;

import java.math.BigInteger;
import org.bouncycastle.math.p043ec.ECCurve;
import org.bouncycastle.math.p043ec.ECFieldElement;
import org.bouncycastle.math.p043ec.ECLookupTable;
import org.bouncycastle.math.p043ec.ECPoint;
import org.bouncycastle.math.raw.Nat576;
import org.bouncycastle.util.encoders.Hex;
/* renamed from: org.bouncycastle.math.ec.custom.sec.SecT571R1Curve */
/* loaded from: classes4.dex */
public class SecT571R1Curve extends ECCurve.AbstractF2m {
    static final SecT571FieldElement SecT571R1_B;
    static final SecT571FieldElement SecT571R1_B_SQRT;
    protected SecT571R1Point infinity;

    static {
        SecT571FieldElement secT571FieldElement = new SecT571FieldElement(new BigInteger(1, Hex.decode("02F40E7E2221F295DE297117B7F3D62F5C6A97FFCB8CEFF1CD6BA8CE4A9A18AD84FFABBD8EFA59332BE7AD6756A66E294AFD185A78FF12AA520E4DE739BACA0C7FFEFF7F2955727A")));
        SecT571R1_B = secT571FieldElement;
        SecT571R1_B_SQRT = (SecT571FieldElement) secT571FieldElement.sqrt();
    }

    public SecT571R1Curve() {
        super(571, 2, 5, 10);
        this.infinity = new SecT571R1Point(this, null, null);
        this.f1302a = fromBigInteger(BigInteger.valueOf(1L));
        this.f1303b = SecT571R1_B;
        this.order = new BigInteger(1, Hex.decode("03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE661CE18FF55987308059B186823851EC7DD9CA1161DE93D5174D66E8382E9BB2FE84E47"));
        this.cofactor = BigInteger.valueOf(2L);
        this.coord = 6;
    }

    @Override // org.bouncycastle.math.p043ec.ECCurve
    protected ECCurve cloneCurve() {
        return new SecT571R1Curve();
    }

    @Override // org.bouncycastle.math.p043ec.ECCurve
    public ECLookupTable createCacheSafeLookupTable(ECPoint[] eCPointArr, int i, final int i2) {
        final long[] jArr = new long[i2 * 9 * 2];
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            ECPoint eCPoint = eCPointArr[i + i4];
            Nat576.copy64(((SecT571FieldElement) eCPoint.getRawXCoord()).f1371x, 0, jArr, i3);
            int i5 = i3 + 9;
            Nat576.copy64(((SecT571FieldElement) eCPoint.getRawYCoord()).f1371x, 0, jArr, i5);
            i3 = i5 + 9;
        }
        return new ECLookupTable() { // from class: org.bouncycastle.math.ec.custom.sec.SecT571R1Curve.1
            @Override // org.bouncycastle.math.p043ec.ECLookupTable
            public int getSize() {
                return i2;
            }

            @Override // org.bouncycastle.math.p043ec.ECLookupTable
            public ECPoint lookup(int i6) {
                long[] create64 = Nat576.create64();
                long[] create642 = Nat576.create64();
                int i7 = 0;
                for (int i8 = 0; i8 < i2; i8++) {
                    long j = ((i8 ^ i6) - 1) >> 31;
                    for (int i9 = 0; i9 < 9; i9++) {
                        long j2 = create64[i9];
                        long[] jArr2 = jArr;
                        create64[i9] = j2 ^ (jArr2[i7 + i9] & j);
                        create642[i9] = create642[i9] ^ (jArr2[(i7 + 9) + i9] & j);
                    }
                    i7 += 18;
                }
                return SecT571R1Curve.this.createRawPoint(new SecT571FieldElement(create64), new SecT571FieldElement(create642), false);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.bouncycastle.math.p043ec.ECCurve
    public ECPoint createRawPoint(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, boolean z) {
        return new SecT571R1Point(this, eCFieldElement, eCFieldElement2, z);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.bouncycastle.math.p043ec.ECCurve
    public ECPoint createRawPoint(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr, boolean z) {
        return new SecT571R1Point(this, eCFieldElement, eCFieldElement2, eCFieldElementArr, z);
    }

    @Override // org.bouncycastle.math.p043ec.ECCurve
    public ECFieldElement fromBigInteger(BigInteger bigInteger) {
        return new SecT571FieldElement(bigInteger);
    }

    @Override // org.bouncycastle.math.p043ec.ECCurve
    public int getFieldSize() {
        return 571;
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
