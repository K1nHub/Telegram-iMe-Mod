package kotlinx.serialization.internal;

import java.util.ArrayList;
import java.util.List;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import kotlin.reflect.KType;
import kotlinx.serialization.KSerializer;
import p033j$.util.concurrent.ConcurrentHashMap;
/* compiled from: Caching.kt */
/* loaded from: classes4.dex */
final class ConcurrentHashMapParametrizedCache<T> implements ParametrizedSerializerCache<T> {
    private final ConcurrentHashMap<Class<?>, ParametrizedCacheEntry<T>> cache;
    private final Function2<KClass<Object>, List<? extends KType>, KSerializer<T>> compute;

    /* JADX WARN: Multi-variable type inference failed */
    public ConcurrentHashMapParametrizedCache(Function2<? super KClass<Object>, ? super List<? extends KType>, ? extends KSerializer<T>> compute) {
        Intrinsics.checkNotNullParameter(compute, "compute");
        this.compute = compute;
        this.cache = new ConcurrentHashMap<>();
    }

    @Override // kotlinx.serialization.internal.ParametrizedSerializerCache
    /* renamed from: get-gIAlu-s */
    public Object mo2122getgIAlus(KClass<Object> key, List<? extends KType> types) {
        int collectionSizeOrDefault;
        Object m1935constructorimpl;
        ParametrizedCacheEntry<T> putIfAbsent;
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(types, "types");
        ConcurrentHashMap<Class<?>, ParametrizedCacheEntry<T>> concurrentHashMap = this.cache;
        Class<?> javaClass = JvmClassMappingKt.getJavaClass(key);
        ParametrizedCacheEntry<T> parametrizedCacheEntry = concurrentHashMap.get(javaClass);
        if (parametrizedCacheEntry == null && (putIfAbsent = concurrentHashMap.putIfAbsent(javaClass, (parametrizedCacheEntry = new ParametrizedCacheEntry<>()))) != null) {
            parametrizedCacheEntry = putIfAbsent;
        }
        ParametrizedCacheEntry<T> parametrizedCacheEntry2 = parametrizedCacheEntry;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(types, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (KType kType : types) {
            arrayList.add(new KTypeWrapper(kType));
        }
        ConcurrentHashMap access$getSerializers$p = ParametrizedCacheEntry.access$getSerializers$p(parametrizedCacheEntry2);
        Object obj = access$getSerializers$p.get(arrayList);
        if (obj == null) {
            try {
                Result.Companion companion = Result.Companion;
                m1935constructorimpl = Result.m1935constructorimpl(this.compute.invoke(key, types));
            } catch (Throwable th) {
                Result.Companion companion2 = Result.Companion;
                m1935constructorimpl = Result.m1935constructorimpl(ResultKt.createFailure(th));
            }
            Result m1934boximpl = Result.m1934boximpl(m1935constructorimpl);
            Object putIfAbsent2 = access$getSerializers$p.putIfAbsent(arrayList, m1934boximpl);
            obj = putIfAbsent2 == null ? m1934boximpl : putIfAbsent2;
        }
        Intrinsics.checkNotNullExpressionValue(obj, "serializers.getOrPut(wra… { producer() }\n        }");
        return ((Result) obj).m1943unboximpl();
    }
}
