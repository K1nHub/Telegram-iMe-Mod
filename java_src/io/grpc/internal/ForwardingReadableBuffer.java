package io.grpc.internal;

import com.google.common.base.MoreObjects;
import com.google.common.base.Preconditions;
/* loaded from: classes6.dex */
public abstract class ForwardingReadableBuffer implements ReadableBuffer {
    private final ReadableBuffer buf;

    public ForwardingReadableBuffer(ReadableBuffer readableBuffer) {
        this.buf = (ReadableBuffer) Preconditions.checkNotNull(readableBuffer, "buf");
    }

    @Override // io.grpc.internal.ReadableBuffer
    public int readableBytes() {
        return this.buf.readableBytes();
    }

    @Override // io.grpc.internal.ReadableBuffer
    public int readUnsignedByte() {
        return this.buf.readUnsignedByte();
    }

    @Override // io.grpc.internal.ReadableBuffer
    public void readBytes(byte[] bArr, int i, int i2) {
        this.buf.readBytes(bArr, i, i2);
    }

    @Override // io.grpc.internal.ReadableBuffer
    public ReadableBuffer readBytes(int i) {
        return this.buf.readBytes(i);
    }

    public String toString() {
        return MoreObjects.toStringHelper(this).add("delegate", this.buf).toString();
    }
}
