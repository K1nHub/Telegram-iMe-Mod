package org.bouncycastle.pqc.crypto.lms;

import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import org.bouncycastle.util.Encodable;
import org.bouncycastle.util.p040io.Streams;
/* loaded from: classes4.dex */
class LMSSignature implements Encodable {
    private final LMOtsSignature otsSignature;
    private final LMSigParameters parameter;

    /* renamed from: q */
    private final int f1487q;

    /* renamed from: y */
    private final byte[][] f1488y;

    public LMSSignature(int i, LMOtsSignature lMOtsSignature, LMSigParameters lMSigParameters, byte[][] bArr) {
        this.f1487q = i;
        this.otsSignature = lMOtsSignature;
        this.parameter = lMSigParameters;
        this.f1488y = bArr;
    }

    public static LMSSignature getInstance(Object obj) throws IOException {
        if (obj instanceof LMSSignature) {
            return (LMSSignature) obj;
        }
        if (obj instanceof DataInputStream) {
            DataInputStream dataInputStream = (DataInputStream) obj;
            int readInt = dataInputStream.readInt();
            LMOtsSignature lMOtsSignature = LMOtsSignature.getInstance(obj);
            LMSigParameters parametersForType = LMSigParameters.getParametersForType(dataInputStream.readInt());
            int h = parametersForType.getH();
            byte[][] bArr = new byte[h];
            for (int i = 0; i < h; i++) {
                bArr[i] = new byte[parametersForType.getM()];
                dataInputStream.readFully(bArr[i]);
            }
            return new LMSSignature(readInt, lMOtsSignature, parametersForType, bArr);
        } else if (!(obj instanceof byte[])) {
            if (obj instanceof InputStream) {
                return getInstance(Streams.readAll((InputStream) obj));
            }
            throw new IllegalArgumentException("cannot parse " + obj);
        } else {
            DataInputStream dataInputStream2 = null;
            try {
                DataInputStream dataInputStream3 = new DataInputStream(new ByteArrayInputStream((byte[]) obj));
                try {
                    LMSSignature lMSSignature = getInstance(dataInputStream3);
                    dataInputStream3.close();
                    return lMSSignature;
                } catch (Throwable th) {
                    th = th;
                    dataInputStream2 = dataInputStream3;
                    if (dataInputStream2 != null) {
                        dataInputStream2.close();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || LMSSignature.class != obj.getClass()) {
            return false;
        }
        LMSSignature lMSSignature = (LMSSignature) obj;
        if (this.f1487q != lMSSignature.f1487q) {
            return false;
        }
        LMOtsSignature lMOtsSignature = this.otsSignature;
        if (lMOtsSignature == null ? lMSSignature.otsSignature == null : lMOtsSignature.equals(lMSSignature.otsSignature)) {
            LMSigParameters lMSigParameters = this.parameter;
            if (lMSigParameters == null ? lMSSignature.parameter == null : lMSigParameters.equals(lMSSignature.parameter)) {
                return Arrays.deepEquals(this.f1488y, lMSSignature.f1488y);
            }
            return false;
        }
        return false;
    }

    @Override // org.bouncycastle.util.Encodable
    public byte[] getEncoded() throws IOException {
        return Composer.compose().u32str(this.f1487q).bytes(this.otsSignature.getEncoded()).u32str(this.parameter.getType()).bytes(this.f1488y).build();
    }

    public int hashCode() {
        int i = this.f1487q * 31;
        LMOtsSignature lMOtsSignature = this.otsSignature;
        int hashCode = (i + (lMOtsSignature != null ? lMOtsSignature.hashCode() : 0)) * 31;
        LMSigParameters lMSigParameters = this.parameter;
        return ((hashCode + (lMSigParameters != null ? lMSigParameters.hashCode() : 0)) * 31) + Arrays.deepHashCode(this.f1488y);
    }
}
