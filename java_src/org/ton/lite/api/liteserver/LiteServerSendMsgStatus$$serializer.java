package org.ton.lite.api.liteserver;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.UnknownFieldException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
/* compiled from: LiteServerSendMsgStatus.kt */
/* loaded from: classes6.dex */
public final class LiteServerSendMsgStatus$$serializer implements GeneratedSerializer<LiteServerSendMsgStatus> {
    public static final LiteServerSendMsgStatus$$serializer INSTANCE;
    private static final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;

    static {
        LiteServerSendMsgStatus$$serializer liteServerSendMsgStatus$$serializer = new LiteServerSendMsgStatus$$serializer();
        INSTANCE = liteServerSendMsgStatus$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("liteServer.sendMsgStatus", liteServerSendMsgStatus$$serializer, 1);
        pluginGeneratedSerialDescriptor.addElement("status", false);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private LiteServerSendMsgStatus$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        return new KSerializer[]{IntSerializer.INSTANCE};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public LiteServerSendMsgStatus deserialize(Decoder decoder) {
        int i;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor2);
        int i2 = 1;
        if (beginStructure.decodeSequentially()) {
            i = beginStructure.decodeIntElement(descriptor2, 0);
        } else {
            i = 0;
            int i3 = 0;
            while (i2 != 0) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                if (decodeElementIndex == -1) {
                    i2 = 0;
                } else if (decodeElementIndex != 0) {
                    throw new UnknownFieldException(decodeElementIndex);
                } else {
                    i = beginStructure.decodeIntElement(descriptor2, 0);
                    i3 |= 1;
                }
            }
            i2 = i3;
        }
        beginStructure.endStructure(descriptor2);
        return new LiteServerSendMsgStatus(i2, i, null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, LiteServerSendMsgStatus value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder beginStructure = encoder.beginStructure(descriptor2);
        beginStructure.encodeIntElement(descriptor2, 0, value.status);
        beginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
