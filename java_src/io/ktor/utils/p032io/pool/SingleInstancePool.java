package io.ktor.utils.p032io.pool;

import io.ktor.utils.p032io.pool.ObjectPool;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: Pool.kt */
/* renamed from: io.ktor.utils.io.pool.SingleInstancePool */
/* loaded from: classes4.dex */
public abstract class SingleInstancePool<T> implements ObjectPool<T> {
    private static final /* synthetic */ AtomicIntegerFieldUpdater borrowed$FU = AtomicIntegerFieldUpdater.newUpdater(SingleInstancePool.class, "borrowed");
    private static final /* synthetic */ AtomicIntegerFieldUpdater disposed$FU = AtomicIntegerFieldUpdater.newUpdater(SingleInstancePool.class, "disposed");
    private volatile /* synthetic */ int borrowed = 0;
    private volatile /* synthetic */ int disposed = 0;
    private volatile /* synthetic */ Object instance = null;

    protected abstract void disposeInstance(T t);

    protected abstract T produceInstance();

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        ObjectPool.DefaultImpls.close(this);
    }

    @Override // io.ktor.utils.p032io.pool.ObjectPool
    public final void recycle(T instance) {
        Intrinsics.checkNotNullParameter(instance, "instance");
        if (this.instance != instance) {
            if (this.instance == null && this.borrowed != 0) {
                throw new IllegalStateException("Already recycled or an irrelevant instance tried to be recycled");
            }
            throw new IllegalStateException("Unable to recycle irrelevant instance");
        }
        this.instance = null;
        if (!disposed$FU.compareAndSet(this, 0, 1)) {
            throw new IllegalStateException("An instance is already disposed");
        }
        disposeInstance(instance);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.ktor.utils.p032io.pool.ObjectPool
    public final void dispose() {
        Object obj;
        if (!disposed$FU.compareAndSet(this, 0, 1) || (obj = this.instance) == null) {
            return;
        }
        this.instance = null;
        disposeInstance(obj);
    }

    @Override // io.ktor.utils.p032io.pool.ObjectPool
    public final T borrow() {
        int i;
        do {
            i = this.borrowed;
            if (i != 0) {
                throw new IllegalStateException("Instance is already consumed");
            }
        } while (!borrowed$FU.compareAndSet(this, i, 1));
        T produceInstance = produceInstance();
        this.instance = produceInstance;
        return produceInstance;
    }
}
