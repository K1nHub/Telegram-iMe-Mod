package org.bouncycastle.asn1;

import com.google.android.exoplayer2.extractor.p015ts.PsExtractor;
import java.io.IOException;
import java.util.Objects;
/* loaded from: classes6.dex */
public abstract class ASN1TaggedObject extends ASN1Primitive implements InMemoryRepresentable {
    final boolean explicit;
    final ASN1Encodable obj;
    final int tagNo;

    public ASN1TaggedObject(boolean z, int i, ASN1Encodable aSN1Encodable) {
        Objects.requireNonNull(aSN1Encodable, "'obj' cannot be null");
        this.tagNo = i;
        this.explicit = z;
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

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public boolean asn1Equals(ASN1Primitive aSN1Primitive) {
        if (aSN1Primitive instanceof ASN1TaggedObject) {
            ASN1TaggedObject aSN1TaggedObject = (ASN1TaggedObject) aSN1Primitive;
            if (this.tagNo == aSN1TaggedObject.tagNo && this.explicit == aSN1TaggedObject.explicit) {
                ASN1Primitive aSN1Primitive2 = this.obj.toASN1Primitive();
                ASN1Primitive aSN1Primitive3 = aSN1TaggedObject.obj.toASN1Primitive();
                return aSN1Primitive2 == aSN1Primitive3 || aSN1Primitive2.asn1Equals(aSN1Primitive3);
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
        return this.obj.toASN1Primitive();
    }

    public int getTagNo() {
        return this.tagNo;
    }

    @Override // org.bouncycastle.asn1.ASN1Object
    public int hashCode() {
        return (this.tagNo ^ (this.explicit ? 15 : PsExtractor.VIDEO_STREAM_MASK)) ^ this.obj.toASN1Primitive().hashCode();
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
