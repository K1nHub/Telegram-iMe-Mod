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
/* compiled from: MsgEnvelope.kt */
/* loaded from: classes6.dex */
public final class MsgEnvelope$$serializer implements GeneratedSerializer<MsgEnvelope> {
    public static final MsgEnvelope$$serializer INSTANCE;
    private static final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;

    static {
        MsgEnvelope$$serializer msgEnvelope$$serializer = new MsgEnvelope$$serializer();
        INSTANCE = msgEnvelope$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("msg_envelope", msgEnvelope$$serializer, 4);
        pluginGeneratedSerialDescriptor.addElement("cur_addr", false);
        pluginGeneratedSerialDescriptor.addElement("next_addr", false);
        pluginGeneratedSerialDescriptor.addElement("fwd_fee_remaining", false);
        pluginGeneratedSerialDescriptor.addElement("msg", false);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private MsgEnvelope$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        KSerializer<?>[] kSerializerArr;
        kSerializerArr = MsgEnvelope.$childSerializers;
        return new KSerializer[]{kSerializerArr[0], kSerializerArr[1], Coins$$serializer.INSTANCE, kSerializerArr[3]};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public MsgEnvelope deserialize(Decoder decoder) {
        KSerializer[] kSerializerArr;
        Object obj;
        int i;
        Object obj2;
        Object obj3;
        Object obj4;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor2);
        kSerializerArr = MsgEnvelope.$childSerializers;
        if (beginStructure.decodeSequentially()) {
            obj = beginStructure.decodeSerializableElement(descriptor2, 0, kSerializerArr[0], null);
            obj2 = beginStructure.decodeSerializableElement(descriptor2, 1, kSerializerArr[1], null);
            obj3 = beginStructure.decodeSerializableElement(descriptor2, 2, Coins$$serializer.INSTANCE, null);
            obj4 = beginStructure.decodeSerializableElement(descriptor2, 3, kSerializerArr[3], null);
            i = 15;
        } else {
            obj = null;
            Object obj5 = null;
            Object obj6 = null;
            Object obj7 = null;
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
                    obj5 = beginStructure.decodeSerializableElement(descriptor2, 1, kSerializerArr[1], obj5);
                    i2 |= 2;
                } else if (decodeElementIndex == 2) {
                    obj6 = beginStructure.decodeSerializableElement(descriptor2, 2, Coins$$serializer.INSTANCE, obj6);
                    i2 |= 4;
                } else if (decodeElementIndex != 3) {
                    throw new UnknownFieldException(decodeElementIndex);
                } else {
                    obj7 = beginStructure.decodeSerializableElement(descriptor2, 3, kSerializerArr[3], obj7);
                    i2 |= 8;
                }
            }
            i = i2;
            obj2 = obj5;
            obj3 = obj6;
            obj4 = obj7;
        }
        beginStructure.endStructure(descriptor2);
        return new MsgEnvelope(i, (IntermediateAddress) obj, (IntermediateAddress) obj2, (Coins) obj3, (CellRef) obj4, null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, MsgEnvelope value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder beginStructure = encoder.beginStructure(descriptor2);
        MsgEnvelope.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
