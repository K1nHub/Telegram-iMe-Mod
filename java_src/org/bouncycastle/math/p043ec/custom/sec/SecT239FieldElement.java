package org.bouncycastle.math.p043ec.custom.sec;

import java.math.BigInteger;
import org.bouncycastle.math.p043ec.ECFieldElement;
import org.bouncycastle.math.raw.Nat256;
import org.bouncycastle.util.Arrays;
/* renamed from: org.bouncycastle.math.ec.custom.sec.SecT239FieldElement */
/* loaded from: classes4.dex */
public class SecT239FieldElement extends ECFieldElement.AbstractF2m {

    /* renamed from: x */
    protected long[] f1373x;

    public SecT239FieldElement() {
        this.f1373x = Nat256.create64();
    }

    public SecT239FieldElement(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.bitLength() > 239) {
            throw new IllegalArgumentException("x value invalid for SecT239FieldElement");
        }
        this.f1373x = SecT239Field.fromBigInteger(bigInteger);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public SecT239FieldElement(long[] jArr) {
        this.f1373x = jArr;
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public ECFieldElement add(ECFieldElement eCFieldElement) {
        long[] create64 = Nat256.create64();
        SecT239Field.add(this.f1373x, ((SecT239FieldElement) eCFieldElement).f1373x, create64);
        return new SecT239FieldElement(create64);
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public ECFieldElement addOne() {
        long[] create64 = Nat256.create64();
        SecT239Field.addOne(this.f1373x, create64);
        return new SecT239FieldElement(create64);
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public ECFieldElement divide(ECFieldElement eCFieldElement) {
        return multiply(eCFieldElement.invert());
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof SecT239FieldElement) {
            return Nat256.eq64(this.f1373x, ((SecT239FieldElement) obj).f1373x);
        }
        return false;
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public int getFieldSize() {
        return 239;
    }

    public int hashCode() {
        return Arrays.hashCode(this.f1373x, 0, 4) ^ 23900158;
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public ECFieldElement invert() {
        long[] create64 = Nat256.create64();
        SecT239Field.invert(this.f1373x, create64);
        return new SecT239FieldElement(create64);
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public boolean isOne() {
        return Nat256.isOne64(this.f1373x);
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public boolean isZero() {
        return Nat256.isZero64(this.f1373x);
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public ECFieldElement multiply(ECFieldElement eCFieldElement) {
        long[] create64 = Nat256.create64();
        SecT239Field.multiply(this.f1373x, ((SecT239FieldElement) eCFieldElement).f1373x, create64);
        return new SecT239FieldElement(create64);
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public ECFieldElement multiplyPlusProduct(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement eCFieldElement3) {
        long[] jArr = this.f1373x;
        long[] jArr2 = ((SecT239FieldElement) eCFieldElement).f1373x;
        long[] jArr3 = ((SecT239FieldElement) eCFieldElement2).f1373x;
        long[] jArr4 = ((SecT239FieldElement) eCFieldElement3).f1373x;
        long[] createExt64 = Nat256.createExt64();
        SecT239Field.multiplyAddToExt(jArr, jArr2, createExt64);
        SecT239Field.multiplyAddToExt(jArr3, jArr4, createExt64);
        long[] create64 = Nat256.create64();
        SecT239Field.reduce(createExt64, create64);
        return new SecT239FieldElement(create64);
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public ECFieldElement negate() {
        return this;
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public ECFieldElement sqrt() {
        long[] create64 = Nat256.create64();
        SecT239Field.sqrt(this.f1373x, create64);
        return new SecT239FieldElement(create64);
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public ECFieldElement square() {
        long[] create64 = Nat256.create64();
        SecT239Field.square(this.f1373x, create64);
        return new SecT239FieldElement(create64);
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public ECFieldElement squarePlusProduct(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
        long[] jArr = this.f1373x;
        long[] jArr2 = ((SecT239FieldElement) eCFieldElement).f1373x;
        long[] jArr3 = ((SecT239FieldElement) eCFieldElement2).f1373x;
        long[] createExt64 = Nat256.createExt64();
        SecT239Field.squareAddToExt(jArr, createExt64);
        SecT239Field.multiplyAddToExt(jArr2, jArr3, createExt64);
        long[] create64 = Nat256.create64();
        SecT239Field.reduce(createExt64, create64);
        return new SecT239FieldElement(create64);
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public ECFieldElement squarePow(int i) {
        if (i < 1) {
            return this;
        }
        long[] create64 = Nat256.create64();
        SecT239Field.squareN(this.f1373x, i, create64);
        return new SecT239FieldElement(create64);
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public boolean testBitZero() {
        return (this.f1373x[0] & 1) != 0;
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public BigInteger toBigInteger() {
        return Nat256.toBigInteger64(this.f1373x);
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement.AbstractF2m
    public int trace() {
        return SecT239Field.trace(this.f1373x);
    }
}
