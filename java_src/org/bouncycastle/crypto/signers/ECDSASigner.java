package org.bouncycastle.crypto.signers;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.params.ECDomainParameters;
import org.bouncycastle.crypto.params.ECKeyParameters;
import org.bouncycastle.crypto.params.ECPrivateKeyParameters;
import org.bouncycastle.crypto.params.ECPublicKeyParameters;
import org.bouncycastle.crypto.params.ParametersWithRandom;
import org.bouncycastle.math.p043ec.ECConstants;
import org.bouncycastle.math.p043ec.ECMultiplier;
import org.bouncycastle.math.p043ec.FixedPointCombMultiplier;
/* loaded from: classes4.dex */
public class ECDSASigner implements ECConstants {
    private final DSAKCalculator kCalculator;
    private ECKeyParameters key;
    private SecureRandom random;

    public ECDSASigner(DSAKCalculator dSAKCalculator) {
        this.kCalculator = dSAKCalculator;
    }

    protected BigInteger calculateE(BigInteger bigInteger, byte[] bArr) {
        int bitLength = bigInteger.bitLength();
        int length = bArr.length * 8;
        BigInteger bigInteger2 = new BigInteger(1, bArr);
        return bitLength < length ? bigInteger2.shiftRight(length - bitLength) : bigInteger2;
    }

    protected ECMultiplier createBasePointMultiplier() {
        return new FixedPointCombMultiplier();
    }

    public BigInteger[] generateSignature(byte[] bArr) {
        ECDomainParameters parameters = this.key.getParameters();
        BigInteger n = parameters.getN();
        BigInteger calculateE = calculateE(n, bArr);
        BigInteger d = ((ECPrivateKeyParameters) this.key).getD();
        if (this.kCalculator.isDeterministic()) {
            this.kCalculator.init(n, d, bArr);
        } else {
            this.kCalculator.init(n, this.random);
        }
        ECMultiplier createBasePointMultiplier = createBasePointMultiplier();
        while (true) {
            BigInteger nextK = this.kCalculator.nextK();
            BigInteger mod = createBasePointMultiplier.multiply(parameters.getG(), nextK).normalize().getAffineXCoord().toBigInteger().mod(n);
            BigInteger bigInteger = ECConstants.ZERO;
            if (!mod.equals(bigInteger)) {
                BigInteger mod2 = nextK.modInverse(n).multiply(calculateE.add(d.multiply(mod))).mod(n);
                if (!mod2.equals(bigInteger)) {
                    return new BigInteger[]{mod, mod2};
                }
            }
        }
    }

    public void init(boolean z, CipherParameters cipherParameters) {
        ECKeyParameters eCKeyParameters;
        SecureRandom secureRandom;
        if (!z) {
            eCKeyParameters = (ECPublicKeyParameters) cipherParameters;
        } else if (cipherParameters instanceof ParametersWithRandom) {
            ParametersWithRandom parametersWithRandom = (ParametersWithRandom) cipherParameters;
            this.key = (ECPrivateKeyParameters) parametersWithRandom.getParameters();
            secureRandom = parametersWithRandom.getRandom();
            this.random = initSecureRandom((z || this.kCalculator.isDeterministic()) ? false : true, secureRandom);
        } else {
            eCKeyParameters = (ECPrivateKeyParameters) cipherParameters;
        }
        this.key = eCKeyParameters;
        secureRandom = null;
        this.random = initSecureRandom((z || this.kCalculator.isDeterministic()) ? false : true, secureRandom);
    }

    protected SecureRandom initSecureRandom(boolean z, SecureRandom secureRandom) {
        if (z) {
            return secureRandom != null ? secureRandom : CryptoServicesRegistrar.getSecureRandom();
        }
        return null;
    }
}
