package org.web3j.utils;

import java.math.BigInteger;
/* loaded from: classes6.dex */
public final class Numeric {
    public static String cleanHexPrefix(String str) {
        return containsHexPrefix(str) ? str.substring(2) : str;
    }

    public static String prependHexPrefix(String str) {
        if (containsHexPrefix(str)) {
            return str;
        }
        return "0x" + str;
    }

    public static boolean containsHexPrefix(String str) {
        return !Strings.isEmpty(str) && str.length() > 1 && str.charAt(0) == '0' && str.charAt(1) == 'x';
    }

    public static BigInteger toBigInt(byte[] bArr) {
        return new BigInteger(1, bArr);
    }

    public static BigInteger toBigInt(String str) {
        return toBigIntNoPrefix(cleanHexPrefix(str));
    }

    public static BigInteger toBigIntNoPrefix(String str) {
        return new BigInteger(str, 16);
    }

    public static String toHexStringNoPrefix(BigInteger bigInteger) {
        return bigInteger.toString(16);
    }

    public static String toHexStringNoPrefix(byte[] bArr) {
        return toHexString(bArr, 0, bArr.length, false);
    }

    public static String toHexStringWithPrefixZeroPadded(BigInteger bigInteger, int i) {
        return toHexStringZeroPadded(bigInteger, i, true);
    }

    private static String toHexStringZeroPadded(BigInteger bigInteger, int i, boolean z) {
        String hexStringNoPrefix = toHexStringNoPrefix(bigInteger);
        int length = hexStringNoPrefix.length();
        if (length > i) {
            throw new UnsupportedOperationException("Value " + hexStringNoPrefix + "is larger then length " + i);
        } else if (bigInteger.signum() >= 0) {
            if (length < i) {
                hexStringNoPrefix = Strings.zeros(i - length) + hexStringNoPrefix;
            }
            if (z) {
                return "0x" + hexStringNoPrefix;
            }
            return hexStringNoPrefix;
        } else {
            throw new UnsupportedOperationException("Value cannot be negative");
        }
    }

    public static byte[] toBytesPadded(BigInteger bigInteger, int i) {
        int length;
        byte[] bArr = new byte[i];
        byte[] byteArray = bigInteger.toByteArray();
        int i2 = 1;
        if (byteArray[0] == 0) {
            length = byteArray.length - 1;
        } else {
            i2 = 0;
            length = byteArray.length;
        }
        if (length > i) {
            throw new RuntimeException("Input is too large to put in byte array of size " + i);
        }
        System.arraycopy(byteArray, i2, bArr, i - length, length);
        return bArr;
    }

    public static byte[] hexStringToByteArray(String str) {
        byte[] bArr;
        String cleanHexPrefix = cleanHexPrefix(str);
        int length = cleanHexPrefix.length();
        int i = 0;
        if (length == 0) {
            return new byte[0];
        }
        if (length % 2 != 0) {
            bArr = new byte[(length / 2) + 1];
            bArr[0] = (byte) Character.digit(cleanHexPrefix.charAt(0), 16);
            i = 1;
        } else {
            bArr = new byte[length / 2];
        }
        while (i < length) {
            int i2 = i + 1;
            bArr[i2 / 2] = (byte) ((Character.digit(cleanHexPrefix.charAt(i), 16) << 4) + Character.digit(cleanHexPrefix.charAt(i2), 16));
            i += 2;
        }
        return bArr;
    }

    public static String toHexString(byte[] bArr, int i, int i2, boolean z) {
        StringBuilder sb = new StringBuilder();
        if (z) {
            sb.append("0x");
        }
        for (int i3 = i; i3 < i + i2; i3++) {
            sb.append(String.format("%02x", Integer.valueOf(bArr[i3] & 255)));
        }
        return sb.toString();
    }

    public static String toHexString(byte[] bArr) {
        return toHexString(bArr, 0, bArr.length, true);
    }
}
