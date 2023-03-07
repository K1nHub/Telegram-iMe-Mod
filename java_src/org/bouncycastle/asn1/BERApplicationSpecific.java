package org.bouncycastle.asn1;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
/* loaded from: classes4.dex */
public class BERApplicationSpecific extends ASN1ApplicationSpecific {
    public BERApplicationSpecific(int i, ASN1EncodableVector aSN1EncodableVector) {
        super(true, i, getEncodedVector(aSN1EncodableVector));
    }

    private static byte[] getEncodedVector(ASN1EncodableVector aSN1EncodableVector) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        for (int i = 0; i != aSN1EncodableVector.size(); i++) {
            try {
                byteArrayOutputStream.write(((ASN1Object) aSN1EncodableVector.get(i)).getEncoded("BER"));
            } catch (IOException e) {
                throw new ASN1ParsingException("malformed object: " + e, e);
            }
        }
        return byteArrayOutputStream.toByteArray();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1ApplicationSpecific, org.bouncycastle.asn1.ASN1Primitive
    public void encode(ASN1OutputStream aSN1OutputStream) throws IOException {
        aSN1OutputStream.writeTag(this.isConstructed ? 96 : 64, this.tag);
        aSN1OutputStream.write(128);
        aSN1OutputStream.write(this.octets);
        aSN1OutputStream.write(0);
        aSN1OutputStream.write(0);
    }
}
