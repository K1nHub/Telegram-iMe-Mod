package org.bouncycastle.asn1;

import java.util.Objects;
/* loaded from: classes4.dex */
public class ASN1EncodableVector {
    static final ASN1Encodable[] EMPTY_ELEMENTS = new ASN1Encodable[0];
    private boolean copyOnWrite;
    private int elementCount;
    private ASN1Encodable[] elements;

    public ASN1EncodableVector() {
        this(10);
    }

    public ASN1EncodableVector(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("'initialCapacity' must not be negative");
        }
        this.elements = i == 0 ? EMPTY_ELEMENTS : new ASN1Encodable[i];
        this.elementCount = 0;
        this.copyOnWrite = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ASN1Encodable[] cloneElements(ASN1Encodable[] aSN1EncodableArr) {
        return aSN1EncodableArr.length < 1 ? EMPTY_ELEMENTS : (ASN1Encodable[]) aSN1EncodableArr.clone();
    }

    private void reallocate(int i) {
        ASN1Encodable[] aSN1EncodableArr = new ASN1Encodable[Math.max(this.elements.length, i + (i >> 1))];
        System.arraycopy(this.elements, 0, aSN1EncodableArr, 0, this.elementCount);
        this.elements = aSN1EncodableArr;
        this.copyOnWrite = false;
    }

    public void add(ASN1Encodable aSN1Encodable) {
        Objects.requireNonNull(aSN1Encodable, "'element' cannot be null");
        int length = this.elements.length;
        int i = this.elementCount + 1;
        if (this.copyOnWrite | (i > length)) {
            reallocate(i);
        }
        this.elements[this.elementCount] = aSN1Encodable;
        this.elementCount = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ASN1Encodable[] copyElements() {
        int i = this.elementCount;
        if (i == 0) {
            return EMPTY_ELEMENTS;
        }
        ASN1Encodable[] aSN1EncodableArr = new ASN1Encodable[i];
        System.arraycopy(this.elements, 0, aSN1EncodableArr, 0, i);
        return aSN1EncodableArr;
    }

    public ASN1Encodable get(int i) {
        if (i < this.elementCount) {
            return this.elements[i];
        }
        throw new ArrayIndexOutOfBoundsException(i + " >= " + this.elementCount);
    }

    public int size() {
        return this.elementCount;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ASN1Encodable[] takeElements() {
        int i = this.elementCount;
        if (i == 0) {
            return EMPTY_ELEMENTS;
        }
        ASN1Encodable[] aSN1EncodableArr = this.elements;
        if (aSN1EncodableArr.length == i) {
            this.copyOnWrite = true;
            return aSN1EncodableArr;
        }
        ASN1Encodable[] aSN1EncodableArr2 = new ASN1Encodable[i];
        System.arraycopy(aSN1EncodableArr, 0, aSN1EncodableArr2, 0, i);
        return aSN1EncodableArr2;
    }
}
