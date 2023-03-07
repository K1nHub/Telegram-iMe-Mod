package org.bouncycastle.math.p043ec.custom.sec;

import java.math.BigInteger;
import org.bouncycastle.math.p043ec.ECFieldElement;
import org.bouncycastle.math.raw.Mod;
import org.bouncycastle.math.raw.Nat160;
import org.bouncycastle.util.Arrays;
/* renamed from: org.bouncycastle.math.ec.custom.sec.SecP160R1FieldElement */
/* loaded from: classes4.dex */
public class SecP160R1FieldElement extends ECFieldElement.AbstractFp {

    /* renamed from: Q */
    public static final BigInteger f1325Q = SecP160R1Curve.f1323q;

    /* renamed from: x */
    protected int[] f1326x;

    public SecP160R1FieldElement() {
        this.f1326x = Nat160.create();
    }

    public SecP160R1FieldElement(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(f1325Q) >= 0) {
            throw new IllegalArgumentException("x value invalid for SecP160R1FieldElement");
        }
        this.f1326x = SecP160R1Field.fromBigInteger(bigInteger);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public SecP160R1FieldElement(int[] iArr) {
        this.f1326x = iArr;
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public ECFieldElement add(ECFieldElement eCFieldElement) {
        int[] create = Nat160.create();
        SecP160R1Field.add(this.f1326x, ((SecP160R1FieldElement) eCFieldElement).f1326x, create);
        return new SecP160R1FieldElement(create);
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public ECFieldElement addOne() {
        int[] create = Nat160.create();
        SecP160R1Field.addOne(this.f1326x, create);
        return new SecP160R1FieldElement(create);
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public ECFieldElement divide(ECFieldElement eCFieldElement) {
        int[] create = Nat160.create();
        Mod.invert(SecP160R1Field.f1324P, ((SecP160R1FieldElement) eCFieldElement).f1326x, create);
        SecP160R1Field.multiply(create, this.f1326x, create);
        return new SecP160R1FieldElement(create);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof SecP160R1FieldElement) {
            return Nat160.m67eq(this.f1326x, ((SecP160R1FieldElement) obj).f1326x);
        }
        return false;
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public int getFieldSize() {
        return f1325Q.bitLength();
    }

    public int hashCode() {
        return f1325Q.hashCode() ^ Arrays.hashCode(this.f1326x, 0, 5);
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public ECFieldElement invert() {
        int[] create = Nat160.create();
        Mod.invert(SecP160R1Field.f1324P, this.f1326x, create);
        return new SecP160R1FieldElement(create);
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public boolean isOne() {
        return Nat160.isOne(this.f1326x);
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public boolean isZero() {
        return Nat160.isZero(this.f1326x);
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public ECFieldElement multiply(ECFieldElement eCFieldElement) {
        int[] create = Nat160.create();
        SecP160R1Field.multiply(this.f1326x, ((SecP160R1FieldElement) eCFieldElement).f1326x, create);
        return new SecP160R1FieldElement(create);
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public ECFieldElement negate() {
        int[] create = Nat160.create();
        SecP160R1Field.negate(this.f1326x, create);
        return new SecP160R1FieldElement(create);
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public ECFieldElement sqrt() {
        int[] iArr = this.f1326x;
        if (Nat160.isZero(iArr) || Nat160.isOne(iArr)) {
            return this;
        }
        int[] create = Nat160.create();
        SecP160R1Field.square(iArr, create);
        SecP160R1Field.multiply(create, iArr, create);
        int[] create2 = Nat160.create();
        SecP160R1Field.squareN(create, 2, create2);
        SecP160R1Field.multiply(create2, create, create2);
        SecP160R1Field.squareN(create2, 4, create);
        SecP160R1Field.multiply(create, create2, create);
        SecP160R1Field.squareN(create, 8, create2);
        SecP160R1Field.multiply(create2, create, create2);
        SecP160R1Field.squareN(create2, 16, create);
        SecP160R1Field.multiply(create, create2, create);
        SecP160R1Field.squareN(create, 32, create2);
        SecP160R1Field.multiply(create2, create, create2);
        SecP160R1Field.squareN(create2, 64, create);
        SecP160R1Field.multiply(create, create2, create);
        SecP160R1Field.square(create, create2);
        SecP160R1Field.multiply(create2, iArr, create2);
        SecP160R1Field.squareN(create2, 29, create2);
        SecP160R1Field.square(create2, create);
        if (Nat160.m67eq(iArr, create)) {
            return new SecP160R1FieldElement(create2);
        }
        return null;
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public ECFieldElement square() {
        int[] create = Nat160.create();
        SecP160R1Field.square(this.f1326x, create);
        return new SecP160R1FieldElement(create);
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public boolean testBitZero() {
        return Nat160.getBit(this.f1326x, 0) == 1;
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public BigInteger toBigInteger() {
        return Nat160.toBigInteger(this.f1326x);
    }
}
