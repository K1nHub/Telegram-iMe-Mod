package io.grpc.internal;

import java.io.IOException;
import java.util.ArrayDeque;
import java.util.Queue;
/* loaded from: classes4.dex */
public class CompositeReadableBuffer extends AbstractReadableBuffer {
    private final Queue<ReadableBuffer> buffers = new ArrayDeque();
    private int readableBytes;

    public void addBuffer(ReadableBuffer readableBuffer) {
        if (!(readableBuffer instanceof CompositeReadableBuffer)) {
            this.buffers.add(readableBuffer);
            this.readableBytes += readableBuffer.readableBytes();
            return;
        }
        CompositeReadableBuffer compositeReadableBuffer = (CompositeReadableBuffer) readableBuffer;
        while (!compositeReadableBuffer.buffers.isEmpty()) {
            this.buffers.add(compositeReadableBuffer.buffers.remove());
        }
        this.readableBytes += compositeReadableBuffer.readableBytes;
        compositeReadableBuffer.readableBytes = 0;
        compositeReadableBuffer.close();
    }

    @Override // io.grpc.internal.ReadableBuffer
    public int readableBytes() {
        return this.readableBytes;
    }

    @Override // io.grpc.internal.ReadableBuffer
    public int readUnsignedByte() {
        ReadOperation readOperation = new ReadOperation(this) { // from class: io.grpc.internal.CompositeReadableBuffer.1
            @Override // io.grpc.internal.CompositeReadableBuffer.ReadOperation
            int readInternal(ReadableBuffer readableBuffer, int i) {
                return readableBuffer.readUnsignedByte();
            }
        };
        execute(readOperation, 1);
        return readOperation.value;
    }

    @Override // io.grpc.internal.ReadableBuffer
    public void readBytes(byte[] bArr, int i, int i2) {
        execute(new ReadOperation(this, i, bArr) { // from class: io.grpc.internal.CompositeReadableBuffer.3
            int currentOffset;
            final /* synthetic */ byte[] val$dest;
            final /* synthetic */ int val$destOffset;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super();
                this.val$destOffset = i;
                this.val$dest = bArr;
                this.currentOffset = i;
            }

            @Override // io.grpc.internal.CompositeReadableBuffer.ReadOperation
            public int readInternal(ReadableBuffer readableBuffer, int i3) {
                readableBuffer.readBytes(this.val$dest, this.currentOffset, i3);
                this.currentOffset += i3;
                return 0;
            }
        }, i2);
    }

    @Override // io.grpc.internal.ReadableBuffer
    public CompositeReadableBuffer readBytes(int i) {
        checkReadable(i);
        this.readableBytes -= i;
        CompositeReadableBuffer compositeReadableBuffer = new CompositeReadableBuffer();
        while (i > 0) {
            ReadableBuffer peek = this.buffers.peek();
            if (peek.readableBytes() > i) {
                compositeReadableBuffer.addBuffer(peek.readBytes(i));
                i = 0;
            } else {
                compositeReadableBuffer.addBuffer(this.buffers.poll());
                i -= peek.readableBytes();
            }
        }
        return compositeReadableBuffer;
    }

    @Override // io.grpc.internal.AbstractReadableBuffer, io.grpc.internal.ReadableBuffer, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        while (!this.buffers.isEmpty()) {
            this.buffers.remove().close();
        }
    }

    private void execute(ReadOperation readOperation, int i) {
        checkReadable(i);
        if (!this.buffers.isEmpty()) {
            advanceBufferIfNecessary();
        }
        while (i > 0 && !this.buffers.isEmpty()) {
            ReadableBuffer peek = this.buffers.peek();
            int min = Math.min(i, peek.readableBytes());
            readOperation.read(peek, min);
            if (readOperation.isError()) {
                return;
            }
            i -= min;
            this.readableBytes -= min;
            advanceBufferIfNecessary();
        }
        if (i > 0) {
            throw new AssertionError("Failed executing read operation");
        }
    }

    private void advanceBufferIfNecessary() {
        if (this.buffers.peek().readableBytes() == 0) {
            this.buffers.remove().close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static abstract class ReadOperation {

        /* renamed from: ex */
        IOException f518ex;
        int value;

        abstract int readInternal(ReadableBuffer readableBuffer, int i) throws IOException;

        private ReadOperation() {
        }

        final void read(ReadableBuffer readableBuffer, int i) {
            try {
                this.value = readInternal(readableBuffer, i);
            } catch (IOException e) {
                this.f518ex = e;
            }
        }

        final boolean isError() {
            return this.f518ex != null;
        }
    }
}
