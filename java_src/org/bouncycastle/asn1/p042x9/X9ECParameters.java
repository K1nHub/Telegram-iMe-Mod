package org.bouncycastle.asn1.p042x9;

import java.math.BigInteger;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Integer;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.math.field.PolynomialExtensionField;
import org.bouncycastle.math.p044ec.ECAlgorithms;
import org.bouncycastle.math.p044ec.ECCurve;
import org.bouncycastle.math.p044ec.ECPoint;
/* renamed from: org.bouncycastle.asn1.x9.X9ECParameters */
/* loaded from: classes4.dex */
public class X9ECParameters extends ASN1Object implements X9ObjectIdentifiers {
    private static final BigInteger ONE = BigInteger.valueOf(1);
    private ECCurve curve;
    private X9FieldID fieldID;

    /* renamed from: g */
    private X9ECPoint f1240g;

    /* renamed from: h */
    private BigInteger f1241h;

    /* renamed from: n */
    private BigInteger f1242n;
    private byte[] seed;

    public X9ECParameters(ECCurve eCCurve, X9ECPoint x9ECPoint, BigInteger bigInteger, BigInteger bigInteger2, byte[] bArr) {
        X9FieldID x9FieldID;
        this.curve = eCCurve;
        this.f1240g = x9ECPoint;
        this.f1242n = bigInteger;
        this.f1241h = bigInteger2;
        this.seed = bArr;
        if (ECAlgorithms.isFpCurve(eCCurve)) {
            x9FieldID = new X9FieldID(eCCurve.getField().getCharacteristic());
        } else if (!ECAlgorithms.isF2mCurve(eCCurve)) {
            throw new IllegalArgumentException("'curve' is of an unsupported type");
        } else {
            int[] exponentsPresent = ((PolynomialExtensionField) eCCurve.getField()).getMinimalPolynomial().getExponentsPresent();
            if (exponentsPresent.length == 3) {
                x9FieldID = new X9FieldID(exponentsPresent[2], exponentsPresent[1]);
            } else if (exponentsPresent.length != 5) {
                throw new IllegalArgumentException("Only trinomial and pentomial curves are supported");
            } else {
                x9FieldID = new X9FieldID(exponentsPresent[4], exponentsPresent[1], exponentsPresent[2], exponentsPresent[3]);
            }
        }
        this.fieldID = x9FieldID;
    }

    public ECCurve getCurve() {
        return this.curve;
    }

    public ECPoint getG() {
        return this.f1240g.getPoint();
    }

    public BigInteger getH() {
        return this.f1241h;
    }

    public BigInteger getN() {
        return this.f1242n;
    }

    @Override // org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.add(new ASN1Integer(ONE));
        aSN1EncodableVector.add(this.fieldID);
        aSN1EncodableVector.add(new X9Curve(this.curve, this.seed));
        aSN1EncodableVector.add(this.f1240g);
        aSN1EncodableVector.add(new ASN1Integer(this.f1242n));
        BigInteger bigInteger = this.f1241h;
        if (bigInteger != null) {
            aSN1EncodableVector.add(new ASN1Integer(bigInteger));
        }
        return new DERSequence(aSN1EncodableVector);
    }
}
