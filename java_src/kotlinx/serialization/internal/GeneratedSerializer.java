package kotlinx.serialization.internal;

import kotlinx.serialization.KSerializer;
/* compiled from: PluginHelperInterfaces.kt */
/* loaded from: classes4.dex */
public interface GeneratedSerializer<T> extends KSerializer<T> {
    KSerializer<?>[] childSerializers();

    KSerializer<?>[] typeParametersSerializers();

    /* compiled from: PluginHelperInterfaces.kt */
    /* loaded from: classes4.dex */
    public static final class DefaultImpls {
        public static <T> KSerializer<?>[] typeParametersSerializers(GeneratedSerializer<T> generatedSerializer) {
            return PluginHelperInterfacesKt.EMPTY_SERIALIZER_ARRAY;
        }
    }
}
