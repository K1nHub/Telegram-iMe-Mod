package kotlinx.serialization.internal;

import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import kotlinx.serialization.KSerializer;
import p033j$.util.concurrent.ConcurrentHashMap;
/* compiled from: Caching.kt */
/* loaded from: classes4.dex */
final class ConcurrentHashMapCache<T> implements SerializerCache<T> {
    private final ConcurrentHashMap<Class<?>, CacheEntry<T>> cache;
    private final Function1<KClass<?>, KSerializer<T>> compute;

    /* JADX WARN: Multi-variable type inference failed */
    public ConcurrentHashMapCache(Function1<? super KClass<?>, ? extends KSerializer<T>> compute) {
        Intrinsics.checkNotNullParameter(compute, "compute");
        this.compute = compute;
        this.cache = new ConcurrentHashMap<>();
    }

    @Override // kotlinx.serialization.internal.SerializerCache
    public KSerializer<T> get(KClass<Object> key) {
        CacheEntry<T> putIfAbsent;
        Intrinsics.checkNotNullParameter(key, "key");
        ConcurrentHashMap<Class<?>, CacheEntry<T>> concurrentHashMap = this.cache;
        Class<?> javaClass = JvmClassMappingKt.getJavaClass(key);
        CacheEntry<T> cacheEntry = concurrentHashMap.get(javaClass);
        if (cacheEntry == null && (putIfAbsent = concurrentHashMap.putIfAbsent(javaClass, (cacheEntry = new CacheEntry<>(this.compute.invoke(key))))) != null) {
            cacheEntry = putIfAbsent;
        }
        return cacheEntry.serializer;
    }
}
