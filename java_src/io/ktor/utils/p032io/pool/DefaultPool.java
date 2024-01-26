package io.ktor.utils.p032io.pool;

import io.ktor.utils.p032io.pool.ObjectPool;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.MutablePropertyReference1Impl;
/* compiled from: DefaultPool.kt */
/* renamed from: io.ktor.utils.io.pool.DefaultPool */
/* loaded from: classes4.dex */
public abstract class DefaultPool<T> implements ObjectPool<T> {
    private static final AtomicLongFieldUpdater<DefaultPool<?>> Top;
    private final int capacity;
    private final AtomicReferenceArray<T> instances;
    private final int maxIndex;
    private final int[] next;
    private final int shift;
    private volatile long top;

    /* JADX INFO: Access modifiers changed from: protected */
    public T clearInstance(T instance) {
        Intrinsics.checkNotNullParameter(instance, "instance");
        return instance;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void disposeInstance(T instance) {
        Intrinsics.checkNotNullParameter(instance, "instance");
    }

    protected abstract T produceInstance();

    /* JADX INFO: Access modifiers changed from: protected */
    public void validateInstance(T instance) {
        Intrinsics.checkNotNullParameter(instance, "instance");
    }

    public DefaultPool(int i) {
        this.capacity = i;
        if (!(i > 0)) {
            throw new IllegalArgumentException(("capacity should be positive but it is " + i).toString());
        }
        if (!(i <= 536870911)) {
            throw new IllegalArgumentException(("capacity should be less or equal to 536870911 but it is " + i).toString());
        }
        int highestOneBit = Integer.highestOneBit((i * 4) - 1) * 2;
        this.maxIndex = highestOneBit;
        this.shift = Integer.numberOfLeadingZeros(highestOneBit) + 1;
        this.instances = new AtomicReferenceArray<>(highestOneBit + 1);
        this.next = new int[highestOneBit + 1];
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        ObjectPool.DefaultImpls.close(this);
    }

    @Override // io.ktor.utils.p032io.pool.ObjectPool
    public final T borrow() {
        T clearInstance;
        T tryPop = tryPop();
        return (tryPop == null || (clearInstance = clearInstance(tryPop)) == null) ? produceInstance() : clearInstance;
    }

    @Override // io.ktor.utils.p032io.pool.ObjectPool
    public final void recycle(T instance) {
        Intrinsics.checkNotNullParameter(instance, "instance");
        validateInstance(instance);
        if (tryPush(instance)) {
            return;
        }
        disposeInstance(instance);
    }

    @Override // io.ktor.utils.p032io.pool.ObjectPool
    public final void dispose() {
        while (true) {
            T tryPop = tryPop();
            if (tryPop == null) {
                return;
            }
            disposeInstance(tryPop);
        }
    }

    private final boolean tryPush(T t) {
        int identityHashCode = ((System.identityHashCode(t) * (-1640531527)) >>> this.shift) + 1;
        for (int i = 0; i < 8; i++) {
            if (this.instances.compareAndSet(identityHashCode, null, t)) {
                pushTop(identityHashCode);
                return true;
            }
            identityHashCode--;
            if (identityHashCode == 0) {
                identityHashCode = this.maxIndex;
            }
        }
        return false;
    }

    private final T tryPop() {
        int popTop = popTop();
        if (popTop == 0) {
            return null;
        }
        return this.instances.getAndSet(popTop, null);
    }

    private final void pushTop(int i) {
        long j;
        long j2;
        if (!(i > 0)) {
            throw new IllegalArgumentException("index should be positive".toString());
        }
        do {
            j = this.top;
            j2 = i | ((((j >> 32) & 4294967295L) + 1) << 32);
            this.next[i] = (int) (4294967295L & j);
        } while (!Top.compareAndSet(this, j, j2));
    }

    private final int popTop() {
        long j;
        long j2;
        int i;
        do {
            j = this.top;
            if (j == 0) {
                return 0;
            }
            j2 = ((j >> 32) & 4294967295L) + 1;
            i = (int) (4294967295L & j);
            if (i == 0) {
                return 0;
            }
        } while (!Top.compareAndSet(this, j, (j2 << 32) | this.next[i]));
        return i;
    }

    /* compiled from: DefaultPool.kt */
    /* renamed from: io.ktor.utils.io.pool.DefaultPool$Companion */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    static {
        new Companion(null);
        AtomicLongFieldUpdater<DefaultPool<?>> newUpdater = AtomicLongFieldUpdater.newUpdater(DefaultPool.class, new MutablePropertyReference1Impl() { // from class: io.ktor.utils.io.pool.DefaultPool$Companion$Top$1
            @Override // kotlin.jvm.internal.MutablePropertyReference1Impl, kotlin.reflect.KProperty1
            public Object get(Object obj) {
                long j;
                j = ((DefaultPool) obj).top;
                return Long.valueOf(j);
            }
        }.getName());
        Intrinsics.checkNotNullExpressionValue(newUpdater, "newUpdater(Owner::class.java, p.name)");
        Top = newUpdater;
    }
}
