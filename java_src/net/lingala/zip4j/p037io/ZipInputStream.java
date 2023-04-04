package net.lingala.zip4j.p037io;

import java.io.IOException;
import java.io.InputStream;
import net.lingala.zip4j.exception.ZipException;
/* renamed from: net.lingala.zip4j.io.ZipInputStream */
/* loaded from: classes4.dex */
public class ZipInputStream extends InputStream {

    /* renamed from: is */
    private BaseInputStream f1235is;

    public ZipInputStream(BaseInputStream baseInputStream) {
        this.f1235is = baseInputStream;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        int read = this.f1235is.read();
        if (read != -1) {
            this.f1235is.getUnzipEngine().updateCRC(read);
        }
        return read;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int read = this.f1235is.read(bArr, i, i2);
        if (read > 0 && this.f1235is.getUnzipEngine() != null) {
            this.f1235is.getUnzipEngine().updateCRC(bArr, i, read);
        }
        return read;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        close(false);
    }

    public void close(boolean z) throws IOException {
        try {
            this.f1235is.close();
            if (z || this.f1235is.getUnzipEngine() == null) {
                return;
            }
            this.f1235is.getUnzipEngine().checkCRC();
        } catch (ZipException e) {
            throw new IOException(e.getMessage());
        }
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        return this.f1235is.available();
    }

    @Override // java.io.InputStream
    public long skip(long j) throws IOException {
        return this.f1235is.skip(j);
    }
}
