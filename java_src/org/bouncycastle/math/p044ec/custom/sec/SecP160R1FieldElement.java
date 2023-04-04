package org.bouncycastle.math.p044ec.custom.sec;

import java.math.BigInteger;
import org.bouncycastle.math.p044ec.ECFieldElement;
import org.bouncycastle.math.raw.Mod;
import org.bouncycastle.math.raw.Nat160;
import org.bouncycastle.util.Arrays;
/* renamed from: org.bouncycastle.math.ec.custom.sec.SecP160R1FieldElement */
/* loaded from: classes4.dex */
public class SecP160R1FieldElement extends ECFieldElement.AbstractFp {

    /* renamed from: Q */
    public static final BigInteger f1336Q = SecP160R1Curve.f1334q;

    /* renamed from: x */
    protected int[] f1337x;

    public SecP160R1FieldElement() {
        this.f1337x = Nat160.create();
    }

    public SecP160R1FieldElement(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(f1336Q) >= 0) {
            throw new IllegalArgumentException("x value invalid for SecP160R1FieldElement");
        }
        this.f1337x = SecP160R1Field.fromBigInteger(bigInteger);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public SecP160R1FieldElement(int[] iArr) {
        this.f1337x = iArr;
    }

    @Override // org.bouncycastle.math.p044ec.ECFieldElement
    public ECFieldElement add(ECFieldElement eCFieldElement) {
        int[] create = Nat160.create();
        SecP160R1Field.add(this.f1337x, ((SecP160R1FieldElement) eCFieldElement).f1337x, create);
        return new SecP160R1FieldElement(create);
    }

    @Override // org.bouncycastle.math.p044ec.ECFieldElement
    public ECFieldElement addOne() {
        int[] create = Nat160.create();
        SecP160R1Field.addOne(this.f1337x, create);
        return new SecP160R1FieldElement(create);
    }

    @Override // org.bouncycastle.math.p044ec.ECFieldElement
    public ECFieldElement divide(ECFieldElement eCFieldElement) {
        int[] create = Nat160.create();
        Mod.invert(SecP160R1Field.f1335P, ((SecP160R1FieldElement) eCFieldElement).f1337x, create);
        SecP160R1Field.multiply(create, this.f1337x, create);
        return new SecP160R1FieldElement(create);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof SecP160R1FieldElement) {
            return Nat160.m62eq(this.f1337x, ((SecP160R1FieldElement) obj).f1337x);
        }
        return false;
    }

    @Override // org.bouncycastle.math.p044ec.ECFieldElement
    public int getFieldSize() {
        return f1336Q.bitLength();
    }

    public int hashCode() {
        return f1336Q.hashCode() ^ Arrays.hashCode(this.f1337x, 0, 5);
    }

    @Override // org.bouncycastle.math.p044ec.ECFieldElement
    public ECFieldElement invert() {
        int[] create = Nat160.create();
        Mod.invert(SecP160R1Field.f1335P, this.f1337x, create);
        return new SecP160R1FieldElement(create);
    }

    @Override // org.bouncycastle.math.p044ec.ECFieldElement
    public boolean isOne() {
        return Nat160.isOne(this.f1337x);
    }

    @Override // org.bouncycastle.math.p044ec.ECFieldElement
    public boolean isZero() {
        return Nat160.isZero(this.f1337x);
    }

    @Override // org.bouncycastle.math.p044ec.ECFieldElement
    public ECFieldElement multiply(ECFieldElement eCFieldElement) {
        int[] create = Nat160.create();
        SecP160R1Field.multiply(this.f1337x, ((SecP160R1FieldElement) eCFieldElement).f1337x, create);
        return new SecP160R1FieldElement(create);
    }

    @Override // org.bouncycastle.math.p044ec.ECFieldElement
    public ECFieldElement negate() {
        int[] create = Nat160.create();
        SecP160R1Field.negate(this.f1337x, create);
        return new SecP160R1FieldElement(create);
    }

    @Override // org.bouncycastle.math.p044ec.ECFieldElement
    public ECFieldElement sqrt() {
        int[] iArr = this.f1337x;
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
        if (Nat160.m62eq(iArr, create)) {
            return new SecP160R1FieldElement(create2);
        }
        return null;
    }

    @Override // org.bouncycastle.math.p044ec.ECFieldElement
    public ECFieldElement square() {
        int[] create = Nat160.create();
        SecP160R1Field.square(this.f1337x, create);
        return new SecP160R1FieldElement(create);
    }

    @Override // org.bouncycastle.math.p044ec.ECFieldElement
    public boolean testBitZero() {
        return Nat160.getBit(this.f1337x, 0) == 1;
    }

    @Override // org.bouncycastle.math.p044ec.ECFieldElement
    public BigInteger toBigInteger() {
        return Nat160.toBigInteger(this.f1337x);
    }
}
