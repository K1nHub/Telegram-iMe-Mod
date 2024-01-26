package org.ton.crypto;

import kotlin.jvm.internal.Intrinsics;
import kotlin.p034io.encoding.Base64;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.ByteArraySerializer;
/* compiled from: base64.kt */
/* loaded from: classes6.dex */
public final class Base64ByteArraySerializer implements KSerializer<byte[]> {
    public static final Base64ByteArraySerializer INSTANCE = new Base64ByteArraySerializer();
    private static final SerialDescriptor descriptor = ByteArraySerializer.INSTANCE.getDescriptor();

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, byte[] value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        encoder.encodeString(Base64.encode$default(Base64.Default, value, 0, 0, 6, null));
    }

    private Base64ByteArraySerializer() {
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public byte[] deserialize(Decoder decoder) {
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        return Base64.decode$default(Base64.Default, decoder.decodeString(), 0, 0, 6, (Object) null);
    }
}
