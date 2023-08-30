package org.bouncycastle.asn1;

import java.io.IOException;
import java.io.OutputStream;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public class DEROutputStream extends ASN1OutputStream {
    /* JADX INFO: Access modifiers changed from: package-private */
    public DEROutputStream(OutputStream outputStream) {
        super(outputStream);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1OutputStream
    public DEROutputStream getDERSubStream() {
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1OutputStream
    public ASN1OutputStream getDLSubStream() {
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1OutputStream
    public void writePrimitive(ASN1Primitive aSN1Primitive, boolean z) throws IOException {
        aSN1Primitive.toDERObject().encode(this, z);
    }
}
