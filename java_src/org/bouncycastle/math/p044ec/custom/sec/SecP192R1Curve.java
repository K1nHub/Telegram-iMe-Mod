package org.bouncycastle.math.p044ec.custom.sec;

import java.math.BigInteger;
import org.bouncycastle.math.p044ec.ECCurve;
import org.bouncycastle.math.p044ec.ECFieldElement;
import org.bouncycastle.math.p044ec.ECLookupTable;
import org.bouncycastle.math.p044ec.ECPoint;
import org.bouncycastle.math.raw.Nat192;
import org.bouncycastle.util.encoders.Hex;
/* renamed from: org.bouncycastle.math.ec.custom.sec.SecP192R1Curve */
/* loaded from: classes4.dex */
public class SecP192R1Curve extends ECCurve.AbstractFp {

    /* renamed from: q */
    public static final BigInteger f1346q = new BigInteger(1, Hex.decode("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFF"));
    protected SecP192R1Point infinity;

    public SecP192R1Curve() {
        super(f1346q);
        this.infinity = new SecP192R1Point(this, null, null);
        this.f1313a = fromBigInteger(new BigInteger(1, Hex.decode("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFC")));
        this.f1314b = fromBigInteger(new BigInteger(1, Hex.decode("64210519E59C80E70FA7E9AB72243049FEB8DEECC146B9B1")));
        this.order = new BigInteger(1, Hex.decode("FFFFFFFFFFFFFFFFFFFFFFFF99DEF836146BC9B1B4D22831"));
        this.cofactor = BigInteger.valueOf(1L);
        this.coord = 2;
    }

    @Override // org.bouncycastle.math.p044ec.ECCurve
    protected ECCurve cloneCurve() {
        return new SecP192R1Curve();
    }

    @Override // org.bouncycastle.math.p044ec.ECCurve
    public ECLookupTable createCacheSafeLookupTable(ECPoint[] eCPointArr, int i, final int i2) {
        final int[] iArr = new int[i2 * 6 * 2];
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            ECPoint eCPoint = eCPointArr[i + i4];
            Nat192.copy(((SecP192R1FieldElement) eCPoint.getRawXCoord()).f1349x, 0, iArr, i3);
            int i5 = i3 + 6;
            Nat192.copy(((SecP192R1FieldElement) eCPoint.getRawYCoord()).f1349x, 0, iArr, i5);
            i3 = i5 + 6;
        }
        return new ECLookupTable() { // from class: org.bouncycastle.math.ec.custom.sec.SecP192R1Curve.1
            @Override // org.bouncycastle.math.p044ec.ECLookupTable
            public int getSize() {
                return i2;
            }

            @Override // org.bouncycastle.math.p044ec.ECLookupTable
            public ECPoint lookup(int i6) {
                int[] create = Nat192.create();
                int[] create2 = Nat192.create();
                int i7 = 0;
                for (int i8 = 0; i8 < i2; i8++) {
                    int i9 = ((i8 ^ i6) - 1) >> 31;
                    for (int i10 = 0; i10 < 6; i10++) {
                        int i11 = create[i10];
                        int[] iArr2 = iArr;
                        create[i10] = i11 ^ (iArr2[i7 + i10] & i9);
                        create2[i10] = create2[i10] ^ (iArr2[(i7 + 6) + i10] & i9);
                    }
                    i7 += 12;
                }
                return SecP192R1Curve.this.createRawPoint(new SecP192R1FieldElement(create), new SecP192R1FieldElement(create2), false);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.bouncycastle.math.p044ec.ECCurve
    public ECPoint createRawPoint(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, boolean z) {
        return new SecP192R1Point(this, eCFieldElement, eCFieldElement2, z);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.bouncycastle.math.p044ec.ECCurve
    public ECPoint createRawPoint(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr, boolean z) {
        return new SecP192R1Point(this, eCFieldElement, eCFieldElement2, eCFieldElementArr, z);
    }

    @Override // org.bouncycastle.math.p044ec.ECCurve
    public ECFieldElement fromBigInteger(BigInteger bigInteger) {
        return new SecP192R1FieldElement(bigInteger);
    }

    @Override // org.bouncycastle.math.p044ec.ECCurve
    public int getFieldSize() {
        return f1346q.bitLength();
    }

    @Override // org.bouncycastle.math.p044ec.ECCurve
    public ECPoint getInfinity() {
        return this.infinity;
    }

    @Override // org.bouncycastle.math.p044ec.ECCurve
    public boolean supportsCoordinateSystem(int i) {
        return i == 2;
    }
}
