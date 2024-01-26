package kotlinx.serialization.internal;

import kotlin.UByte;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
/* compiled from: ValueClasses.kt */
/* loaded from: classes4.dex */
public final class UByteSerializer implements KSerializer<UByte> {
    public static final UByteSerializer INSTANCE = new UByteSerializer();
    private static final SerialDescriptor descriptor = InlineClassDescriptorKt.InlinePrimitiveDescriptor("kotlin.UByte", BuiltinSerializersKt.serializer(ByteCompanionObject.INSTANCE));

    private UByteSerializer() {
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public /* bridge */ /* synthetic */ Object deserialize(Decoder decoder) {
        return UByte.m1952boximpl(m2139deserializeWa3L5BU(decoder));
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public /* bridge */ /* synthetic */ void serialize(Encoder encoder, Object obj) {
        m2140serializeEK6454(encoder, ((UByte) obj).m1957unboximpl());
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    /* renamed from: serialize-EK-6454  reason: not valid java name */
    public void m2140serializeEK6454(Encoder encoder, byte b) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        encoder.encodeInline(getDescriptor()).encodeByte(b);
    }

    /* renamed from: deserialize-Wa3L5BU  reason: not valid java name */
    public byte m2139deserializeWa3L5BU(Decoder decoder) {
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        return UByte.m1953constructorimpl(decoder.decodeInline(getDescriptor()).decodeByte());
    }
}
