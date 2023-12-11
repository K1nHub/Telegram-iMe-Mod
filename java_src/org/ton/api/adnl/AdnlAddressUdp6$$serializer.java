package org.ton.api.adnl;

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
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
/* compiled from: AdnlAddress.kt */
/* loaded from: classes6.dex */
public final class AdnlAddressUdp6$$serializer implements GeneratedSerializer<AdnlAddressUdp6> {
    public static final AdnlAddressUdp6$$serializer INSTANCE;
    private static final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;

    static {
        AdnlAddressUdp6$$serializer adnlAddressUdp6$$serializer = new AdnlAddressUdp6$$serializer();
        INSTANCE = adnlAddressUdp6$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("adnl.address.udp6", adnlAddressUdp6$$serializer, 2);
        pluginGeneratedSerialDescriptor.addElement("ip", false);
        pluginGeneratedSerialDescriptor.addElement("port", false);
        pluginGeneratedSerialDescriptor.pushClassAnnotation(new C7497x63816b8c("@type"));
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private AdnlAddressUdp6$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        return new KSerializer[]{ByteArraySerializer.INSTANCE, IntSerializer.INSTANCE};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public AdnlAddressUdp6 deserialize(Decoder decoder) {
        Object obj;
        int i;
        int i2;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor2);
        if (beginStructure.decodeSequentially()) {
            obj = beginStructure.decodeSerializableElement(descriptor2, 0, ByteArraySerializer.INSTANCE, null);
            i = beginStructure.decodeIntElement(descriptor2, 1);
            i2 = 3;
        } else {
            obj = null;
            int i3 = 0;
            int i4 = 0;
            boolean z = true;
            while (z) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                if (decodeElementIndex == -1) {
                    z = false;
                } else if (decodeElementIndex == 0) {
                    obj = beginStructure.decodeSerializableElement(descriptor2, 0, ByteArraySerializer.INSTANCE, obj);
                    i4 |= 1;
                } else if (decodeElementIndex != 1) {
                    throw new UnknownFieldException(decodeElementIndex);
                } else {
                    i3 = beginStructure.decodeIntElement(descriptor2, 1);
                    i4 |= 2;
                }
            }
            i = i3;
            i2 = i4;
        }
        beginStructure.endStructure(descriptor2);
        return new AdnlAddressUdp6(i2, (byte[]) obj, i, null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, AdnlAddressUdp6 value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder beginStructure = encoder.beginStructure(descriptor2);
        AdnlAddressUdp6.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
