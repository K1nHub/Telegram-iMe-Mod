package org.bouncycastle.asn1;

import java.io.IOException;
/* loaded from: classes4.dex */
public abstract class ASN1TaggedObject extends ASN1Primitive implements InMemoryRepresentable {
    boolean empty = false;
    boolean explicit;
    ASN1Encodable obj;
    int tagNo;

    public ASN1TaggedObject(boolean z, int i, ASN1Encodable aSN1Encodable) {
        this.explicit = true;
        this.obj = null;
        this.explicit = z;
        this.tagNo = i;
        if (!z) {
            boolean z2 = aSN1Encodable.toASN1Primitive() instanceof ASN1Set;
        }
        this.obj = aSN1Encodable;
    }

    public static ASN1TaggedObject getInstance(Object obj) {
        if (obj == null || (obj instanceof ASN1TaggedObject)) {
            return (ASN1TaggedObject) obj;
        }
        if (!(obj instanceof byte[])) {
            throw new IllegalArgumentException("unknown object in getInstance: " + obj.getClass().getName());
        }
        try {
            return getInstance(ASN1Primitive.fromByteArray((byte[]) obj));
        } catch (IOException e) {
            throw new IllegalArgumentException("failed to construct tagged object from byte[]: " + e.getMessage());
        }
    }

    @Override // org.bouncycastle.asn1.ASN1Primitive
    boolean asn1Equals(ASN1Primitive aSN1Primitive) {
        if (aSN1Primitive instanceof ASN1TaggedObject) {
            ASN1TaggedObject aSN1TaggedObject = (ASN1TaggedObject) aSN1Primitive;
            if (this.tagNo == aSN1TaggedObject.tagNo && this.empty == aSN1TaggedObject.empty && this.explicit == aSN1TaggedObject.explicit) {
                ASN1Encodable aSN1Encodable = this.obj;
                return aSN1Encodable == null ? aSN1TaggedObject.obj == null : aSN1Encodable.toASN1Primitive().equals(aSN1TaggedObject.obj.toASN1Primitive());
            }
            return false;
        }
        return false;
    }

    @Override // org.bouncycastle.asn1.InMemoryRepresentable
    public ASN1Primitive getLoadedObject() {
        return toASN1Primitive();
    }

    public ASN1Primitive getObject() {
        ASN1Encodable aSN1Encodable = this.obj;
        if (aSN1Encodable != null) {
            return aSN1Encodable.toASN1Primitive();
        }
        return null;
    }

    public int getTagNo() {
        return this.tagNo;
    }

    @Override // org.bouncycastle.asn1.ASN1Object
    public int hashCode() {
        int i = this.tagNo;
        ASN1Encodable aSN1Encodable = this.obj;
        return aSN1Encodable != null ? i ^ aSN1Encodable.hashCode() : i;
    }

    public boolean isExplicit() {
        return this.explicit;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public ASN1Primitive toDERObject() {
        return new DERTaggedObject(this.explicit, this.tagNo, this.obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public ASN1Primitive toDLObject() {
        return new DLTaggedObject(this.explicit, this.tagNo, this.obj);
    }

    public String toString() {
        return "[" + this.tagNo + "]" + this.obj;
    }
}
