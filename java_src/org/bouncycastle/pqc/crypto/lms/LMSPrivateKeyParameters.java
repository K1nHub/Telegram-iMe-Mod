package org.bouncycastle.pqc.crypto.lms;

import com.google.android.exoplayer2.extractor.p015ts.TsExtractor;
import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Map;
import java.util.WeakHashMap;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.p042io.Streams;
/* loaded from: classes4.dex */
public class LMSPrivateKeyParameters extends LMSKeyParameters {

    /* renamed from: T1 */
    private static CacheKey f1315T1;
    private static CacheKey[] internedKeys;

    /* renamed from: I */
    private final byte[] f1316I;
    private final byte[] masterSecret;
    private final int maxCacheR;
    private final int maxQ;
    private final LMOtsParameters otsParameters;
    private final LMSigParameters parameters;
    private LMSPublicKeyParameters publicKey;

    /* renamed from: q */
    private int f1317q;
    private final Map<CacheKey, byte[]> tCache;
    private final Digest tDigest;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static class CacheKey {
        private final int index;

        CacheKey(int i) {
            this.index = i;
        }

        public boolean equals(Object obj) {
            return (obj instanceof CacheKey) && ((CacheKey) obj).index == this.index;
        }

        public int hashCode() {
            return this.index;
        }
    }

    static {
        CacheKey cacheKey = new CacheKey(1);
        f1315T1 = cacheKey;
        CacheKey[] cacheKeyArr = new CacheKey[TsExtractor.TS_STREAM_TYPE_AC3];
        internedKeys = cacheKeyArr;
        cacheKeyArr[1] = cacheKey;
        int i = 2;
        while (true) {
            CacheKey[] cacheKeyArr2 = internedKeys;
            if (i >= cacheKeyArr2.length) {
                return;
            }
            cacheKeyArr2[i] = new CacheKey(i);
            i++;
        }
    }

    public LMSPrivateKeyParameters(LMSigParameters lMSigParameters, LMOtsParameters lMOtsParameters, int i, byte[] bArr, int i2, byte[] bArr2) {
        super(true);
        this.parameters = lMSigParameters;
        this.otsParameters = lMOtsParameters;
        this.f1317q = i;
        this.f1316I = Arrays.clone(bArr);
        this.maxQ = i2;
        this.masterSecret = Arrays.clone(bArr2);
        this.maxCacheR = 1 << (lMSigParameters.getH() + 1);
        this.tCache = new WeakHashMap();
        this.tDigest = DigestUtil.getDigest(lMSigParameters.getDigestOID());
    }

    private byte[] calcT(int i) {
        int h = 1 << getSigParameters().getH();
        if (i >= h) {
            LmsUtils.byteArray(getI(), this.tDigest);
            LmsUtils.u32str(i, this.tDigest);
            LmsUtils.u16str((short) -32126, this.tDigest);
            LmsUtils.byteArray(LM_OTS.lms_ots_generatePublicKey(getOtsParameters(), getI(), i - h, getMasterSecret()), this.tDigest);
            byte[] bArr = new byte[this.tDigest.getDigestSize()];
            this.tDigest.doFinal(bArr, 0);
            return bArr;
        }
        int i2 = i * 2;
        byte[] findT = findT(i2);
        byte[] findT2 = findT(i2 + 1);
        LmsUtils.byteArray(getI(), this.tDigest);
        LmsUtils.u32str(i, this.tDigest);
        LmsUtils.u16str((short) -31869, this.tDigest);
        LmsUtils.byteArray(findT, this.tDigest);
        LmsUtils.byteArray(findT2, this.tDigest);
        byte[] bArr2 = new byte[this.tDigest.getDigestSize()];
        this.tDigest.doFinal(bArr2, 0);
        return bArr2;
    }

    private byte[] findT(CacheKey cacheKey) {
        synchronized (this.tCache) {
            byte[] bArr = this.tCache.get(cacheKey);
            if (bArr != null) {
                return bArr;
            }
            byte[] calcT = calcT(cacheKey.index);
            this.tCache.put(cacheKey, calcT);
            return calcT;
        }
    }

    public static LMSPrivateKeyParameters getInstance(Object obj) throws IOException {
        DataInputStream dataInputStream;
        if (obj instanceof LMSPrivateKeyParameters) {
            return (LMSPrivateKeyParameters) obj;
        }
        if (!(obj instanceof DataInputStream)) {
            if (!(obj instanceof byte[])) {
                if (obj instanceof InputStream) {
                    return getInstance(Streams.readAll((InputStream) obj));
                }
                throw new IllegalArgumentException("cannot parse " + obj);
            }
            DataInputStream dataInputStream2 = null;
            try {
                dataInputStream = new DataInputStream(new ByteArrayInputStream((byte[]) obj));
            } catch (Throwable th) {
                th = th;
            }
            try {
                LMSPrivateKeyParameters lMSPrivateKeyParameters = getInstance(dataInputStream);
                dataInputStream.close();
                return lMSPrivateKeyParameters;
            } catch (Throwable th2) {
                th = th2;
                dataInputStream2 = dataInputStream;
                if (dataInputStream2 != null) {
                    dataInputStream2.close();
                }
                throw th;
            }
        }
        DataInputStream dataInputStream3 = (DataInputStream) obj;
        if (dataInputStream3.readInt() == 0) {
            LMSigParameters parametersForType = LMSigParameters.getParametersForType(dataInputStream3.readInt());
            LMOtsParameters parametersForType2 = LMOtsParameters.getParametersForType(dataInputStream3.readInt());
            byte[] bArr = new byte[16];
            dataInputStream3.readFully(bArr);
            int readInt = dataInputStream3.readInt();
            int readInt2 = dataInputStream3.readInt();
            int readInt3 = dataInputStream3.readInt();
            if (readInt3 >= 0) {
                if (readInt3 <= dataInputStream3.available()) {
                    byte[] bArr2 = new byte[readInt3];
                    dataInputStream3.readFully(bArr2);
                    return new LMSPrivateKeyParameters(parametersForType, parametersForType2, readInt, bArr, readInt2, bArr2);
                }
                throw new IOException("secret length exceeded " + dataInputStream3.available());
            }
            throw new IllegalStateException("secret length less than zero");
        }
        throw new IllegalStateException("expected version 0 lms private key");
    }

