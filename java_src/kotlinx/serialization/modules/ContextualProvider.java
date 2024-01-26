package kotlinx.serialization.modules;

import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
/* compiled from: SerializersModule.kt */
/* loaded from: classes4.dex */
public abstract class ContextualProvider {
    public abstract KSerializer<?> invoke(List<? extends KSerializer<?>> list);

    private ContextualProvider() {
    }

    /* compiled from: SerializersModule.kt */
    /* loaded from: classes4.dex */
    public static final class Argless extends ContextualProvider {
        private final KSerializer<?> serializer;

        public final KSerializer<?> getSerializer() {
            return this.serializer;
        }

        @Override // kotlinx.serialization.modules.ContextualProvider
        public KSerializer<?> invoke(List<? extends KSerializer<?>> typeArgumentsSerializers) {
            Intrinsics.checkNotNullParameter(typeArgumentsSerializers, "typeArgumentsSerializers");
            return this.serializer;
        }

        public boolean equals(Object obj) {
            return (obj instanceof Argless) && Intrinsics.areEqual(((Argless) obj).serializer, this.serializer);
        }

        public int hashCode() {
            return this.serializer.hashCode();
        }
    }

    /* compiled from: SerializersModule.kt */
    /* loaded from: classes4.dex */
    public static final class WithTypeArguments extends ContextualProvider {
        private final Function1<List<? extends KSerializer<?>>, KSerializer<?>> provider;

        public final Function1<List<? extends KSerializer<?>>, KSerializer<?>> getProvider() {
            return this.provider;
        }

        @Override // kotlinx.serialization.modules.ContextualProvider
        public KSerializer<?> invoke(List<? extends KSerializer<?>> typeArgumentsSerializers) {
            Intrinsics.checkNotNullParameter(typeArgumentsSerializers, "typeArgumentsSerializers");
            return this.provider.invoke(typeArgumentsSerializers);
        }
    }
}
