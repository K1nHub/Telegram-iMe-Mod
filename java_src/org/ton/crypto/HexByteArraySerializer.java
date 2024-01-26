package org.ton.crypto;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.ByteArraySerializer;
/* compiled from: hex.kt */
/* loaded from: classes6.dex */
public final class HexByteArraySerializer implements KSerializer<byte[]> {
    public static final HexByteArraySerializer INSTANCE = new HexByteArraySerializer();
    private static final SerialDescriptor descriptor = ByteArraySerializer.INSTANCE.getDescriptor();

    private HexByteArraySerializer() {
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public byte[] deserialize(Decoder decoder) {
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        return HexKt.hex(decoder.decodeString());
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, byte[] value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        encoder.encodeString(HexKt.hex(value));
    }
}
