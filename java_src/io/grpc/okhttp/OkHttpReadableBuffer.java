package io.grpc.okhttp;

import io.grpc.internal.AbstractReadableBuffer;
import io.grpc.internal.ReadableBuffer;
import okio.Buffer;
/* loaded from: classes4.dex */
class OkHttpReadableBuffer extends AbstractReadableBuffer {
    private final Buffer buffer;

    /* JADX INFO: Access modifiers changed from: package-private */
    public OkHttpReadableBuffer(Buffer buffer) {
        this.buffer = buffer;
    }

    @Override // io.grpc.internal.ReadableBuffer
    public int readableBytes() {
        return (int) this.buffer.size();
    }

    @Override // io.grpc.internal.ReadableBuffer
    public int readUnsignedByte() {
        return this.buffer.readByte() & 255;
    }

    @Override // io.grpc.internal.ReadableBuffer
    public void readBytes(byte[] bArr, int i, int i2) {
        while (i2 > 0) {
            int read = this.buffer.read(bArr, i, i2);
            if (read == -1) {
                throw new IndexOutOfBoundsException("EOF trying to read " + i2 + " bytes");
            }
            i2 -= read;
            i += read;
        }
    }

    @Override // io.grpc.internal.ReadableBuffer
    public ReadableBuffer readBytes(int i) {
        Buffer buffer = new Buffer();
        buffer.write(this.buffer, i);
        return new OkHttpReadableBuffer(buffer);
    }

    @Override // io.grpc.internal.AbstractReadableBuffer, io.grpc.internal.ReadableBuffer, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.buffer.clear();
    }
}
