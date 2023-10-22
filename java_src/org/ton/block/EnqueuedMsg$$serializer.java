package org.ton.block;

import kotlin.ULong;
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
import kotlinx.serialization.internal.ULongSerializer;
import org.ton.tlb.CellRef;
/* compiled from: EnqueuedMsg.kt */
/* loaded from: classes6.dex */
public final class EnqueuedMsg$$serializer implements GeneratedSerializer<EnqueuedMsg> {
    public static final EnqueuedMsg$$serializer INSTANCE;
    private static final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;

    static {
        EnqueuedMsg$$serializer enqueuedMsg$$serializer = new EnqueuedMsg$$serializer();
        INSTANCE = enqueuedMsg$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.ton.block.EnqueuedMsg", enqueuedMsg$$serializer, 2);
        pluginGeneratedSerialDescriptor.addElement("enqueued_lt", false);
        pluginGeneratedSerialDescriptor.addElement("out_msg", false);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private EnqueuedMsg$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        KSerializer<?>[] kSerializerArr;
        kSerializerArr = EnqueuedMsg.$childSerializers;
        return new KSerializer[]{ULongSerializer.INSTANCE, kSerializerArr[1]};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public EnqueuedMsg deserialize(Decoder decoder) {
        KSerializer[] kSerializerArr;
        Object obj;
        int i;
        Object obj2;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor2);
        kSerializerArr = EnqueuedMsg.$childSerializers;
        if (beginStructure.decodeSequentially()) {
            obj = beginStructure.decodeSerializableElement(descriptor2, 0, ULongSerializer.INSTANCE, null);
            obj2 = beginStructure.decodeSerializableElement(descriptor2, 1, kSerializerArr[1], null);
            i = 3;
        } else {
            obj = null;
            Object obj3 = null;
            int i2 = 0;
            boolean z = true;
            while (z) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                if (decodeElementIndex == -1) {
                    z = false;
                } else if (decodeElementIndex == 0) {
                    obj = beginStructure.decodeSerializableElement(descriptor2, 0, ULongSerializer.INSTANCE, obj);
                    i2 |= 1;
                } else if (decodeElementIndex != 1) {
                    throw new UnknownFieldException(decodeElementIndex);
                } else {
                    obj3 = beginStructure.decodeSerializableElement(descriptor2, 1, kSerializerArr[1], obj3);
                    i2 |= 2;
                }
            }
            i = i2;
            obj2 = obj3;
        }
        beginStructure.endStructure(descriptor2);
        return new EnqueuedMsg(i, (ULong) obj, (CellRef) obj2, null, null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, EnqueuedMsg value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder beginStructure = encoder.beginStructure(descriptor2);
        EnqueuedMsg.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
