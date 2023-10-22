package io.ktor.utils.p032io.core.internal;

import io.ktor.utils.p032io.bits.DefaultAllocator;
import io.ktor.utils.p032io.bits.Memory;
import io.ktor.utils.p032io.core.Buffer;
import io.ktor.utils.p032io.core.BufferFactoryKt;
import io.ktor.utils.p032io.pool.NoPoolImpl;
import io.ktor.utils.p032io.pool.ObjectPool;
import java.nio.ByteBuffer;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: ChunkBuffer.kt */
/* renamed from: io.ktor.utils.io.core.internal.ChunkBuffer */
/* loaded from: classes4.dex */
public class ChunkBuffer extends Buffer {
    private static final ChunkBuffer Empty;
    private static final ObjectPool<ChunkBuffer> EmptyPool;
    private static final /* synthetic */ AtomicReferenceFieldUpdater nextRef$FU;
    private static final /* synthetic */ AtomicIntegerFieldUpdater refCount$FU;
    private volatile /* synthetic */ Object nextRef;
    private ChunkBuffer origin;
    private final ObjectPool<ChunkBuffer> parentPool;
    private volatile /* synthetic */ int refCount;
    public static final Companion Companion = new Companion(null);
    private static final ObjectPool<ChunkBuffer> Pool = new ObjectPool<ChunkBuffer>() { // from class: io.ktor.utils.io.core.internal.ChunkBuffer$Companion$Pool$1
        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            ObjectPool.DefaultImpls.close(this);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // io.ktor.utils.p032io.pool.ObjectPool
        public ChunkBuffer borrow() {
            return BufferFactoryKt.getDefaultChunkedBufferPool().borrow();
        }

        @Override // io.ktor.utils.p032io.pool.ObjectPool
        public void recycle(ChunkBuffer instance) {
            Intrinsics.checkNotNullParameter(instance, "instance");
            BufferFactoryKt.getDefaultChunkedBufferPool().recycle(instance);
        }

        @Override // io.ktor.utils.p032io.pool.ObjectPool
        public void dispose() {
            BufferFactoryKt.getDefaultChunkedBufferPool().dispose();
        }
    };

    public /* synthetic */ ChunkBuffer(ByteBuffer byteBuffer, ChunkBuffer chunkBuffer, ObjectPool objectPool, DefaultConstructorMarker defaultConstructorMarker) {
        this(byteBuffer, chunkBuffer, objectPool);
    }

    private ChunkBuffer(ByteBuffer byteBuffer, ChunkBuffer chunkBuffer, ObjectPool<ChunkBuffer> objectPool) {
        super(byteBuffer, null);
        this.parentPool = objectPool;
        if (!(chunkBuffer != this)) {
            throw new IllegalArgumentException("A chunk couldn't be a view of itself.".toString());
        }
        this.nextRef = null;
        this.refCount = 1;
        this.origin = chunkBuffer;
    }

    public final ChunkBuffer getOrigin() {
        return this.origin;
    }

    public final ChunkBuffer getNext() {
        return (ChunkBuffer) this.nextRef;
    }

    public final void setNext(ChunkBuffer chunkBuffer) {
        if (chunkBuffer == null) {
            cleanNext();
        } else {
            appendNext(chunkBuffer);
        }
    }

    public final int getReferenceCount() {
        return this.refCount;
    }

    private final void appendNext(ChunkBuffer chunkBuffer) {
        if (!nextRef$FU.compareAndSet(this, null, chunkBuffer)) {
            throw new IllegalStateException("This chunk has already a next chunk.");
        }
    }

    public final ChunkBuffer cleanNext() {
        return (ChunkBuffer) nextRef$FU.getAndSet(this, null);
    }

    public ChunkBuffer duplicate() {
        ChunkBuffer chunkBuffer = this.origin;
        if (chunkBuffer == null) {
            chunkBuffer = this;
        }
        chunkBuffer.acquire$ktor_io();
        ChunkBuffer chunkBuffer2 = new ChunkBuffer(m1912getMemorySK3TCg8(), chunkBuffer, this.parentPool, null);
        duplicateTo(chunkBuffer2);
        return chunkBuffer2;
    }

    public void release(ObjectPool<ChunkBuffer> pool) {
        Intrinsics.checkNotNullParameter(pool, "pool");
        if (release$ktor_io()) {
            ChunkBuffer chunkBuffer = this.origin;
            if (chunkBuffer != null) {
                unlink$ktor_io();
                chunkBuffer.release(pool);
                return;
            }
            ObjectPool<ChunkBuffer> objectPool = this.parentPool;
            if (objectPool != null) {
                pool = objectPool;
            }
            pool.recycle(this);
        }
    }

