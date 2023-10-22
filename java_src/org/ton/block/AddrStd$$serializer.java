package org.ton.block;

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
import org.ton.bitstring.BitString;
import org.ton.bitstring.FiftHexBitStringSerializer;
/* compiled from: AddrStd.kt */
/* loaded from: classes6.dex */
public final class AddrStd$$serializer implements GeneratedSerializer<AddrStd> {
    public static final AddrStd$$serializer INSTANCE;
    private static final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;

    static {
        AddrStd$$serializer addrStd$$serializer = new AddrStd$$serializer();
        INSTANCE = addrStd$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("addr_std", addrStd$$serializer, 3);
        pluginGeneratedSerialDescriptor.addElement("anycast", false);
        pluginGeneratedSerialDescriptor.addElement("workchainId", false);
        pluginGeneratedSerialDescriptor.addElement("address", false);
        pluginGeneratedSerialDescriptor.pushClassAnnotation(new C7459xaf8cfd0d("@type"));
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private AddrStd$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        KSerializer<?>[] kSerializerArr;
        kSerializerArr = AddrStd.$childSerializers;
        return new KSerializer[]{kSerializerArr[0], IntSerializer.INSTANCE, FiftHexBitStringSerializer.INSTANCE};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public AddrStd deserialize(Decoder decoder) {
        KSerializer[] kSerializerArr;
        Object obj;
        int i;
        Object obj2;
        int i2;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor2);
        kSerializerArr = AddrStd.$childSerializers;
        Object obj3 = null;
        if (beginStructure.decodeSequentially()) {
            obj2 = beginStructure.decodeSerializableElement(descriptor2, 0, kSerializerArr[0], null);
            i = beginStructure.decodeIntElement(descriptor2, 1);
            obj = beginStructure.decodeSerializableElement(descriptor2, 2, FiftHexBitStringSerializer.INSTANCE, null);
            i2 = 7;
        } else {
            obj = null;
            boolean z = true;
            int i3 = 0;
            int i4 = 0;
            while (z) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                if (decodeElementIndex == -1) {
                    z = false;
                } else if (decodeElementIndex == 0) {
                    obj3 = beginStructure.decodeSerializableElement(descriptor2, 0, kSerializerArr[0], obj3);
                    i4 |= 1;
                } else if (decodeElementIndex == 1) {
                    i3 = beginStructure.decodeIntElement(descriptor2, 1);
                    i4 |= 2;
                } else if (decodeElementIndex != 2) {
                    throw new UnknownFieldException(decodeElementIndex);
                } else {
                    obj = beginStructure.decodeSerializableElement(descriptor2, 2, FiftHexBitStringSerializer.INSTANCE, obj);
                    i4 |= 4;
                }
            }
            i = i3;
            obj2 = obj3;
            i2 = i4;
        }
        beginStructure.endStructure(descriptor2);
        return new AddrStd(i2, (Maybe) obj2, i, (BitString) obj, null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, AddrStd value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder beginStructure = encoder.beginStructure(descriptor2);
        AddrStd.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
