package org.bouncycastle.math.p043ec.custom.sec;

import org.bouncycastle.math.p043ec.ECCurve;
import org.bouncycastle.math.p043ec.ECFieldElement;
import org.bouncycastle.math.p043ec.ECPoint;
import org.bouncycastle.math.raw.Nat;
import org.bouncycastle.math.raw.Nat192;
/* renamed from: org.bouncycastle.math.ec.custom.sec.SecP192R1Point */
/* loaded from: classes4.dex */
public class SecP192R1Point extends ECPoint.AbstractFp {
    public SecP192R1Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
        this(eCCurve, eCFieldElement, eCFieldElement2, false);
    }

    public SecP192R1Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, boolean z) {
        super(eCCurve, eCFieldElement, eCFieldElement2);
        if ((eCFieldElement == null) != (eCFieldElement2 == null)) {
            throw new IllegalArgumentException("Exactly one of the field elements is null");
        }
        this.withCompression = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SecP192R1Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr, boolean z) {
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
        SecP192R1FieldElement secP192R1FieldElement = (SecP192R1FieldElement) this.f1311x;
        SecP192R1FieldElement secP192R1FieldElement2 = (SecP192R1FieldElement) this.f1312y;
        SecP192R1FieldElement secP192R1FieldElement3 = (SecP192R1FieldElement) eCPoint.getXCoord();
        SecP192R1FieldElement secP192R1FieldElement4 = (SecP192R1FieldElement) eCPoint.getYCoord();
        SecP192R1FieldElement secP192R1FieldElement5 = (SecP192R1FieldElement) this.f1313zs[0];
        SecP192R1FieldElement secP192R1FieldElement6 = (SecP192R1FieldElement) eCPoint.getZCoord(0);
        int[] createExt = Nat192.createExt();
        int[] create = Nat192.create();
        int[] create2 = Nat192.create();
        int[] create3 = Nat192.create();
        boolean isOne = secP192R1FieldElement5.isOne();
        if (isOne) {
            iArr = secP192R1FieldElement3.f1344x;
            iArr2 = secP192R1FieldElement4.f1344x;
        } else {
            SecP192R1Field.square(secP192R1FieldElement5.f1344x, create2);
            SecP192R1Field.multiply(create2, secP192R1FieldElement3.f1344x, create);
            SecP192R1Field.multiply(create2, secP192R1FieldElement5.f1344x, create2);
            SecP192R1Field.multiply(create2, secP192R1FieldElement4.f1344x, create2);
            iArr = create;
            iArr2 = create2;
        }
        boolean isOne2 = secP192R1FieldElement6.isOne();
        if (isOne2) {
            iArr3 = secP192R1FieldElement.f1344x;
            iArr4 = secP192R1FieldElement2.f1344x;
        } else {
            SecP192R1Field.square(secP192R1FieldElement6.f1344x, create3);
            SecP192R1Field.multiply(create3, secP192R1FieldElement.f1344x, createExt);
            SecP192R1Field.multiply(create3, secP192R1FieldElement6.f1344x, create3);
            SecP192R1Field.multiply(create3, secP192R1FieldElement2.f1344x, create3);
            iArr3 = createExt;
            iArr4 = create3;
        }
        int[] create4 = Nat192.create();
        SecP192R1Field.subtract(iArr3, iArr, create4);
        SecP192R1Field.subtract(iArr4, iArr2, create);
        if (Nat192.isZero(create4)) {
            return Nat192.isZero(create) ? twice() : curve.getInfinity();
        }
        SecP192R1Field.square(create4, create2);
        int[] create5 = Nat192.create();
        SecP192R1Field.multiply(create2, create4, create5);
        SecP192R1Field.multiply(create2, iArr3, create2);
        SecP192R1Field.negate(create5, create5);
        Nat192.mul(iArr4, create5, createExt);
        SecP192R1Field.reduce32(Nat192.addBothTo(create2, create2, create5), create5);
        SecP192R1FieldElement secP192R1FieldElement7 = new SecP192R1FieldElement(create3);
        SecP192R1Field.square(create, secP192R1FieldElement7.f1344x);
        int[] iArr5 = secP192R1FieldElement7.f1344x;
        SecP192R1Field.subtract(iArr5, create5, iArr5);
        SecP192R1FieldElement secP192R1FieldElement8 = new SecP192R1FieldElement(create5);
        SecP192R1Field.subtract(create2, secP192R1FieldElement7.f1344x, secP192R1FieldElement8.f1344x);
        SecP192R1Field.multiplyAddToExt(secP192R1FieldElement8.f1344x, create, createExt);
        SecP192R1Field.reduce(createExt, secP192R1FieldElement8.f1344x);
        SecP192R1FieldElement secP192R1FieldElement9 = new SecP192R1FieldElement(create4);
        if (!isOne) {
            int[] iArr6 = secP192R1FieldElement9.f1344x;
            SecP192R1Field.multiply(iArr6, secP192R1FieldElement5.f1344x, iArr6);
        }
        if (!isOne2) {
            int[] iArr7 = secP192R1FieldElement9.f1344x;
            SecP192R1Field.multiply(iArr7, secP192R1FieldElement6.f1344x, iArr7);
        }
        return new SecP192R1Point(curve, secP192R1FieldElement7, secP192R1FieldElement8, new ECFieldElement[]{secP192R1FieldElement9}, this.withCompression);
    }

    @Override // org.bouncycastle.math.p043ec.ECPoint
    public ECPoint negate() {
        return isInfinity() ? this : new SecP192R1Point(this.curve, this.f1311x, this.f1312y.negate(), this.f1313zs, this.withCompression);
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
        SecP192R1FieldElement secP192R1FieldElement = (SecP192R1FieldElement) this.f1312y;
        if (secP192R1FieldElement.isZero()) {
            return curve.getInfinity();
        }
        SecP192R1FieldElement secP192R1FieldElement2 = (SecP192R1FieldElement) this.f1311x;
        SecP192R1FieldElement secP192R1FieldElement3 = (SecP192R1FieldElement) this.f1313zs[0];
        int[] create = Nat192.create();
        int[] create2 = Nat192.create();
        int[] create3 = Nat192.create();
        SecP192R1Field.square(secP192R1FieldElement.f1344x, create3);
        int[] create4 = Nat192.create();
        SecP192R1Field.square(create3, create4);
        boolean isOne = secP192R1FieldElement3.isOne();
        int[] iArr = secP192R1FieldElement3.f1344x;
        if (!isOne) {
            SecP192R1Field.square(iArr, create2);
            iArr = create2;
        }
        SecP192R1Field.subtract(secP192R1FieldElement2.f1344x, iArr, create);
        SecP192R1Field.add(secP192R1FieldElement2.f1344x, iArr, create2);
        SecP192R1Field.multiply(create2, create, create2);
        SecP192R1Field.reduce32(Nat192.addBothTo(create2, create2, create2), create2);
        SecP192R1Field.multiply(create3, secP192R1FieldElement2.f1344x, create3);
        SecP192R1Field.reduce32(Nat.shiftUpBits(6, create3, 2, 0), create3);
        SecP192R1Field.reduce32(Nat.shiftUpBits(6, create4, 3, 0, create), create);
        SecP192R1FieldElement secP192R1FieldElement4 = new SecP192R1FieldElement(create4);
        SecP192R1Field.square(create2, secP192R1FieldElement4.f1344x);
        int[] iArr2 = secP192R1FieldElement4.f1344x;
        SecP192R1Field.subtract(iArr2, create3, iArr2);
        int[] iArr3 = secP192R1FieldElement4.f1344x;
        SecP192R1Field.subtract(iArr3, create3, iArr3);
        SecP192R1FieldElement secP192R1FieldElement5 = new SecP192R1FieldElement(create3);
        SecP192R1Field.subtract(create3, secP192R1FieldElement4.f1344x, secP192R1FieldElement5.f1344x);
        int[] iArr4 = secP192R1FieldElement5.f1344x;
        SecP192R1Field.multiply(iArr4, create2, iArr4);
        int[] iArr5 = secP192R1FieldElement5.f1344x;
        SecP192R1Field.subtract(iArr5, create, iArr5);
        SecP192R1FieldElement secP192R1FieldElement6 = new SecP192R1FieldElement(create2);
        SecP192R1Field.twice(secP192R1FieldElement.f1344x, secP192R1FieldElement6.f1344x);
        if (!isOne) {
            int[] iArr6 = secP192R1FieldElement6.f1344x;
            SecP192R1Field.multiply(iArr6, secP192R1FieldElement3.f1344x, iArr6);
        }
        return new SecP192R1Point(curve, secP192R1FieldElement4, secP192R1FieldElement5, new ECFieldElement[]{secP192R1FieldElement6}, this.withCompression);
    }

    @Override // org.bouncycastle.math.p043ec.ECPoint
    public ECPoint twicePlus(ECPoint eCPoint) {
        return this == eCPoint ? threeTimes() : isInfinity() ? eCPoint : eCPoint.isInfinity() ? twice() : this.f1312y.isZero() ? eCPoint : twice().add(eCPoint);
    }
}
