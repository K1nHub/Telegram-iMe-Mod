package org.bouncycastle.asn1.p038x9;

import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.DERBitString;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.math.p039ec.ECAlgorithms;
import org.bouncycastle.math.p039ec.ECCurve;
import org.bouncycastle.util.Arrays;
/* renamed from: org.bouncycastle.asn1.x9.X9Curve */
/* loaded from: classes4.dex */
public class X9Curve extends ASN1Object implements X9ObjectIdentifiers {
    private ECCurve curve;
    private ASN1ObjectIdentifier fieldIdentifier = null;
    private byte[] seed;

    public X9Curve(ECCurve eCCurve, byte[] bArr) {
        this.seed = Arrays.clone(bArr);
        setFieldIdentifier();
    }

    private void setFieldIdentifier() {
        ASN1ObjectIdentifier aSN1ObjectIdentifier;
        if (ECAlgorithms.isFpCurve(this.curve)) {
            aSN1ObjectIdentifier = X9ObjectIdentifiers.prime_field;
        } else if (!ECAlgorithms.isF2mCurve(this.curve)) {
            throw new IllegalArgumentException("This type of ECCurve is not implemented");
        } else {
            aSN1ObjectIdentifier = X9ObjectIdentifiers.characteristic_two_field;
        }
        this.fieldIdentifier = aSN1ObjectIdentifier;
    }

    @Override // org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector(3);
        if (this.fieldIdentifier.equals((ASN1Primitive) X9ObjectIdentifiers.prime_field)) {
            throw null;
        }
        if (this.fieldIdentifier.equals((ASN1Primitive) X9ObjectIdentifiers.characteristic_two_field)) {
            throw null;
        }
        if (this.seed != null) {
            aSN1EncodableVector.add(new DERBitString(this.seed));
        }
        return new DERSequence(aSN1EncodableVector);
    }
}
