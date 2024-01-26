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
import org.ton.hashmap.HashmapAugE;
/* compiled from: OutMsgQueueInfo.kt */
/* loaded from: classes6.dex */
public final class OutMsgQueueInfo$$serializer implements GeneratedSerializer<OutMsgQueueInfo> {
    public static final OutMsgQueueInfo$$serializer INSTANCE;
    private static final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;

    static {
        OutMsgQueueInfo$$serializer outMsgQueueInfo$$serializer = new OutMsgQueueInfo$$serializer();
        INSTANCE = outMsgQueueInfo$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.ton.block.OutMsgQueueInfo", outMsgQueueInfo$$serializer, 3);
        pluginGeneratedSerialDescriptor.addElement("out_queue", false);
        pluginGeneratedSerialDescriptor.addElement("proc_info", false);
        pluginGeneratedSerialDescriptor.addElement("ihr_pending", false);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private OutMsgQueueInfo$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        KSerializer<?>[] kSerializerArr;
        kSerializerArr = OutMsgQueueInfo.$childSerializers;
        return new KSerializer[]{kSerializerArr[0], kSerializerArr[1], kSerializerArr[2]};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public OutMsgQueueInfo deserialize(Decoder decoder) {
        KSerializer[] kSerializerArr;
        Object obj;
        int i;
        Object obj2;
        Object obj3;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor2);
        kSerializerArr = OutMsgQueueInfo.$childSerializers;
        if (beginStructure.decodeSequentially()) {
            obj = beginStructure.decodeSerializableElement(descriptor2, 0, kSerializerArr[0], null);
            obj2 = beginStructure.decodeSerializableElement(descriptor2, 1, kSerializerArr[1], null);
            obj3 = beginStructure.decodeSerializableElement(descriptor2, 2, kSerializerArr[2], null);
            i = 7;
        } else {
            obj = null;
            Object obj4 = null;
            Object obj5 = null;
            int i2 = 0;
            boolean z = true;
            while (z) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                if (decodeElementIndex == -1) {
                    z = false;
                } else if (decodeElementIndex == 0) {
                    obj = beginStructure.decodeSerializableElement(descriptor2, 0, kSerializerArr[0], obj);
                    i2 |= 1;
                } else if (decodeElementIndex == 1) {
                    obj4 = beginStructure.decodeSerializableElement(descriptor2, 1, kSerializerArr[1], obj4);
                    i2 |= 2;
                } else if (decodeElementIndex != 2) {
                    throw new UnknownFieldException(decodeElementIndex);
                } else {
                    obj5 = beginStructure.decodeSerializableElement(descriptor2, 2, kSerializerArr[2], obj5);
                    i2 |= 4;
                }
            }
            i = i2;
            obj2 = obj4;
            obj3 = obj5;
        }
        beginStructure.endStructure(descriptor2);
        return new OutMsgQueueInfo(i, (HashmapAugE) obj, (HashMapE) obj2, (HashMapE) obj3, null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, OutMsgQueueInfo value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder beginStructure = encoder.beginStructure(descriptor2);
        OutMsgQueueInfo.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
