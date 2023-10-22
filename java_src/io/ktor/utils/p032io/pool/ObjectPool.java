package io.ktor.utils.p032io.pool;

import java.io.Closeable;
/* compiled from: Pool.kt */
/* renamed from: io.ktor.utils.io.pool.ObjectPool */
/* loaded from: classes4.dex */
public interface ObjectPool<T> extends Closeable {
    T borrow();

    void dispose();

    void recycle(T t);

    /* compiled from: Pool.kt */
    /* renamed from: io.ktor.utils.io.pool.ObjectPool$DefaultImpls */
    /* loaded from: classes4.dex */
    public static final class DefaultImpls {
        public static <T> void close(ObjectPool<T> objectPool) {
            objectPool.dispose();
        }
    }
}
