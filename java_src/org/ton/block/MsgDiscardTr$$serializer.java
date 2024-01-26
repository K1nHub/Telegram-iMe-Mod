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
import org.ton.cell.Cell;
import org.ton.tlb.CellRef;
/* compiled from: MsgDiscardTr.kt */
/* loaded from: classes6.dex */
public final class MsgDiscardTr$$serializer implements GeneratedSerializer<MsgDiscardTr> {
    public static final MsgDiscardTr$$serializer INSTANCE;
    private static final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;

    static {
        MsgDiscardTr$$serializer msgDiscardTr$$serializer = new MsgDiscardTr$$serializer();
        INSTANCE = msgDiscardTr$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("msg_discard_tr", msgDiscardTr$$serializer, 4);
        pluginGeneratedSerialDescriptor.addElement("in_msg", false);
        pluginGeneratedSerialDescriptor.addElement("transaction_id", false);
        pluginGeneratedSerialDescriptor.addElement("fwd_fee", false);
        pluginGeneratedSerialDescriptor.addElement("proof_delivered", false);
        pluginGeneratedSerialDescriptor.pushClassAnnotation(new C7764x6f655aa4("@type"));
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private MsgDiscardTr$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        KSerializer<?>[] kSerializerArr;
        kSerializerArr = MsgDiscardTr.$childSerializers;
        return new KSerializer[]{kSerializerArr[0], ULongSerializer.INSTANCE, Coins$$serializer.INSTANCE, kSerializerArr[3]};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public MsgDiscardTr deserialize(Decoder decoder) {
        KSerializer[] kSerializerArr;
        Object obj;
        int i;
        Object obj2;
        Object obj3;
        Object obj4;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor2);
        kSerializerArr = MsgDiscardTr.$childSerializers;
        if (beginStructure.decodeSequentially()) {
            obj = beginStructure.decodeSerializableElement(descriptor2, 0, kSerializerArr[0], null);
            obj2 = beginStructure.decodeSerializableElement(descriptor2, 1, ULongSerializer.INSTANCE, null);
            obj3 = beginStructure.decodeSerializableElement(descriptor2, 2, Coins$$serializer.INSTANCE, null);
            obj4 = beginStructure.decodeSerializableElement(descriptor2, 3, kSerializerArr[3], null);
            i = 15;
        } else {
            obj = null;
            Object obj5 = null;
            Object obj6 = null;
            Object obj7 = null;
            boolean z = true;
            int i2 = 0;
            while (z) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                if (decodeElementIndex == -1) {
                    z = false;
                } else if (decodeElementIndex == 0) {
                    obj = beginStructure.decodeSerializableElement(descriptor2, 0, kSerializerArr[0], obj);
                    i2 |= 1;
                } else if (decodeElementIndex == 1) {
                    obj5 = beginStructure.decodeSerializableElement(descriptor2, 1, ULongSerializer.INSTANCE, obj5);
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
        return new MsgDiscardTr(i, (CellRef) obj, (ULong) obj2, (Coins) obj3, (Cell) obj4, null, null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, MsgDiscardTr value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder beginStructure = encoder.beginStructure(descriptor2);
        MsgDiscardTr.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
