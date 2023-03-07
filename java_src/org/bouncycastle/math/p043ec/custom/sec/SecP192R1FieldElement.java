package org.bouncycastle.math.p043ec.custom.sec;

import java.math.BigInteger;
import org.bouncycastle.math.p043ec.ECFieldElement;
import org.bouncycastle.math.raw.Mod;
import org.bouncycastle.math.raw.Nat192;
import org.bouncycastle.util.Arrays;
/* renamed from: org.bouncycastle.math.ec.custom.sec.SecP192R1FieldElement */
/* loaded from: classes4.dex */
public class SecP192R1FieldElement extends ECFieldElement.AbstractFp {

    /* renamed from: Q */
    public static final BigInteger f1337Q = SecP192R1Curve.f1335q;

    /* renamed from: x */
    protected int[] f1338x;

    public SecP192R1FieldElement() {
        this.f1338x = Nat192.create();
    }

    public SecP192R1FieldElement(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(f1337Q) >= 0) {
            throw new IllegalArgumentException("x value invalid for SecP192R1FieldElement");
        }
        this.f1338x = SecP192R1Field.fromBigInteger(bigInteger);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public SecP192R1FieldElement(int[] iArr) {
        this.f1338x = iArr;
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public ECFieldElement add(ECFieldElement eCFieldElement) {
        int[] create = Nat192.create();
        SecP192R1Field.add(this.f1338x, ((SecP192R1FieldElement) eCFieldElement).f1338x, create);
        return new SecP192R1FieldElement(create);
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public ECFieldElement addOne() {
        int[] create = Nat192.create();
        SecP192R1Field.addOne(this.f1338x, create);
        return new SecP192R1FieldElement(create);
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public ECFieldElement divide(ECFieldElement eCFieldElement) {
        int[] create = Nat192.create();
        Mod.invert(SecP192R1Field.f1336P, ((SecP192R1FieldElement) eCFieldElement).f1338x, create);
        SecP192R1Field.multiply(create, this.f1338x, create);
        return new SecP192R1FieldElement(create);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof SecP192R1FieldElement) {
            return Nat192.m66eq(this.f1338x, ((SecP192R1FieldElement) obj).f1338x);
        }
        return false;
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public int getFieldSize() {
        return f1337Q.bitLength();
    }

    public int hashCode() {
        return f1337Q.hashCode() ^ Arrays.hashCode(this.f1338x, 0, 6);
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public ECFieldElement invert() {
        int[] create = Nat192.create();
        Mod.invert(SecP192R1Field.f1336P, this.f1338x, create);
        return new SecP192R1FieldElement(create);
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public boolean isOne() {
        return Nat192.isOne(this.f1338x);
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public boolean isZero() {
        return Nat192.isZero(this.f1338x);
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public ECFieldElement multiply(ECFieldElement eCFieldElement) {
        int[] create = Nat192.create();
        SecP192R1Field.multiply(this.f1338x, ((SecP192R1FieldElement) eCFieldElement).f1338x, create);
        return new SecP192R1FieldElement(create);
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public ECFieldElement negate() {
        int[] create = Nat192.create();
        SecP192R1Field.negate(this.f1338x, create);
        return new SecP192R1FieldElement(create);
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public ECFieldElement sqrt() {
        int[] iArr = this.f1338x;
        if (Nat192.isZero(iArr) || Nat192.isOne(iArr)) {
            return this;
        }
        int[] create = Nat192.create();
        int[] create2 = Nat192.create();
        SecP192R1Field.square(iArr, create);
        SecP192R1Field.multiply(create, iArr, create);
        SecP192R1Field.squareN(create, 2, create2);
        SecP192R1Field.multiply(create2, create, create2);
        SecP192R1Field.squareN(create2, 4, create);
        SecP192R1Field.multiply(create, create2, create);
        SecP192R1Field.squareN(create, 8, create2);
        SecP192R1Field.multiply(create2, create, create2);
        SecP192R1Field.squareN(create2, 16, create);
        SecP192R1Field.multiply(create, create2, create);
        SecP192R1Field.squareN(create, 32, create2);
        SecP192R1Field.multiply(create2, create, create2);
        SecP192R1Field.squareN(create2, 64, create);
        SecP192R1Field.multiply(create, create2, create);
        SecP192R1Field.squareN(create, 62, create);
        SecP192R1Field.square(create, create2);
        if (Nat192.m66eq(iArr, create2)) {
            return new SecP192R1FieldElement(create);
        }
        return null;
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public ECFieldElement square() {
        int[] create = Nat192.create();
        SecP192R1Field.square(this.f1338x, create);
        return new SecP192R1FieldElement(create);
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public boolean testBitZero() {
        return Nat192.getBit(this.f1338x, 0) == 1;
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public BigInteger toBigInteger() {
        return Nat192.toBigInteger(this.f1338x);
    }
}
