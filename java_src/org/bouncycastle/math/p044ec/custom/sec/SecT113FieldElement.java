package org.bouncycastle.math.p044ec.custom.sec;

import java.math.BigInteger;
import org.bouncycastle.math.p044ec.ECFieldElement;
import org.bouncycastle.math.raw.Nat128;
import org.bouncycastle.util.Arrays;
/* renamed from: org.bouncycastle.math.ec.custom.sec.SecT113FieldElement */
/* loaded from: classes4.dex */
public class SecT113FieldElement extends ECFieldElement.AbstractF2m {

    /* renamed from: x */
    protected long[] f1374x;

    public SecT113FieldElement() {
        this.f1374x = Nat128.create64();
    }

    public SecT113FieldElement(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.bitLength() > 113) {
            throw new IllegalArgumentException("x value invalid for SecT113FieldElement");
        }
        this.f1374x = SecT113Field.fromBigInteger(bigInteger);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public SecT113FieldElement(long[] jArr) {
        this.f1374x = jArr;
    }

    @Override // org.bouncycastle.math.p044ec.ECFieldElement
    public ECFieldElement add(ECFieldElement eCFieldElement) {
        long[] create64 = Nat128.create64();
        SecT113Field.add(this.f1374x, ((SecT113FieldElement) eCFieldElement).f1374x, create64);
        return new SecT113FieldElement(create64);
    }

    @Override // org.bouncycastle.math.p044ec.ECFieldElement
    public ECFieldElement addOne() {
        long[] create64 = Nat128.create64();
        SecT113Field.addOne(this.f1374x, create64);
        return new SecT113FieldElement(create64);
    }

    @Override // org.bouncycastle.math.p044ec.ECFieldElement
    public ECFieldElement divide(ECFieldElement eCFieldElement) {
        return multiply(eCFieldElement.invert());
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof SecT113FieldElement) {
            return Nat128.eq64(this.f1374x, ((SecT113FieldElement) obj).f1374x);
        }
        return false;
    }

    @Override // org.bouncycastle.math.p044ec.ECFieldElement
    public int getFieldSize() {
        return 113;
    }

    public int hashCode() {
        return Arrays.hashCode(this.f1374x, 0, 2) ^ 113009;
    }

    @Override // org.bouncycastle.math.p044ec.ECFieldElement
    public ECFieldElement invert() {
        long[] create64 = Nat128.create64();
        SecT113Field.invert(this.f1374x, create64);
        return new SecT113FieldElement(create64);
    }

    @Override // org.bouncycastle.math.p044ec.ECFieldElement
    public boolean isOne() {
        return Nat128.isOne64(this.f1374x);
    }

    @Override // org.bouncycastle.math.p044ec.ECFieldElement
    public boolean isZero() {
        return Nat128.isZero64(this.f1374x);
    }

    @Override // org.bouncycastle.math.p044ec.ECFieldElement
    public ECFieldElement multiply(ECFieldElement eCFieldElement) {
        long[] create64 = Nat128.create64();
        SecT113Field.multiply(this.f1374x, ((SecT113FieldElement) eCFieldElement).f1374x, create64);
        return new SecT113FieldElement(create64);
    }

    @Override // org.bouncycastle.math.p044ec.ECFieldElement
    public ECFieldElement multiplyPlusProduct(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement eCFieldElement3) {
        long[] jArr = this.f1374x;
        long[] jArr2 = ((SecT113FieldElement) eCFieldElement).f1374x;
        long[] jArr3 = ((SecT113FieldElement) eCFieldElement2).f1374x;
        long[] jArr4 = ((SecT113FieldElement) eCFieldElement3).f1374x;
        long[] createExt64 = Nat128.createExt64();
        SecT113Field.multiplyAddToExt(jArr, jArr2, createExt64);
        SecT113Field.multiplyAddToExt(jArr3, jArr4, createExt64);
        long[] create64 = Nat128.create64();
        SecT113Field.reduce(createExt64, create64);
        return new SecT113FieldElement(create64);
    }

    @Override // org.bouncycastle.math.p044ec.ECFieldElement
    public ECFieldElement negate() {
        return this;
    }

    @Override // org.bouncycastle.math.p044ec.ECFieldElement
    public ECFieldElement sqrt() {
        long[] create64 = Nat128.create64();
        SecT113Field.sqrt(this.f1374x, create64);
        return new SecT113FieldElement(create64);
    }

    @Override // org.bouncycastle.math.p044ec.ECFieldElement
    public ECFieldElement square() {
        long[] create64 = Nat128.create64();
        SecT113Field.square(this.f1374x, create64);
        return new SecT113FieldElement(create64);
    }

    @Override // org.bouncycastle.math.p044ec.ECFieldElement
    public ECFieldElement squarePlusProduct(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
        long[] jArr = this.f1374x;
        long[] jArr2 = ((SecT113FieldElement) eCFieldElement).f1374x;
        long[] jArr3 = ((SecT113FieldElement) eCFieldElement2).f1374x;
        long[] createExt64 = Nat128.createExt64();
        SecT113Field.squareAddToExt(jArr, createExt64);
        SecT113Field.multiplyAddToExt(jArr2, jArr3, createExt64);
        long[] create64 = Nat128.create64();
        SecT113Field.reduce(createExt64, create64);
        return new SecT113FieldElement(create64);
    }

    @Override // org.bouncycastle.math.p044ec.ECFieldElement
    public ECFieldElement squarePow(int i) {
        if (i < 1) {
            return this;
        }
        long[] create64 = Nat128.create64();
        SecT113Field.squareN(this.f1374x, i, create64);
        return new SecT113FieldElement(create64);
    }

    @Override // org.bouncycastle.math.p044ec.ECFieldElement
    public boolean testBitZero() {
        return (this.f1374x[0] & 1) != 0;
    }

    @Override // org.bouncycastle.math.p044ec.ECFieldElement
    public BigInteger toBigInteger() {
        return Nat128.toBigInteger64(this.f1374x);
    }

    @Override // org.bouncycastle.math.p044ec.ECFieldElement.AbstractF2m
    public int trace() {
        return SecT113Field.trace(this.f1374x);
    }
}
