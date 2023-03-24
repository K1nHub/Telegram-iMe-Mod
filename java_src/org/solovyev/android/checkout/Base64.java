package org.solovyev.android.checkout;
/* loaded from: classes4.dex */
final class Base64 {
    private static final byte[] DECODABET = {-9, -9, -9, -9, -9, -9, -9, -9, -9, -5, -5, -9, -9, -5, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -5, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, 62, -9, -9, -9, 63, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -9, -9, -9, -1, -9, -9, -9, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -9, -9, -9, -9, -9, -9, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -9, -9, -9, -9, -9};

    private static int decode4to3(byte[] bArr, int i, byte[] bArr2, int i2, byte[] bArr3) {
        int i3 = i + 2;
        if (bArr[i3] == 61) {
            bArr2[i2] = (byte) ((((bArr3[bArr[i + 1]] << 24) >>> 12) | ((bArr3[bArr[i]] << 24) >>> 6)) >>> 16);
            return 1;
        }
        int i4 = i + 3;
        if (bArr[i4] == 61) {
            int i5 = (bArr3[bArr[i + 1]] << 24) >>> 12;
            int i6 = ((bArr3[bArr[i3]] << 24) >>> 18) | i5 | ((bArr3[bArr[i]] << 24) >>> 6);
            bArr2[i2] = (byte) (i6 >>> 16);
            bArr2[i2 + 1] = (byte) (i6 >>> 8);
            return 2;
        }
        int i7 = (bArr3[bArr[i + 1]] << 24) >>> 12;
        int i8 = ((bArr3[bArr[i4]] << 24) >>> 24) | i7 | ((bArr3[bArr[i]] << 24) >>> 6) | ((bArr3[bArr[i3]] << 24) >>> 18);
        bArr2[i2] = (byte) (i8 >> 16);
        bArr2[i2 + 1] = (byte) (i8 >> 8);
        bArr2[i2 + 2] = (byte) i8;
        return 3;
    }

    public static byte[] decode(String str) throws Base64DecoderException {
        byte[] bytes = str.getBytes();
        return decode(bytes, 0, bytes.length);
    }

    public static byte[] decode(byte[] bArr, int i, int i2) throws Base64DecoderException {
        return decode(bArr, i, i2, DECODABET);
    }

    public static byte[] decode(byte[] bArr, int i, int i2, byte[] bArr2) throws Base64DecoderException {
        int i3;
        byte[] bArr3 = new byte[((i2 * 3) / 4) + 2];
        byte[] bArr4 = new byte[4];
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        while (true) {
            if (i4 >= i2) {
                break;
            }
            byte b = (byte) (bArr[i4 + i] & Byte.MAX_VALUE);
            byte b2 = bArr2[b];
            if (b2 < -5) {
                throw new Base64DecoderException("Bad Base64 input character at " + i4 + ": " + ((int) bArr[i3]) + "(decimal)");
            }
            if (b2 >= -1) {
                if (b == 61) {
                    int i7 = i2 - i4;
                    byte b3 = (byte) (bArr[(i2 - 1) + i] & Byte.MAX_VALUE);
                    if (i5 == 0 || i5 == 1) {
                        throw new Base64DecoderException("invalid padding byte '=' at byte offset " + i4);
                    } else if ((i5 == 3 && i7 > 2) || (i5 == 4 && i7 > 1)) {
                        throw new Base64DecoderException("padding byte '=' falsely signals end of encoded value at offset " + i4);
                    } else if (b3 != 61 && b3 != 10) {
                        throw new Base64DecoderException("encoded value has invalid trailing byte");
                    }
                } else {
                    int i8 = i5 + 1;
                    bArr4[i5] = b;
                    if (i8 == 4) {
                        i6 += decode4to3(bArr4, 0, bArr3, i6, bArr2);
                        i5 = 0;
                    } else {
                        i5 = i8;
                    }
                }
            }
            i4++;
        }
        if (i5 != 0) {
            if (i5 == 1) {
                throw new Base64DecoderException("single trailing character at offset " + (i2 - 1));
            }
            bArr4[i5] = 61;
            i6 += decode4to3(bArr4, 0, bArr3, i6, bArr2);
        }
        byte[] bArr5 = new byte[i6];
        System.arraycopy(bArr3, 0, bArr5, 0, i6);
        return bArr5;
    }
}
