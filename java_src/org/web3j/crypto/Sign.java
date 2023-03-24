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
        return new SignatureData(new byte[]{(byte) (i + 27)}, Numeric.toBytesPadded(sign.f1835r, 32), Numeric.toBytesPadded(sign.f1836s, 32));
    }

    public static BigInteger recoverFromSignature(int i, ECDSASignature eCDSASignature, byte[] bArr) {
        Assertions.verifyPrecondition(i >= 0, "recId must be positive");
        Assertions.verifyPrecondition(eCDSASignature.f1835r.signum() >= 0, "r must be positive");
        Assertions.verifyPrecondition(eCDSASignature.f1836s.signum() >= 0, "s must be positive");
        Assertions.verifyPrecondition(bArr != null, "message cannot be null");
        ECDomainParameters eCDomainParameters = CURVE;
        BigInteger n = eCDomainParameters.getN();
        BigInteger add = eCDSASignature.f1835r.add(BigInteger.valueOf(i / 2).multiply(n));
        if (add.compareTo(SecP256K1Curve.f1353q) >= 0) {
            return null;
        }
        ECPoint decompressKey = decompressKey(add, (i & 1) == 1);
        if (decompressKey.multiply(n).isInfinity()) {
            BigInteger mod = BigInteger.ZERO.subtract(new BigInteger(1, bArr)).mod(n);
            BigInteger modInverse = eCDSASignature.f1835r.modInverse(n);
            byte[] encoded = ECAlgorithms.sumOfTwoMultiplies(eCDomainParameters.getG(), modInverse.multiply(mod).mod(n), decompressKey, modInverse.multiply(eCDSASignature.f1836s).mod(n)).getEncoded(false);
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
        private final byte[] f1838r;

        /* renamed from: s */
        private final byte[] f1839s;

        /* renamed from: v */
        private final byte[] f1840v;

        public SignatureData(byte[] bArr, byte[] bArr2, byte[] bArr3) {
            this.f1840v = bArr;
            this.f1838r = bArr2;
            this.f1839s = bArr3;
        }

        public byte[] getV() {
            return this.f1840v;
        }

        public byte[] getR() {
            return this.f1838r;
        }

        public byte[] getS() {
            return this.f1839s;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || SignatureData.class != obj.getClass()) {
                return false;
            }
            SignatureData signatureData = (SignatureData) obj;
            if (Arrays.equals(this.f1840v, signatureData.f1840v) && Arrays.equals(this.f1838r, signatureData.f1838r)) {
                return Arrays.equals(this.f1839s, signatureData.f1839s);
            }
            return false;
        }

        public int hashCode() {
            return (((Arrays.hashCode(this.f1840v) * 31) + Arrays.hashCode(this.f1838r)) * 31) + Arrays.hashCode(this.f1839s);
        }
    }
}
