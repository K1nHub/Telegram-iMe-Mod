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
import org.ton.hashmap.HashMapE;
/* compiled from: BlockCreateStatsRegular.kt */
/* loaded from: classes6.dex */
public final class BlockCreateStatsRegular$$serializer implements GeneratedSerializer<BlockCreateStatsRegular> {
    public static final BlockCreateStatsRegular$$serializer INSTANCE;
    private static final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;

    static {
        BlockCreateStatsRegular$$serializer blockCreateStatsRegular$$serializer = new BlockCreateStatsRegular$$serializer();
        INSTANCE = blockCreateStatsRegular$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("block_create_stats", blockCreateStatsRegular$$serializer, 1);
        pluginGeneratedSerialDescriptor.addElement("counters", false);
        pluginGeneratedSerialDescriptor.pushClassAnnotation(new C7732x637df179("@type"));
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private BlockCreateStatsRegular$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        KSerializer<?>[] kSerializerArr;
        kSerializerArr = BlockCreateStatsRegular.$childSerializers;
        return new KSerializer[]{kSerializerArr[0]};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public BlockCreateStatsRegular deserialize(Decoder decoder) {
        KSerializer[] kSerializerArr;
        Object obj;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor2);
        kSerializerArr = BlockCreateStatsRegular.$childSerializers;
        int i = 1;
        if (beginStructure.decodeSequentially()) {
            obj = beginStructure.decodeSerializableElement(descriptor2, 0, kSerializerArr[0], null);
        } else {
            Object obj2 = null;
            int i2 = 0;
            while (i != 0) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                if (decodeElementIndex == -1) {
                    i = 0;
                } else if (decodeElementIndex != 0) {
                    throw new UnknownFieldException(decodeElementIndex);
                } else {
                    obj2 = beginStructure.decodeSerializableElement(descriptor2, 0, kSerializerArr[0], obj2);
                    i2 |= 1;
                }
            }
            obj = obj2;
            i = i2;
        }
        beginStructure.endStructure(descriptor2);
        return new BlockCreateStatsRegular(i, (HashMapE) obj, null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, BlockCreateStatsRegular value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder beginStructure = encoder.beginStructure(descriptor2);
        beginStructure.encodeSerializableElement(descriptor2, 0, BlockCreateStatsRegular.$childSerializers[0], value.counters);
        beginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
