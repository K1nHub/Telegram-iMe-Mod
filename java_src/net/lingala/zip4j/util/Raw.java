package net.lingala.zip4j.util;

import java.io.DataInput;
import java.io.IOException;
import java.util.Objects;
import net.lingala.zip4j.exception.ZipException;
/* loaded from: classes6.dex */
public class Raw {
    public static long readLongLittleEndian(byte[] bArr, int i) {
        return (bArr[i] & 255) | (((((((((((((((bArr[i + 7] & 255) | 0) << 8) | (bArr[i + 6] & 255)) << 8) | (bArr[i + 5] & 255)) << 8) | (bArr[i + 4] & 255)) << 8) | (bArr[i + 3] & 255)) << 8) | (bArr[i + 2] & 255)) << 8) | (bArr[i + 1] & 255)) << 8);
    }

    public static int readLeInt(DataInput dataInput, byte[] bArr) throws ZipException {
        try {
            dataInput.readFully(bArr, 0, 4);
            return (bArr[0] & 255) | ((bArr[1] & 255) << 8) | ((((bArr[3] & 255) << 8) | (bArr[2] & 255)) << 16);
        } catch (IOException e) {
            throw new ZipException(e);
        }
    }

    public static int readShortLittleEndian(byte[] bArr, int i) {
        return ((bArr[i + 1] & 255) << 8) | (bArr[i] & 255);
    }

    public static final short readShortBigEndian(byte[] bArr, int i) {
        return (short) ((bArr[i + 1] & 255) | ((short) (((short) ((bArr[i] & 255) | 0)) << 8)));
    }

    public static int readIntLittleEndian(byte[] bArr, int i) {
        return ((((bArr[i + 3] & 255) << 8) | (bArr[i + 2] & 255)) << 16) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8);
    }

    public static void prepareBuffAESIVBytes(byte[] bArr, int i, int i2) {
        bArr[0] = (byte) i;
        bArr[1] = (byte) (i >> 8);
        bArr[2] = (byte) (i >> 16);
        bArr[3] = (byte) (i >> 24);
        bArr[4] = 0;
        bArr[5] = 0;
        bArr[6] = 0;
        bArr[7] = 0;
        bArr[8] = 0;
        bArr[9] = 0;
        bArr[10] = 0;
        bArr[11] = 0;
        bArr[12] = 0;
        bArr[13] = 0;
        bArr[14] = 0;
        bArr[15] = 0;
    }

    public static byte[] convertCharArrayToByteArray(char[] cArr) {
        Objects.requireNonNull(cArr);
        byte[] bArr = new byte[cArr.length];
        for (int i = 0; i < cArr.length; i++) {
            bArr[i] = (byte) cArr[i];
        }
        return bArr;
    }
}
