package org.bouncycastle.math.p043ec.custom.sec;

import java.math.BigInteger;
import org.bouncycastle.math.p043ec.ECFieldElement;
import org.bouncycastle.math.raw.Mod;
import org.bouncycastle.math.raw.Nat256;
import org.bouncycastle.util.Arrays;
/* renamed from: org.bouncycastle.math.ec.custom.sec.SecP256R1FieldElement */
/* loaded from: classes4.dex */
public class SecP256R1FieldElement extends ECFieldElement.AbstractFp {

    /* renamed from: Q */
    public static final BigInteger f1359Q = SecP256R1Curve.f1357q;

    /* renamed from: x */
    protected int[] f1360x;

    public SecP256R1FieldElement() {
        this.f1360x = Nat256.create();
    }

    public SecP256R1FieldElement(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(f1359Q) >= 0) {
            throw new IllegalArgumentException("x value invalid for SecP256R1FieldElement");
        }
        this.f1360x = SecP256R1Field.fromBigInteger(bigInteger);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public SecP256R1FieldElement(int[] iArr) {
        this.f1360x = iArr;
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public ECFieldElement add(ECFieldElement eCFieldElement) {
        int[] create = Nat256.create();
        SecP256R1Field.add(this.f1360x, ((SecP256R1FieldElement) eCFieldElement).f1360x, create);
        return new SecP256R1FieldElement(create);
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public ECFieldElement addOne() {
        int[] create = Nat256.create();
        SecP256R1Field.addOne(this.f1360x, create);
        return new SecP256R1FieldElement(create);
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public ECFieldElement divide(ECFieldElement eCFieldElement) {
        int[] create = Nat256.create();
        Mod.invert(SecP256R1Field.f1358P, ((SecP256R1FieldElement) eCFieldElement).f1360x, create);
        SecP256R1Field.multiply(create, this.f1360x, create);
        return new SecP256R1FieldElement(create);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof SecP256R1FieldElement) {
            return Nat256.m64eq(this.f1360x, ((SecP256R1FieldElement) obj).f1360x);
        }
        return false;
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public int getFieldSize() {
        return f1359Q.bitLength();
    }

    public int hashCode() {
        return f1359Q.hashCode() ^ Arrays.hashCode(this.f1360x, 0, 8);
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public ECFieldElement invert() {
        int[] create = Nat256.create();
        Mod.invert(SecP256R1Field.f1358P, this.f1360x, create);
        return new SecP256R1FieldElement(create);
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public boolean isOne() {
        return Nat256.isOne(this.f1360x);
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public boolean isZero() {
        return Nat256.isZero(this.f1360x);
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public ECFieldElement multiply(ECFieldElement eCFieldElement) {
        int[] create = Nat256.create();
        SecP256R1Field.multiply(this.f1360x, ((SecP256R1FieldElement) eCFieldElement).f1360x, create);
        return new SecP256R1FieldElement(create);
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public ECFieldElement negate() {
        int[] create = Nat256.create();
        SecP256R1Field.negate(this.f1360x, create);
        return new SecP256R1FieldElement(create);
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public ECFieldElement sqrt() {
        int[] iArr = this.f1360x;
        if (Nat256.isZero(iArr) || Nat256.isOne(iArr)) {
            return this;
        }
        int[] create = Nat256.create();
        int[] create2 = Nat256.create();
        SecP256R1Field.square(iArr, create);
        SecP256R1Field.multiply(create, iArr, create);
        SecP256R1Field.squareN(create, 2, create2);
        SecP256R1Field.multiply(create2, create, create2);
        SecP256R1Field.squareN(create2, 4, create);
        SecP256R1Field.multiply(create, create2, create);
        SecP256R1Field.squareN(create, 8, create2);
        SecP256R1Field.multiply(create2, create, create2);
        SecP256R1Field.squareN(create2, 16, create);
        SecP256R1Field.multiply(create, create2, create);
        SecP256R1Field.squareN(create, 32, create);
        SecP256R1Field.multiply(create, iArr, create);
        SecP256R1Field.squareN(create, 96, create);
        SecP256R1Field.multiply(create, iArr, create);
        SecP256R1Field.squareN(create, 94, create);
        SecP256R1Field.square(create, create2);
        if (Nat256.m64eq(iArr, create2)) {
            return new SecP256R1FieldElement(create);
        }
        return null;
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public ECFieldElement square() {
        int[] create = Nat256.create();
        SecP256R1Field.square(this.f1360x, create);
        return new SecP256R1FieldElement(create);
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public boolean testBitZero() {
        return Nat256.getBit(this.f1360x, 0) == 1;
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public BigInteger toBigInteger() {
        return Nat256.toBigInteger(this.f1360x);
    }
}
