package kotlinx.serialization;

import kotlin.KotlinNothingValueException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.AbstractPolymorphicSerializer;
import kotlinx.serialization.internal.AbstractPolymorphicSerializerKt;
/* compiled from: PolymorphicSerializer.kt */
/* loaded from: classes4.dex */
public final class PolymorphicSerializerKt {
    public static final <T> DeserializationStrategy<T> findPolymorphicSerializer(AbstractPolymorphicSerializer<T> abstractPolymorphicSerializer, CompositeDecoder decoder, String str) {
        Intrinsics.checkNotNullParameter(abstractPolymorphicSerializer, "<this>");
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        DeserializationStrategy<T> findPolymorphicSerializerOrNull = abstractPolymorphicSerializer.findPolymorphicSerializerOrNull(decoder, str);
        if (findPolymorphicSerializerOrNull != null) {
            return findPolymorphicSerializerOrNull;
        }
        AbstractPolymorphicSerializerKt.throwSubtypeNotRegistered(str, (KClass<?>) abstractPolymorphicSerializer.getBaseClass());
        throw new KotlinNothingValueException();
    }

    public static final <T> SerializationStrategy<T> findPolymorphicSerializer(AbstractPolymorphicSerializer<T> abstractPolymorphicSerializer, Encoder encoder, T value) {
        Intrinsics.checkNotNullParameter(abstractPolymorphicSerializer, "<this>");
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerializationStrategy<T> findPolymorphicSerializerOrNull = abstractPolymorphicSerializer.findPolymorphicSerializerOrNull(encoder, (Encoder) value);
        if (findPolymorphicSerializerOrNull != null) {
            return findPolymorphicSerializerOrNull;
        }
        AbstractPolymorphicSerializerKt.throwSubtypeNotRegistered((KClass<?>) Reflection.getOrCreateKotlinClass(value.getClass()), (KClass<?>) abstractPolymorphicSerializer.getBaseClass());
        throw new KotlinNothingValueException();
    }
}
