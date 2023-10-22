package org.bouncycastle.util;

import com.google.android.exoplayer2.extractor.p015ts.PsExtractor;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.security.AccessController;
import java.security.PrivilegedAction;
import org.bouncycastle.util.encoders.UTF8;
/* loaded from: classes4.dex */
public final class Strings {
    static {
        try {
            try {
                String str = (String) AccessController.doPrivileged(new PrivilegedAction<String>() { // from class: org.bouncycastle.util.Strings.1
                    @Override // java.security.PrivilegedAction
                    public String run() {
                        return System.getProperty("line.separator");
                    }
                });
            } catch (Exception unused) {
                String.format("%n", new Object[0]);
            }
        } catch (Exception unused2) {
        }
    }

    public static char[] asCharArray(byte[] bArr) {
        int length = bArr.length;
        char[] cArr = new char[length];
        for (int i = 0; i != length; i++) {
            cArr[i] = (char) (bArr[i] & 255);
        }
        return cArr;
    }

    public static String fromByteArray(byte[] bArr) {
        return new String(asCharArray(bArr));
    }

    public static String fromUTF8ByteArray(byte[] bArr) {
        char[] cArr = new char[bArr.length];
        int transcodeToUTF16 = UTF8.transcodeToUTF16(bArr, cArr);
        if (transcodeToUTF16 >= 0) {
            return new String(cArr, 0, transcodeToUTF16);
        }
        throw new IllegalArgumentException("Invalid UTF-8 input");
    }

    public static byte[] toByteArray(String str) {
        int length = str.length();
        byte[] bArr = new byte[length];
        for (int i = 0; i != length; i++) {
            bArr[i] = (byte) str.charAt(i);
        }
        return bArr;
    }

    public static String toLowerCase(String str) {
        char[] charArray = str.toCharArray();
        boolean z = false;
        for (int i = 0; i != charArray.length; i++) {
            char c = charArray[i];
            if ('A' <= c && 'Z' >= c) {
                charArray[i] = (char) ((c - 'A') + 97);
                z = true;
            }
        }
        return z ? new String(charArray) : str;
    }

    public static void toUTF8ByteArray(char[] cArr, OutputStream outputStream) throws IOException {
        int i;
        char c;
        int i2 = 0;
        while (i2 < cArr.length) {
            char c2 = cArr[i2];
            char c3 = c2;
            if (c2 >= 128) {
                if (c2 < 2048) {
                    i = (c2 >> 6) | PsExtractor.AUDIO_STREAM;
                } else if (c2 < 55296 || c2 > 57343) {
                    outputStream.write((c2 >> '\f') | 224);
                    i = ((c2 >> 6) & 63) | 128;
                } else {
                    i2++;
                    if (i2 >= cArr.length) {
                        throw new IllegalStateException("invalid UTF-16 codepoint");
                    }
                    char c4 = cArr[i2];
                    if (c2 > 56319) {
                        throw new IllegalStateException("invalid UTF-16 codepoint");
                    }
                    int i3 = (((c2 & 1023) << 10) | (c4 & 1023)) + 65536;
                    outputStream.write((i3 >> 18) | PsExtractor.VIDEO_STREAM_MASK);
                    outputStream.write(((i3 >> 12) & 63) | 128);
                    outputStream.write(((i3 >> 6) & 63) | 128);
                    c = i3;
                    c3 = (c & 63) | 128;
                }
                outputStream.write(i);
                c = c2;
                c3 = (c & 63) | 128;
            }
            outputStream.write(c3);
            i2++;
        }
    }

    public static byte[] toUTF8ByteArray(char[] cArr) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            toUTF8ByteArray(cArr, byteArrayOutputStream);
            return byteArrayOutputStream.toByteArray();
        } catch (IOException unused) {
            throw new IllegalStateException("cannot encode string to byte array!");
        }
    }
}
