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
import org.ton.tlb.CellRef;
/* compiled from: McStateExtra.kt */
/* loaded from: classes6.dex */
public final class McStateExtra$$serializer implements GeneratedSerializer<McStateExtra> {
    public static final McStateExtra$$serializer INSTANCE;
    private static final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;

    static {
        McStateExtra$$serializer mcStateExtra$$serializer = new McStateExtra$$serializer();
        INSTANCE = mcStateExtra$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("masterchain_state_extra", mcStateExtra$$serializer, 4);
        pluginGeneratedSerialDescriptor.addElement("shard_hashes", false);
        pluginGeneratedSerialDescriptor.addElement("config", false);
        pluginGeneratedSerialDescriptor.addElement("r1", false);
        pluginGeneratedSerialDescriptor.addElement("global_balance", false);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private McStateExtra$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        KSerializer<?>[] kSerializerArr;
        kSerializerArr = McStateExtra.$childSerializers;
        return new KSerializer[]{ShardHashes$$serializer.INSTANCE, ConfigParams$$serializer.INSTANCE, kSerializerArr[2], CurrencyCollection$$serializer.INSTANCE};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public McStateExtra deserialize(Decoder decoder) {
        KSerializer[] kSerializerArr;
        Object obj;
        Object obj2;
        Object obj3;
        Object obj4;
        int i;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor2);
        kSerializerArr = McStateExtra.$childSerializers;
        if (beginStructure.decodeSequentially()) {
            obj2 = beginStructure.decodeSerializableElement(descriptor2, 0, ShardHashes$$serializer.INSTANCE, null);
            obj4 = beginStructure.decodeSerializableElement(descriptor2, 1, ConfigParams$$serializer.INSTANCE, null);
            obj = beginStructure.decodeSerializableElement(descriptor2, 2, kSerializerArr[2], null);
            obj3 = beginStructure.decodeSerializableElement(descriptor2, 3, CurrencyCollection$$serializer.INSTANCE, null);
            i = 15;
        } else {
            int i2 = 0;
            Object obj5 = null;
            Object obj6 = null;
            Object obj7 = null;
            Object obj8 = null;
            boolean z = true;
            while (z) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                if (decodeElementIndex == -1) {
                    z = false;
                } else if (decodeElementIndex == 0) {
                    obj6 = beginStructure.decodeSerializableElement(descriptor2, 0, ShardHashes$$serializer.INSTANCE, obj6);
                    i2 |= 1;
                } else if (decodeElementIndex == 1) {
                    obj8 = beginStructure.decodeSerializableElement(descriptor2, 1, ConfigParams$$serializer.INSTANCE, obj8);
                    i2 |= 2;
                } else if (decodeElementIndex == 2) {
                    obj5 = beginStructure.decodeSerializableElement(descriptor2, 2, kSerializerArr[2], obj5);
                    i2 |= 4;
                } else if (decodeElementIndex != 3) {
                    throw new UnknownFieldException(decodeElementIndex);
                } else {
                    obj7 = beginStructure.decodeSerializableElement(descriptor2, 3, CurrencyCollection$$serializer.INSTANCE, obj7);
                    i2 |= 8;
                }
            }
            obj = obj5;
            obj2 = obj6;
            obj3 = obj7;
            obj4 = obj8;
            i = i2;
        }
        beginStructure.endStructure(descriptor2);
        ShardHashes shardHashes = (ShardHashes) obj2;
        return new McStateExtra(i, shardHashes != null ? shardHashes.m5033unboximpl() : null, (ConfigParams) obj4, (CellRef) obj, (CurrencyCollection) obj3, null, null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, McStateExtra value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder beginStructure = encoder.beginStructure(descriptor2);
        McStateExtra.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
