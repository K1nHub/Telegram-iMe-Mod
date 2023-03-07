package org.bouncycastle.util.p045io;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
/* renamed from: org.bouncycastle.util.io.Streams */
/* loaded from: classes4.dex */
public final class Streams {
    private static int BUFFER_SIZE = 4096;

    public static void pipeAll(InputStream inputStream, OutputStream outputStream) throws IOException {
        int i = BUFFER_SIZE;
        byte[] bArr = new byte[i];
        while (true) {
            int read = inputStream.read(bArr, 0, i);
            if (read < 0) {
                return;
            }
            outputStream.write(bArr, 0, read);
        }
    }

    public static byte[] readAll(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        pipeAll(inputStream, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    public static int readFully(InputStream inputStream, byte[] bArr) throws IOException {
        return readFully(inputStream, bArr, 0, bArr.length);
    }

    public static int readFully(InputStream inputStream, byte[] bArr, int i, int i2) throws IOException {
        int i3 = 0;
        while (i3 < i2) {
            int read = inputStream.read(bArr, i + i3, i2 - i3);
            if (read < 0) {
                break;
            }
            i3 += read;
        }
        return i3;
    }
}
