package kotlin.reflect.jvm.internal;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import p033j$.util.concurrent.ConcurrentHashMap;
/* compiled from: CacheByClass.kt */
/* loaded from: classes4.dex */
final class ConcurrentHashMapCache<V> extends CacheByClass<V> {
    private final ConcurrentHashMap<Class<?>, V> cache;
    private final Function1<Class<?>, V> compute;

    /* JADX WARN: Multi-variable type inference failed */
    public ConcurrentHashMapCache(Function1<? super Class<?>, ? extends V> compute) {
        Intrinsics.checkNotNullParameter(compute, "compute");
        this.compute = compute;
        this.cache = new ConcurrentHashMap<>();
    }

    @Override // kotlin.reflect.jvm.internal.CacheByClass
    public V get(Class<?> key) {
        Intrinsics.checkNotNullParameter(key, "key");
        ConcurrentHashMap<Class<?>, V> concurrentHashMap = this.cache;
        V v = concurrentHashMap.get(key);
        if (v == null) {
            V invoke = this.compute.invoke(key);
            V putIfAbsent = concurrentHashMap.putIfAbsent(key, invoke);
            return putIfAbsent == null ? invoke : putIfAbsent;
        }
        return v;
    }
}
