package org.web3j.crypto;

import java.security.SecureRandom;
/* loaded from: classes6.dex */
final class SecureRandomUtils {
    private static final SecureRandom SECURE_RANDOM;
    private static int isAndroid;

    static {
        if (isAndroidRuntime()) {
            new LinuxSecureRandom();
        }
        SECURE_RANDOM = new SecureRandom();
        isAndroid = -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static SecureRandom secureRandom() {
        return SECURE_RANDOM;
    }

    static boolean isAndroidRuntime() {
        if (isAndroid == -1) {
            String property = System.getProperty("java.runtime.name");
            isAndroid = (property == null || !property.equals("Android Runtime")) ? 0 : 1;
        }
        return isAndroid == 1;
    }
}
