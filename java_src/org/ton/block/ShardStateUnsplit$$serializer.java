package org.ton.block;

import kotlin.UInt;
import kotlin.ULong;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.UnknownFieldException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.BooleanSerializer;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.UIntSerializer;
import kotlinx.serialization.internal.ULongSerializer;
import org.ton.tlb.CellRef;
/* compiled from: ShardStateUnsplit.kt */
/* loaded from: classes6.dex */
public final class ShardStateUnsplit$$serializer implements GeneratedSerializer<ShardStateUnsplit> {
    public static final ShardStateUnsplit$$serializer INSTANCE;
    private static final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;

    static {
        ShardStateUnsplit$$serializer shardStateUnsplit$$serializer = new ShardStateUnsplit$$serializer();
        INSTANCE = shardStateUnsplit$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("shard_state", shardStateUnsplit$$serializer, 12);
        pluginGeneratedSerialDescriptor.addElement("global_id", false);
        pluginGeneratedSerialDescriptor.addElement("shard_id", false);
        pluginGeneratedSerialDescriptor.addElement("seq_no", false);
        pluginGeneratedSerialDescriptor.addElement("vert_seq_no", false);
        pluginGeneratedSerialDescriptor.addElement("gen_utime", false);
        pluginGeneratedSerialDescriptor.addElement("gen_lt", false);
        pluginGeneratedSerialDescriptor.addElement("min_ref_mc_seqno", false);
        pluginGeneratedSerialDescriptor.addElement("out_msg_queue_info", false);
        pluginGeneratedSerialDescriptor.addElement("before_split", false);
        pluginGeneratedSerialDescriptor.addElement("accounts", false);
        pluginGeneratedSerialDescriptor.addElement("r1", false);
        pluginGeneratedSerialDescriptor.addElement("custom", false);
        pluginGeneratedSerialDescriptor.pushClassAnnotation(new C7788x50c509b1("@type"));
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private ShardStateUnsplit$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        KSerializer<?>[] kSerializerArr;
        kSerializerArr = ShardStateUnsplit.$childSerializers;
        IntSerializer intSerializer = IntSerializer.INSTANCE;
        UIntSerializer uIntSerializer = UIntSerializer.INSTANCE;
        return new KSerializer[]{intSerializer, ShardIdent$$serializer.INSTANCE, uIntSerializer, intSerializer, uIntSerializer, ULongSerializer.INSTANCE, uIntSerializer, kSerializerArr[7], BooleanSerializer.INSTANCE, kSerializerArr[9], kSerializerArr[10], kSerializerArr[11]};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public ShardStateUnsplit deserialize(Decoder decoder) {
        KSerializer[] kSerializerArr;
        Object obj;
        Object obj2;
        Object obj3;
        int i;
        Object obj4;
        Object obj5;
        Object obj6;
        Object obj7;
        Object obj8;
        boolean z;
        int i2;
        Object obj9;
        int i3;
        KSerializer[] kSerializerArr2;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor2);
        kSerializerArr = ShardStateUnsplit.$childSerializers;
        int i4 = 0;
        if (beginStructure.decodeSequentially()) {
            int decodeIntElement = beginStructure.decodeIntElement(descriptor2, 0);
            obj4 = beginStructure.decodeSerializableElement(descriptor2, 1, ShardIdent$$serializer.INSTANCE, null);
            UIntSerializer uIntSerializer = UIntSerializer.INSTANCE;
            obj3 = beginStructure.decodeSerializableElement(descriptor2, 2, uIntSerializer, null);
            int decodeIntElement2 = beginStructure.decodeIntElement(descriptor2, 3);
            Object decodeSerializableElement = beginStructure.decodeSerializableElement(descriptor2, 4, uIntSerializer, null);
            Object decodeSerializableElement2 = beginStructure.decodeSerializableElement(descriptor2, 5, ULongSerializer.INSTANCE, null);
            Object decodeSerializableElement3 = beginStructure.decodeSerializableElement(descriptor2, 6, uIntSerializer, null);
            Object decodeSerializableElement4 = beginStructure.decodeSerializableElement(descriptor2, 7, kSerializerArr[7], null);
            boolean decodeBooleanElement = beginStructure.decodeBooleanElement(descriptor2, 8);
            obj8 = beginStructure.decodeSerializableElement(descriptor2, 9, kSerializerArr[9], null);
            Object decodeSerializableElement5 = beginStructure.decodeSerializableElement(descriptor2, 10, kSerializerArr[10], null);
            obj7 = beginStructure.decodeSerializableElement(descriptor2, 11, kSerializerArr[11], null);
            i2 = decodeIntElement;
            obj5 = decodeSerializableElement3;
            i3 = 4095;
            obj6 = decodeSerializableElement5;
            z = decodeBooleanElement;
            obj9 = decodeSerializableElement4;
            i = decodeIntElement2;
            obj = decodeSerializableElement;
            obj2 = decodeSerializableElement2;
        } else {
            int i5 = 11;
            Object obj10 = null;
            Object obj11 = null;
            obj = null;
            Object obj12 = null;
            obj2 = null;
            obj3 = null;
            Object obj13 = null;
            Object obj14 = null;
            boolean z2 = true;
            i = 0;
            boolean z3 = false;
            obj4 = null;
            int i6 = 0;
            while (true) {
                int i7 = i6;
                if (z2) {
                    int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                    switch (decodeElementIndex) {
                        case -1:
                            z2 = false;
                            i6 = i7;
                            break;
                        case 0:
                            i4 |= 1;
                            i6 = beginStructure.decodeIntElement(descriptor2, 0);
                            kSerializerArr = kSerializerArr;
                            break;
                        case 1:
                            kSerializerArr2 = kSerializerArr;
                            obj4 = beginStructure.decodeSerializableElement(descriptor2, 1, ShardIdent$$serializer.INSTANCE, obj4);
                            i4 |= 2;
                            kSerializerArr = kSerializerArr2;
                            i6 = i7;
                            break;
                        case 2:
                            kSerializerArr2 = kSerializerArr;
                            obj3 = beginStructure.decodeSerializableElement(descriptor2, 2, UIntSerializer.INSTANCE, obj3);
                            i4 |= 4;
                            kSerializerArr = kSerializerArr2;
                            i6 = i7;
                            break;
                        case 3:
                            i = beginStructure.decodeIntElement(descriptor2, 3);
                            i4 |= 8;
                            i6 = i7;
                            break;
                        case 4:
                            obj = beginStructure.decodeSerializableElement(descriptor2, 4, UIntSerializer.INSTANCE, obj);
                            i4 |= 16;
                            i6 = i7;
                            break;
                        case 5:
                            obj2 = beginStructure.decodeSerializableElement(descriptor2, 5, ULongSerializer.INSTANCE, obj2);
                            i4 |= 32;
                            i6 = i7;
                            break;
                        case 6:
                            obj11 = beginStructure.decodeSerializableElement(descriptor2, 6, UIntSerializer.INSTANCE, obj11);
                            i4 |= 64;
                            i6 = i7;
                            break;
                        case 7:
                            obj10 = beginStructure.decodeSerializableElement(descriptor2, 7, kSerializerArr[7], obj10);
                            i4 |= 128;
                            i6 = i7;
                            break;
                        case 8:
                            z3 = beginStructure.decodeBooleanElement(descriptor2, 8);
                            i4 |= 256;
                            i6 = i7;
                            break;
                        case 9:
                            obj14 = beginStructure.decodeSerializableElement(descriptor2, 9, kSerializerArr[9], obj14);
                            i4 |= 512;
                            i6 = i7;
                            break;
                        case 10:
                            obj12 = beginStructure.decodeSerializableElement(descriptor2, 10, kSerializerArr[10], obj12);
                            i4 |= 1024;
                            i6 = i7;
                            break;
                        case 11:
                            obj13 = beginStructure.decodeSerializableElement(descriptor2, i5, kSerializerArr[i5], obj13);
                            i4 |= 2048;
                            i6 = i7;
                            continue;
                        default:
                            throw new UnknownFieldException(decodeElementIndex);
                    }
                    i5 = 11;
                } else {
                    obj5 = obj11;
                    obj6 = obj12;
                    obj7 = obj13;
                    obj8 = obj14;
                    z = z3;
                    i2 = i7;
                    obj9 = obj10;
                    i3 = i4;
                }
            }
        }
        beginStructure.endStructure(descriptor2);
        return new ShardStateUnsplit(i3, i2, (ShardIdent) obj4, (UInt) obj3, i, (UInt) obj, (ULong) obj2, (UInt) obj5, (CellRef) obj9, z, (CellRef) obj8, (CellRef) obj6, (Maybe) obj7, null, null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, ShardStateUnsplit value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder beginStructure = encoder.beginStructure(descriptor2);
        ShardStateUnsplit.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
