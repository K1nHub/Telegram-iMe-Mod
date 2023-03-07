package org.bouncycastle.asn1;

import java.io.IOException;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.Vector;
import org.bouncycastle.util.Arrays;
/* loaded from: classes4.dex */
public abstract class ASN1Set extends ASN1Primitive implements Iterable {
    private boolean isSorted;
    private Vector set;

    /* JADX INFO: Access modifiers changed from: protected */
    public ASN1Set() {
        this.set = new Vector();
        this.isSorted = false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ASN1Set(ASN1Encodable aSN1Encodable) {
        Vector vector = new Vector();
        this.set = vector;
        this.isSorted = false;
        vector.addElement(aSN1Encodable);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ASN1Set(ASN1EncodableVector aSN1EncodableVector, boolean z) {
        this.set = new Vector();
        this.isSorted = false;
        for (int i = 0; i != aSN1EncodableVector.size(); i++) {
            this.set.addElement(aSN1EncodableVector.get(i));
        }
        if (z) {
            sort();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ASN1Set(ASN1Encodable[] aSN1EncodableArr, boolean z) {
        this.set = new Vector();
        this.isSorted = false;
        for (int i = 0; i != aSN1EncodableArr.length; i++) {
            this.set.addElement(aSN1EncodableArr[i]);
        }
        if (z) {
            sort();
        }
    }

    private byte[] getDEREncoded(ASN1Encodable aSN1Encodable) {
        try {
            return aSN1Encodable.toASN1Primitive().getEncoded("DER");
        } catch (IOException unused) {
            throw new IllegalArgumentException("cannot encode object added to SET");
        }
    }

    public static ASN1Set getInstance(ASN1TaggedObject aSN1TaggedObject, boolean z) {
        if (z) {
            if (aSN1TaggedObject.isExplicit()) {
                return (ASN1Set) aSN1TaggedObject.getObject();
            }
            throw new IllegalArgumentException("object implicit - explicit expected.");
        }
        ASN1Primitive object = aSN1TaggedObject.getObject();
        if (aSN1TaggedObject.isExplicit()) {
            return aSN1TaggedObject instanceof BERTaggedObject ? new BERSet(object) : new DLSet(object);
        } else if (object instanceof ASN1Set) {
            return (ASN1Set) object;
        } else {
            if (object instanceof ASN1Sequence) {
                ASN1Sequence aSN1Sequence = (ASN1Sequence) object;
                return aSN1TaggedObject instanceof BERTaggedObject ? new BERSet(aSN1Sequence.toArray()) : new DLSet(aSN1Sequence.toArray());
            }
            throw new IllegalArgumentException("unknown object in getInstance: " + aSN1TaggedObject.getClass().getName());
        }
    }

    private ASN1Encodable getNext(Enumeration enumeration) {
        ASN1Encodable aSN1Encodable = (ASN1Encodable) enumeration.nextElement();
        return aSN1Encodable == null ? DERNull.INSTANCE : aSN1Encodable;
    }

    private boolean lessThanOrEqual(byte[] bArr, byte[] bArr2) {
        int min = Math.min(bArr.length, bArr2.length);
        for (int i = 0; i != min; i++) {
            if (bArr[i] != bArr2[i]) {
                return (bArr[i] & 255) < (bArr2[i] & 255);
            }
        }
        return min == bArr.length;
    }

    @Override // org.bouncycastle.asn1.ASN1Primitive
    boolean asn1Equals(ASN1Primitive aSN1Primitive) {
        if (aSN1Primitive instanceof ASN1Set) {
            ASN1Set aSN1Set = (ASN1Set) aSN1Primitive;
            if (size() != aSN1Set.size()) {
                return false;
            }
            Enumeration objects = getObjects();
            Enumeration objects2 = aSN1Set.getObjects();
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
        return (ASN1Encodable) this.set.elementAt(i);
    }

    public Enumeration getObjects() {
        return this.set.elements();
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
        return this.set.size();
    }

    protected void sort() {
        if (this.isSorted) {
            return;
        }
        this.isSorted = true;
        if (this.set.size() > 1) {
            int size = this.set.size() - 1;
            boolean z = true;
            while (z) {
                int i = 0;
                byte[] dEREncoded = getDEREncoded((ASN1Encodable) this.set.elementAt(0));
                z = false;
                int i2 = 0;
                while (i2 != size) {
                    int i3 = i2 + 1;
                    byte[] dEREncoded2 = getDEREncoded((ASN1Encodable) this.set.elementAt(i3));
                    if (lessThanOrEqual(dEREncoded, dEREncoded2)) {
                        dEREncoded = dEREncoded2;
                    } else {
                        Object elementAt = this.set.elementAt(i2);
                        Vector vector = this.set;
                        vector.setElementAt(vector.elementAt(i3), i2);
                        this.set.setElementAt(elementAt, i3);
                        i = i2;
                        z = true;
                    }
                    i2 = i3;
                }
                size = i;
            }
        }
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
        if (this.isSorted) {
            DERSet dERSet = new DERSet();
            dERSet.set = this.set;
            return dERSet;
        }
        Vector vector = new Vector();
        for (int i = 0; i != this.set.size(); i++) {
            vector.addElement(this.set.elementAt(i));
        }
        DERSet dERSet2 = new DERSet();
        dERSet2.set = vector;
        dERSet2.sort();
        return dERSet2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public ASN1Primitive toDLObject() {
        DLSet dLSet = new DLSet();
        dLSet.set = this.set;
        return dLSet;
    }

    public String toString() {
        return this.set.toString();
    }
}
