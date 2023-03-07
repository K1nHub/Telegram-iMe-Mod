package org.bouncycastle.asn1;

import java.io.IOException;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.Vector;
import org.bouncycastle.util.Arrays;
/* loaded from: classes4.dex */
public abstract class ASN1Sequence extends ASN1Primitive implements Iterable {
    protected Vector seq = new Vector();

    /* JADX INFO: Access modifiers changed from: protected */
    public ASN1Sequence() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ASN1Sequence(ASN1EncodableVector aSN1EncodableVector) {
        for (int i = 0; i != aSN1EncodableVector.size(); i++) {
            this.seq.addElement(aSN1EncodableVector.get(i));
        }
    }

    public static ASN1Sequence getInstance(Object obj) {
        if (obj == null || (obj instanceof ASN1Sequence)) {
            return (ASN1Sequence) obj;
        }
        if (obj instanceof ASN1SequenceParser) {
            return getInstance(((ASN1SequenceParser) obj).toASN1Primitive());
        }
        if (obj instanceof byte[]) {
            try {
                return getInstance(ASN1Primitive.fromByteArray((byte[]) obj));
            } catch (IOException e) {
                throw new IllegalArgumentException("failed to construct sequence from byte[]: " + e.getMessage());
            }
        }
        if (obj instanceof ASN1Encodable) {
            ASN1Primitive aSN1Primitive = ((ASN1Encodable) obj).toASN1Primitive();
            if (aSN1Primitive instanceof ASN1Sequence) {
                return (ASN1Sequence) aSN1Primitive;
            }
        }
        throw new IllegalArgumentException("unknown object in getInstance: " + obj.getClass().getName());
    }

    private ASN1Encodable getNext(Enumeration enumeration) {
        return (ASN1Encodable) enumeration.nextElement();
    }

    @Override // org.bouncycastle.asn1.ASN1Primitive
    boolean asn1Equals(ASN1Primitive aSN1Primitive) {
        if (aSN1Primitive instanceof ASN1Sequence) {
            ASN1Sequence aSN1Sequence = (ASN1Sequence) aSN1Primitive;
            if (size() != aSN1Sequence.size()) {
                return false;
            }
            Enumeration objects = getObjects();
            Enumeration objects2 = aSN1Sequence.getObjects();
            while (objects.hasMoreElements()) {
                ASN1Encodable next = getNext(objects);
                ASN1Encodable next2 = getNext(objects2);
                ASN1Primitive aSN1Primitive2 = next.toASN1Primitive();
                ASN1Primitive aSN1Primitive3 = next2.toASN1Primitive();
                if (aSN1Primitive2 != aSN1Primitive3 && !aSN1Primitive2.equals(aSN1Primitive3)) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    public ASN1Encodable getObjectAt(int i) {
        return (ASN1Encodable) this.seq.elementAt(i);
    }

    public Enumeration getObjects() {
        return this.seq.elements();
    }

    @Override // org.bouncycastle.asn1.ASN1Object
    public int hashCode() {
        Enumeration objects = getObjects();
        int size = size();
        while (objects.hasMoreElements()) {
            size = (size * 17) ^ getNext(objects).hashCode();
        }
        return size;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public boolean isConstructed() {
        return true;
    }

    @Override // java.lang.Iterable
    public Iterator<ASN1Encodable> iterator() {
        return new Arrays.Iterator(toArray());
    }

    public int size() {
        return this.seq.size();
    }

    public ASN1Encodable[] toArray() {
        ASN1Encodable[] aSN1EncodableArr = new ASN1Encodable[size()];
        for (int i = 0; i != size(); i++) {
            aSN1EncodableArr[i] = getObjectAt(i);
        }
        return aSN1EncodableArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public ASN1Primitive toDERObject() {
        DERSequence dERSequence = new DERSequence();
        dERSequence.seq = this.seq;
        return dERSequence;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public ASN1Primitive toDLObject() {
        DLSequence dLSequence = new DLSequence();
        dLSequence.seq = this.seq;
        return dLSequence;
    }

    public String toString() {
        return this.seq.toString();
    }
}
