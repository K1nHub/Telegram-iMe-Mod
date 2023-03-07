package org.bouncycastle.math.p043ec.custom.sec;

import java.math.BigInteger;
import org.bouncycastle.math.p043ec.ECCurve;
import org.bouncycastle.math.p043ec.ECFieldElement;
import org.bouncycastle.math.p043ec.ECLookupTable;
import org.bouncycastle.math.p043ec.ECPoint;
import org.bouncycastle.math.raw.Nat128;
import org.bouncycastle.util.encoders.Hex;
/* renamed from: org.bouncycastle.math.ec.custom.sec.SecP128R1Curve */
/* loaded from: classes4.dex */
public class SecP128R1Curve extends ECCurve.AbstractFp {

    /* renamed from: q */
    public static final BigInteger f1318q = new BigInteger(1, Hex.decode("FFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFF"));
    protected SecP128R1Point infinity;

    public SecP128R1Curve() {
        super(f1318q);
        this.infinity = new SecP128R1Point(this, null, null);
        this.f1302a = fromBigInteger(new BigInteger(1, Hex.decode("FFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFC")));
        this.f1303b = fromBigInteger(new BigInteger(1, Hex.decode("E87579C11079F43DD824993C2CEE5ED3")));
        this.order = new BigInteger(1, Hex.decode("FFFFFFFE0000000075A30D1B9038A115"));
        this.cofactor = BigInteger.valueOf(1L);
        this.coord = 2;
    }

    @Override // org.bouncycastle.math.p043ec.ECCurve
    protected ECCurve cloneCurve() {
        return new SecP128R1Curve();
    }

    @Override // org.bouncycastle.math.p043ec.ECCurve
    public ECLookupTable createCacheSafeLookupTable(ECPoint[] eCPointArr, int i, final int i2) {
        final int[] iArr = new int[i2 * 4 * 2];
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            ECPoint eCPoint = eCPointArr[i + i4];
            Nat128.copy(((SecP128R1FieldElement) eCPoint.getRawXCoord()).f1321x, 0, iArr, i3);
            int i5 = i3 + 4;
            Nat128.copy(((SecP128R1FieldElement) eCPoint.getRawYCoord()).f1321x, 0, iArr, i5);
            i3 = i5 + 4;
        }
        return new ECLookupTable() { // from class: org.bouncycastle.math.ec.custom.sec.SecP128R1Curve.1
            @Override // org.bouncycastle.math.p043ec.ECLookupTable
            public int getSize() {
                return i2;
            }

            @Override // org.bouncycastle.math.p043ec.ECLookupTable
            public ECPoint lookup(int i6) {
                int[] create = Nat128.create();
                int[] create2 = Nat128.create();
                int i7 = 0;
                for (int i8 = 0; i8 < i2; i8++) {
                    int i9 = ((i8 ^ i6) - 1) >> 31;
                    for (int i10 = 0; i10 < 4; i10++) {
                        int i11 = create[i10];
                        int[] iArr2 = iArr;
                        create[i10] = i11 ^ (iArr2[i7 + i10] & i9);
                        create2[i10] = create2[i10] ^ (iArr2[(i7 + 4) + i10] & i9);
                    }
                    i7 += 8;
                }
                return SecP128R1Curve.this.createRawPoint(new SecP128R1FieldElement(create), new SecP128R1FieldElement(create2), false);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.bouncycastle.math.p043ec.ECCurve
    public ECPoint createRawPoint(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, boolean z) {
        return new SecP128R1Point(this, eCFieldElement, eCFieldElement2, z);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.bouncycastle.math.p043ec.ECCurve
    public ECPoint createRawPoint(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr, boolean z) {
        return new SecP128R1Point(this, eCFieldElement, eCFieldElement2, eCFieldElementArr, z);
    }

    @Override // org.bouncycastle.math.p043ec.ECCurve
    public ECFieldElement fromBigInteger(BigInteger bigInteger) {
        return new SecP128R1FieldElement(bigInteger);
    }

    @Override // org.bouncycastle.math.p043ec.ECCurve
    public int getFieldSize() {
        return f1318q.bitLength();
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
