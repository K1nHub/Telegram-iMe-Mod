package org.bouncycastle.asn1;

import java.io.IOException;
import java.util.Enumeration;
import java.util.Iterator;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public class LazyEncodedSequence extends ASN1Sequence {
    private byte[] encoded;

    /* JADX INFO: Access modifiers changed from: package-private */
    public LazyEncodedSequence(byte[] bArr) throws IOException {
        this.encoded = bArr;
    }

    private void force() {
        if (this.encoded != null) {
            ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
            LazyConstructionEnumeration lazyConstructionEnumeration = new LazyConstructionEnumeration(this.encoded);
            while (lazyConstructionEnumeration.hasMoreElements()) {
                aSN1EncodableVector.add((ASN1Primitive) lazyConstructionEnumeration.nextElement());
            }
            this.elements = aSN1EncodableVector.takeElements();
            this.encoded = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public synchronized void encode(ASN1OutputStream aSN1OutputStream, boolean z) throws IOException {
        byte[] bArr = this.encoded;
        if (bArr != null) {
            aSN1OutputStream.writeEncoded(z, 48, bArr);
        } else {
            super.toDLObject().encode(aSN1OutputStream, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public synchronized int encodedLength() throws IOException {
        byte[] bArr = this.encoded;
        if (bArr != null) {
            return StreamUtil.calculateBodyLength(bArr.length) + 1 + this.encoded.length;
        }
        return super.toDLObject().encodedLength();
    }

    @Override // org.bouncycastle.asn1.ASN1Sequence
    public synchronized ASN1Encodable getObjectAt(int i) {
        force();
        return super.getObjectAt(i);
    }

    @Override // org.bouncycastle.asn1.ASN1Sequence
    public synchronized Enumeration getObjects() {
        byte[] bArr = this.encoded;
        if (bArr != null) {
            return new LazyConstructionEnumeration(bArr);
        }
        return super.getObjects();
    }

    @Override // org.bouncycastle.asn1.ASN1Sequence, org.bouncycastle.asn1.ASN1Object
    public synchronized int hashCode() {
        force();
        return super.hashCode();
    }

    @Override // org.bouncycastle.asn1.ASN1Sequence, java.lang.Iterable
    public synchronized Iterator<ASN1Encodable> iterator() {
        force();
        return super.iterator();
    }

    @Override // org.bouncycastle.asn1.ASN1Sequence
    public synchronized int size() {
        force();
        return super.size();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Sequence
    public ASN1Encodable[] toArrayInternal() {
        force();
        return super.toArrayInternal();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Sequence, org.bouncycastle.asn1.ASN1Primitive
    public synchronized ASN1Primitive toDERObject() {
        force();
        return super.toDERObject();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Sequence, org.bouncycastle.asn1.ASN1Primitive
    public synchronized ASN1Primitive toDLObject() {
        force();
        return super.toDLObject();
    }
}
