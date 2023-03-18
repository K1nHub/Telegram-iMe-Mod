package org.bouncycastle.math.p043ec.custom.sec;

import java.math.BigInteger;
import org.bouncycastle.math.p043ec.ECFieldElement;
import org.bouncycastle.math.raw.Mod;
import org.bouncycastle.math.raw.Nat192;
import org.bouncycastle.util.Arrays;
/* renamed from: org.bouncycastle.math.ec.custom.sec.SecP192K1FieldElement */
/* loaded from: classes4.dex */
public class SecP192K1FieldElement extends ECFieldElement.AbstractFp {

    /* renamed from: Q */
    public static final BigInteger f1338Q = SecP192K1Curve.f1336q;

    /* renamed from: x */
    protected int[] f1339x;

    public SecP192K1FieldElement() {
        this.f1339x = Nat192.create();
    }

    public SecP192K1FieldElement(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(f1338Q) >= 0) {
            throw new IllegalArgumentException("x value invalid for SecP192K1FieldElement");
        }
        this.f1339x = SecP192K1Field.fromBigInteger(bigInteger);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public SecP192K1FieldElement(int[] iArr) {
        this.f1339x = iArr;
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public ECFieldElement add(ECFieldElement eCFieldElement) {
        int[] create = Nat192.create();
        SecP192K1Field.add(this.f1339x, ((SecP192K1FieldElement) eCFieldElement).f1339x, create);
        return new SecP192K1FieldElement(create);
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public ECFieldElement addOne() {
        int[] create = Nat192.create();
        SecP192K1Field.addOne(this.f1339x, create);
        return new SecP192K1FieldElement(create);
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public ECFieldElement divide(ECFieldElement eCFieldElement) {
        int[] create = Nat192.create();
        Mod.invert(SecP192K1Field.f1337P, ((SecP192K1FieldElement) eCFieldElement).f1339x, create);
        SecP192K1Field.multiply(create, this.f1339x, create);
        return new SecP192K1FieldElement(create);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof SecP192K1FieldElement) {
            return Nat192.m66eq(this.f1339x, ((SecP192K1FieldElement) obj).f1339x);
        }
        return false;
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public int getFieldSize() {
        return f1338Q.bitLength();
    }

    public int hashCode() {
        return f1338Q.hashCode() ^ Arrays.hashCode(this.f1339x, 0, 6);
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public ECFieldElement invert() {
        int[] create = Nat192.create();
        Mod.invert(SecP192K1Field.f1337P, this.f1339x, create);
        return new SecP192K1FieldElement(create);
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public boolean isOne() {
        return Nat192.isOne(this.f1339x);
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public boolean isZero() {
        return Nat192.isZero(this.f1339x);
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public ECFieldElement multiply(ECFieldElement eCFieldElement) {
        int[] create = Nat192.create();
        SecP192K1Field.multiply(this.f1339x, ((SecP192K1FieldElement) eCFieldElement).f1339x, create);
        return new SecP192K1FieldElement(create);
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public ECFieldElement negate() {
        int[] create = Nat192.create();
        SecP192K1Field.negate(this.f1339x, create);
        return new SecP192K1FieldElement(create);
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public ECFieldElement sqrt() {
        int[] iArr = this.f1339x;
        if (Nat192.isZero(iArr) || Nat192.isOne(iArr)) {
            return this;
        }
        int[] create = Nat192.create();
        SecP192K1Field.square(iArr, create);
        SecP192K1Field.multiply(create, iArr, create);
        int[] create2 = Nat192.create();
        SecP192K1Field.square(create, create2);
        SecP192K1Field.multiply(create2, iArr, create2);
        int[] create3 = Nat192.create();
        SecP192K1Field.squareN(create2, 3, create3);
        SecP192K1Field.multiply(create3, create2, create3);
        SecP192K1Field.squareN(create3, 2, create3);
        SecP192K1Field.multiply(create3, create, create3);
        SecP192K1Field.squareN(create3, 8, create);
        SecP192K1Field.multiply(create, create3, create);
        SecP192K1Field.squareN(create, 3, create3);
        SecP192K1Field.multiply(create3, create2, create3);
        int[] create4 = Nat192.create();
        SecP192K1Field.squareN(create3, 16, create4);
        SecP192K1Field.multiply(create4, create, create4);
        SecP192K1Field.squareN(create4, 35, create);
        SecP192K1Field.multiply(create, create4, create);
        SecP192K1Field.squareN(create, 70, create4);
        SecP192K1Field.multiply(create4, create, create4);
        SecP192K1Field.squareN(create4, 19, create);
        SecP192K1Field.multiply(create, create3, create);
        SecP192K1Field.squareN(create, 20, create);
        SecP192K1Field.multiply(create, create3, create);
        SecP192K1Field.squareN(create, 4, create);
        SecP192K1Field.multiply(create, create2, create);
        SecP192K1Field.squareN(create, 6, create);
        SecP192K1Field.multiply(create, create2, create);
        SecP192K1Field.square(create, create);
        SecP192K1Field.square(create, create2);
        if (Nat192.m66eq(iArr, create2)) {
            return new SecP192K1FieldElement(create);
        }
        return null;
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public ECFieldElement square() {
        int[] create = Nat192.create();
        SecP192K1Field.square(this.f1339x, create);
        return new SecP192K1FieldElement(create);
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public boolean testBitZero() {
        return Nat192.getBit(this.f1339x, 0) == 1;
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public BigInteger toBigInteger() {
        return Nat192.toBigInteger(this.f1339x);
    }
}
