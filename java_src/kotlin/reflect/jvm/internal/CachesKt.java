package kotlin.reflect.jvm.internal;

import java.util.List;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KDeclarationContainer;
import kotlin.reflect.KType;
import kotlin.reflect.KTypeProjection;
import kotlin.reflect.full.KClassifiers;
import p033j$.util.concurrent.ConcurrentHashMap;
/* compiled from: caches.kt */
/* loaded from: classes4.dex */
public final class CachesKt {
    private static final CacheByClass<KClassImpl<? extends Object>> K_CLASS_CACHE = CacheByClassKt.createCache(new Function1<Class<?>, KClassImpl<? extends Object>>() { // from class: kotlin.reflect.jvm.internal.CachesKt$K_CLASS_CACHE$1
        @Override // kotlin.jvm.functions.Function1
        public final KClassImpl<? extends Object> invoke(Class<?> it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return new KClassImpl<>(it);
        }
    });
    private static final CacheByClass<KPackageImpl> K_PACKAGE_CACHE = CacheByClassKt.createCache(new Function1<Class<?>, KPackageImpl>() { // from class: kotlin.reflect.jvm.internal.CachesKt$K_PACKAGE_CACHE$1
        @Override // kotlin.jvm.functions.Function1
        public final KPackageImpl invoke(Class<?> it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return new KPackageImpl(it);
        }
    });
    private static final CacheByClass<KType> CACHE_FOR_BASE_CLASSIFIERS = CacheByClassKt.createCache(new Function1<Class<?>, KType>() { // from class: kotlin.reflect.jvm.internal.CachesKt$CACHE_FOR_BASE_CLASSIFIERS$1
        @Override // kotlin.jvm.functions.Function1
        public final KType invoke(Class<?> it) {
            List emptyList;
            List emptyList2;
            Intrinsics.checkNotNullParameter(it, "it");
            KClassImpl orCreateKotlinClass = CachesKt.getOrCreateKotlinClass(it);
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            emptyList2 = CollectionsKt__CollectionsKt.emptyList();
            return KClassifiers.createType(orCreateKotlinClass, emptyList, false, emptyList2);
        }
    });
    private static final CacheByClass<KType> CACHE_FOR_NULLABLE_BASE_CLASSIFIERS = CacheByClassKt.createCache(new Function1<Class<?>, KType>() { // from class: kotlin.reflect.jvm.internal.CachesKt$CACHE_FOR_NULLABLE_BASE_CLASSIFIERS$1
        @Override // kotlin.jvm.functions.Function1
        public final KType invoke(Class<?> it) {
            List emptyList;
            List emptyList2;
            Intrinsics.checkNotNullParameter(it, "it");
            KClassImpl orCreateKotlinClass = CachesKt.getOrCreateKotlinClass(it);
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            emptyList2 = CollectionsKt__CollectionsKt.emptyList();
            return KClassifiers.createType(orCreateKotlinClass, emptyList, true, emptyList2);
        }
    });
    private static final CacheByClass<ConcurrentHashMap<Pair<List<KTypeProjection>, Boolean>, KType>> CACHE_FOR_GENERIC_CLASSIFIERS = CacheByClassKt.createCache(new Function1<Class<?>, ConcurrentHashMap<Pair<? extends List<? extends KTypeProjection>, ? extends Boolean>, KType>>() { // from class: kotlin.reflect.jvm.internal.CachesKt$CACHE_FOR_GENERIC_CLASSIFIERS$1
        @Override // kotlin.jvm.functions.Function1
        public final ConcurrentHashMap<Pair<List<KTypeProjection>, Boolean>, KType> invoke(Class<?> it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return new ConcurrentHashMap<>();
        }
    });

    public static final <T> KClassImpl<T> getOrCreateKotlinClass(Class<T> jClass) {
        Intrinsics.checkNotNullParameter(jClass, "jClass");
        KClassImpl<? extends Object> kClassImpl = K_CLASS_CACHE.get(jClass);
        Intrinsics.checkNotNull(kClassImpl, "null cannot be cast to non-null type kotlin.reflect.jvm.internal.KClassImpl<T of kotlin.reflect.jvm.internal.CachesKt.getOrCreateKotlinClass>");
        return (KClassImpl<T>) kClassImpl;
    }

    public static final <T> KDeclarationContainer getOrCreateKotlinPackage(Class<T> jClass) {
        Intrinsics.checkNotNullParameter(jClass, "jClass");
        return K_PACKAGE_CACHE.get(jClass);
    }

    public static final <T> KType getOrCreateKType(Class<T> jClass, List<KTypeProjection> arguments, boolean z) {
        Intrinsics.checkNotNullParameter(jClass, "jClass");
        Intrinsics.checkNotNullParameter(arguments, "arguments");
        if (arguments.isEmpty()) {
            if (z) {
                return CACHE_FOR_NULLABLE_BASE_CLASSIFIERS.get(jClass);
            }
            return CACHE_FOR_BASE_CLASSIFIERS.get(jClass);
        }
        return getOrCreateKTypeWithTypeArguments(jClass, arguments, z);
    }

    private static final <T> KType getOrCreateKTypeWithTypeArguments(Class<T> cls, List<KTypeProjection> list, boolean z) {
        List emptyList;
        ConcurrentHashMap<Pair<List<KTypeProjection>, Boolean>, KType> concurrentHashMap = CACHE_FOR_GENERIC_CLASSIFIERS.get(cls);
        Pair<List<KTypeProjection>, Boolean> m149to = TuplesKt.m149to(list, Boolean.valueOf(z));
        KType kType = concurrentHashMap.get(m149to);
        if (kType == null) {
            KClassImpl orCreateKotlinClass = getOrCreateKotlinClass(cls);
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            KType createType = KClassifiers.createType(orCreateKotlinClass, list, z, emptyList);
            KType putIfAbsent = concurrentHashMap.putIfAbsent(m149to, createType);
            kType = putIfAbsent == null ? createType : putIfAbsent;
        }
        Intrinsics.checkNotNullExpressionValue(kType, "cache.getOrPut(arguments…lable, emptyList())\n    }");
        return kType;
    }
}
