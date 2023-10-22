package org.ton.lite.api.liteserver.functions;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.UnknownFieldException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.ByteArraySerializer;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
/* compiled from: LiteServerSendMessage.kt */
/* loaded from: classes6.dex */
public final class LiteServerSendMessage$$serializer implements GeneratedSerializer<LiteServerSendMessage> {
    public static final LiteServerSendMessage$$serializer INSTANCE;
    private static final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;

    static {
        LiteServerSendMessage$$serializer liteServerSendMessage$$serializer = new LiteServerSendMessage$$serializer();
        INSTANCE = liteServerSendMessage$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("liteServer.sendMessage", liteServerSendMessage$$serializer, 1);
        pluginGeneratedSerialDescriptor.addElement(TtmlNode.TAG_BODY, false);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private LiteServerSendMessage$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        return new KSerializer[]{ByteArraySerializer.INSTANCE};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public LiteServerSendMessage deserialize(Decoder decoder) {
        Object obj;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor2);
        int i = 1;
        if (beginStructure.decodeSequentially()) {
            obj = beginStructure.decodeSerializableElement(descriptor2, 0, ByteArraySerializer.INSTANCE, null);
        } else {
            obj = null;
            int i2 = 0;
            while (i != 0) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                if (decodeElementIndex == -1) {
                    i = 0;
                } else if (decodeElementIndex != 0) {
                    throw new UnknownFieldException(decodeElementIndex);
                } else {
                    obj = beginStructure.decodeSerializableElement(descriptor2, 0, ByteArraySerializer.INSTANCE, obj);
                    i2 |= 1;
                }
            }
            i = i2;
        }
        beginStructure.endStructure(descriptor2);
        return new LiteServerSendMessage(i, (byte[]) obj, null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, LiteServerSendMessage value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder beginStructure = encoder.beginStructure(descriptor2);
        beginStructure.encodeSerializableElement(descriptor2, 0, ByteArraySerializer.INSTANCE, value.body);
        beginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