    public static LMSPrivateKeyParameters getInstance(byte[] bArr, byte[] bArr2) throws IOException {
        LMSPrivateKeyParameters lMSPrivateKeyParameters = getInstance(bArr);
        lMSPrivateKeyParameters.publicKey = LMSPublicKeyParameters.getInstance(bArr2);
        return lMSPrivateKeyParameters;
    }

    public boolean equals(Object obj) {
        LMSPublicKeyParameters lMSPublicKeyParameters;
        if (this == obj) {
            return true;
        }
        if (obj == null || LMSPrivateKeyParameters.class != obj.getClass()) {
            return false;
        }
        LMSPrivateKeyParameters lMSPrivateKeyParameters = (LMSPrivateKeyParameters) obj;
        if (this.f1317q == lMSPrivateKeyParameters.f1317q && this.maxQ == lMSPrivateKeyParameters.maxQ && Arrays.areEqual(this.f1316I, lMSPrivateKeyParameters.f1316I)) {
            LMSigParameters lMSigParameters = this.parameters;
            if (lMSigParameters == null ? lMSPrivateKeyParameters.parameters == null : lMSigParameters.equals(lMSPrivateKeyParameters.parameters)) {
                LMOtsParameters lMOtsParameters = this.otsParameters;
                if (lMOtsParameters == null ? lMSPrivateKeyParameters.otsParameters == null : lMOtsParameters.equals(lMSPrivateKeyParameters.otsParameters)) {
                    if (Arrays.areEqual(this.masterSecret, lMSPrivateKeyParameters.masterSecret)) {
                        LMSPublicKeyParameters lMSPublicKeyParameters2 = this.publicKey;
                        if (lMSPublicKeyParameters2 == null || (lMSPublicKeyParameters = lMSPrivateKeyParameters.publicKey) == null) {
                            return true;
                        }
                        return lMSPublicKeyParameters2.equals(lMSPublicKeyParameters);
                    }
                    return false;
                }
                return false;
            }
            return false;
        }
        return false;
    }

    byte[] findT(int i) {
        if (i < this.maxCacheR) {
            CacheKey[] cacheKeyArr = internedKeys;
            return findT(i < cacheKeyArr.length ? cacheKeyArr[i] : new CacheKey(i));
        }
        return calcT(i);
    }

    @Override // org.bouncycastle.pqc.crypto.lms.LMSKeyParameters, org.bouncycastle.util.Encodable
    public byte[] getEncoded() throws IOException {
        return Composer.compose().u32str(0).u32str(this.parameters.getType()).u32str(this.otsParameters.getType()).bytes(this.f1316I).u32str(this.f1317q).u32str(this.maxQ).u32str(this.masterSecret.length).bytes(this.masterSecret).build();
    }

    public byte[] getI() {
        return Arrays.clone(this.f1316I);
    }

    public byte[] getMasterSecret() {
        return Arrays.clone(this.masterSecret);
    }

    public LMOtsParameters getOtsParameters() {
        return this.otsParameters;
    }

    public LMSPublicKeyParameters getPublicKey() {
        LMSPublicKeyParameters lMSPublicKeyParameters;
        synchronized (this) {
            if (this.publicKey == null) {
                this.publicKey = new LMSPublicKeyParameters(this.parameters, this.otsParameters, findT(f1315T1), this.f1316I);
            }
            lMSPublicKeyParameters = this.publicKey;
        }
        return lMSPublicKeyParameters;
    }

    public LMSigParameters getSigParameters() {
        return this.parameters;
    }

    public int hashCode() {
        int hashCode = ((this.f1317q * 31) + Arrays.hashCode(this.f1316I)) * 31;
        LMSigParameters lMSigParameters = this.parameters;
        int hashCode2 = (hashCode + (lMSigParameters != null ? lMSigParameters.hashCode() : 0)) * 31;
        LMOtsParameters lMOtsParameters = this.otsParameters;
        int hashCode3 = (((((hashCode2 + (lMOtsParameters != null ? lMOtsParameters.hashCode() : 0)) * 31) + this.maxQ) * 31) + Arrays.hashCode(this.masterSecret)) * 31;
        LMSPublicKeyParameters lMSPublicKeyParameters = this.publicKey;
        return hashCode3 + (lMSPublicKeyParameters != null ? lMSPublicKeyParameters.hashCode() : 0);
    }
}
