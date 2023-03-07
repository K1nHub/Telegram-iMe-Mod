package org.bouncycastle.asn1;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
/* loaded from: classes4.dex */
public abstract class ASN1Object implements ASN1Encodable {
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ASN1Encodable) {
            return toASN1Primitive().equals(((ASN1Encodable) obj).toASN1Primitive());
        }
        return false;
    }

    public byte[] getEncoded() throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        new ASN1OutputStream(byteArrayOutputStream).writeObject(this);
        return byteArrayOutputStream.toByteArray();
    }

    public byte[] getEncoded(String str) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream;
        if (str.equals("DER")) {
            byteArrayOutputStream = new ByteArrayOutputStream();
            new DEROutputStream(byteArrayOutputStream).writeObject(this);
        } else if (!str.equals("DL")) {
            return getEncoded();
        } else {
            byteArrayOutputStream = new ByteArrayOutputStream();
            new DLOutputStream(byteArrayOutputStream).writeObject(this);
        }
        return byteArrayOutputStream.toByteArray();
    }

    public int hashCode() {
        return toASN1Primitive().hashCode();
    }

    @Override // org.bouncycastle.asn1.ASN1Encodable
    public abstract ASN1Primitive toASN1Primitive();
}
