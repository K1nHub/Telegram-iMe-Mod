package org.bouncycastle.asn1;

import java.io.IOException;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Properties;
/* loaded from: classes4.dex */
public class ASN1Enumerated extends ASN1Primitive {
    private static ASN1Enumerated[] cache = new ASN1Enumerated[12];
    private final byte[] bytes;

    public ASN1Enumerated(byte[] bArr) {
        if (!Properties.isOverrideSet("org.bouncycastle.asn1.allow_unsafe_integer") && ASN1Integer.isMalformed(bArr)) {
            throw new IllegalArgumentException("malformed enumerated");
        }
        this.bytes = Arrays.clone(bArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ASN1Enumerated fromOctetString(byte[] bArr) {
        if (bArr.length > 1) {
            return new ASN1Enumerated(bArr);
        }
        if (bArr.length != 0) {
            int i = bArr[0] & 255;
            ASN1Enumerated[] aSN1EnumeratedArr = cache;
            if (i >= aSN1EnumeratedArr.length) {
                return new ASN1Enumerated(Arrays.clone(bArr));
            }
            ASN1Enumerated aSN1Enumerated = aSN1EnumeratedArr[i];
            if (aSN1Enumerated == null) {
                ASN1Enumerated aSN1Enumerated2 = new ASN1Enumerated(Arrays.clone(bArr));
                aSN1EnumeratedArr[i] = aSN1Enumerated2;
                return aSN1Enumerated2;
            }
            return aSN1Enumerated;
        }
        throw new IllegalArgumentException("ENUMERATED has zero length");
    }

    @Override // org.bouncycastle.asn1.ASN1Primitive
    boolean asn1Equals(ASN1Primitive aSN1Primitive) {
        if (aSN1Primitive instanceof ASN1Enumerated) {
            return Arrays.areEqual(this.bytes, ((ASN1Enumerated) aSN1Primitive).bytes);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public void encode(ASN1OutputStream aSN1OutputStream) throws IOException {
        aSN1OutputStream.writeEncoded(10, this.bytes);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public int encodedLength() {
        return StreamUtil.calculateBodyLength(this.bytes.length) + 1 + this.bytes.length;
    }

    @Override // org.bouncycastle.asn1.ASN1Object
    public int hashCode() {
        return Arrays.hashCode(this.bytes);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public boolean isConstructed() {
        return false;
    }
}
