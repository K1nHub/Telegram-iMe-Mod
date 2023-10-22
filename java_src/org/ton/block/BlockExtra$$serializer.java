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
import org.ton.tlb.CellRef;
/* compiled from: BlockExtra.kt */
/* loaded from: classes6.dex */
public final class BlockExtra$$serializer implements GeneratedSerializer<BlockExtra> {
    public static final BlockExtra$$serializer INSTANCE;
    private static final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;

    static {
        BlockExtra$$serializer blockExtra$$serializer = new BlockExtra$$serializer();
        INSTANCE = blockExtra$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("block_extra", blockExtra$$serializer, 6);
        pluginGeneratedSerialDescriptor.addElement("in_msg_descr", false);
        pluginGeneratedSerialDescriptor.addElement("out_msg_descr", false);
        pluginGeneratedSerialDescriptor.addElement("account_blocks", false);
        pluginGeneratedSerialDescriptor.addElement("rand_seed", false);
        pluginGeneratedSerialDescriptor.addElement("created_by", false);
        pluginGeneratedSerialDescriptor.addElement("custom", false);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private BlockExtra$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        KSerializer<?>[] kSerializerArr;
        kSerializerArr = BlockExtra.$childSerializers;
        FiftHexBitStringSerializer fiftHexBitStringSerializer = FiftHexBitStringSerializer.INSTANCE;
        return new KSerializer[]{kSerializerArr[0], kSerializerArr[1], kSerializerArr[2], fiftHexBitStringSerializer, fiftHexBitStringSerializer, kSerializerArr[5]};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public BlockExtra deserialize(Decoder decoder) {
        KSerializer[] kSerializerArr;
        Object obj;
        int i;
        Object obj2;
        Object obj3;
        Object obj4;
        Object obj5;
        Object obj6;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor2);
        kSerializerArr = BlockExtra.$childSerializers;
        int i2 = 3;
        Object obj7 = null;
        if (beginStructure.decodeSequentially()) {
            obj2 = beginStructure.decodeSerializableElement(descriptor2, 0, kSerializerArr[0], null);
            obj3 = beginStructure.decodeSerializableElement(descriptor2, 1, kSerializerArr[1], null);
            Object decodeSerializableElement = beginStructure.decodeSerializableElement(descriptor2, 2, kSerializerArr[2], null);
            FiftHexBitStringSerializer fiftHexBitStringSerializer = FiftHexBitStringSerializer.INSTANCE;
            obj4 = beginStructure.decodeSerializableElement(descriptor2, 3, fiftHexBitStringSerializer, null);
            obj5 = beginStructure.decodeSerializableElement(descriptor2, 4, fiftHexBitStringSerializer, null);
            obj6 = beginStructure.decodeSerializableElement(descriptor2, 5, kSerializerArr[5], null);
            obj = decodeSerializableElement;
            i = 63;
        } else {
            Object obj8 = null;
            obj = null;
            Object obj9 = null;
            Object obj10 = null;
            Object obj11 = null;
            int i3 = 0;
            boolean z = true;
            while (z) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                switch (decodeElementIndex) {
                    case -1:
                        z = false;
                        continue;
                    case 0:
                        obj7 = beginStructure.decodeSerializableElement(descriptor2, 0, kSerializerArr[0], obj7);
                        i3 |= 1;
                        i2 = 3;
                        continue;
                    case 1:
                        obj8 = beginStructure.decodeSerializableElement(descriptor2, 1, kSerializerArr[1], obj8);
                        i3 |= 2;
                        break;
                    case 2:
                        obj = beginStructure.decodeSerializableElement(descriptor2, 2, kSerializerArr[2], obj);
                        i3 |= 4;
                        break;
                    case 3:
                        obj9 = beginStructure.decodeSerializableElement(descriptor2, i2, FiftHexBitStringSerializer.INSTANCE, obj9);
                        i3 |= 8;
                        break;
                    case 4:
                        obj10 = beginStructure.decodeSerializableElement(descriptor2, 4, FiftHexBitStringSerializer.INSTANCE, obj10);
                        i3 |= 16;
                        break;
                    case 5:
                        obj11 = beginStructure.decodeSerializableElement(descriptor2, 5, kSerializerArr[5], obj11);
                        i3 |= 32;
                        break;
                    default:
                        throw new UnknownFieldException(decodeElementIndex);
                }
            }
            i = i3;
            obj2 = obj7;
            obj3 = obj8;
            obj4 = obj9;
            obj5 = obj10;
            obj6 = obj11;
        }
        beginStructure.endStructure(descriptor2);
        return new BlockExtra(i, (CellRef) obj2, (CellRef) obj3, (CellRef) obj, (BitString) obj4, (BitString) obj5, (Maybe) obj6, null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, BlockExtra value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder beginStructure = encoder.beginStructure(descriptor2);
        BlockExtra.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
