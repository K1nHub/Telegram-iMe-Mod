package org.bouncycastle.math.p043ec.custom.sec;

import java.math.BigInteger;
import org.bouncycastle.math.p043ec.ECFieldElement;
import org.bouncycastle.math.raw.Nat256;
import org.bouncycastle.util.Arrays;
/* renamed from: org.bouncycastle.math.ec.custom.sec.SecT193FieldElement */
/* loaded from: classes4.dex */
public class SecT193FieldElement extends ECFieldElement.AbstractF2m {

    /* renamed from: x */
    protected long[] f1371x;

    public SecT193FieldElement() {
        this.f1371x = Nat256.create64();
    }

    public SecT193FieldElement(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.bitLength() > 193) {
            throw new IllegalArgumentException("x value invalid for SecT193FieldElement");
        }
        this.f1371x = SecT193Field.fromBigInteger(bigInteger);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public SecT193FieldElement(long[] jArr) {
        this.f1371x = jArr;
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public ECFieldElement add(ECFieldElement eCFieldElement) {
        long[] create64 = Nat256.create64();
        SecT193Field.add(this.f1371x, ((SecT193FieldElement) eCFieldElement).f1371x, create64);
        return new SecT193FieldElement(create64);
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public ECFieldElement addOne() {
        long[] create64 = Nat256.create64();
        SecT193Field.addOne(this.f1371x, create64);
        return new SecT193FieldElement(create64);
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public ECFieldElement divide(ECFieldElement eCFieldElement) {
        return multiply(eCFieldElement.invert());
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof SecT193FieldElement) {
            return Nat256.eq64(this.f1371x, ((SecT193FieldElement) obj).f1371x);
        }
        return false;
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public int getFieldSize() {
        return 193;
    }

    public int hashCode() {
        return Arrays.hashCode(this.f1371x, 0, 4) ^ 1930015;
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public ECFieldElement invert() {
        long[] create64 = Nat256.create64();
        SecT193Field.invert(this.f1371x, create64);
        return new SecT193FieldElement(create64);
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public boolean isOne() {
        return Nat256.isOne64(this.f1371x);
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public boolean isZero() {
        return Nat256.isZero64(this.f1371x);
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public ECFieldElement multiply(ECFieldElement eCFieldElement) {
        long[] create64 = Nat256.create64();
        SecT193Field.multiply(this.f1371x, ((SecT193FieldElement) eCFieldElement).f1371x, create64);
        return new SecT193FieldElement(create64);
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public ECFieldElement multiplyPlusProduct(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement eCFieldElement3) {
        long[] jArr = this.f1371x;
        long[] jArr2 = ((SecT193FieldElement) eCFieldElement).f1371x;
        long[] jArr3 = ((SecT193FieldElement) eCFieldElement2).f1371x;
        long[] jArr4 = ((SecT193FieldElement) eCFieldElement3).f1371x;
        long[] createExt64 = Nat256.createExt64();
        SecT193Field.multiplyAddToExt(jArr, jArr2, createExt64);
        SecT193Field.multiplyAddToExt(jArr3, jArr4, createExt64);
        long[] create64 = Nat256.create64();
        SecT193Field.reduce(createExt64, create64);
        return new SecT193FieldElement(create64);
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public ECFieldElement negate() {
        return this;
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public ECFieldElement sqrt() {
        long[] create64 = Nat256.create64();
        SecT193Field.sqrt(this.f1371x, create64);
        return new SecT193FieldElement(create64);
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public ECFieldElement square() {
        long[] create64 = Nat256.create64();
        SecT193Field.square(this.f1371x, create64);
        return new SecT193FieldElement(create64);
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public ECFieldElement squarePlusProduct(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
        long[] jArr = this.f1371x;
        long[] jArr2 = ((SecT193FieldElement) eCFieldElement).f1371x;
        long[] jArr3 = ((SecT193FieldElement) eCFieldElement2).f1371x;
        long[] createExt64 = Nat256.createExt64();
        SecT193Field.squareAddToExt(jArr, createExt64);
        SecT193Field.multiplyAddToExt(jArr2, jArr3, createExt64);
        long[] create64 = Nat256.create64();
        SecT193Field.reduce(createExt64, create64);
        return new SecT193FieldElement(create64);
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public ECFieldElement squarePow(int i) {
        if (i < 1) {
            return this;
        }
        long[] create64 = Nat256.create64();
        SecT193Field.squareN(this.f1371x, i, create64);
        return new SecT193FieldElement(create64);
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public boolean testBitZero() {
        return (this.f1371x[0] & 1) != 0;
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public BigInteger toBigInteger() {
        return Nat256.toBigInteger64(this.f1371x);
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement.AbstractF2m
    public int trace() {
        return SecT193Field.trace(this.f1371x);
    }
}
