package org.bouncycastle.asn1;

import com.google.android.exoplayer2.extractor.p015ts.TsExtractor;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.util.Objects;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.p041io.Streams;
/* loaded from: classes4.dex */
public abstract class ASN1BitString extends ASN1Primitive {
    private static final char[] table = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
    protected final byte[] data;
    protected final int padBits;

    public ASN1BitString(byte[] bArr, int i) {
        Objects.requireNonNull(bArr, "'data' cannot be null");
        if (bArr.length == 0 && i != 0) {
            throw new IllegalArgumentException("zero length data with non-zero pad bits");
        }
        if (i > 7 || i < 0) {
            throw new IllegalArgumentException("pad bits cannot be greater than 7 or less than 0");
        }
        this.data = Arrays.clone(bArr);
        this.padBits = i;
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

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public boolean asn1Equals(ASN1Primitive aSN1Primitive) {
        if (aSN1Primitive instanceof ASN1BitString) {
            ASN1BitString aSN1BitString = (ASN1BitString) aSN1Primitive;
            if (this.padBits != aSN1BitString.padBits) {
                return false;
            }
            byte[] bArr = this.data;
            byte[] bArr2 = aSN1BitString.data;
            int length = bArr.length;
            if (length != bArr2.length) {
                return false;
            }
            int i = length - 1;
            if (i < 0) {
                return true;
            }
            for (int i2 = 0; i2 < i; i2++) {
                if (bArr[i2] != bArr2[i2]) {
                    return false;
                }
            }
            byte b = bArr[i];
            int i3 = this.padBits;
            return ((byte) (b & (255 << i3))) == ((byte) (bArr2[i] & (255 << i3)));
        }
        return false;
    }

    public byte[] getBytes() {
        byte[] bArr = this.data;
        if (bArr.length == 0) {
            return bArr;
        }
        byte[] clone = Arrays.clone(bArr);
        int length = this.data.length - 1;
        clone[length] = (byte) (clone[length] & (255 << this.padBits));
        return clone;
    }

    public byte[] getOctets() {
        if (this.padBits == 0) {
            return Arrays.clone(this.data);
        }
        throw new IllegalStateException("attempt to get non-octet aligned data from BIT STRING");
    }

    public String getString() {
        StringBuffer stringBuffer = new StringBuffer("#");
        try {
            byte[] encoded = getEncoded();
            for (int i = 0; i != encoded.length; i++) {
                char[] cArr = table;
                stringBuffer.append(cArr[(encoded[i] >>> 4) & 15]);
                stringBuffer.append(cArr[encoded[i] & 15]);
            }
            return stringBuffer.toString();
        } catch (IOException e) {
            throw new ASN1ParsingException("Internal error encoding BitString: " + e.getMessage(), e);
        }
    }

    @Override // org.bouncycastle.asn1.ASN1Object
    public int hashCode() {
        byte[] bArr = this.data;
        int length = bArr.length - 1;
        if (length < 0) {
            return 1;
        }
        return ((Arrays.hashCode(bArr, 0, length) * TsExtractor.TS_STREAM_TYPE_AIT) ^ ((byte) (bArr[length] & (255 << this.padBits)))) ^ this.padBits;
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
