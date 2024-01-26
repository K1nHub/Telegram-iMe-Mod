package kotlinx.serialization.encoding;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.DeserializationStrategy;
import kotlinx.serialization.descriptors.SerialDescriptor;
/* compiled from: Decoding.kt */
/* loaded from: classes4.dex */
public interface Decoder {
    CompositeDecoder beginStructure(SerialDescriptor serialDescriptor);

    boolean decodeBoolean();

    byte decodeByte();

    char decodeChar();

    double decodeDouble();

    int decodeEnum(SerialDescriptor serialDescriptor);

    float decodeFloat();

    Decoder decodeInline(SerialDescriptor serialDescriptor);

    int decodeInt();

    long decodeLong();

    boolean decodeNotNullMark();

    Void decodeNull();

    <T> T decodeSerializableValue(DeserializationStrategy<? extends T> deserializationStrategy);

    short decodeShort();

    String decodeString();

    /* compiled from: Decoding.kt */
    /* loaded from: classes4.dex */
    public static final class DefaultImpls {
        public static <T> T decodeSerializableValue(Decoder decoder, DeserializationStrategy<? extends T> deserializer) {
            Intrinsics.checkNotNullParameter(deserializer, "deserializer");
            return deserializer.deserialize(decoder);
        }
    }
}
