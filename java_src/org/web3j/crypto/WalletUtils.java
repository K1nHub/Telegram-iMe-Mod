package org.web3j.crypto;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.web3j.utils.Numeric;
/* loaded from: classes6.dex */
public class WalletUtils {
    private static final ObjectMapper objectMapper;

    static {
        ObjectMapper objectMapper2 = new ObjectMapper();
        objectMapper = objectMapper2;
        SecureRandomUtils.secureRandom();
        objectMapper2.configure(JsonParser.Feature.ALLOW_UNQUOTED_FIELD_NAMES, true);
        objectMapper2.configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false);
    }

    public static boolean isValidAddress(String str) {
        return isValidAddress(str, 40);
    }

    public static boolean isValidAddress(String str, int i) {
        String cleanHexPrefix = Numeric.cleanHexPrefix(str);
        try {
            Numeric.toBigIntNoPrefix(cleanHexPrefix);
            return cleanHexPrefix.length() == i;
        } catch (NumberFormatException unused) {
            return false;
        }
    }
}
