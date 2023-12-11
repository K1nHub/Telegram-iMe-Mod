package kotlinx.serialization;

import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import kotlin.reflect.KType;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.internal.CachingKt;
import kotlinx.serialization.internal.ParametrizedSerializerCache;
import kotlinx.serialization.internal.SerializerCache;
import kotlinx.serialization.modules.SerializersModuleBuildersKt;
/* compiled from: SerializersCache.kt */
/* loaded from: classes4.dex */
public final class SerializersCacheKt {
    private static final SerializerCache<? extends Object> SERIALIZERS_CACHE = CachingKt.createCache(new Function1<KClass<?>, KSerializer<? extends Object>>() { // from class: kotlinx.serialization.SerializersCacheKt$SERIALIZERS_CACHE$1
        @Override // kotlin.jvm.functions.Function1
        public final KSerializer<? extends Object> invoke(KClass<?> it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return SerializersKt.serializerOrNull(it);
        }
    });
    private static final SerializerCache<Object> SERIALIZERS_CACHE_NULLABLE = CachingKt.createCache(new Function1<KClass<?>, KSerializer<Object>>() { // from class: kotlinx.serialization.SerializersCacheKt$SERIALIZERS_CACHE_NULLABLE$1
        @Override // kotlin.jvm.functions.Function1
        public final KSerializer<Object> invoke(KClass<?> it) {
            KSerializer<Object> nullable;
            Intrinsics.checkNotNullParameter(it, "it");
            KSerializer serializerOrNull = SerializersKt.serializerOrNull(it);
            if (serializerOrNull == null || (nullable = BuiltinSerializersKt.getNullable(serializerOrNull)) == null) {
                return null;
            }
            return nullable;
        }
    });
    private static final ParametrizedSerializerCache<? extends Object> PARAMETRIZED_SERIALIZERS_CACHE = CachingKt.createParametrizedCache(new Function2<KClass<Object>, List<? extends KType>, KSerializer<? extends Object>>() { // from class: kotlinx.serialization.SerializersCacheKt$PARAMETRIZED_SERIALIZERS_CACHE$1
        @Override // kotlin.jvm.functions.Function2
        public final KSerializer<? extends Object> invoke(KClass<Object> clazz, List<? extends KType> types) {
            Intrinsics.checkNotNullParameter(clazz, "clazz");
            Intrinsics.checkNotNullParameter(types, "types");
            List<KSerializer<Object>> serializersForParameters = SerializersKt.serializersForParameters(SerializersModuleBuildersKt.EmptySerializersModule(), types, true);
            Intrinsics.checkNotNull(serializersForParameters);
            return SerializersKt.parametrizedSerializerOrNull(clazz, types, serializersForParameters);
        }
    });
    private static final ParametrizedSerializerCache<Object> PARAMETRIZED_SERIALIZERS_CACHE_NULLABLE = CachingKt.createParametrizedCache(new Function2<KClass<Object>, List<? extends KType>, KSerializer<Object>>() { // from class: kotlinx.serialization.SerializersCacheKt$PARAMETRIZED_SERIALIZERS_CACHE_NULLABLE$1
        @Override // kotlin.jvm.functions.Function2
        public final KSerializer<Object> invoke(KClass<Object> clazz, List<? extends KType> types) {
            KSerializer<Object> nullable;
            Intrinsics.checkNotNullParameter(clazz, "clazz");
            Intrinsics.checkNotNullParameter(types, "types");
            List<KSerializer<Object>> serializersForParameters = SerializersKt.serializersForParameters(SerializersModuleBuildersKt.EmptySerializersModule(), types, true);
            Intrinsics.checkNotNull(serializersForParameters);
            KSerializer<? extends Object> parametrizedSerializerOrNull = SerializersKt.parametrizedSerializerOrNull(clazz, types, serializersForParameters);
            if (parametrizedSerializerOrNull == null || (nullable = BuiltinSerializersKt.getNullable(parametrizedSerializerOrNull)) == null) {
                return null;
            }
            return nullable;
        }
    });

    public static final KSerializer<Object> findCachedSerializer(KClass<Object> clazz, boolean z) {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        if (!z) {
            KSerializer<? extends Object> kSerializer = SERIALIZERS_CACHE.get(clazz);
            if (kSerializer != null) {
                return kSerializer;
            }
            return null;
        }
        return SERIALIZERS_CACHE_NULLABLE.get(clazz);
    }

    public static final Object findParametrizedCachedSerializer(KClass<Object> clazz, List<? extends KType> types, boolean z) {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        Intrinsics.checkNotNullParameter(types, "types");
        if (!z) {
            return PARAMETRIZED_SERIALIZERS_CACHE.mo2129getgIAlus(clazz, types);
        }
        return PARAMETRIZED_SERIALIZERS_CACHE_NULLABLE.mo2129getgIAlus(clazz, types);
    }
}
