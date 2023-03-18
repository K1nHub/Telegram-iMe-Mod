package org.bouncycastle.math.p043ec.custom.sec;

import java.math.BigInteger;
import org.bouncycastle.math.p043ec.ECCurve;
import org.bouncycastle.math.p043ec.ECFieldElement;
import org.bouncycastle.math.p043ec.ECLookupTable;
import org.bouncycastle.math.p043ec.ECPoint;
import org.bouncycastle.math.raw.Nat192;
import org.bouncycastle.util.encoders.Hex;
/* renamed from: org.bouncycastle.math.ec.custom.sec.SecT163R1Curve */
/* loaded from: classes4.dex */
public class SecT163R1Curve extends ECCurve.AbstractF2m {
    protected SecT163R1Point infinity;

    public SecT163R1Curve() {
        super(163, 3, 6, 7);
        this.infinity = new SecT163R1Point(this, null, null);
        this.f1307a = fromBigInteger(new BigInteger(1, Hex.decode("07B6882CAAEFA84F9554FF8428BD88E246D2782AE2")));
        this.f1308b = fromBigInteger(new BigInteger(1, Hex.decode("0713612DCDDCB40AAB946BDA29CA91F73AF958AFD9")));
        this.order = new BigInteger(1, Hex.decode("03FFFFFFFFFFFFFFFFFFFF48AAB689C29CA710279B"));
        this.cofactor = BigInteger.valueOf(2L);
        this.coord = 6;
    }

    @Override // org.bouncycastle.math.p043ec.ECCurve
    protected ECCurve cloneCurve() {
        return new SecT163R1Curve();
    }

    @Override // org.bouncycastle.math.p043ec.ECCurve
    public ECLookupTable createCacheSafeLookupTable(ECPoint[] eCPointArr, int i, final int i2) {
        final long[] jArr = new long[i2 * 3 * 2];
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            ECPoint eCPoint = eCPointArr[i + i4];
            Nat192.copy64(((SecT163FieldElement) eCPoint.getRawXCoord()).f1370x, 0, jArr, i3);
            int i5 = i3 + 3;
            Nat192.copy64(((SecT163FieldElement) eCPoint.getRawYCoord()).f1370x, 0, jArr, i5);
            i3 = i5 + 3;
        }
        return new ECLookupTable() { // from class: org.bouncycastle.math.ec.custom.sec.SecT163R1Curve.1
            @Override // org.bouncycastle.math.p043ec.ECLookupTable
            public int getSize() {
                return i2;
            }

            @Override // org.bouncycastle.math.p043ec.ECLookupTable
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
                return SecT163R1Curve.this.createRawPoint(new SecT163FieldElement(create64), new SecT163FieldElement(create642), false);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.bouncycastle.math.p043ec.ECCurve
    public ECPoint createRawPoint(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, boolean z) {
        return new SecT163R1Point(this, eCFieldElement, eCFieldElement2, z);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.bouncycastle.math.p043ec.ECCurve
    public ECPoint createRawPoint(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr, boolean z) {
        return new SecT163R1Point(this, eCFieldElement, eCFieldElement2, eCFieldElementArr, z);
    }

    @Override // org.bouncycastle.math.p043ec.ECCurve
    public ECFieldElement fromBigInteger(BigInteger bigInteger) {
        return new SecT163FieldElement(bigInteger);
    }

    @Override // org.bouncycastle.math.p043ec.ECCurve
    public int getFieldSize() {
        return 163;
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
