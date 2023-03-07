package org.bouncycastle.math.p043ec.custom.sec;

import java.math.BigInteger;
import org.bouncycastle.math.p043ec.ECCurve;
import org.bouncycastle.math.p043ec.ECFieldElement;
import org.bouncycastle.math.p043ec.ECLookupTable;
import org.bouncycastle.math.p043ec.ECPoint;
import org.bouncycastle.math.raw.Nat160;
import org.bouncycastle.util.encoders.Hex;
/* renamed from: org.bouncycastle.math.ec.custom.sec.SecP160R2Curve */
/* loaded from: classes4.dex */
public class SecP160R2Curve extends ECCurve.AbstractFp {

    /* renamed from: q */
    public static final BigInteger f1327q = new BigInteger(1, Hex.decode("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFAC73"));
    protected SecP160R2Point infinity;

    public SecP160R2Curve() {
        super(f1327q);
        this.infinity = new SecP160R2Point(this, null, null);
        this.f1302a = fromBigInteger(new BigInteger(1, Hex.decode("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFAC70")));
        this.f1303b = fromBigInteger(new BigInteger(1, Hex.decode("B4E134D3FB59EB8BAB57274904664D5AF50388BA")));
        this.order = new BigInteger(1, Hex.decode("0100000000000000000000351EE786A818F3A1A16B"));
        this.cofactor = BigInteger.valueOf(1L);
        this.coord = 2;
    }

    @Override // org.bouncycastle.math.p043ec.ECCurve
    protected ECCurve cloneCurve() {
        return new SecP160R2Curve();
    }

    @Override // org.bouncycastle.math.p043ec.ECCurve
    public ECLookupTable createCacheSafeLookupTable(ECPoint[] eCPointArr, int i, final int i2) {
        final int[] iArr = new int[i2 * 5 * 2];
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            ECPoint eCPoint = eCPointArr[i + i4];
            Nat160.copy(((SecP160R2FieldElement) eCPoint.getRawXCoord()).f1330x, 0, iArr, i3);
            int i5 = i3 + 5;
            Nat160.copy(((SecP160R2FieldElement) eCPoint.getRawYCoord()).f1330x, 0, iArr, i5);
            i3 = i5 + 5;
        }
        return new ECLookupTable() { // from class: org.bouncycastle.math.ec.custom.sec.SecP160R2Curve.1
            @Override // org.bouncycastle.math.p043ec.ECLookupTable
            public int getSize() {
                return i2;
            }

            @Override // org.bouncycastle.math.p043ec.ECLookupTable
            public ECPoint lookup(int i6) {
                int[] create = Nat160.create();
                int[] create2 = Nat160.create();
                int i7 = 0;
                for (int i8 = 0; i8 < i2; i8++) {
                    int i9 = ((i8 ^ i6) - 1) >> 31;
                    for (int i10 = 0; i10 < 5; i10++) {
                        int i11 = create[i10];
                        int[] iArr2 = iArr;
                        create[i10] = i11 ^ (iArr2[i7 + i10] & i9);
                        create2[i10] = create2[i10] ^ (iArr2[(i7 + 5) + i10] & i9);
                    }
                    i7 += 10;
                }
                return SecP160R2Curve.this.createRawPoint(new SecP160R2FieldElement(create), new SecP160R2FieldElement(create2), false);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.bouncycastle.math.p043ec.ECCurve
    public ECPoint createRawPoint(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, boolean z) {
        return new SecP160R2Point(this, eCFieldElement, eCFieldElement2, z);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.bouncycastle.math.p043ec.ECCurve
    public ECPoint createRawPoint(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr, boolean z) {
        return new SecP160R2Point(this, eCFieldElement, eCFieldElement2, eCFieldElementArr, z);
    }

    @Override // org.bouncycastle.math.p043ec.ECCurve
    public ECFieldElement fromBigInteger(BigInteger bigInteger) {
        return new SecP160R2FieldElement(bigInteger);
    }

    @Override // org.bouncycastle.math.p043ec.ECCurve
    public int getFieldSize() {
        return f1327q.bitLength();
    }

    @Override // org.bouncycastle.math.p043ec.ECCurve
    public ECPoint getInfinity() {
        return this.infinity;
    }

    @Override // org.bouncycastle.math.p043ec.ECCurve
    public boolean supportsCoordinateSystem(int i) {
        return i == 2;
    }
}
