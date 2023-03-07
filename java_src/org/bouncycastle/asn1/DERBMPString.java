package org.bouncycastle.asn1;

import java.io.IOException;
import org.bouncycastle.util.Arrays;
/* loaded from: classes4.dex */
public class DERBMPString extends ASN1Primitive {
    private final char[] string;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DERBMPString(char[] cArr) {
        this.string = cArr;
    }

    @Override // org.bouncycastle.asn1.ASN1Primitive
    protected boolean asn1Equals(ASN1Primitive aSN1Primitive) {
        if (aSN1Primitive instanceof DERBMPString) {
            return Arrays.areEqual(this.string, ((DERBMPString) aSN1Primitive).string);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public void encode(ASN1OutputStream aSN1OutputStream) throws IOException {
        aSN1OutputStream.write(30);
        aSN1OutputStream.writeLength(this.string.length * 2);
        int i = 0;
        while (true) {
            char[] cArr = this.string;
            if (i == cArr.length) {
                return;
            }
            char c = cArr[i];
            aSN1OutputStream.write((byte) (c >> '\b'));
            aSN1OutputStream.write((byte) c);
            i++;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public int encodedLength() {
        return StreamUtil.calculateBodyLength(this.string.length * 2) + 1 + (this.string.length * 2);
    }

    public String getString() {
        return new String(this.string);
    }

    @Override // org.bouncycastle.asn1.ASN1Object
    public int hashCode() {
        return Arrays.hashCode(this.string);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public boolean isConstructed() {
        return false;
    }

    public String toString() {
        return getString();
    }
}
