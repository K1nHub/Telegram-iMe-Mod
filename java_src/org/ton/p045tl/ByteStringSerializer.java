package org.ton.p045tl;

import io.ktor.util.Base64Kt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.PrimitiveKind;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
/* compiled from: ByteString.kt */
/* renamed from: org.ton.tl.ByteStringSerializer */
/* loaded from: classes6.dex */
public final class ByteStringSerializer implements KSerializer<ByteString> {
    public static final ByteStringSerializer INSTANCE = new ByteStringSerializer();
    private static final SerialDescriptor descriptor = SerialDescriptorsKt.PrimitiveSerialDescriptor("ByteString", PrimitiveKind.STRING.INSTANCE);

    private ByteStringSerializer() {
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public ByteString deserialize(Decoder decoder) {
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        return new ByteString(Base64Kt.decodeBase64Bytes(decoder.decodeString()));
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, ByteString value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        encoder.encodeString(Base64Kt.encodeBase64(value.getData$ton_kotlin_tl()));
    }
}
