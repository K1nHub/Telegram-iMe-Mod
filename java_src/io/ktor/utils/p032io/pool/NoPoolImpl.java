package io.ktor.utils.p032io.pool;

import io.ktor.utils.p032io.pool.ObjectPool;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: Pool.kt */
/* renamed from: io.ktor.utils.io.pool.NoPoolImpl */
/* loaded from: classes4.dex */
public abstract class NoPoolImpl<T> implements ObjectPool<T> {
    @Override // io.ktor.utils.p032io.pool.ObjectPool
    public void dispose() {
    }

    @Override // io.ktor.utils.p032io.pool.ObjectPool
    public void recycle(T instance) {
        Intrinsics.checkNotNullParameter(instance, "instance");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        ObjectPool.DefaultImpls.close(this);
    }
}
