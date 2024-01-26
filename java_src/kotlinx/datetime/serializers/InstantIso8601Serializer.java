package kotlinx.datetime.serializers;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.datetime.Instant;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.PrimitiveKind;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
/* compiled from: InstantSerializers.kt */
/* loaded from: classes4.dex */
public final class InstantIso8601Serializer implements KSerializer<Instant> {
    public static final InstantIso8601Serializer INSTANCE = new InstantIso8601Serializer();
    private static final SerialDescriptor descriptor = SerialDescriptorsKt.PrimitiveSerialDescriptor("Instant", PrimitiveKind.STRING.INSTANCE);

    private InstantIso8601Serializer() {
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public Instant deserialize(Decoder decoder) {
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        return Instant.Companion.parse(decoder.decodeString());
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, Instant value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        encoder.encodeString(value.toString());
    }
}
