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
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import org.ton.bitstring.BitString;
import org.ton.bitstring.FiftHexBitStringSerializer;
/* compiled from: CryptoSignaturePair.kt */
/* loaded from: classes6.dex */
public final class CryptoSignaturePair$$serializer implements GeneratedSerializer<CryptoSignaturePair> {
    public static final CryptoSignaturePair$$serializer INSTANCE;
    private static final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;

    static {
        CryptoSignaturePair$$serializer cryptoSignaturePair$$serializer = new CryptoSignaturePair$$serializer();
        INSTANCE = cryptoSignaturePair$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("sig_pair", cryptoSignaturePair$$serializer, 2);
        pluginGeneratedSerialDescriptor.addElement("node_id_short", false);
        pluginGeneratedSerialDescriptor.addElement("sign", false);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private CryptoSignaturePair$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        KSerializer<?>[] kSerializerArr;
        kSerializerArr = CryptoSignaturePair.$childSerializers;
        return new KSerializer[]{FiftHexBitStringSerializer.INSTANCE, kSerializerArr[1]};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public CryptoSignaturePair deserialize(Decoder decoder) {
        KSerializer[] kSerializerArr;
        Object obj;
        Object obj2;
        int i;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor2);
        kSerializerArr = CryptoSignaturePair.$childSerializers;
        if (beginStructure.decodeSequentially()) {
            obj2 = beginStructure.decodeSerializableElement(descriptor2, 0, FiftHexBitStringSerializer.INSTANCE, null);
            obj = beginStructure.decodeSerializableElement(descriptor2, 1, kSerializerArr[1], null);
            i = 3;
        } else {
            Object obj3 = null;
            Object obj4 = null;
            int i2 = 0;
            boolean z = true;
            while (z) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                if (decodeElementIndex == -1) {
                    z = false;
                } else if (decodeElementIndex == 0) {
                    obj4 = beginStructure.decodeSerializableElement(descriptor2, 0, FiftHexBitStringSerializer.INSTANCE, obj4);
                    i2 |= 1;
                } else if (decodeElementIndex != 1) {
                    throw new UnknownFieldException(decodeElementIndex);
                } else {
                    obj3 = beginStructure.decodeSerializableElement(descriptor2, 1, kSerializerArr[1], obj3);
                    i2 |= 2;
                }
            }
            obj = obj3;
            obj2 = obj4;
            i = i2;
        }
        beginStructure.endStructure(descriptor2);
        return new CryptoSignaturePair(i, (BitString) obj2, (CryptoSignature) obj, null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, CryptoSignaturePair value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder beginStructure = encoder.beginStructure(descriptor2);
        CryptoSignaturePair.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
