package io.ktor.utils.p032io.core;

import io.ktor.utils.p032io.bits.Allocator;
import io.ktor.utils.p032io.bits.DefaultAllocator;
import io.ktor.utils.p032io.core.internal.ChunkBuffer;
import io.ktor.utils.p032io.pool.DefaultPool;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: BufferFactory.kt */
/* renamed from: io.ktor.utils.io.core.DefaultBufferPool */
/* loaded from: classes4.dex */
public final class DefaultBufferPool extends DefaultPool<ChunkBuffer> {
    private final Allocator allocator;
    private final int bufferSize;

    public DefaultBufferPool() {
        this(0, 0, null, 7, null);
    }

    public /* synthetic */ DefaultBufferPool(int i, int i2, Allocator allocator, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? 4096 : i, (i3 & 2) != 0 ? 1000 : i2, (i3 & 4) != 0 ? DefaultAllocator.INSTANCE : allocator);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DefaultBufferPool(int i, int i2, Allocator allocator) {
        super(i2);
        Intrinsics.checkNotNullParameter(allocator, "allocator");
        this.bufferSize = i;
        this.allocator = allocator;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // io.ktor.utils.p032io.pool.DefaultPool
    public ChunkBuffer produceInstance() {
        return new ChunkBuffer(this.allocator.mo1908allocgFvZug(this.bufferSize), null, this, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.ktor.utils.p032io.pool.DefaultPool
    public void disposeInstance(ChunkBuffer instance) {
        Intrinsics.checkNotNullParameter(instance, "instance");
        this.allocator.mo1909free3GNKZMM(instance.m1917getMemorySK3TCg8());
        super.disposeInstance((DefaultBufferPool) instance);
        instance.unlink$ktor_io();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.ktor.utils.p032io.pool.DefaultPool
    public void validateInstance(ChunkBuffer instance) {
        Intrinsics.checkNotNullParameter(instance, "instance");
        super.validateInstance((DefaultBufferPool) instance);
        if (!(((long) instance.m1917getMemorySK3TCg8().limit()) == ((long) this.bufferSize))) {
            StringBuilder sb = new StringBuilder();
            sb.append("Buffer size mismatch. Expected: ");
            sb.append(this.bufferSize);
            sb.append(", actual: ");
            sb.append(instance.m1917getMemorySK3TCg8().limit());
            throw new IllegalStateException(sb.toString().toString());
        }
        if (!(instance != ChunkBuffer.Companion.getEmpty())) {
            throw new IllegalStateException("ChunkBuffer.Empty couldn't be recycled".toString());
        }
        if (!(instance != Buffer.Companion.getEmpty())) {
            throw new IllegalStateException("Empty instance couldn't be recycled".toString());
        }
        if (!(instance.getReferenceCount() == 0)) {
            throw new IllegalStateException("Unable to clear buffer: it is still in use.".toString());
        }
        if (!(instance.getNext() == null)) {
            throw new IllegalStateException("Recycled instance shouldn't be a part of a chain.".toString());
        }
        if (!(instance.getOrigin() == null)) {
            throw new IllegalStateException("Recycled instance shouldn't be a view or another buffer.".toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.ktor.utils.p032io.pool.DefaultPool
    public ChunkBuffer clearInstance(ChunkBuffer instance) {
        Intrinsics.checkNotNullParameter(instance, "instance");
        ChunkBuffer chunkBuffer = (ChunkBuffer) super.clearInstance((DefaultBufferPool) instance);
        chunkBuffer.unpark$ktor_io();
        chunkBuffer.reset();
        return chunkBuffer;
    }
}
