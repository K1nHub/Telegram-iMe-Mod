package org.bouncycastle.asn1;

import java.io.ByteArrayOutputStream;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.util.Objects;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.p045io.Streams;
/* loaded from: classes4.dex */
public abstract class ASN1BitString extends ASN1Primitive {
    private static final char[] table = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
    protected final byte[] data;
    protected final int padBits;

    public ASN1BitString(byte[] bArr, int i) {
        Objects.requireNonNull(bArr, "data cannot be null");
        if (bArr.length == 0 && i != 0) {
            throw new IllegalArgumentException("zero length data with non-zero pad bits");
        }
        if (i > 7 || i < 0) {
            throw new IllegalArgumentException("pad bits cannot be greater than 7 or less than 0");
        }
        this.data = Arrays.clone(bArr);
        this.padBits = i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static byte[] derForm(byte[] bArr, int i) {
        byte[] clone = Arrays.clone(bArr);
        if (i > 0) {
            int length = bArr.length - 1;
            clone[length] = (byte) ((255 << i) & clone[length]);
        }
        return clone;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ASN1BitString fromInputStream(int i, InputStream inputStream) throws IOException {
        if (i >= 1) {
            int read = inputStream.read();
            int i2 = i - 1;
            byte[] bArr = new byte[i2];
            if (i2 != 0) {
                if (Streams.readFully(inputStream, bArr) != i2) {
                    throw new EOFException("EOF encountered in middle of BIT STRING");
                }
                if (read > 0 && read < 8) {
                    int i3 = i2 - 1;
                    if (bArr[i3] != ((byte) (bArr[i3] & (255 << read)))) {
                        return new DLBitString(bArr, read);
                    }
                }
            }
            return new DERBitString(bArr, read);
        }
        throw new IllegalArgumentException("truncated BIT STRING detected");
    }

    @Override // org.bouncycastle.asn1.ASN1Primitive
    protected boolean asn1Equals(ASN1Primitive aSN1Primitive) {
        if (aSN1Primitive instanceof ASN1BitString) {
            ASN1BitString aSN1BitString = (ASN1BitString) aSN1Primitive;
            return this.padBits == aSN1BitString.padBits && Arrays.areEqual(getBytes(), aSN1BitString.getBytes());
        }
        return false;
    }

    public byte[] getBytes() {
        return derForm(this.data, this.padBits);
    }

    public byte[] getOctets() {
        if (this.padBits == 0) {
            return Arrays.clone(this.data);
        }
        throw new IllegalStateException("attempt to get non-octet aligned data from BIT STRING");
    }

    public int getPadBits() {
        return this.padBits;
    }

    public String getString() {
        StringBuffer stringBuffer = new StringBuffer("#");
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            new ASN1OutputStream(byteArrayOutputStream).writeObject(this);
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            for (int i = 0; i != byteArray.length; i++) {
                char[] cArr = table;
                stringBuffer.append(cArr[(byteArray[i] >>> 4) & 15]);
                stringBuffer.append(cArr[byteArray[i] & 15]);
            }
            return stringBuffer.toString();
        } catch (IOException e) {
            throw new ASN1ParsingException("Internal error encoding BitString: " + e.getMessage(), e);
        }
    }

    @Override // org.bouncycastle.asn1.ASN1Object
    public int hashCode() {
        return this.padBits ^ Arrays.hashCode(getBytes());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public ASN1Primitive toDERObject() {
        return new DERBitString(this.data, this.padBits);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public ASN1Primitive toDLObject() {
        return new DLBitString(this.data, this.padBits);
    }

    public String toString() {
        return getString();
    }
}
