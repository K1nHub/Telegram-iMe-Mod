package org.bouncycastle.math.p043ec.custom.sec;

import java.math.BigInteger;
import org.bouncycastle.math.p043ec.ECFieldElement;
import org.bouncycastle.math.raw.Nat192;
import org.bouncycastle.util.Arrays;
/* renamed from: org.bouncycastle.math.ec.custom.sec.SecT163FieldElement */
/* loaded from: classes4.dex */
public class SecT163FieldElement extends ECFieldElement.AbstractF2m {

    /* renamed from: x */
    protected long[] f1365x;

    public SecT163FieldElement() {
        this.f1365x = Nat192.create64();
    }

    public SecT163FieldElement(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.bitLength() > 163) {
            throw new IllegalArgumentException("x value invalid for SecT163FieldElement");
        }
        this.f1365x = SecT163Field.fromBigInteger(bigInteger);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public SecT163FieldElement(long[] jArr) {
        this.f1365x = jArr;
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public ECFieldElement add(ECFieldElement eCFieldElement) {
        long[] create64 = Nat192.create64();
        SecT163Field.add(this.f1365x, ((SecT163FieldElement) eCFieldElement).f1365x, create64);
        return new SecT163FieldElement(create64);
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public ECFieldElement addOne() {
        long[] create64 = Nat192.create64();
        SecT163Field.addOne(this.f1365x, create64);
        return new SecT163FieldElement(create64);
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public ECFieldElement divide(ECFieldElement eCFieldElement) {
        return multiply(eCFieldElement.invert());
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof SecT163FieldElement) {
            return Nat192.eq64(this.f1365x, ((SecT163FieldElement) obj).f1365x);
        }
        return false;
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public int getFieldSize() {
        return 163;
    }

    public int hashCode() {
        return Arrays.hashCode(this.f1365x, 0, 3) ^ 163763;
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public ECFieldElement invert() {
        long[] create64 = Nat192.create64();
        SecT163Field.invert(this.f1365x, create64);
        return new SecT163FieldElement(create64);
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public boolean isOne() {
        return Nat192.isOne64(this.f1365x);
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public boolean isZero() {
        return Nat192.isZero64(this.f1365x);
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public ECFieldElement multiply(ECFieldElement eCFieldElement) {
        long[] create64 = Nat192.create64();
        SecT163Field.multiply(this.f1365x, ((SecT163FieldElement) eCFieldElement).f1365x, create64);
        return new SecT163FieldElement(create64);
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public ECFieldElement multiplyPlusProduct(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement eCFieldElement3) {
        long[] jArr = this.f1365x;
        long[] jArr2 = ((SecT163FieldElement) eCFieldElement).f1365x;
        long[] jArr3 = ((SecT163FieldElement) eCFieldElement2).f1365x;
        long[] jArr4 = ((SecT163FieldElement) eCFieldElement3).f1365x;
        long[] createExt64 = Nat192.createExt64();
        SecT163Field.multiplyAddToExt(jArr, jArr2, createExt64);
        SecT163Field.multiplyAddToExt(jArr3, jArr4, createExt64);
        long[] create64 = Nat192.create64();
        SecT163Field.reduce(createExt64, create64);
        return new SecT163FieldElement(create64);
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public ECFieldElement negate() {
        return this;
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public ECFieldElement sqrt() {
        long[] create64 = Nat192.create64();
        SecT163Field.sqrt(this.f1365x, create64);
        return new SecT163FieldElement(create64);
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public ECFieldElement square() {
        long[] create64 = Nat192.create64();
        SecT163Field.square(this.f1365x, create64);
        return new SecT163FieldElement(create64);
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public ECFieldElement squarePlusProduct(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
        long[] jArr = this.f1365x;
        long[] jArr2 = ((SecT163FieldElement) eCFieldElement).f1365x;
        long[] jArr3 = ((SecT163FieldElement) eCFieldElement2).f1365x;
        long[] createExt64 = Nat192.createExt64();
        SecT163Field.squareAddToExt(jArr, createExt64);
        SecT163Field.multiplyAddToExt(jArr2, jArr3, createExt64);
        long[] create64 = Nat192.create64();
        SecT163Field.reduce(createExt64, create64);
        return new SecT163FieldElement(create64);
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public ECFieldElement squarePow(int i) {
        if (i < 1) {
            return this;
        }
        long[] create64 = Nat192.create64();
        SecT163Field.squareN(this.f1365x, i, create64);
        return new SecT163FieldElement(create64);
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public boolean testBitZero() {
        return (this.f1365x[0] & 1) != 0;
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement
    public BigInteger toBigInteger() {
        return Nat192.toBigInteger64(this.f1365x);
    }

    @Override // org.bouncycastle.math.p043ec.ECFieldElement.AbstractF2m
    public int trace() {
        return SecT163Field.trace(this.f1365x);
    }
}
