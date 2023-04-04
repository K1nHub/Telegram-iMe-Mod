package org.bouncycastle.math.p044ec.custom.sec;

import java.math.BigInteger;
import org.bouncycastle.math.p044ec.ECFieldElement;
import org.bouncycastle.math.raw.Nat;
import org.bouncycastle.math.raw.Nat192;
import org.bouncycastle.util.Arrays;
/* renamed from: org.bouncycastle.math.ec.custom.sec.SecT131FieldElement */
/* loaded from: classes4.dex */
public class SecT131FieldElement extends ECFieldElement.AbstractF2m {

    /* renamed from: x */
    protected long[] f1375x;

    public SecT131FieldElement() {
        this.f1375x = Nat192.create64();
    }

    public SecT131FieldElement(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.bitLength() > 131) {
            throw new IllegalArgumentException("x value invalid for SecT131FieldElement");
        }
        this.f1375x = SecT131Field.fromBigInteger(bigInteger);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public SecT131FieldElement(long[] jArr) {
        this.f1375x = jArr;
    }

    @Override // org.bouncycastle.math.p044ec.ECFieldElement
    public ECFieldElement add(ECFieldElement eCFieldElement) {
        long[] create64 = Nat192.create64();
        SecT131Field.add(this.f1375x, ((SecT131FieldElement) eCFieldElement).f1375x, create64);
        return new SecT131FieldElement(create64);
    }

    @Override // org.bouncycastle.math.p044ec.ECFieldElement
    public ECFieldElement addOne() {
        long[] create64 = Nat192.create64();
        SecT131Field.addOne(this.f1375x, create64);
        return new SecT131FieldElement(create64);
    }

    @Override // org.bouncycastle.math.p044ec.ECFieldElement
    public ECFieldElement divide(ECFieldElement eCFieldElement) {
        return multiply(eCFieldElement.invert());
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof SecT131FieldElement) {
            return Nat192.eq64(this.f1375x, ((SecT131FieldElement) obj).f1375x);
        }
        return false;
    }

    @Override // org.bouncycastle.math.p044ec.ECFieldElement
    public int getFieldSize() {
        return 131;
    }

    public int hashCode() {
        return Arrays.hashCode(this.f1375x, 0, 3) ^ 131832;
    }

    @Override // org.bouncycastle.math.p044ec.ECFieldElement
    public ECFieldElement invert() {
        long[] create64 = Nat192.create64();
        SecT131Field.invert(this.f1375x, create64);
        return new SecT131FieldElement(create64);
    }

    @Override // org.bouncycastle.math.p044ec.ECFieldElement
    public boolean isOne() {
        return Nat192.isOne64(this.f1375x);
    }

    @Override // org.bouncycastle.math.p044ec.ECFieldElement
    public boolean isZero() {
        return Nat192.isZero64(this.f1375x);
    }

    @Override // org.bouncycastle.math.p044ec.ECFieldElement
    public ECFieldElement multiply(ECFieldElement eCFieldElement) {
        long[] create64 = Nat192.create64();
        SecT131Field.multiply(this.f1375x, ((SecT131FieldElement) eCFieldElement).f1375x, create64);
        return new SecT131FieldElement(create64);
    }

    @Override // org.bouncycastle.math.p044ec.ECFieldElement
    public ECFieldElement multiplyPlusProduct(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement eCFieldElement3) {
        long[] jArr = this.f1375x;
        long[] jArr2 = ((SecT131FieldElement) eCFieldElement).f1375x;
        long[] jArr3 = ((SecT131FieldElement) eCFieldElement2).f1375x;
        long[] jArr4 = ((SecT131FieldElement) eCFieldElement3).f1375x;
        long[] create64 = Nat.create64(5);
        SecT131Field.multiplyAddToExt(jArr, jArr2, create64);
        SecT131Field.multiplyAddToExt(jArr3, jArr4, create64);
        long[] create642 = Nat192.create64();
        SecT131Field.reduce(create64, create642);
        return new SecT131FieldElement(create642);
    }

    @Override // org.bouncycastle.math.p044ec.ECFieldElement
    public ECFieldElement negate() {
        return this;
    }

    @Override // org.bouncycastle.math.p044ec.ECFieldElement
    public ECFieldElement sqrt() {
        long[] create64 = Nat192.create64();
        SecT131Field.sqrt(this.f1375x, create64);
        return new SecT131FieldElement(create64);
    }

    @Override // org.bouncycastle.math.p044ec.ECFieldElement
    public ECFieldElement square() {
        long[] create64 = Nat192.create64();
        SecT131Field.square(this.f1375x, create64);
        return new SecT131FieldElement(create64);
    }

    @Override // org.bouncycastle.math.p044ec.ECFieldElement
    public ECFieldElement squarePlusProduct(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
        long[] jArr = this.f1375x;
        long[] jArr2 = ((SecT131FieldElement) eCFieldElement).f1375x;
        long[] jArr3 = ((SecT131FieldElement) eCFieldElement2).f1375x;
        long[] create64 = Nat.create64(5);
        SecT131Field.squareAddToExt(jArr, create64);
        SecT131Field.multiplyAddToExt(jArr2, jArr3, create64);
        long[] create642 = Nat192.create64();
        SecT131Field.reduce(create64, create642);
        return new SecT131FieldElement(create642);
    }

    @Override // org.bouncycastle.math.p044ec.ECFieldElement
    public ECFieldElement squarePow(int i) {
        if (i < 1) {
            return this;
        }
        long[] create64 = Nat192.create64();
        SecT131Field.squareN(this.f1375x, i, create64);
        return new SecT131FieldElement(create64);
    }

    @Override // org.bouncycastle.math.p044ec.ECFieldElement
    public boolean testBitZero() {
        return (this.f1375x[0] & 1) != 0;
    }

    @Override // org.bouncycastle.math.p044ec.ECFieldElement
    public BigInteger toBigInteger() {
        return Nat192.toBigInteger64(this.f1375x);
    }

    @Override // org.bouncycastle.math.p044ec.ECFieldElement.AbstractF2m
    public int trace() {
        return SecT131Field.trace(this.f1375x);
    }
}
