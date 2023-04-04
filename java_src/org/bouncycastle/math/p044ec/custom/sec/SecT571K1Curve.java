package org.bouncycastle.math.p044ec.custom.sec;

import java.math.BigInteger;
import org.bouncycastle.math.p044ec.ECCurve;
import org.bouncycastle.math.p044ec.ECFieldElement;
import org.bouncycastle.math.p044ec.ECLookupTable;
import org.bouncycastle.math.p044ec.ECMultiplier;
import org.bouncycastle.math.p044ec.ECPoint;
import org.bouncycastle.math.p044ec.WTauNafMultiplier;
import org.bouncycastle.math.raw.Nat576;
import org.bouncycastle.util.encoders.Hex;
/* renamed from: org.bouncycastle.math.ec.custom.sec.SecT571K1Curve */
/* loaded from: classes4.dex */
public class SecT571K1Curve extends ECCurve.AbstractF2m {
    protected SecT571K1Point infinity;

    public SecT571K1Curve() {
        super(571, 2, 5, 10);
        this.infinity = new SecT571K1Point(this, null, null);
        this.f1313a = fromBigInteger(BigInteger.valueOf(0L));
        this.f1314b = fromBigInteger(BigInteger.valueOf(1L));
        this.order = new BigInteger(1, Hex.decode("020000000000000000000000000000000000000000000000000000000000000000000000131850E1F19A63E4B391A8DB917F4138B630D84BE5D639381E91DEB45CFE778F637C1001"));
        this.cofactor = BigInteger.valueOf(4L);
        this.coord = 6;
    }

    @Override // org.bouncycastle.math.p044ec.ECCurve
    protected ECCurve cloneCurve() {
        return new SecT571K1Curve();
    }

    @Override // org.bouncycastle.math.p044ec.ECCurve
    public ECLookupTable createCacheSafeLookupTable(ECPoint[] eCPointArr, int i, final int i2) {
        final long[] jArr = new long[i2 * 9 * 2];
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            ECPoint eCPoint = eCPointArr[i + i4];
            Nat576.copy64(((SecT571FieldElement) eCPoint.getRawXCoord()).f1382x, 0, jArr, i3);
            int i5 = i3 + 9;
            Nat576.copy64(((SecT571FieldElement) eCPoint.getRawYCoord()).f1382x, 0, jArr, i5);
            i3 = i5 + 9;
        }
        return new ECLookupTable() { // from class: org.bouncycastle.math.ec.custom.sec.SecT571K1Curve.1
            @Override // org.bouncycastle.math.p044ec.ECLookupTable
            public int getSize() {
                return i2;
            }

            @Override // org.bouncycastle.math.p044ec.ECLookupTable
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
                return SecT571K1Curve.this.createRawPoint(new SecT571FieldElement(create64), new SecT571FieldElement(create642), false);
            }
        };
    }

    @Override // org.bouncycastle.math.p044ec.ECCurve
    protected ECMultiplier createDefaultMultiplier() {
        return new WTauNafMultiplier();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.bouncycastle.math.p044ec.ECCurve
    public ECPoint createRawPoint(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, boolean z) {
        return new SecT571K1Point(this, eCFieldElement, eCFieldElement2, z);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.bouncycastle.math.p044ec.ECCurve
    public ECPoint createRawPoint(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr, boolean z) {
        return new SecT571K1Point(this, eCFieldElement, eCFieldElement2, eCFieldElementArr, z);
    }

    @Override // org.bouncycastle.math.p044ec.ECCurve
    public ECFieldElement fromBigInteger(BigInteger bigInteger) {
        return new SecT571FieldElement(bigInteger);
    }

    @Override // org.bouncycastle.math.p044ec.ECCurve
    public int getFieldSize() {
        return 571;
    }

    @Override // org.bouncycastle.math.p044ec.ECCurve
    public ECPoint getInfinity() {
        return this.infinity;
    }

    @Override // org.bouncycastle.math.p044ec.ECCurve.AbstractF2m
    public boolean isKoblitz() {
        return true;
    }

    @Override // org.bouncycastle.math.p044ec.ECCurve
    public boolean supportsCoordinateSystem(int i) {
        return i == 6;
    }
}
