package org.web3j.crypto;

import java.math.BigInteger;
import org.bouncycastle.crypto.digests.SHA256Digest;
import org.bouncycastle.crypto.params.ECPrivateKeyParameters;
import org.bouncycastle.crypto.signers.ECDSASigner;
import org.bouncycastle.crypto.signers.HMacDSAKCalculator;
/* loaded from: classes6.dex */
public class ECKeyPair {
    private final BigInteger privateKey;
    private final BigInteger publicKey;

    public ECKeyPair(BigInteger bigInteger, BigInteger bigInteger2) {
        this.privateKey = bigInteger;
        this.publicKey = bigInteger2;
    }

    public BigInteger getPrivateKey() {
        return this.privateKey;
    }

    public BigInteger getPublicKey() {
        return this.publicKey;
    }

    public ECDSASignature sign(byte[] bArr) {
        ECDSASigner eCDSASigner = new ECDSASigner(new HMacDSAKCalculator(new SHA256Digest()));
        eCDSASigner.init(true, new ECPrivateKeyParameters(this.privateKey, Sign.CURVE));
        BigInteger[] generateSignature = eCDSASigner.generateSignature(bArr);
        return new ECDSASignature(generateSignature[0], generateSignature[1]).toCanonicalised();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ECKeyPair eCKeyPair = (ECKeyPair) obj;
        BigInteger bigInteger = this.privateKey;
        if (bigInteger == null ? eCKeyPair.privateKey == null : bigInteger.equals(eCKeyPair.privateKey)) {
            BigInteger bigInteger2 = this.publicKey;
            if (bigInteger2 != null) {
                return bigInteger2.equals(eCKeyPair.publicKey);
            }
            return eCKeyPair.publicKey == null;
        }
        return false;
    }

    public int hashCode() {
        BigInteger bigInteger = this.privateKey;
        int hashCode = (bigInteger != null ? bigInteger.hashCode() : 0) * 31;
        BigInteger bigInteger2 = this.publicKey;
        return hashCode + (bigInteger2 != null ? bigInteger2.hashCode() : 0);
    }
}
