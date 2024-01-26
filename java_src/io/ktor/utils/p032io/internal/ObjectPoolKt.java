package io.ktor.utils.p032io.internal;

import io.ktor.utils.p032io.internal.ReadWriteBufferState;
import io.ktor.utils.p032io.pool.DefaultPool;
import io.ktor.utils.p032io.pool.DirectByteBufferPool;
import io.ktor.utils.p032io.pool.NoPoolImpl;
import io.ktor.utils.p032io.pool.ObjectPool;
import java.nio.ByteBuffer;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: ObjectPool.kt */
/* renamed from: io.ktor.utils.io.internal.ObjectPoolKt */
/* loaded from: classes4.dex */
public final class ObjectPoolKt {
    private static final int BUFFER_OBJECT_POOL_SIZE;
    private static final int BUFFER_POOL_SIZE;
    private static final int BUFFER_SIZE;
    private static final ObjectPool<ReadWriteBufferState.Initial> BufferObjectPool;
    private static final ObjectPool<ByteBuffer> BufferPool;

    static {
        int iOIntProperty = UtilsKt.getIOIntProperty("BufferSize", 4096);
        BUFFER_SIZE = iOIntProperty;
        int iOIntProperty2 = UtilsKt.getIOIntProperty("BufferPoolSize", 2048);
        BUFFER_POOL_SIZE = iOIntProperty2;
        final int iOIntProperty3 = UtilsKt.getIOIntProperty("BufferObjectPoolSize", 1024);
        BUFFER_OBJECT_POOL_SIZE = iOIntProperty3;
        BufferPool = new DirectByteBufferPool(iOIntProperty2, iOIntProperty);
        BufferObjectPool = new DefaultPool<ReadWriteBufferState.Initial>(iOIntProperty3) { // from class: io.ktor.utils.io.internal.ObjectPoolKt$BufferObjectPool$1
            /* JADX INFO: Access modifiers changed from: protected */
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // io.ktor.utils.p032io.pool.DefaultPool
            public ReadWriteBufferState.Initial produceInstance() {
                return new ReadWriteBufferState.Initial(ObjectPoolKt.getBufferPool().borrow(), 0, 2, null);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // io.ktor.utils.p032io.pool.DefaultPool
            public void disposeInstance(ReadWriteBufferState.Initial instance) {
                Intrinsics.checkNotNullParameter(instance, "instance");
                ObjectPoolKt.getBufferPool().recycle(instance.backingBuffer);
            }
        };
        new NoPoolImpl<ReadWriteBufferState.Initial>() { // from class: io.ktor.utils.io.internal.ObjectPoolKt$BufferObjectNoPool$1
            @Override // io.ktor.utils.p032io.pool.ObjectPool
            public ReadWriteBufferState.Initial borrow() {
                ByteBuffer allocateDirect = ByteBuffer.allocateDirect(ObjectPoolKt.getBUFFER_SIZE());
                Intrinsics.checkNotNullExpressionValue(allocateDirect, "allocateDirect(BUFFER_SIZE)");
                return new ReadWriteBufferState.Initial(allocateDirect, 0, 2, null);
            }
        };
    }

    public static final int getBUFFER_SIZE() {
        return BUFFER_SIZE;
    }

    public static final ObjectPool<ByteBuffer> getBufferPool() {
        return BufferPool;
    }

    public static final ObjectPool<ReadWriteBufferState.Initial> getBufferObjectPool() {
        return BufferObjectPool;
    }
}
