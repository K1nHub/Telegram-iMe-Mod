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
/* compiled from: AddrVar.kt */
/* loaded from: classes6.dex */
public final class AddrVar$$serializer implements GeneratedSerializer<AddrVar> {
    public static final AddrVar$$serializer INSTANCE;
    private static final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;

    static {
        AddrVar$$serializer addrVar$$serializer = new AddrVar$$serializer();
        INSTANCE = addrVar$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("addr_var", addrVar$$serializer, 4);
        pluginGeneratedSerialDescriptor.addElement("anycast", false);
        pluginGeneratedSerialDescriptor.addElement("addr_len", false);
        pluginGeneratedSerialDescriptor.addElement("workchain_id", false);
        pluginGeneratedSerialDescriptor.addElement("address", false);
        pluginGeneratedSerialDescriptor.pushClassAnnotation(new C7725x1f70da89("@type"));
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private AddrVar$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        KSerializer<?>[] kSerializerArr;
        kSerializerArr = AddrVar.$childSerializers;
        IntSerializer intSerializer = IntSerializer.INSTANCE;
        return new KSerializer[]{kSerializerArr[0], intSerializer, intSerializer, FiftHexBitStringSerializer.INSTANCE};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public AddrVar deserialize(Decoder decoder) {
        KSerializer[] kSerializerArr;
        Object obj;
        int i;
        Object obj2;
        int i2;
        int i3;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor2);
        kSerializerArr = AddrVar.$childSerializers;
        Object obj3 = null;
        if (beginStructure.decodeSequentially()) {
            obj2 = beginStructure.decodeSerializableElement(descriptor2, 0, kSerializerArr[0], null);
            int decodeIntElement = beginStructure.decodeIntElement(descriptor2, 1);
            int decodeIntElement2 = beginStructure.decodeIntElement(descriptor2, 2);
            obj = beginStructure.decodeSerializableElement(descriptor2, 3, FiftHexBitStringSerializer.INSTANCE, null);
            i2 = 15;
            i3 = decodeIntElement2;
            i = decodeIntElement;
        } else {
            obj = null;
            boolean z = true;
            int i4 = 0;
            int i5 = 0;
            int i6 = 0;
            while (z) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                if (decodeElementIndex == -1) {
                    z = false;
                } else if (decodeElementIndex == 0) {
                    obj3 = beginStructure.decodeSerializableElement(descriptor2, 0, kSerializerArr[0], obj3);
                    i5 |= 1;
                } else if (decodeElementIndex == 1) {
                    i4 = beginStructure.decodeIntElement(descriptor2, 1);
                    i5 |= 2;
                } else if (decodeElementIndex == 2) {
                    i6 = beginStructure.decodeIntElement(descriptor2, 2);
                    i5 |= 4;
                } else if (decodeElementIndex != 3) {
                    throw new UnknownFieldException(decodeElementIndex);
                } else {
                    obj = beginStructure.decodeSerializableElement(descriptor2, 3, FiftHexBitStringSerializer.INSTANCE, obj);
                    i5 |= 8;
                }
            }
            i = i4;
            obj2 = obj3;
            i2 = i5;
            i3 = i6;
        }
        beginStructure.endStructure(descriptor2);
        return new AddrVar(i2, (Maybe) obj2, i, i3, (BitString) obj, null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, AddrVar value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder beginStructure = encoder.beginStructure(descriptor2);
        AddrVar.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
