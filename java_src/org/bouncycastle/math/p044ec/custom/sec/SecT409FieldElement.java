package org.bouncycastle.math.p044ec.custom.sec;

import com.google.android.gms.wallet.WalletConstants;
import java.math.BigInteger;
import org.bouncycastle.math.p044ec.ECFieldElement;
import org.bouncycastle.math.raw.Nat;
import org.bouncycastle.math.raw.Nat448;
import org.bouncycastle.util.Arrays;
/* renamed from: org.bouncycastle.math.ec.custom.sec.SecT409FieldElement */
/* loaded from: classes4.dex */
public class SecT409FieldElement extends ECFieldElement.AbstractF2m {

    /* renamed from: x */
    protected long[] f1381x;

    public SecT409FieldElement() {
        this.f1381x = Nat448.create64();
    }

    public SecT409FieldElement(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.bitLength() > 409) {
            throw new IllegalArgumentException("x value invalid for SecT409FieldElement");
        }
        this.f1381x = SecT409Field.fromBigInteger(bigInteger);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public SecT409FieldElement(long[] jArr) {
        this.f1381x = jArr;
    }

    @Override // org.bouncycastle.math.p044ec.ECFieldElement
    public ECFieldElement add(ECFieldElement eCFieldElement) {
        long[] create64 = Nat448.create64();
        SecT409Field.add(this.f1381x, ((SecT409FieldElement) eCFieldElement).f1381x, create64);
        return new SecT409FieldElement(create64);
    }

    @Override // org.bouncycastle.math.p044ec.ECFieldElement
    public ECFieldElement addOne() {
        long[] create64 = Nat448.create64();
        SecT409Field.addOne(this.f1381x, create64);
        return new SecT409FieldElement(create64);
    }

    @Override // org.bouncycastle.math.p044ec.ECFieldElement
    public ECFieldElement divide(ECFieldElement eCFieldElement) {
        return multiply(eCFieldElement.invert());
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof SecT409FieldElement) {
            return Nat448.eq64(this.f1381x, ((SecT409FieldElement) obj).f1381x);
        }
        return false;
    }

    @Override // org.bouncycastle.math.p044ec.ECFieldElement
    public int getFieldSize() {
        return WalletConstants.ERROR_CODE_BUYER_ACCOUNT_ERROR;
    }

    public int hashCode() {
        return Arrays.hashCode(this.f1381x, 0, 7) ^ 4090087;
    }

    @Override // org.bouncycastle.math.p044ec.ECFieldElement
    public ECFieldElement invert() {
        long[] create64 = Nat448.create64();
        SecT409Field.invert(this.f1381x, create64);
        return new SecT409FieldElement(create64);
    }

    @Override // org.bouncycastle.math.p044ec.ECFieldElement
    public boolean isOne() {
        return Nat448.isOne64(this.f1381x);
    }

    @Override // org.bouncycastle.math.p044ec.ECFieldElement
    public boolean isZero() {
        return Nat448.isZero64(this.f1381x);
    }

    @Override // org.bouncycastle.math.p044ec.ECFieldElement
    public ECFieldElement multiply(ECFieldElement eCFieldElement) {
        long[] create64 = Nat448.create64();
        SecT409Field.multiply(this.f1381x, ((SecT409FieldElement) eCFieldElement).f1381x, create64);
        return new SecT409FieldElement(create64);
    }

    @Override // org.bouncycastle.math.p044ec.ECFieldElement
    public ECFieldElement multiplyPlusProduct(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement eCFieldElement3) {
        long[] jArr = this.f1381x;
        long[] jArr2 = ((SecT409FieldElement) eCFieldElement).f1381x;
        long[] jArr3 = ((SecT409FieldElement) eCFieldElement2).f1381x;
        long[] jArr4 = ((SecT409FieldElement) eCFieldElement3).f1381x;
        long[] create64 = Nat.create64(13);
        SecT409Field.multiplyAddToExt(jArr, jArr2, create64);
        SecT409Field.multiplyAddToExt(jArr3, jArr4, create64);
        long[] create642 = Nat448.create64();
        SecT409Field.reduce(create64, create642);
        return new SecT409FieldElement(create642);
    }

    @Override // org.bouncycastle.math.p044ec.ECFieldElement
    public ECFieldElement negate() {
        return this;
    }

    @Override // org.bouncycastle.math.p044ec.ECFieldElement
    public ECFieldElement sqrt() {
        long[] create64 = Nat448.create64();
        SecT409Field.sqrt(this.f1381x, create64);
        return new SecT409FieldElement(create64);
    }

    @Override // org.bouncycastle.math.p044ec.ECFieldElement
    public ECFieldElement square() {
        long[] create64 = Nat448.create64();
        SecT409Field.square(this.f1381x, create64);
        return new SecT409FieldElement(create64);
    }

    @Override // org.bouncycastle.math.p044ec.ECFieldElement
    public ECFieldElement squarePlusProduct(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
        long[] jArr = this.f1381x;
        long[] jArr2 = ((SecT409FieldElement) eCFieldElement).f1381x;
        long[] jArr3 = ((SecT409FieldElement) eCFieldElement2).f1381x;
        long[] create64 = Nat.create64(13);
        SecT409Field.squareAddToExt(jArr, create64);
        SecT409Field.multiplyAddToExt(jArr2, jArr3, create64);
        long[] create642 = Nat448.create64();
        SecT409Field.reduce(create64, create642);
        return new SecT409FieldElement(create642);
    }

    @Override // org.bouncycastle.math.p044ec.ECFieldElement
    public ECFieldElement squarePow(int i) {
        if (i < 1) {
            return this;
        }
        long[] create64 = Nat448.create64();
        SecT409Field.squareN(this.f1381x, i, create64);
        return new SecT409FieldElement(create64);
    }

    @Override // org.bouncycastle.math.p044ec.ECFieldElement
    public boolean testBitZero() {
        return (this.f1381x[0] & 1) != 0;
    }

    @Override // org.bouncycastle.math.p044ec.ECFieldElement
    public BigInteger toBigInteger() {
        return Nat448.toBigInteger64(this.f1381x);
    }

    @Override // org.bouncycastle.math.p044ec.ECFieldElement.AbstractF2m
    public int trace() {
        return SecT409Field.trace(this.f1381x);
    }
}
