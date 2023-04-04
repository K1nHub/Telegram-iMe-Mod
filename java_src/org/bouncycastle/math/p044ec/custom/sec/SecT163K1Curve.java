package org.bouncycastle.math.p044ec.custom.sec;

import java.math.BigInteger;
import org.bouncycastle.math.p044ec.ECCurve;
import org.bouncycastle.math.p044ec.ECFieldElement;
import org.bouncycastle.math.p044ec.ECLookupTable;
import org.bouncycastle.math.p044ec.ECMultiplier;
import org.bouncycastle.math.p044ec.ECPoint;
import org.bouncycastle.math.p044ec.WTauNafMultiplier;
import org.bouncycastle.math.raw.Nat192;
import org.bouncycastle.util.encoders.Hex;
/* renamed from: org.bouncycastle.math.ec.custom.sec.SecT163K1Curve */
/* loaded from: classes4.dex */
public class SecT163K1Curve extends ECCurve.AbstractF2m {
    protected SecT163K1Point infinity;

    public SecT163K1Curve() {
        super(163, 3, 6, 7);
        this.infinity = new SecT163K1Point(this, null, null);
        ECFieldElement fromBigInteger = fromBigInteger(BigInteger.valueOf(1L));
        this.f1313a = fromBigInteger;
        this.f1314b = fromBigInteger;
        this.order = new BigInteger(1, Hex.decode("04000000000000000000020108A2E0CC0D99F8A5EF"));
        this.cofactor = BigInteger.valueOf(2L);
        this.coord = 6;
    }

    @Override // org.bouncycastle.math.p044ec.ECCurve
    protected ECCurve cloneCurve() {
        return new SecT163K1Curve();
    }

    @Override // org.bouncycastle.math.p044ec.ECCurve
    public ECLookupTable createCacheSafeLookupTable(ECPoint[] eCPointArr, int i, final int i2) {
        final long[] jArr = new long[i2 * 3 * 2];
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            ECPoint eCPoint = eCPointArr[i + i4];
            Nat192.copy64(((SecT163FieldElement) eCPoint.getRawXCoord()).f1376x, 0, jArr, i3);
            int i5 = i3 + 3;
            Nat192.copy64(((SecT163FieldElement) eCPoint.getRawYCoord()).f1376x, 0, jArr, i5);
            i3 = i5 + 3;
        }
        return new ECLookupTable() { // from class: org.bouncycastle.math.ec.custom.sec.SecT163K1Curve.1
            @Override // org.bouncycastle.math.p044ec.ECLookupTable
            public int getSize() {
                return i2;
            }

            @Override // org.bouncycastle.math.p044ec.ECLookupTable
            public ECPoint lookup(int i6) {
                long[] create64 = Nat192.create64();
                long[] create642 = Nat192.create64();
                int i7 = 0;
                for (int i8 = 0; i8 < i2; i8++) {
                    long j = ((i8 ^ i6) - 1) >> 31;
                    for (int i9 = 0; i9 < 3; i9++) {
                        long j2 = create64[i9];
                        long[] jArr2 = jArr;
                        create64[i9] = j2 ^ (jArr2[i7 + i9] & j);
                        create642[i9] = create642[i9] ^ (jArr2[(i7 + 3) + i9] & j);
                    }
                    i7 += 6;
                }
                return SecT163K1Curve.this.createRawPoint(new SecT163FieldElement(create64), new SecT163FieldElement(create642), false);
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
        return new SecT163K1Point(this, eCFieldElement, eCFieldElement2, z);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.bouncycastle.math.p044ec.ECCurve
    public ECPoint createRawPoint(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr, boolean z) {
        return new SecT163K1Point(this, eCFieldElement, eCFieldElement2, eCFieldElementArr, z);
    }

    @Override // org.bouncycastle.math.p044ec.ECCurve
    public ECFieldElement fromBigInteger(BigInteger bigInteger) {
        return new SecT163FieldElement(bigInteger);
    }

    @Override // org.bouncycastle.math.p044ec.ECCurve
    public int getFieldSize() {
        return 163;
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
