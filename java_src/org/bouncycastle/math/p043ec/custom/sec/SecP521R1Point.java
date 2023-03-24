package org.bouncycastle.math.p043ec.custom.sec;

import org.bouncycastle.math.p043ec.ECCurve;
import org.bouncycastle.math.p043ec.ECFieldElement;
import org.bouncycastle.math.p043ec.ECPoint;
import org.bouncycastle.math.raw.Nat;
/* renamed from: org.bouncycastle.math.ec.custom.sec.SecP521R1Point */
/* loaded from: classes4.dex */
public class SecP521R1Point extends ECPoint.AbstractFp {
    public SecP521R1Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
        this(eCCurve, eCFieldElement, eCFieldElement2, false);
    }

    public SecP521R1Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, boolean z) {
        super(eCCurve, eCFieldElement, eCFieldElement2);
        if ((eCFieldElement == null) != (eCFieldElement2 == null)) {
            throw new IllegalArgumentException("Exactly one of the field elements is null");
        }
        this.withCompression = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SecP521R1Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr, boolean z) {
        super(eCCurve, eCFieldElement, eCFieldElement2, eCFieldElementArr);
        this.withCompression = z;
    }

    @Override // org.bouncycastle.math.p043ec.ECPoint
    public ECPoint add(ECPoint eCPoint) {
        int[] iArr;
        int[] iArr2;
        int[] iArr3;
        int[] iArr4;
        if (isInfinity()) {
            return eCPoint;
        }
        if (eCPoint.isInfinity()) {
            return this;
        }
        if (this == eCPoint) {
            return twice();
        }
        ECCurve curve = getCurve();
        SecP521R1FieldElement secP521R1FieldElement = (SecP521R1FieldElement) this.f1311x;
        SecP521R1FieldElement secP521R1FieldElement2 = (SecP521R1FieldElement) this.f1312y;
        SecP521R1FieldElement secP521R1FieldElement3 = (SecP521R1FieldElement) eCPoint.getXCoord();
        SecP521R1FieldElement secP521R1FieldElement4 = (SecP521R1FieldElement) eCPoint.getYCoord();
        SecP521R1FieldElement secP521R1FieldElement5 = (SecP521R1FieldElement) this.f1313zs[0];
        SecP521R1FieldElement secP521R1FieldElement6 = (SecP521R1FieldElement) eCPoint.getZCoord(0);
        int[] create = Nat.create(17);
        int[] create2 = Nat.create(17);
        int[] create3 = Nat.create(17);
        int[] create4 = Nat.create(17);
        boolean isOne = secP521R1FieldElement5.isOne();
        if (isOne) {
            iArr = secP521R1FieldElement3.f1368x;
            iArr2 = secP521R1FieldElement4.f1368x;
        } else {
            SecP521R1Field.square(secP521R1FieldElement5.f1368x, create3);
            SecP521R1Field.multiply(create3, secP521R1FieldElement3.f1368x, create2);
            SecP521R1Field.multiply(create3, secP521R1FieldElement5.f1368x, create3);
            SecP521R1Field.multiply(create3, secP521R1FieldElement4.f1368x, create3);
            iArr = create2;
            iArr2 = create3;
        }
        boolean isOne2 = secP521R1FieldElement6.isOne();
        if (isOne2) {
            iArr3 = secP521R1FieldElement.f1368x;
            iArr4 = secP521R1FieldElement2.f1368x;
        } else {
            SecP521R1Field.square(secP521R1FieldElement6.f1368x, create4);
            SecP521R1Field.multiply(create4, secP521R1FieldElement.f1368x, create);
            SecP521R1Field.multiply(create4, secP521R1FieldElement6.f1368x, create4);
            SecP521R1Field.multiply(create4, secP521R1FieldElement2.f1368x, create4);
            iArr3 = create;
            iArr4 = create4;
        }
        int[] create5 = Nat.create(17);
        SecP521R1Field.subtract(iArr3, iArr, create5);
        SecP521R1Field.subtract(iArr4, iArr2, create2);
        if (Nat.isZero(17, create5)) {
            return Nat.isZero(17, create2) ? twice() : curve.getInfinity();
        }
        SecP521R1Field.square(create5, create3);
        int[] create6 = Nat.create(17);
        SecP521R1Field.multiply(create3, create5, create6);
        SecP521R1Field.multiply(create3, iArr3, create3);
        SecP521R1Field.multiply(iArr4, create6, create);
        SecP521R1FieldElement secP521R1FieldElement7 = new SecP521R1FieldElement(create4);
        SecP521R1Field.square(create2, secP521R1FieldElement7.f1368x);
        int[] iArr5 = secP521R1FieldElement7.f1368x;
        SecP521R1Field.add(iArr5, create6, iArr5);
        int[] iArr6 = secP521R1FieldElement7.f1368x;
        SecP521R1Field.subtract(iArr6, create3, iArr6);
        int[] iArr7 = secP521R1FieldElement7.f1368x;
        SecP521R1Field.subtract(iArr7, create3, iArr7);
        SecP521R1FieldElement secP521R1FieldElement8 = new SecP521R1FieldElement(create6);
        SecP521R1Field.subtract(create3, secP521R1FieldElement7.f1368x, secP521R1FieldElement8.f1368x);
        SecP521R1Field.multiply(secP521R1FieldElement8.f1368x, create2, create2);
        SecP521R1Field.subtract(create2, create, secP521R1FieldElement8.f1368x);
        SecP521R1FieldElement secP521R1FieldElement9 = new SecP521R1FieldElement(create5);
        if (!isOne) {
            int[] iArr8 = secP521R1FieldElement9.f1368x;
            SecP521R1Field.multiply(iArr8, secP521R1FieldElement5.f1368x, iArr8);
        }
        if (!isOne2) {
            int[] iArr9 = secP521R1FieldElement9.f1368x;
            SecP521R1Field.multiply(iArr9, secP521R1FieldElement6.f1368x, iArr9);
        }
        return new SecP521R1Point(curve, secP521R1FieldElement7, secP521R1FieldElement8, new ECFieldElement[]{secP521R1FieldElement9}, this.withCompression);
    }

    @Override // org.bouncycastle.math.p043ec.ECPoint
    public ECPoint negate() {
        return isInfinity() ? this : new SecP521R1Point(this.curve, this.f1311x, this.f1312y.negate(), this.f1313zs, this.withCompression);
    }

    @Override // org.bouncycastle.math.p043ec.ECPoint
    public ECPoint threeTimes() {
        return (isInfinity() || this.f1312y.isZero()) ? this : twice().add(this);
    }

    @Override // org.bouncycastle.math.p043ec.ECPoint
    public ECPoint twice() {
        if (isInfinity()) {
            return this;
        }
        ECCurve curve = getCurve();
        SecP521R1FieldElement secP521R1FieldElement = (SecP521R1FieldElement) this.f1312y;
        if (secP521R1FieldElement.isZero()) {
            return curve.getInfinity();
        }
        SecP521R1FieldElement secP521R1FieldElement2 = (SecP521R1FieldElement) this.f1311x;
        SecP521R1FieldElement secP521R1FieldElement3 = (SecP521R1FieldElement) this.f1313zs[0];
        int[] create = Nat.create(17);
        int[] create2 = Nat.create(17);
        int[] create3 = Nat.create(17);
        SecP521R1Field.square(secP521R1FieldElement.f1368x, create3);
        int[] create4 = Nat.create(17);
        SecP521R1Field.square(create3, create4);
        boolean isOne = secP521R1FieldElement3.isOne();
        int[] iArr = secP521R1FieldElement3.f1368x;
        if (!isOne) {
            SecP521R1Field.square(iArr, create2);
            iArr = create2;
        }
        SecP521R1Field.subtract(secP521R1FieldElement2.f1368x, iArr, create);
        SecP521R1Field.add(secP521R1FieldElement2.f1368x, iArr, create2);
        SecP521R1Field.multiply(create2, create, create2);
        Nat.addBothTo(17, create2, create2, create2);
        SecP521R1Field.reduce23(create2);
        SecP521R1Field.multiply(create3, secP521R1FieldElement2.f1368x, create3);
        Nat.shiftUpBits(17, create3, 2, 0);
        SecP521R1Field.reduce23(create3);
        Nat.shiftUpBits(17, create4, 3, 0, create);
        SecP521R1Field.reduce23(create);
        SecP521R1FieldElement secP521R1FieldElement4 = new SecP521R1FieldElement(create4);
        SecP521R1Field.square(create2, secP521R1FieldElement4.f1368x);
        int[] iArr2 = secP521R1FieldElement4.f1368x;
        SecP521R1Field.subtract(iArr2, create3, iArr2);
        int[] iArr3 = secP521R1FieldElement4.f1368x;
        SecP521R1Field.subtract(iArr3, create3, iArr3);
        SecP521R1FieldElement secP521R1FieldElement5 = new SecP521R1FieldElement(create3);
        SecP521R1Field.subtract(create3, secP521R1FieldElement4.f1368x, secP521R1FieldElement5.f1368x);
        int[] iArr4 = secP521R1FieldElement5.f1368x;
        SecP521R1Field.multiply(iArr4, create2, iArr4);
        int[] iArr5 = secP521R1FieldElement5.f1368x;
        SecP521R1Field.subtract(iArr5, create, iArr5);
        SecP521R1FieldElement secP521R1FieldElement6 = new SecP521R1FieldElement(create2);
        SecP521R1Field.twice(secP521R1FieldElement.f1368x, secP521R1FieldElement6.f1368x);
        if (!isOne) {
            int[] iArr6 = secP521R1FieldElement6.f1368x;
            SecP521R1Field.multiply(iArr6, secP521R1FieldElement3.f1368x, iArr6);
        }
        return new SecP521R1Point(curve, secP521R1FieldElement4, secP521R1FieldElement5, new ECFieldElement[]{secP521R1FieldElement6}, this.withCompression);
    }

    @Override // org.bouncycastle.math.p043ec.ECPoint
    public ECPoint twicePlus(ECPoint eCPoint) {
        return this == eCPoint ? threeTimes() : isInfinity() ? eCPoint : eCPoint.isInfinity() ? twice() : this.f1312y.isZero() ? eCPoint : twice().add(eCPoint);
    }
}
