package org.bouncycastle.pqc.asn1;

import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Integer;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DEROctetString;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.pqc.math.linearalgebra.GF2Matrix;
/* loaded from: classes4.dex */
public class McEliecePublicKey extends ASN1Object {

    /* renamed from: g */
    private final GF2Matrix f1387g;

    /* renamed from: n */
    private final int f1388n;

    /* renamed from: t */
    private final int f1389t;

    public McEliecePublicKey(int i, int i2, GF2Matrix gF2Matrix) {
        this.f1388n = i;
        this.f1389t = i2;
        this.f1387g = new GF2Matrix(gF2Matrix);
    }

    private McEliecePublicKey(ASN1Sequence aSN1Sequence) {
        this.f1388n = ((ASN1Integer) aSN1Sequence.getObjectAt(0)).intValueExact();
        this.f1389t = ((ASN1Integer) aSN1Sequence.getObjectAt(1)).intValueExact();
        this.f1387g = new GF2Matrix(((ASN1OctetString) aSN1Sequence.getObjectAt(2)).getOctets());
    }

    public static McEliecePublicKey getInstance(Object obj) {
        if (obj instanceof McEliecePublicKey) {
            return (McEliecePublicKey) obj;
        }
        if (obj != null) {
            return new McEliecePublicKey(ASN1Sequence.getInstance(obj));
        }
        return null;
    }

    public GF2Matrix getG() {
        return new GF2Matrix(this.f1387g);
    }

    public int getN() {
        return this.f1388n;
    }

    public int getT() {
        return this.f1389t;
    }

    @Override // org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.add(new ASN1Integer(this.f1388n));
        aSN1EncodableVector.add(new ASN1Integer(this.f1389t));
        aSN1EncodableVector.add(new DEROctetString(this.f1387g.getEncoded()));
        return new DERSequence(aSN1EncodableVector);
    }
}
