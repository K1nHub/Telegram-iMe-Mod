package org.bouncycastle.asn1;

import java.io.IOException;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Strings;
/* loaded from: classes4.dex */
public class ASN1UTCTime extends ASN1Primitive {
    private byte[] time;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ASN1UTCTime(byte[] bArr) {
        this.time = bArr;
    }

    @Override // org.bouncycastle.asn1.ASN1Primitive
    boolean asn1Equals(ASN1Primitive aSN1Primitive) {
        if (aSN1Primitive instanceof ASN1UTCTime) {
            return Arrays.areEqual(this.time, ((ASN1UTCTime) aSN1Primitive).time);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public void encode(ASN1OutputStream aSN1OutputStream) throws IOException {
        aSN1OutputStream.write(23);
        int length = this.time.length;
        aSN1OutputStream.writeLength(length);
        for (int i = 0; i != length; i++) {
            aSN1OutputStream.write(this.time[i]);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public int encodedLength() {
        int length = this.time.length;
        return StreamUtil.calculateBodyLength(length) + 1 + length;
    }

    @Override // org.bouncycastle.asn1.ASN1Object
    public int hashCode() {
        return Arrays.hashCode(this.time);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public boolean isConstructed() {
        return false;
    }

    public String toString() {
        return Strings.fromByteArray(this.time);
    }
}
