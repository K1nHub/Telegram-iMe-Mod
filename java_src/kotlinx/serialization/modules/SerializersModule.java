package kotlinx.serialization.modules;

import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.KClass;
import kotlinx.serialization.DeserializationStrategy;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializationStrategy;
/* compiled from: SerializersModule.kt */
/* loaded from: classes4.dex */
public abstract class SerializersModule {
    public /* synthetic */ SerializersModule(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public abstract void dumpTo(SerializersModuleCollector serializersModuleCollector);

    public abstract <T> KSerializer<T> getContextual(KClass<T> kClass, List<? extends KSerializer<?>> list);

    public abstract <T> DeserializationStrategy<T> getPolymorphic(KClass<? super T> kClass, String str);

    public abstract <T> SerializationStrategy<T> getPolymorphic(KClass<? super T> kClass, T t);

    private SerializersModule() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ KSerializer getContextual$default(SerializersModule serializersModule, KClass kClass, List list, int i, Object obj) {
        if (obj == null) {
            if ((i & 2) != 0) {
                list = CollectionsKt__CollectionsKt.emptyList();
            }
            return serializersModule.getContextual(kClass, list);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getContextual");
    }
}
