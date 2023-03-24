package org.bouncycastle.math.p043ec.custom.sec;

import org.bouncycastle.math.p043ec.ECCurve;
import org.bouncycastle.math.p043ec.ECFieldElement;
import org.bouncycastle.math.p043ec.ECPoint;
import org.bouncycastle.math.raw.Nat;
import org.bouncycastle.math.raw.Nat160;
/* renamed from: org.bouncycastle.math.ec.custom.sec.SecP160R2Point */
/* loaded from: classes4.dex */
public class SecP160R2Point extends ECPoint.AbstractFp {
    public SecP160R2Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
        this(eCCurve, eCFieldElement, eCFieldElement2, false);
    }

    public SecP160R2Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, boolean z) {
        super(eCCurve, eCFieldElement, eCFieldElement2);
        if ((eCFieldElement == null) != (eCFieldElement2 == null)) {
            throw new IllegalArgumentException("Exactly one of the field elements is null");
        }
        this.withCompression = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SecP160R2Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr, boolean z) {
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
        SecP160R2FieldElement secP160R2FieldElement = (SecP160R2FieldElement) this.f1311x;
        SecP160R2FieldElement secP160R2FieldElement2 = (SecP160R2FieldElement) this.f1312y;
        SecP160R2FieldElement secP160R2FieldElement3 = (SecP160R2FieldElement) eCPoint.getXCoord();
        SecP160R2FieldElement secP160R2FieldElement4 = (SecP160R2FieldElement) eCPoint.getYCoord();
        SecP160R2FieldElement secP160R2FieldElement5 = (SecP160R2FieldElement) this.f1313zs[0];
        SecP160R2FieldElement secP160R2FieldElement6 = (SecP160R2FieldElement) eCPoint.getZCoord(0);
        int[] createExt = Nat160.createExt();
        int[] create = Nat160.create();
        int[] create2 = Nat160.create();
        int[] create3 = Nat160.create();
        boolean isOne = secP160R2FieldElement5.isOne();
        if (isOne) {
            iArr = secP160R2FieldElement3.f1336x;
            iArr2 = secP160R2FieldElement4.f1336x;
        } else {
            SecP160R2Field.square(secP160R2FieldElement5.f1336x, create2);
            SecP160R2Field.multiply(create2, secP160R2FieldElement3.f1336x, create);
            SecP160R2Field.multiply(create2, secP160R2FieldElement5.f1336x, create2);
            SecP160R2Field.multiply(create2, secP160R2FieldElement4.f1336x, create2);
            iArr = create;
            iArr2 = create2;
        }
        boolean isOne2 = secP160R2FieldElement6.isOne();
        if (isOne2) {
            iArr3 = secP160R2FieldElement.f1336x;
            iArr4 = secP160R2FieldElement2.f1336x;
        } else {
            SecP160R2Field.square(secP160R2FieldElement6.f1336x, create3);
            SecP160R2Field.multiply(create3, secP160R2FieldElement.f1336x, createExt);
            SecP160R2Field.multiply(create3, secP160R2FieldElement6.f1336x, create3);
            SecP160R2Field.multiply(create3, secP160R2FieldElement2.f1336x, create3);
            iArr3 = createExt;
            iArr4 = create3;
        }
        int[] create4 = Nat160.create();
        SecP160R2Field.subtract(iArr3, iArr, create4);
        SecP160R2Field.subtract(iArr4, iArr2, create);
        if (Nat160.isZero(create4)) {
            return Nat160.isZero(create) ? twice() : curve.getInfinity();
        }
        SecP160R2Field.square(create4, create2);
        int[] create5 = Nat160.create();
        SecP160R2Field.multiply(create2, create4, create5);
        SecP160R2Field.multiply(create2, iArr3, create2);
        SecP160R2Field.negate(create5, create5);
        Nat160.mul(iArr4, create5, createExt);
        SecP160R2Field.reduce32(Nat160.addBothTo(create2, create2, create5), create5);
        SecP160R2FieldElement secP160R2FieldElement7 = new SecP160R2FieldElement(create3);
        SecP160R2Field.square(create, secP160R2FieldElement7.f1336x);
        int[] iArr5 = secP160R2FieldElement7.f1336x;
        SecP160R2Field.subtract(iArr5, create5, iArr5);
        SecP160R2FieldElement secP160R2FieldElement8 = new SecP160R2FieldElement(create5);
        SecP160R2Field.subtract(create2, secP160R2FieldElement7.f1336x, secP160R2FieldElement8.f1336x);
        SecP160R2Field.multiplyAddToExt(secP160R2FieldElement8.f1336x, create, createExt);
        SecP160R2Field.reduce(createExt, secP160R2FieldElement8.f1336x);
        SecP160R2FieldElement secP160R2FieldElement9 = new SecP160R2FieldElement(create4);
        if (!isOne) {
            int[] iArr6 = secP160R2FieldElement9.f1336x;
            SecP160R2Field.multiply(iArr6, secP160R2FieldElement5.f1336x, iArr6);
        }
        if (!isOne2) {
            int[] iArr7 = secP160R2FieldElement9.f1336x;
            SecP160R2Field.multiply(iArr7, secP160R2FieldElement6.f1336x, iArr7);
        }
        return new SecP160R2Point(curve, secP160R2FieldElement7, secP160R2FieldElement8, new ECFieldElement[]{secP160R2FieldElement9}, this.withCompression);
    }

    @Override // org.bouncycastle.math.p043ec.ECPoint
    public ECPoint negate() {
        return isInfinity() ? this : new SecP160R2Point(this.curve, this.f1311x, this.f1312y.negate(), this.f1313zs, this.withCompression);
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
        SecP160R2FieldElement secP160R2FieldElement = (SecP160R2FieldElement) this.f1312y;
        if (secP160R2FieldElement.isZero()) {
            return curve.getInfinity();
        }
        SecP160R2FieldElement secP160R2FieldElement2 = (SecP160R2FieldElement) this.f1311x;
        SecP160R2FieldElement secP160R2FieldElement3 = (SecP160R2FieldElement) this.f1313zs[0];
        int[] create = Nat160.create();
        int[] create2 = Nat160.create();
        int[] create3 = Nat160.create();
        SecP160R2Field.square(secP160R2FieldElement.f1336x, create3);
        int[] create4 = Nat160.create();
        SecP160R2Field.square(create3, create4);
        boolean isOne = secP160R2FieldElement3.isOne();
        int[] iArr = secP160R2FieldElement3.f1336x;
        if (!isOne) {
            SecP160R2Field.square(iArr, create2);
            iArr = create2;
        }
        SecP160R2Field.subtract(secP160R2FieldElement2.f1336x, iArr, create);
        SecP160R2Field.add(secP160R2FieldElement2.f1336x, iArr, create2);
        SecP160R2Field.multiply(create2, create, create2);
        SecP160R2Field.reduce32(Nat160.addBothTo(create2, create2, create2), create2);
        SecP160R2Field.multiply(create3, secP160R2FieldElement2.f1336x, create3);
        SecP160R2Field.reduce32(Nat.shiftUpBits(5, create3, 2, 0), create3);
        SecP160R2Field.reduce32(Nat.shiftUpBits(5, create4, 3, 0, create), create);
        SecP160R2FieldElement secP160R2FieldElement4 = new SecP160R2FieldElement(create4);
        SecP160R2Field.square(create2, secP160R2FieldElement4.f1336x);
        int[] iArr2 = secP160R2FieldElement4.f1336x;
        SecP160R2Field.subtract(iArr2, create3, iArr2);
        int[] iArr3 = secP160R2FieldElement4.f1336x;
        SecP160R2Field.subtract(iArr3, create3, iArr3);
        SecP160R2FieldElement secP160R2FieldElement5 = new SecP160R2FieldElement(create3);
        SecP160R2Field.subtract(create3, secP160R2FieldElement4.f1336x, secP160R2FieldElement5.f1336x);
        int[] iArr4 = secP160R2FieldElement5.f1336x;
        SecP160R2Field.multiply(iArr4, create2, iArr4);
        int[] iArr5 = secP160R2FieldElement5.f1336x;
        SecP160R2Field.subtract(iArr5, create, iArr5);
        SecP160R2FieldElement secP160R2FieldElement6 = new SecP160R2FieldElement(create2);
        SecP160R2Field.twice(secP160R2FieldElement.f1336x, secP160R2FieldElement6.f1336x);
        if (!isOne) {
            int[] iArr6 = secP160R2FieldElement6.f1336x;
            SecP160R2Field.multiply(iArr6, secP160R2FieldElement3.f1336x, iArr6);
        }
        return new SecP160R2Point(curve, secP160R2FieldElement4, secP160R2FieldElement5, new ECFieldElement[]{secP160R2FieldElement6}, this.withCompression);
    }

    @Override // org.bouncycastle.math.p043ec.ECPoint
    public ECPoint twicePlus(ECPoint eCPoint) {
        return this == eCPoint ? threeTimes() : isInfinity() ? eCPoint : eCPoint.isInfinity() ? twice() : this.f1312y.isZero() ? eCPoint : twice().add(eCPoint);
    }
}
