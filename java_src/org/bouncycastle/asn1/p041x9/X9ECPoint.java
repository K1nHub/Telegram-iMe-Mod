package org.bouncycastle.asn1.p041x9;

import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.DEROctetString;
import org.bouncycastle.math.p043ec.ECCurve;
import org.bouncycastle.math.p043ec.ECPoint;
import org.bouncycastle.util.Arrays;
/* renamed from: org.bouncycastle.asn1.x9.X9ECPoint */
/* loaded from: classes4.dex */
public class X9ECPoint extends ASN1Object {

    /* renamed from: c */
    private ECCurve f1237c;
    private final ASN1OctetString encoding;

    /* renamed from: p */
    private ECPoint f1238p;

    public X9ECPoint(ECCurve eCCurve, byte[] bArr) {
        this.f1237c = eCCurve;
        this.encoding = new DEROctetString(Arrays.clone(bArr));
    }

    public synchronized ECPoint getPoint() {
        if (this.f1238p == null) {
            this.f1238p = this.f1237c.decodePoint(this.encoding.getOctets()).normalize();
        }
        return this.f1238p;
    }

    @Override // org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        return this.encoding;
    }
}
