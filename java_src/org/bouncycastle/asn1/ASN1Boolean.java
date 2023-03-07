package org.bouncycastle.asn1;

import java.io.IOException;
import org.bouncycastle.util.Arrays;
/* loaded from: classes4.dex */
public class ASN1Boolean extends ASN1Primitive {
    private final byte[] value;
    private static final byte[] TRUE_VALUE = {-1};
    private static final byte[] FALSE_VALUE = {0};
    public static final ASN1Boolean FALSE = new ASN1Boolean(false);
    public static final ASN1Boolean TRUE = new ASN1Boolean(true);

    public ASN1Boolean(boolean z) {
        this.value = z ? TRUE_VALUE : FALSE_VALUE;
    }

    ASN1Boolean(byte[] bArr) {
        if (bArr.length != 1) {
            throw new IllegalArgumentException("byte value should have 1 byte in it");
        }
        if (bArr[0] == 0) {
            this.value = FALSE_VALUE;
        } else if ((bArr[0] & 255) == 255) {
            this.value = TRUE_VALUE;
        } else {
            this.value = Arrays.clone(bArr);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ASN1Boolean fromOctetString(byte[] bArr) {
        if (bArr.length == 1) {
            return bArr[0] == 0 ? FALSE : (bArr[0] & 255) == 255 ? TRUE : new ASN1Boolean(bArr);
        }
        throw new IllegalArgumentException("BOOLEAN value should have 1 byte in it");
    }

    @Override // org.bouncycastle.asn1.ASN1Primitive
    protected boolean asn1Equals(ASN1Primitive aSN1Primitive) {
        return (aSN1Primitive instanceof ASN1Boolean) && this.value[0] == ((ASN1Boolean) aSN1Primitive).value[0];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public void encode(ASN1OutputStream aSN1OutputStream) throws IOException {
        aSN1OutputStream.writeEncoded(1, this.value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public int encodedLength() {
        return 3;
    }

    @Override // org.bouncycastle.asn1.ASN1Object
    public int hashCode() {
        return this.value[0];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public boolean isConstructed() {
        return false;
    }

    public String toString() {
        return this.value[0] != 0 ? "TRUE" : "FALSE";
    }
}
