package org.web3j.crypto;

import java.math.BigInteger;
import java.security.Security;
import org.bouncycastle.jce.provider.BouncyCastleProvider;
import org.web3j.utils.Numeric;
import org.web3j.utils.Strings;
/* loaded from: classes6.dex */
public class Keys {
    static {
        if (Security.getProvider("BC") == null) {
            Security.addProvider(new BouncyCastleProvider());
        }
    }

    public static String getAddress(ECKeyPair eCKeyPair) {
        return getAddress(eCKeyPair.getPublicKey());
    }

    public static String getAddress(BigInteger bigInteger) {
        return getAddress(Numeric.toHexStringWithPrefixZeroPadded(bigInteger, 128));
    }

    public static String getAddress(String str) {
        String sha3;
        String cleanHexPrefix = Numeric.cleanHexPrefix(str);
        if (cleanHexPrefix.length() < 128) {
            cleanHexPrefix = Strings.zeros(128 - cleanHexPrefix.length()) + cleanHexPrefix;
        }
        return Hash.sha3(cleanHexPrefix).substring(sha3.length() - 40);
    }

    public static String toChecksumAddress(String str) {
        String lowerCase = Numeric.cleanHexPrefix(str).toLowerCase();
        String cleanHexPrefix = Numeric.cleanHexPrefix(Hash.sha3String(lowerCase));
        StringBuilder sb = new StringBuilder(lowerCase.length() + 2);
        sb.append("0x");
        for (int i = 0; i < lowerCase.length(); i++) {
            if (Integer.parseInt(String.valueOf(cleanHexPrefix.charAt(i)), 16) >= 8) {
                sb.append(String.valueOf(lowerCase.charAt(i)).toUpperCase());
            } else {
                sb.append(lowerCase.charAt(i));
            }
        }
        return sb.toString();
    }
}
