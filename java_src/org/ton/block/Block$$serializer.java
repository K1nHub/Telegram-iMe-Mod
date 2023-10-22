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
import org.ton.tlb.CellRef;
/* compiled from: Block.kt */
/* loaded from: classes6.dex */
public final class Block$$serializer implements GeneratedSerializer<Block> {
    public static final Block$$serializer INSTANCE;
    private static final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;

    static {
        Block$$serializer block$$serializer = new Block$$serializer();
        INSTANCE = block$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("block", block$$serializer, 5);
        pluginGeneratedSerialDescriptor.addElement("global_id", false);
        pluginGeneratedSerialDescriptor.addElement("info", false);
        pluginGeneratedSerialDescriptor.addElement("value_flow", false);
        pluginGeneratedSerialDescriptor.addElement("state_update", false);
        pluginGeneratedSerialDescriptor.addElement("extra", false);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private Block$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        KSerializer<?>[] kSerializerArr;
        kSerializerArr = Block.$childSerializers;
        return new KSerializer[]{IntSerializer.INSTANCE, kSerializerArr[1], kSerializerArr[2], kSerializerArr[3], kSerializerArr[4]};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public Block deserialize(Decoder decoder) {
        KSerializer[] kSerializerArr;
        Object obj;
        int i;
        int i2;
        Object obj2;
        Object obj3;
        Object obj4;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor2);
        kSerializerArr = Block.$childSerializers;
        if (beginStructure.decodeSequentially()) {
            int decodeIntElement = beginStructure.decodeIntElement(descriptor2, 0);
            obj2 = beginStructure.decodeSerializableElement(descriptor2, 1, kSerializerArr[1], null);
            obj3 = beginStructure.decodeSerializableElement(descriptor2, 2, kSerializerArr[2], null);
            Object decodeSerializableElement = beginStructure.decodeSerializableElement(descriptor2, 3, kSerializerArr[3], null);
            obj4 = beginStructure.decodeSerializableElement(descriptor2, 4, kSerializerArr[4], null);
            i = 31;
            obj = decodeSerializableElement;
            i2 = decodeIntElement;
        } else {
            Object obj5 = null;
            Object obj6 = null;
            obj = null;
            Object obj7 = null;
            int i3 = 0;
            i = 0;
            boolean z = true;
            while (z) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                if (decodeElementIndex == -1) {
                    z = false;
                } else if (decodeElementIndex == 0) {
                    i3 = beginStructure.decodeIntElement(descriptor2, 0);
                    i |= 1;
                } else if (decodeElementIndex == 1) {
                    obj5 = beginStructure.decodeSerializableElement(descriptor2, 1, kSerializerArr[1], obj5);
                    i |= 2;
                } else if (decodeElementIndex == 2) {
                    obj6 = beginStructure.decodeSerializableElement(descriptor2, 2, kSerializerArr[2], obj6);
                    i |= 4;
                } else if (decodeElementIndex == 3) {
                    obj = beginStructure.decodeSerializableElement(descriptor2, 3, kSerializerArr[3], obj);
                    i |= 8;
                } else if (decodeElementIndex != 4) {
                    throw new UnknownFieldException(decodeElementIndex);
                } else {
                    obj7 = beginStructure.decodeSerializableElement(descriptor2, 4, kSerializerArr[4], obj7);
                    i |= 16;
                }
            }
            i2 = i3;
            obj2 = obj5;
            obj3 = obj6;
            obj4 = obj7;
        }
        beginStructure.endStructure(descriptor2);
        return new Block(i, i2, (CellRef) obj2, (CellRef) obj3, (CellRef) obj, (CellRef) obj4, null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, Block value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder beginStructure = encoder.beginStructure(descriptor2);
        Block.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
