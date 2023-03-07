package org.web3j.utils;

import java.util.Arrays;
/* loaded from: classes6.dex */
public class Bytes {
    public static byte[] trimLeadingBytes(byte[] bArr, byte b) {
        int i = 0;
        while (i < bArr.length - 1 && bArr[i] == b) {
            i++;
        }
        return Arrays.copyOfRange(bArr, i, bArr.length);
    }

    public static byte[] trimLeadingZeroes(byte[] bArr) {
        return trimLeadingBytes(bArr, (byte) 0);
    }
}
