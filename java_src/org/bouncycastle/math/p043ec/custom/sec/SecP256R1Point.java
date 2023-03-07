package org.bouncycastle.math.p043ec.custom.sec;

import org.bouncycastle.math.p043ec.ECCurve;
import org.bouncycastle.math.p043ec.ECFieldElement;
import org.bouncycastle.math.p043ec.ECPoint;
import org.bouncycastle.math.raw.Nat;
import org.bouncycastle.math.raw.Nat256;
/* renamed from: org.bouncycastle.math.ec.custom.sec.SecP256R1Point */
/* loaded from: classes4.dex */
public class SecP256R1Point extends ECPoint.AbstractFp {
    public SecP256R1Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
        this(eCCurve, eCFieldElement, eCFieldElement2, false);
    }

    public SecP256R1Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, boolean z) {
        super(eCCurve, eCFieldElement, eCFieldElement2);
        if ((eCFieldElement == null) != (eCFieldElement2 == null)) {
            throw new IllegalArgumentException("Exactly one of the field elements is null");
        }
        this.withCompression = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SecP256R1Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr, boolean z) {
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
        SecP256R1FieldElement secP256R1FieldElement = (SecP256R1FieldElement) this.f1305x;
        SecP256R1FieldElement secP256R1FieldElement2 = (SecP256R1FieldElement) this.f1306y;
        SecP256R1FieldElement secP256R1FieldElement3 = (SecP256R1FieldElement) eCPoint.getXCoord();
        SecP256R1FieldElement secP256R1FieldElement4 = (SecP256R1FieldElement) eCPoint.getYCoord();
        SecP256R1FieldElement secP256R1FieldElement5 = (SecP256R1FieldElement) this.f1307zs[0];
        SecP256R1FieldElement secP256R1FieldElement6 = (SecP256R1FieldElement) eCPoint.getZCoord(0);
        int[] createExt = Nat256.createExt();
        int[] create = Nat256.create();
        int[] create2 = Nat256.create();
        int[] create3 = Nat256.create();
        boolean isOne = secP256R1FieldElement5.isOne();
        if (isOne) {
            iArr = secP256R1FieldElement3.f1354x;
            iArr2 = secP256R1FieldElement4.f1354x;
        } else {
            SecP256R1Field.square(secP256R1FieldElement5.f1354x, create2);
            SecP256R1Field.multiply(create2, secP256R1FieldElement3.f1354x, create);
            SecP256R1Field.multiply(create2, secP256R1FieldElement5.f1354x, create2);
            SecP256R1Field.multiply(create2, secP256R1FieldElement4.f1354x, create2);
            iArr = create;
            iArr2 = create2;
        }
        boolean isOne2 = secP256R1FieldElement6.isOne();
        if (isOne2) {
            iArr3 = secP256R1FieldElement.f1354x;
            iArr4 = secP256R1FieldElement2.f1354x;
        } else {
            SecP256R1Field.square(secP256R1FieldElement6.f1354x, create3);
            SecP256R1Field.multiply(create3, secP256R1FieldElement.f1354x, createExt);
            SecP256R1Field.multiply(create3, secP256R1FieldElement6.f1354x, create3);
            SecP256R1Field.multiply(create3, secP256R1FieldElement2.f1354x, create3);
            iArr3 = createExt;
            iArr4 = create3;
        }
        int[] create4 = Nat256.create();
        SecP256R1Field.subtract(iArr3, iArr, create4);
        SecP256R1Field.subtract(iArr4, iArr2, create);
        if (Nat256.isZero(create4)) {
            return Nat256.isZero(create) ? twice() : curve.getInfinity();
        }
        SecP256R1Field.square(create4, create2);
        int[] create5 = Nat256.create();
        SecP256R1Field.multiply(create2, create4, create5);
        SecP256R1Field.multiply(create2, iArr3, create2);
        SecP256R1Field.negate(create5, create5);
        Nat256.mul(iArr4, create5, createExt);
        SecP256R1Field.reduce32(Nat256.addBothTo(create2, create2, create5), create5);
        SecP256R1FieldElement secP256R1FieldElement7 = new SecP256R1FieldElement(create3);
        SecP256R1Field.square(create, secP256R1FieldElement7.f1354x);
        int[] iArr5 = secP256R1FieldElement7.f1354x;
        SecP256R1Field.subtract(iArr5, create5, iArr5);
        SecP256R1FieldElement secP256R1FieldElement8 = new SecP256R1FieldElement(create5);
        SecP256R1Field.subtract(create2, secP256R1FieldElement7.f1354x, secP256R1FieldElement8.f1354x);
        SecP256R1Field.multiplyAddToExt(secP256R1FieldElement8.f1354x, create, createExt);
        SecP256R1Field.reduce(createExt, secP256R1FieldElement8.f1354x);
        SecP256R1FieldElement secP256R1FieldElement9 = new SecP256R1FieldElement(create4);
        if (!isOne) {
            int[] iArr6 = secP256R1FieldElement9.f1354x;
            SecP256R1Field.multiply(iArr6, secP256R1FieldElement5.f1354x, iArr6);
        }
        if (!isOne2) {
            int[] iArr7 = secP256R1FieldElement9.f1354x;
            SecP256R1Field.multiply(iArr7, secP256R1FieldElement6.f1354x, iArr7);
        }
        return new SecP256R1Point(curve, secP256R1FieldElement7, secP256R1FieldElement8, new ECFieldElement[]{secP256R1FieldElement9}, this.withCompression);
    }

    @Override // org.bouncycastle.math.p043ec.ECPoint
    public ECPoint negate() {
        return isInfinity() ? this : new SecP256R1Point(this.curve, this.f1305x, this.f1306y.negate(), this.f1307zs, this.withCompression);
    }

    @Override // org.bouncycastle.math.p043ec.ECPoint
    public ECPoint threeTimes() {
        return (isInfinity() || this.f1306y.isZero()) ? this : twice().add(this);
    }

    @Override // org.bouncycastle.math.p043ec.ECPoint
    public ECPoint twice() {
        if (isInfinity()) {
            return this;
        }
        ECCurve curve = getCurve();
        SecP256R1FieldElement secP256R1FieldElement = (SecP256R1FieldElement) this.f1306y;
        if (secP256R1FieldElement.isZero()) {
            return curve.getInfinity();
        }
        SecP256R1FieldElement secP256R1FieldElement2 = (SecP256R1FieldElement) this.f1305x;
        SecP256R1FieldElement secP256R1FieldElement3 = (SecP256R1FieldElement) this.f1307zs[0];
        int[] create = Nat256.create();
        int[] create2 = Nat256.create();
        int[] create3 = Nat256.create();
        SecP256R1Field.square(secP256R1FieldElement.f1354x, create3);
        int[] create4 = Nat256.create();
        SecP256R1Field.square(create3, create4);
        boolean isOne = secP256R1FieldElement3.isOne();
        int[] iArr = secP256R1FieldElement3.f1354x;
        if (!isOne) {
            SecP256R1Field.square(iArr, create2);
            iArr = create2;
        }
        SecP256R1Field.subtract(secP256R1FieldElement2.f1354x, iArr, create);
        SecP256R1Field.add(secP256R1FieldElement2.f1354x, iArr, create2);
        SecP256R1Field.multiply(create2, create, create2);
        SecP256R1Field.reduce32(Nat256.addBothTo(create2, create2, create2), create2);
        SecP256R1Field.multiply(create3, secP256R1FieldElement2.f1354x, create3);
        SecP256R1Field.reduce32(Nat.shiftUpBits(8, create3, 2, 0), create3);
        SecP256R1Field.reduce32(Nat.shiftUpBits(8, create4, 3, 0, create), create);
        SecP256R1FieldElement secP256R1FieldElement4 = new SecP256R1FieldElement(create4);
        SecP256R1Field.square(create2, secP256R1FieldElement4.f1354x);
        int[] iArr2 = secP256R1FieldElement4.f1354x;
        SecP256R1Field.subtract(iArr2, create3, iArr2);
        int[] iArr3 = secP256R1FieldElement4.f1354x;
        SecP256R1Field.subtract(iArr3, create3, iArr3);
        SecP256R1FieldElement secP256R1FieldElement5 = new SecP256R1FieldElement(create3);
        SecP256R1Field.subtract(create3, secP256R1FieldElement4.f1354x, secP256R1FieldElement5.f1354x);
        int[] iArr4 = secP256R1FieldElement5.f1354x;
        SecP256R1Field.multiply(iArr4, create2, iArr4);
        int[] iArr5 = secP256R1FieldElement5.f1354x;
        SecP256R1Field.subtract(iArr5, create, iArr5);
        SecP256R1FieldElement secP256R1FieldElement6 = new SecP256R1FieldElement(create2);
        SecP256R1Field.twice(secP256R1FieldElement.f1354x, secP256R1FieldElement6.f1354x);
        if (!isOne) {
            int[] iArr6 = secP256R1FieldElement6.f1354x;
            SecP256R1Field.multiply(iArr6, secP256R1FieldElement3.f1354x, iArr6);
        }
        return new SecP256R1Point(curve, secP256R1FieldElement4, secP256R1FieldElement5, new ECFieldElement[]{secP256R1FieldElement6}, this.withCompression);
    }

    @Override // org.bouncycastle.math.p043ec.ECPoint
    public ECPoint twicePlus(ECPoint eCPoint) {
        return this == eCPoint ? threeTimes() : isInfinity() ? eCPoint : eCPoint.isInfinity() ? twice() : this.f1306y.isZero() ? eCPoint : twice().add(eCPoint);
    }
}
