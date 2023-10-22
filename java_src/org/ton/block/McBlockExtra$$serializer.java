package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.UnknownFieldException;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.BooleanSerializer;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import org.ton.hashmap.HashMapE;
import org.ton.hashmap.HashmapAugE;
import org.ton.tlb.CellRef;
/* compiled from: McBlockExtra.kt */
/* loaded from: classes6.dex */
public final class McBlockExtra$$serializer implements GeneratedSerializer<McBlockExtra> {
    public static final McBlockExtra$$serializer INSTANCE;
    private static final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;

    static {
        McBlockExtra$$serializer mcBlockExtra$$serializer = new McBlockExtra$$serializer();
        INSTANCE = mcBlockExtra$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("masterchain_block_extra", mcBlockExtra$$serializer, 5);
        pluginGeneratedSerialDescriptor.addElement("key_block", false);
        pluginGeneratedSerialDescriptor.addElement("shard_hases", false);
        pluginGeneratedSerialDescriptor.addElement("shard_fees", false);
        pluginGeneratedSerialDescriptor.addElement("r1", false);
        pluginGeneratedSerialDescriptor.addElement("config", false);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private McBlockExtra$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        KSerializer<?>[] kSerializerArr;
        kSerializerArr = McBlockExtra.$childSerializers;
        return new KSerializer[]{BooleanSerializer.INSTANCE, kSerializerArr[1], kSerializerArr[2], kSerializerArr[3], BuiltinSerializersKt.getNullable(ConfigParams$$serializer.INSTANCE)};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public McBlockExtra deserialize(Decoder decoder) {
        KSerializer[] kSerializerArr;
        Object obj;
        boolean z;
        int i;
        Object obj2;
        Object obj3;
        Object obj4;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor2);
        kSerializerArr = McBlockExtra.$childSerializers;
        if (beginStructure.decodeSequentially()) {
            z = beginStructure.decodeBooleanElement(descriptor2, 0);
            obj2 = beginStructure.decodeSerializableElement(descriptor2, 1, kSerializerArr[1], null);
            obj3 = beginStructure.decodeSerializableElement(descriptor2, 2, kSerializerArr[2], null);
            obj4 = beginStructure.decodeSerializableElement(descriptor2, 3, kSerializerArr[3], null);
            obj = beginStructure.decodeNullableSerializableElement(descriptor2, 4, ConfigParams$$serializer.INSTANCE, null);
            i = 31;
        } else {
            Object obj5 = null;
            Object obj6 = null;
            Object obj7 = null;
            obj = null;
            z = false;
            int i2 = 0;
            boolean z2 = true;
            while (z2) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                if (decodeElementIndex == -1) {
                    z2 = false;
                } else if (decodeElementIndex == 0) {
                    z = beginStructure.decodeBooleanElement(descriptor2, 0);
                    i2 |= 1;
                } else if (decodeElementIndex == 1) {
                    obj5 = beginStructure.decodeSerializableElement(descriptor2, 1, kSerializerArr[1], obj5);
                    i2 |= 2;
                } else if (decodeElementIndex == 2) {
                    obj6 = beginStructure.decodeSerializableElement(descriptor2, 2, kSerializerArr[2], obj6);
                    i2 |= 4;
                } else if (decodeElementIndex == 3) {
                    obj7 = beginStructure.decodeSerializableElement(descriptor2, 3, kSerializerArr[3], obj7);
                    i2 |= 8;
                } else if (decodeElementIndex != 4) {
                    throw new UnknownFieldException(decodeElementIndex);
                } else {
                    obj = beginStructure.decodeNullableSerializableElement(descriptor2, 4, ConfigParams$$serializer.INSTANCE, obj);
                    i2 |= 16;
                }
            }
            i = i2;
            obj2 = obj5;
            obj3 = obj6;
            obj4 = obj7;
        }
        beginStructure.endStructure(descriptor2);
        return new McBlockExtra(i, z, (HashMapE) obj2, (HashmapAugE) obj3, (CellRef) obj4, (ConfigParams) obj, null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, McBlockExtra value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder beginStructure = encoder.beginStructure(descriptor2);
        McBlockExtra.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
