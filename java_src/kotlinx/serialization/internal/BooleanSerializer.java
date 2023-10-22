package kotlinx.serialization.internal;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.PrimitiveKind;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
/* compiled from: Primitives.kt */
/* loaded from: classes4.dex */
public final class BooleanSerializer implements KSerializer<Boolean> {
    public static final BooleanSerializer INSTANCE = new BooleanSerializer();
    private static final SerialDescriptor descriptor = new PrimitiveSerialDescriptor("kotlin.Boolean", PrimitiveKind.BOOLEAN.INSTANCE);

    private BooleanSerializer() {
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public /* bridge */ /* synthetic */ void serialize(Encoder encoder, Object obj) {
        serialize(encoder, ((Boolean) obj).booleanValue());
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    public void serialize(Encoder encoder, boolean z) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        encoder.encodeBoolean(z);
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public Boolean deserialize(Decoder decoder) {
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        return Boolean.valueOf(decoder.decodeBoolean());
    }
}
