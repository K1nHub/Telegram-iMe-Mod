package org.bouncycastle.math.p044ec.custom.sec;

import java.math.BigInteger;
import org.bouncycastle.math.p044ec.ECFieldElement;
import org.bouncycastle.math.raw.Nat256;
import org.bouncycastle.util.Arrays;
/* renamed from: org.bouncycastle.math.ec.custom.sec.SecT233FieldElement */
/* loaded from: classes4.dex */
public class SecT233FieldElement extends ECFieldElement.AbstractF2m {

    /* renamed from: x */
    protected long[] f1378x;

    public SecT233FieldElement() {
        this.f1378x = Nat256.create64();
    }

    public SecT233FieldElement(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.bitLength() > 233) {
            throw new IllegalArgumentException("x value invalid for SecT233FieldElement");
        }
        this.f1378x = SecT233Field.fromBigInteger(bigInteger);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public SecT233FieldElement(long[] jArr) {
        this.f1378x = jArr;
    }

    @Override // org.bouncycastle.math.p044ec.ECFieldElement
    public ECFieldElement add(ECFieldElement eCFieldElement) {
        long[] create64 = Nat256.create64();
        SecT233Field.add(this.f1378x, ((SecT233FieldElement) eCFieldElement).f1378x, create64);
        return new SecT233FieldElement(create64);
    }

    @Override // org.bouncycastle.math.p044ec.ECFieldElement
    public ECFieldElement addOne() {
        long[] create64 = Nat256.create64();
        SecT233Field.addOne(this.f1378x, create64);
        return new SecT233FieldElement(create64);
    }

    @Override // org.bouncycastle.math.p044ec.ECFieldElement
    public ECFieldElement divide(ECFieldElement eCFieldElement) {
        return multiply(eCFieldElement.invert());
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof SecT233FieldElement) {
            return Nat256.eq64(this.f1378x, ((SecT233FieldElement) obj).f1378x);
        }
        return false;
    }

    @Override // org.bouncycastle.math.p044ec.ECFieldElement
    public int getFieldSize() {
        return 233;
    }

    public int hashCode() {
        return Arrays.hashCode(this.f1378x, 0, 4) ^ 2330074;
    }

    @Override // org.bouncycastle.math.p044ec.ECFieldElement
    public ECFieldElement invert() {
        long[] create64 = Nat256.create64();
        SecT233Field.invert(this.f1378x, create64);
        return new SecT233FieldElement(create64);
    }

    @Override // org.bouncycastle.math.p044ec.ECFieldElement
    public boolean isOne() {
        return Nat256.isOne64(this.f1378x);
    }

    @Override // org.bouncycastle.math.p044ec.ECFieldElement
    public boolean isZero() {
        return Nat256.isZero64(this.f1378x);
    }

    @Override // org.bouncycastle.math.p044ec.ECFieldElement
    public ECFieldElement multiply(ECFieldElement eCFieldElement) {
        long[] create64 = Nat256.create64();
        SecT233Field.multiply(this.f1378x, ((SecT233FieldElement) eCFieldElement).f1378x, create64);
        return new SecT233FieldElement(create64);
    }

    @Override // org.bouncycastle.math.p044ec.ECFieldElement
    public ECFieldElement multiplyPlusProduct(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement eCFieldElement3) {
        long[] jArr = this.f1378x;
        long[] jArr2 = ((SecT233FieldElement) eCFieldElement).f1378x;
        long[] jArr3 = ((SecT233FieldElement) eCFieldElement2).f1378x;
        long[] jArr4 = ((SecT233FieldElement) eCFieldElement3).f1378x;
        long[] createExt64 = Nat256.createExt64();
        SecT233Field.multiplyAddToExt(jArr, jArr2, createExt64);
        SecT233Field.multiplyAddToExt(jArr3, jArr4, createExt64);
        long[] create64 = Nat256.create64();
        SecT233Field.reduce(createExt64, create64);
        return new SecT233FieldElement(create64);
    }

    @Override // org.bouncycastle.math.p044ec.ECFieldElement
    public ECFieldElement negate() {
        return this;
    }

    @Override // org.bouncycastle.math.p044ec.ECFieldElement
    public ECFieldElement sqrt() {
        long[] create64 = Nat256.create64();
        SecT233Field.sqrt(this.f1378x, create64);
        return new SecT233FieldElement(create64);
    }

    @Override // org.bouncycastle.math.p044ec.ECFieldElement
    public ECFieldElement square() {
        long[] create64 = Nat256.create64();
        SecT233Field.square(this.f1378x, create64);
        return new SecT233FieldElement(create64);
    }

    @Override // org.bouncycastle.math.p044ec.ECFieldElement
    public ECFieldElement squarePlusProduct(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
        long[] jArr = this.f1378x;
        long[] jArr2 = ((SecT233FieldElement) eCFieldElement).f1378x;
        long[] jArr3 = ((SecT233FieldElement) eCFieldElement2).f1378x;
        long[] createExt64 = Nat256.createExt64();
        SecT233Field.squareAddToExt(jArr, createExt64);
        SecT233Field.multiplyAddToExt(jArr2, jArr3, createExt64);
        long[] create64 = Nat256.create64();
        SecT233Field.reduce(createExt64, create64);
        return new SecT233FieldElement(create64);
    }

    @Override // org.bouncycastle.math.p044ec.ECFieldElement
    public ECFieldElement squarePow(int i) {
        if (i < 1) {
            return this;
        }
        long[] create64 = Nat256.create64();
        SecT233Field.squareN(this.f1378x, i, create64);
        return new SecT233FieldElement(create64);
    }

    @Override // org.bouncycastle.math.p044ec.ECFieldElement
    public boolean testBitZero() {
        return (this.f1378x[0] & 1) != 0;
    }

    @Override // org.bouncycastle.math.p044ec.ECFieldElement
    public BigInteger toBigInteger() {
        return Nat256.toBigInteger64(this.f1378x);
    }

    @Override // org.bouncycastle.math.p044ec.ECFieldElement.AbstractF2m
    public int trace() {
        return SecT233Field.trace(this.f1378x);
    }
}