    public final void unlink$ktor_io() {
        if (!refCount$FU.compareAndSet(this, 0, -1)) {
            throw new IllegalStateException("Unable to unlink: buffer is in use.");
        }
        cleanNext();
        this.origin = null;
    }

    @Override // io.ktor.utils.p032io.core.Buffer
    public final void reset() {
        if (!(this.origin == null)) {
            throw new IllegalArgumentException("Unable to reset buffer with origin".toString());
        }
        super.reset();
        this.nextRef = null;
    }

    /* compiled from: ChunkBuffer.kt */
    /* renamed from: io.ktor.utils.io.core.internal.ChunkBuffer$Companion */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final ObjectPool<ChunkBuffer> getPool() {
            return ChunkBuffer.Pool;
        }

        public final ObjectPool<ChunkBuffer> getEmptyPool() {
            return ChunkBuffer.EmptyPool;
        }

        public final ChunkBuffer getEmpty() {
            return ChunkBuffer.Empty;
        }
    }

    static {
        ObjectPool<ChunkBuffer> objectPool = new ObjectPool<ChunkBuffer>() { // from class: io.ktor.utils.io.core.internal.ChunkBuffer$Companion$EmptyPool$1
            @Override // io.ktor.utils.p032io.pool.ObjectPool
            public void dispose() {
            }

            @Override // java.io.Closeable, java.lang.AutoCloseable
            public void close() {
                ObjectPool.DefaultImpls.close(this);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // io.ktor.utils.p032io.pool.ObjectPool
            public ChunkBuffer borrow() {
                return ChunkBuffer.Companion.getEmpty();
            }

            @Override // io.ktor.utils.p032io.pool.ObjectPool
            public void recycle(ChunkBuffer instance) {
                Intrinsics.checkNotNullParameter(instance, "instance");
                if (!(instance == ChunkBuffer.Companion.getEmpty())) {
                    throw new IllegalArgumentException("Only ChunkBuffer.Empty instance could be recycled.".toString());
                }
            }
        };
        EmptyPool = objectPool;
        Empty = new ChunkBuffer(Memory.Companion.m1908getEmptySK3TCg8(), null, objectPool, null);
        new NoPoolImpl<ChunkBuffer>() { // from class: io.ktor.utils.io.core.internal.ChunkBuffer$Companion$NoPool$1
            @Override // io.ktor.utils.p032io.pool.ObjectPool
            public ChunkBuffer borrow() {
                return new ChunkBuffer(DefaultAllocator.INSTANCE.mo1903allocgFvZug(4096), null, this, null);
            }

            @Override // io.ktor.utils.p032io.pool.NoPoolImpl, io.ktor.utils.p032io.pool.ObjectPool
            public void recycle(ChunkBuffer instance) {
                Intrinsics.checkNotNullParameter(instance, "instance");
                DefaultAllocator.INSTANCE.mo1904free3GNKZMM(instance.m1912getMemorySK3TCg8());
            }
        };
        new NoPoolImpl<ChunkBuffer>() { // from class: io.ktor.utils.io.core.internal.ChunkBuffer$Companion$NoPoolManuallyManaged$1
            @Override // io.ktor.utils.p032io.pool.NoPoolImpl, io.ktor.utils.p032io.pool.ObjectPool
            public void recycle(ChunkBuffer instance) {
                Intrinsics.checkNotNullParameter(instance, "instance");
            }

            @Override // io.ktor.utils.p032io.pool.ObjectPool
            public ChunkBuffer borrow() {
                throw new UnsupportedOperationException("This pool doesn't support borrow");
            }
        };
        nextRef$FU = AtomicReferenceFieldUpdater.newUpdater(ChunkBuffer.class, Object.class, "nextRef");
        refCount$FU = AtomicIntegerFieldUpdater.newUpdater(ChunkBuffer.class, "refCount");
    }

    public final void acquire$ktor_io() {
        int i;
        do {
            i = this.refCount;
            if (i <= 0) {
                throw new IllegalStateException("Unable to acquire chunk: it is already released.");
            }
        } while (!refCount$FU.compareAndSet(this, i, i + 1));
    }

    public final void unpark$ktor_io() {
        int i;
        do {
            i = this.refCount;
            if (i < 0) {
                throw new IllegalStateException("This instance is already disposed and couldn't be borrowed.");
            }
            if (i > 0) {
                throw new IllegalStateException("This instance is already in use but somehow appeared in the pool.");
            }
        } while (!refCount$FU.compareAndSet(this, i, 1));
    }

    public final boolean release$ktor_io() {
        int i;
        int i2;
        do {
            i = this.refCount;
            if (i <= 0) {
                throw new IllegalStateException("Unable to release: it is already released.");
            }
            i2 = i - 1;
        } while (!refCount$FU.compareAndSet(this, i, i2));
        return i2 == 0;
    }
}
