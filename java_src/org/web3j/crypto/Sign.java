package org.web3j.crypto;

import java.math.BigInteger;
import java.util.Arrays;
import org.bouncycastle.asn1.p041x9.X9ECParameters;
import org.bouncycastle.asn1.p041x9.X9IntegerConverter;
import org.bouncycastle.crypto.p042ec.CustomNamedCurves;
import org.bouncycastle.crypto.params.ECDomainParameters;
import org.bouncycastle.math.p043ec.ECAlgorithms;
import org.bouncycastle.math.p043ec.ECPoint;
import org.bouncycastle.math.p043ec.FixedPointCombMultiplier;
import org.bouncycastle.math.p043ec.custom.sec.SecP256K1Curve;
import org.web3j.utils.Assertions;
import org.web3j.utils.Numeric;
/* loaded from: classes6.dex */
public class Sign {
    static final ECDomainParameters CURVE;
    public static final X9ECParameters CURVE_PARAMS;
    static final BigInteger HALF_CURVE_ORDER;

    static {
        X9ECParameters byName = CustomNamedCurves.getByName("secp256k1");
        CURVE_PARAMS = byName;
        CURVE = new ECDomainParameters(byName.getCurve(), byName.getG(), byName.getN(), byName.getH());
        HALF_CURVE_ORDER = byName.getN().shiftRight(1);
    }

    static byte[] getEthereumMessagePrefix(int i) {
        return "\u0019Ethereum Signed Message:\n".concat(String.valueOf(i)).getBytes();
    }

    static byte[] getEthereumMessageHash(byte[] bArr) {
        byte[] ethereumMessagePrefix = getEthereumMessagePrefix(bArr.length);
        byte[] bArr2 = new byte[ethereumMessagePrefix.length + bArr.length];
        System.arraycopy(ethereumMessagePrefix, 0, bArr2, 0, ethereumMessagePrefix.length);
        System.arraycopy(bArr, 0, bArr2, ethereumMessagePrefix.length, bArr.length);
        return Hash.sha3(bArr2);
    }

    public static SignatureData signPrefixedMessage(byte[] bArr, ECKeyPair eCKeyPair) {
        return signMessage(getEthereumMessageHash(bArr), eCKeyPair, false);
    }

    public static SignatureData signMessage(byte[] bArr, ECKeyPair eCKeyPair) {
        return signMessage(bArr, eCKeyPair, true);
    }

    public static SignatureData signMessage(byte[] bArr, ECKeyPair eCKeyPair, boolean z) {
        BigInteger publicKey = eCKeyPair.getPublicKey();
        if (z) {
            bArr = Hash.sha3(bArr);
        }
        ECDSASignature sign = eCKeyPair.sign(bArr);
        int i = 0;
        while (true) {
            if (i >= 4) {
                i = -1;
                break;
            }
            BigInteger recoverFromSignature = recoverFromSignature(i, sign, bArr);
            if (recoverFromSignature != null && recoverFromSignature.equals(publicKey)) {
                break;
            }
            i++;
        }
        if (i == -1) {
            throw new RuntimeException("Could not construct a recoverable key. Are your credentials valid?");
        }
        return new SignatureData(new byte[]{(byte) (i + 27)}, Numeric.toBytesPadded(sign.f1823r, 32), Numeric.toBytesPadded(sign.f1824s, 32));
    }

    public static BigInteger recoverFromSignature(int i, ECDSASignature eCDSASignature, byte[] bArr) {
        Assertions.verifyPrecondition(i >= 0, "recId must be positive");
        Assertions.verifyPrecondition(eCDSASignature.f1823r.signum() >= 0, "r must be positive");
        Assertions.verifyPrecondition(eCDSASignature.f1824s.signum() >= 0, "s must be positive");
        Assertions.verifyPrecondition(bArr != null, "message cannot be null");
        ECDomainParameters eCDomainParameters = CURVE;
        BigInteger n = eCDomainParameters.getN();
        BigInteger add = eCDSASignature.f1823r.add(BigInteger.valueOf(i / 2).multiply(n));
        if (add.compareTo(SecP256K1Curve.f1347q) >= 0) {
            return null;
        }
        ECPoint decompressKey = decompressKey(add, (i & 1) == 1);
        if (decompressKey.multiply(n).isInfinity()) {
            BigInteger mod = BigInteger.ZERO.subtract(new BigInteger(1, bArr)).mod(n);
            BigInteger modInverse = eCDSASignature.f1823r.modInverse(n);
            byte[] encoded = ECAlgorithms.sumOfTwoMultiplies(eCDomainParameters.getG(), modInverse.multiply(mod).mod(n), decompressKey, modInverse.multiply(eCDSASignature.f1824s).mod(n)).getEncoded(false);
            return new BigInteger(1, Arrays.copyOfRange(encoded, 1, encoded.length));
        }
        return null;
    }

    private static ECPoint decompressKey(BigInteger bigInteger, boolean z) {
        X9IntegerConverter x9IntegerConverter = new X9IntegerConverter();
        ECDomainParameters eCDomainParameters = CURVE;
        byte[] integerToBytes = x9IntegerConverter.integerToBytes(bigInteger, x9IntegerConverter.getByteLength(eCDomainParameters.getCurve()) + 1);
        integerToBytes[0] = (byte) (z ? 3 : 2);
        return eCDomainParameters.getCurve().decodePoint(integerToBytes);
    }

    public static BigInteger publicKeyFromPrivate(BigInteger bigInteger) {
        byte[] encoded = publicPointFromPrivate(bigInteger).getEncoded(false);
        return new BigInteger(1, Arrays.copyOfRange(encoded, 1, encoded.length));
    }

    public static ECPoint publicPointFromPrivate(BigInteger bigInteger) {
        int bitLength = bigInteger.bitLength();
        ECDomainParameters eCDomainParameters = CURVE;
        if (bitLength > eCDomainParameters.getN().bitLength()) {
            bigInteger = bigInteger.mod(eCDomainParameters.getN());
        }
        return new FixedPointCombMultiplier().multiply(eCDomainParameters.getG(), bigInteger);
    }

    public static BigInteger publicFromPoint(byte[] bArr) {
        return new BigInteger(1, Arrays.copyOfRange(bArr, 1, bArr.length));
    }

    /* loaded from: classes6.dex */
    public static class SignatureData {

        /* renamed from: r */
        private final byte[] f1826r;

        /* renamed from: s */
        private final byte[] f1827s;

        /* renamed from: v */
        private final byte[] f1828v;

        public SignatureData(byte[] bArr, byte[] bArr2, byte[] bArr3) {
            this.f1828v = bArr;
            this.f1826r = bArr2;
            this.f1827s = bArr3;
        }

        public byte[] getV() {
            return this.f1828v;
        }

        public byte[] getR() {
            return this.f1826r;
        }

        public byte[] getS() {
            return this.f1827s;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || SignatureData.class != obj.getClass()) {
                return false;
            }
            SignatureData signatureData = (SignatureData) obj;
            if (Arrays.equals(this.f1828v, signatureData.f1828v) && Arrays.equals(this.f1826r, signatureData.f1826r)) {
                return Arrays.equals(this.f1827s, signatureData.f1827s);
            }
            return false;
        }

        public int hashCode() {
            return (((Arrays.hashCode(this.f1828v) * 31) + Arrays.hashCode(this.f1826r)) * 31) + Arrays.hashCode(this.f1827s);
        }
    }
}
