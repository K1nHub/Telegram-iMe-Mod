package org.ton.api.adnl;

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
/* compiled from: AdnlAddress.kt */
/* loaded from: classes6.dex */
public final class AdnlAddressUdp$$serializer implements GeneratedSerializer<AdnlAddressUdp> {
    public static final AdnlAddressUdp$$serializer INSTANCE;
    private static final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;

    static {
        AdnlAddressUdp$$serializer adnlAddressUdp$$serializer = new AdnlAddressUdp$$serializer();
        INSTANCE = adnlAddressUdp$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("adnl.address.udp", adnlAddressUdp$$serializer, 2);
        pluginGeneratedSerialDescriptor.addElement("ip", false);
        pluginGeneratedSerialDescriptor.addElement("port", false);
        pluginGeneratedSerialDescriptor.pushClassAnnotation(new C7424x63816b8c("@type"));
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private AdnlAddressUdp$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        IntSerializer intSerializer = IntSerializer.INSTANCE;
        return new KSerializer[]{intSerializer, intSerializer};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public AdnlAddressUdp deserialize(Decoder decoder) {
        int i;
        int i2;
        int i3;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor2);
        if (beginStructure.decodeSequentially()) {
            i = beginStructure.decodeIntElement(descriptor2, 0);
            i2 = beginStructure.decodeIntElement(descriptor2, 1);
            i3 = 3;
        } else {
            boolean z = true;
            i = 0;
            int i4 = 0;
            int i5 = 0;
            while (z) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                if (decodeElementIndex == -1) {
                    z = false;
                } else if (decodeElementIndex == 0) {
                    i = beginStructure.decodeIntElement(descriptor2, 0);
                    i5 |= 1;
                } else if (decodeElementIndex != 1) {
                    throw new UnknownFieldException(decodeElementIndex);
                } else {
                    i4 = beginStructure.decodeIntElement(descriptor2, 1);
                    i5 |= 2;
                }
            }
            i2 = i4;
            i3 = i5;
        }
        beginStructure.endStructure(descriptor2);
        return new AdnlAddressUdp(i3, i, i2, null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, AdnlAddressUdp value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder beginStructure = encoder.beginStructure(descriptor2);
        AdnlAddressUdp.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
