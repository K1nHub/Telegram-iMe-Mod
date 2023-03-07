package io.grpc.internal;

import java.io.Closeable;
/* loaded from: classes3.dex */
public interface ReadableBuffer extends Closeable {
    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close();

    ReadableBuffer readBytes(int i);

    void readBytes(byte[] bArr, int i, int i2);

    int readUnsignedByte();

    int readableBytes();
}
