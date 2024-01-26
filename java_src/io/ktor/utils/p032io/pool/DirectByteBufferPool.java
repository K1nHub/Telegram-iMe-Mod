package io.ktor.utils.p032io.pool;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: ByteBufferPools.kt */
/* renamed from: io.ktor.utils.io.pool.DirectByteBufferPool */
/* loaded from: classes4.dex */
public final class DirectByteBufferPool extends DefaultPool<ByteBuffer> {
    private final int bufferSize;

    public DirectByteBufferPool() {
        this(0, 0, 3, null);
    }

    public /* synthetic */ DirectByteBufferPool(int i, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? 2000 : i, (i3 & 2) != 0 ? 4096 : i2);
    }

    public DirectByteBufferPool(int i, int i2) {
        super(i);
        this.bufferSize = i2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.ktor.utils.p032io.pool.DefaultPool
    public ByteBuffer produceInstance() {
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect(this.bufferSize);
        Intrinsics.checkNotNull(allocateDirect);
        return allocateDirect;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.ktor.utils.p032io.pool.DefaultPool
    public ByteBuffer clearInstance(ByteBuffer instance) {
        Intrinsics.checkNotNullParameter(instance, "instance");
        instance.clear();
        instance.order(ByteOrder.BIG_ENDIAN);
        return instance;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.ktor.utils.p032io.pool.DefaultPool
    public void validateInstance(ByteBuffer instance) {
        Intrinsics.checkNotNullParameter(instance, "instance");
        if (!(instance.capacity() == this.bufferSize)) {
            throw new IllegalStateException("Check failed.".toString());
        }
        if (!instance.isDirect()) {
            throw new IllegalStateException("Check failed.".toString());
        }
    }
}
