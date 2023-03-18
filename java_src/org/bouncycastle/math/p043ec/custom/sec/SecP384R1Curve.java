package org.bouncycastle.math.p043ec.custom.sec;

import java.math.BigInteger;
import org.bouncycastle.math.p043ec.ECCurve;
import org.bouncycastle.math.p043ec.ECFieldElement;
import org.bouncycastle.math.p043ec.ECLookupTable;
import org.bouncycastle.math.p043ec.ECPoint;
import org.bouncycastle.math.raw.Nat;
import org.bouncycastle.util.encoders.Hex;
/* renamed from: org.bouncycastle.math.ec.custom.sec.SecP384R1Curve */
/* loaded from: classes4.dex */
public class SecP384R1Curve extends ECCurve.AbstractFp {

    /* renamed from: q */
    public static final BigInteger f1360q = new BigInteger(1, Hex.decode("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFF0000000000000000FFFFFFFF"));
    protected SecP384R1Point infinity;

    public SecP384R1Curve() {
        super(f1360q);
        this.infinity = new SecP384R1Point(this, null, null);
        this.f1307a = fromBigInteger(new BigInteger(1, Hex.decode("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFF0000000000000000FFFFFFFC")));
        this.f1308b = fromBigInteger(new BigInteger(1, Hex.decode("B3312FA7E23EE7E4988E056BE3F82D19181D9C6EFE8141120314088F5013875AC656398D8A2ED19D2A85C8EDD3EC2AEF")));
        this.order = new BigInteger(1, Hex.decode("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7634D81F4372DDF581A0DB248B0A77AECEC196ACCC52973"));
        this.cofactor = BigInteger.valueOf(1L);
        this.coord = 2;
    }

    @Override // org.bouncycastle.math.p043ec.ECCurve
    protected ECCurve cloneCurve() {
        return new SecP384R1Curve();
    }

    @Override // org.bouncycastle.math.p043ec.ECCurve
    public ECLookupTable createCacheSafeLookupTable(ECPoint[] eCPointArr, int i, final int i2) {
        final int[] iArr = new int[i2 * 12 * 2];
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            ECPoint eCPoint = eCPointArr[i + i4];
            Nat.copy(12, ((SecP384R1FieldElement) eCPoint.getRawXCoord()).f1363x, 0, iArr, i3);
            int i5 = i3 + 12;
            Nat.copy(12, ((SecP384R1FieldElement) eCPoint.getRawYCoord()).f1363x, 0, iArr, i5);
            i3 = i5 + 12;
        }
        return new ECLookupTable() { // from class: org.bouncycastle.math.ec.custom.sec.SecP384R1Curve.1
            @Override // org.bouncycastle.math.p043ec.ECLookupTable
            public int getSize() {
                return i2;
            }

            @Override // org.bouncycastle.math.p043ec.ECLookupTable
            public ECPoint lookup(int i6) {
                int[] create = Nat.create(12);
                int[] create2 = Nat.create(12);
                int i7 = 0;
                for (int i8 = 0; i8 < i2; i8++) {
                    int i9 = ((i8 ^ i6) - 1) >> 31;
                    for (int i10 = 0; i10 < 12; i10++) {
                        int i11 = create[i10];
                        int[] iArr2 = iArr;
                        create[i10] = i11 ^ (iArr2[i7 + i10] & i9);
                        create2[i10] = create2[i10] ^ (iArr2[(i7 + 12) + i10] & i9);
                    }
                    i7 += 24;
                }
                return SecP384R1Curve.this.createRawPoint(new SecP384R1FieldElement(create), new SecP384R1FieldElement(create2), false);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.bouncycastle.math.p043ec.ECCurve
    public ECPoint createRawPoint(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, boolean z) {
        return new SecP384R1Point(this, eCFieldElement, eCFieldElement2, z);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.bouncycastle.math.p043ec.ECCurve
    public ECPoint createRawPoint(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr, boolean z) {
        return new SecP384R1Point(this, eCFieldElement, eCFieldElement2, eCFieldElementArr, z);
    }

    @Override // org.bouncycastle.math.p043ec.ECCurve
    public ECFieldElement fromBigInteger(BigInteger bigInteger) {
        return new SecP384R1FieldElement(bigInteger);
    }

    @Override // org.bouncycastle.math.p043ec.ECCurve
    public int getFieldSize() {
        return f1360q.bitLength();
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
