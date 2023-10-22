package kotlinx.serialization.internal;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.PrimitiveKind;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
/* compiled from: Primitives.kt */
/* loaded from: classes4.dex */
public final class ShortSerializer implements KSerializer<Short> {
    public static final ShortSerializer INSTANCE = new ShortSerializer();
    private static final SerialDescriptor descriptor = new PrimitiveSerialDescriptor("kotlin.Short", PrimitiveKind.SHORT.INSTANCE);

    private ShortSerializer() {
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public /* bridge */ /* synthetic */ void serialize(Encoder encoder, Object obj) {
        serialize(encoder, ((Number) obj).shortValue());
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    public void serialize(Encoder encoder, short s) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        encoder.encodeShort(s);
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public Short deserialize(Decoder decoder) {
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        return Short.valueOf(decoder.decodeShort());
    }
}
