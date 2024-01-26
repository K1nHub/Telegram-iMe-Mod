package kotlinx.serialization.internal;

import java.util.ArrayList;
import java.util.List;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import kotlin.reflect.KType;
import kotlinx.serialization.KSerializer;
import p033j$.util.concurrent.ConcurrentHashMap;
/* compiled from: Caching.kt */
/* loaded from: classes4.dex */
final class ClassValueParametrizedCache<T> implements ParametrizedSerializerCache<T> {
    private final ClassValueReferences<ParametrizedCacheEntry<T>> classValue;
    private final Function2<KClass<Object>, List<? extends KType>, KSerializer<T>> compute;

    /* JADX WARN: Multi-variable type inference failed */
    public ClassValueParametrizedCache(Function2<? super KClass<Object>, ? super List<? extends KType>, ? extends KSerializer<T>> compute) {
        Intrinsics.checkNotNullParameter(compute, "compute");
        this.compute = compute;
        this.classValue = new ClassValueReferences<>();
    }

    @Override // kotlinx.serialization.internal.ParametrizedSerializerCache
    /* renamed from: get-gIAlu-s  reason: not valid java name */
    public Object mo2130getgIAlus(KClass<Object> key, List<? extends KType> types) {
        int collectionSizeOrDefault;
        Object m1943constructorimpl;
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(types, "types");
        Object obj = this.classValue.get(JvmClassMappingKt.getJavaClass(key));
        Intrinsics.checkNotNullExpressionValue(obj, "get(key)");
        MutableSoftReference mutableSoftReference = (MutableSoftReference) obj;
        T t = mutableSoftReference.reference.get();
        if (t == null) {
            t = (T) mutableSoftReference.getOrSetWithLock(new Function0<T>() { // from class: kotlinx.serialization.internal.ClassValueParametrizedCache$get-gIAlu-s$$inlined$getOrSet$1
                @Override // kotlin.jvm.functions.Function0
                public final T invoke() {
                    return (T) new ParametrizedCacheEntry();
                }
            });
        }
        ParametrizedCacheEntry parametrizedCacheEntry = (ParametrizedCacheEntry) t;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(types, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (KType kType : types) {
            arrayList.add(new KTypeWrapper(kType));
        }
        ConcurrentHashMap access$getSerializers$p = ParametrizedCacheEntry.access$getSerializers$p(parametrizedCacheEntry);
        Object obj2 = access$getSerializers$p.get(arrayList);
        if (obj2 == null) {
            try {
                Result.Companion companion = Result.Companion;
                m1943constructorimpl = Result.m1943constructorimpl(this.compute.invoke(key, types));
            } catch (Throwable th) {
                Result.Companion companion2 = Result.Companion;
                m1943constructorimpl = Result.m1943constructorimpl(ResultKt.createFailure(th));
            }
            Result m1942boximpl = Result.m1942boximpl(m1943constructorimpl);
            Object putIfAbsent = access$getSerializers$p.putIfAbsent(arrayList, m1942boximpl);
            obj2 = putIfAbsent == null ? m1942boximpl : putIfAbsent;
        }
        Intrinsics.checkNotNullExpressionValue(obj2, "serializers.getOrPut(wra… { producer() }\n        }");
        return ((Result) obj2).m1951unboximpl();
    }
}
