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
import org.telegram.messenger.LiteMode;
import org.ton.bitstring.BitString;
import org.ton.bitstring.FiftHexBitStringSerializer;
import org.ton.tlb.CellRef;
/* compiled from: ShardDescr.kt */
/* loaded from: classes6.dex */
public final class ShardDescrNew$$serializer implements GeneratedSerializer<ShardDescrNew> {
    public static final ShardDescrNew$$serializer INSTANCE;
    private static final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;

    static {
        ShardDescrNew$$serializer shardDescrNew$$serializer = new ShardDescrNew$$serializer();
        INSTANCE = shardDescrNew$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.ton.block.ShardDescrNew", shardDescrNew$$serializer, 18);
        pluginGeneratedSerialDescriptor.addElement("seq_no", false);
        pluginGeneratedSerialDescriptor.addElement("reg_mc_seqno", false);
        pluginGeneratedSerialDescriptor.addElement("start_lt", false);
        pluginGeneratedSerialDescriptor.addElement("end_lt", false);
        pluginGeneratedSerialDescriptor.addElement("root_hash", false);
        pluginGeneratedSerialDescriptor.addElement("file_hash", false);
        pluginGeneratedSerialDescriptor.addElement("before_split", false);
        pluginGeneratedSerialDescriptor.addElement("before_merge", false);
        pluginGeneratedSerialDescriptor.addElement("want_split", false);
        pluginGeneratedSerialDescriptor.addElement("want_merge", false);
        pluginGeneratedSerialDescriptor.addElement("nx_cc_updated", false);
        pluginGeneratedSerialDescriptor.addElement("flags", false);
        pluginGeneratedSerialDescriptor.addElement("next_catchain_seqno", false);
        pluginGeneratedSerialDescriptor.addElement("next_validator_shard", false);
        pluginGeneratedSerialDescriptor.addElement("min_ref_mc_seqno", false);
        pluginGeneratedSerialDescriptor.addElement("gen_utime", false);
        pluginGeneratedSerialDescriptor.addElement("split_merge_at", false);
        pluginGeneratedSerialDescriptor.addElement("r1", false);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private ShardDescrNew$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        KSerializer<?>[] kSerializerArr;
        kSerializerArr = ShardDescrNew.$childSerializers;
        UIntSerializer uIntSerializer = UIntSerializer.INSTANCE;
        ULongSerializer uLongSerializer = ULongSerializer.INSTANCE;
        FiftHexBitStringSerializer fiftHexBitStringSerializer = FiftHexBitStringSerializer.INSTANCE;
        BooleanSerializer booleanSerializer = BooleanSerializer.INSTANCE;
        return new KSerializer[]{uIntSerializer, uIntSerializer, uLongSerializer, uLongSerializer, fiftHexBitStringSerializer, fiftHexBitStringSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, IntSerializer.INSTANCE, uIntSerializer, uLongSerializer, uIntSerializer, uIntSerializer, kSerializerArr[16], kSerializerArr[17]};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public ShardDescrNew deserialize(Decoder decoder) {
        KSerializer[] kSerializerArr;
        Object obj;
        Object obj2;
        boolean z;
        boolean z2;
        boolean z3;
        UInt uInt;
        Object obj3;
        int i;
        Object obj4;
        Object obj5;
        Object obj6;
        Object obj7;
        Object obj8;
        boolean z4;
        boolean z5;
        int i2;
        Object obj9;
        Object obj10;
        Object obj11;
        UInt uInt2;
        Object obj12;
        KSerializer[] kSerializerArr2;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor2);
        kSerializerArr = ShardDescrNew.$childSerializers;
        if (beginStructure.decodeSequentially()) {
            UIntSerializer uIntSerializer = UIntSerializer.INSTANCE;
            Object decodeSerializableElement = beginStructure.decodeSerializableElement(descriptor2, 0, uIntSerializer, null);
            Object decodeSerializableElement2 = beginStructure.decodeSerializableElement(descriptor2, 1, uIntSerializer, null);
            ULongSerializer uLongSerializer = ULongSerializer.INSTANCE;
            Object decodeSerializableElement3 = beginStructure.decodeSerializableElement(descriptor2, 2, uLongSerializer, null);
            Object decodeSerializableElement4 = beginStructure.decodeSerializableElement(descriptor2, 3, uLongSerializer, null);
            FiftHexBitStringSerializer fiftHexBitStringSerializer = FiftHexBitStringSerializer.INSTANCE;
            Object decodeSerializableElement5 = beginStructure.decodeSerializableElement(descriptor2, 4, fiftHexBitStringSerializer, null);
            Object decodeSerializableElement6 = beginStructure.decodeSerializableElement(descriptor2, 5, fiftHexBitStringSerializer, null);
            boolean decodeBooleanElement = beginStructure.decodeBooleanElement(descriptor2, 6);
            boolean decodeBooleanElement2 = beginStructure.decodeBooleanElement(descriptor2, 7);
            boolean decodeBooleanElement3 = beginStructure.decodeBooleanElement(descriptor2, 8);
            z5 = beginStructure.decodeBooleanElement(descriptor2, 9);
            boolean decodeBooleanElement4 = beginStructure.decodeBooleanElement(descriptor2, 10);
            int decodeIntElement = beginStructure.decodeIntElement(descriptor2, 11);
            uInt = decodeSerializableElement;
            obj7 = beginStructure.decodeSerializableElement(descriptor2, 12, uIntSerializer, null);
            Object decodeSerializableElement7 = beginStructure.decodeSerializableElement(descriptor2, 13, uLongSerializer, null);
            Object decodeSerializableElement8 = beginStructure.decodeSerializableElement(descriptor2, 14, uIntSerializer, null);
            obj6 = decodeSerializableElement7;
            Object decodeSerializableElement9 = beginStructure.decodeSerializableElement(descriptor2, 15, uIntSerializer, null);
            Object decodeSerializableElement10 = beginStructure.decodeSerializableElement(descriptor2, 16, kSerializerArr[16], null);
            obj5 = beginStructure.decodeSerializableElement(descriptor2, 17, kSerializerArr[17], null);
            obj2 = decodeSerializableElement10;
            obj4 = decodeSerializableElement2;
            z = decodeBooleanElement4;
            z2 = decodeBooleanElement;
            z3 = decodeBooleanElement3;
            i2 = decodeIntElement;
            obj8 = decodeSerializableElement9;
            obj9 = decodeSerializableElement3;
            obj10 = decodeSerializableElement8;
            z4 = decodeBooleanElement2;
            obj3 = decodeSerializableElement4;
            obj = decodeSerializableElement5;
            i = 262143;
            obj11 = decodeSerializableElement6;
        } else {
            int i3 = 17;
            boolean z6 = true;
            Object obj13 = null;
            Object obj14 = null;
            Object obj15 = null;
            UInt uInt3 = null;
            Object obj16 = null;
            Object obj17 = null;
            Object obj18 = null;
            obj = null;
            Object obj19 = null;
            obj2 = null;
            Object obj20 = null;
            int i4 = 0;
            z = false;
            boolean z7 = false;
            z2 = false;
            z3 = false;
            boolean z8 = false;
            int i5 = 0;
            Object obj21 = null;
            while (true) {
                int i6 = i4;
                if (z6) {
                    int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                    switch (decodeElementIndex) {
                        case -1:
                            z6 = false;
                            i4 = i6;
                            uInt3 = uInt3;
                            i3 = 17;
                            continue;
                        case 0:
                            UInt uInt4 = uInt3;
                            i5 |= 1;
                            i4 = i6;
                            i3 = 17;
                            uInt3 = beginStructure.decodeSerializableElement(descriptor2, 0, UIntSerializer.INSTANCE, uInt4);
                            kSerializerArr = kSerializerArr;
                            obj20 = obj20;
                            continue;
                        case 1:
                            uInt2 = uInt3;
                            obj12 = obj20;
                            kSerializerArr2 = kSerializerArr;
                            obj21 = beginStructure.decodeSerializableElement(descriptor2, 1, UIntSerializer.INSTANCE, obj21);
                            i5 |= 2;
                            kSerializerArr = kSerializerArr2;
                            i4 = i6;
                            i3 = 17;
                            obj20 = obj12;
                            break;
                        case 2:
                            uInt2 = uInt3;
                            obj12 = obj20;
                            kSerializerArr2 = kSerializerArr;
                            obj15 = beginStructure.decodeSerializableElement(descriptor2, 2, ULongSerializer.INSTANCE, obj15);
                            i5 |= 4;
                            kSerializerArr = kSerializerArr2;
                            i4 = i6;
                            i3 = 17;
                            obj20 = obj12;
                            break;
                        case 3:
                            uInt2 = uInt3;
                            obj12 = obj20;
                            kSerializerArr2 = kSerializerArr;
                            obj14 = beginStructure.decodeSerializableElement(descriptor2, 3, ULongSerializer.INSTANCE, obj14);
                            i5 |= 8;
                            kSerializerArr = kSerializerArr2;
                            i4 = i6;
                            i3 = 17;
                            obj20 = obj12;
                            break;
                        case 4:
                            uInt2 = uInt3;
                            obj12 = obj20;
                            kSerializerArr2 = kSerializerArr;
                            obj = beginStructure.decodeSerializableElement(descriptor2, 4, FiftHexBitStringSerializer.INSTANCE, obj);
                            i5 |= 16;
                            kSerializerArr = kSerializerArr2;
                            i4 = i6;
                            i3 = 17;
                            obj20 = obj12;
                            break;
                        case 5:
                            uInt2 = uInt3;
                            obj12 = obj20;
                            kSerializerArr2 = kSerializerArr;
                            obj13 = beginStructure.decodeSerializableElement(descriptor2, 5, FiftHexBitStringSerializer.INSTANCE, obj13);
                            i5 |= 32;
                            kSerializerArr = kSerializerArr2;
                            i4 = i6;
                            i3 = 17;
                            obj20 = obj12;
                            break;
                        case 6:
                            uInt2 = uInt3;
                            obj12 = obj20;
                            kSerializerArr2 = kSerializerArr;
                            z2 = beginStructure.decodeBooleanElement(descriptor2, 6);
                            i5 |= 64;
                            kSerializerArr = kSerializerArr2;
                            i4 = i6;
                            i3 = 17;
                            obj20 = obj12;
                            break;
                        case 7:
                            uInt2 = uInt3;
                            obj12 = obj20;
                            kSerializerArr2 = kSerializerArr;
                            z7 = beginStructure.decodeBooleanElement(descriptor2, 7);
                            i5 |= 128;
                            kSerializerArr = kSerializerArr2;
                            i4 = i6;
                            i3 = 17;
                            obj20 = obj12;
                            break;
                        case 8:
                            uInt2 = uInt3;
                            obj12 = obj20;
                            kSerializerArr2 = kSerializerArr;
                            z3 = beginStructure.decodeBooleanElement(descriptor2, 8);
                            i5 |= 256;
                            kSerializerArr = kSerializerArr2;
                            i4 = i6;
                            i3 = 17;
                            obj20 = obj12;
                            break;
                        case 9:
                            uInt2 = uInt3;
                            obj12 = obj20;
                            kSerializerArr2 = kSerializerArr;
                            z8 = beginStructure.decodeBooleanElement(descriptor2, 9);
                            i5 |= 512;
                            kSerializerArr = kSerializerArr2;
                            i4 = i6;
                            i3 = 17;
                            obj20 = obj12;
                            break;
                        case 10:
                            uInt2 = uInt3;
                            obj12 = obj20;
                            kSerializerArr2 = kSerializerArr;
                            z = beginStructure.decodeBooleanElement(descriptor2, 10);
                            i5 |= 1024;
                            kSerializerArr = kSerializerArr2;
                            i4 = i6;
                            i3 = 17;
                            obj20 = obj12;
                            break;
                        case 11:
                            uInt2 = uInt3;
                            obj12 = obj20;
                            i5 |= 2048;
                            i4 = beginStructure.decodeIntElement(descriptor2, 11);
                            kSerializerArr = kSerializerArr;
                            i3 = 17;
                            obj20 = obj12;
                            break;
                        case 12:
                            uInt2 = uInt3;
                            obj12 = obj20;
                            kSerializerArr2 = kSerializerArr;
                            obj18 = beginStructure.decodeSerializableElement(descriptor2, 12, UIntSerializer.INSTANCE, obj18);
                            i5 |= 4096;
                            kSerializerArr = kSerializerArr2;
                            i4 = i6;
                            i3 = 17;
                            obj20 = obj12;
                            break;
                        case 13:
                            uInt2 = uInt3;
                            obj12 = obj20;
                            kSerializerArr2 = kSerializerArr;
                            obj17 = beginStructure.decodeSerializableElement(descriptor2, 13, ULongSerializer.INSTANCE, obj17);
                            i5 |= 8192;
                            kSerializerArr = kSerializerArr2;
                            i4 = i6;
                            i3 = 17;
                            obj20 = obj12;
                            break;
                        case 14:
                            uInt2 = uInt3;
                            obj12 = obj20;
                            kSerializerArr2 = kSerializerArr;
                            obj16 = beginStructure.decodeSerializableElement(descriptor2, 14, UIntSerializer.INSTANCE, obj16);
                            i5 |= 16384;
                            kSerializerArr = kSerializerArr2;
                            i4 = i6;
                            i3 = 17;
                            obj20 = obj12;
                            break;
                        case 15:
                            uInt2 = uInt3;
                            obj12 = obj20;
                            kSerializerArr2 = kSerializerArr;
                            obj19 = beginStructure.decodeSerializableElement(descriptor2, 15, UIntSerializer.INSTANCE, obj19);
                            i5 |= LiteMode.FLAG_CHAT_SCALE;
                            kSerializerArr = kSerializerArr2;
                            i4 = i6;
                            i3 = 17;
                            obj20 = obj12;
                            break;
                        case 16:
                            uInt2 = uInt3;
                            obj12 = obj20;
                            kSerializerArr2 = kSerializerArr;
                            obj2 = beginStructure.decodeSerializableElement(descriptor2, 16, kSerializerArr[16], obj2);
                            i5 |= 65536;
                            kSerializerArr = kSerializerArr2;
                            i4 = i6;
                            i3 = 17;
                            obj20 = obj12;
                            break;
                        case 17:
                            uInt2 = uInt3;
                            obj20 = beginStructure.decodeSerializableElement(descriptor2, i3, kSerializerArr[i3], obj20);
                            i5 |= 131072;
                            i4 = i6;
                            break;
                        default:
                            throw new UnknownFieldException(decodeElementIndex);
                    }
                    uInt3 = uInt2;
                } else {
                    uInt = uInt3;
                    obj3 = obj14;
                    i = i5;
                    obj4 = obj21;
                    obj5 = obj20;
                    obj6 = obj17;
                    obj7 = obj18;
                    obj8 = obj19;
                    z4 = z7;
                    z5 = z8;
                    i2 = i6;
                    obj9 = obj15;
                    obj10 = obj16;
                    obj11 = obj13;
                }
            }
        }
        beginStructure.endStructure(descriptor2);
        return new ShardDescrNew(i, uInt, (UInt) obj4, (ULong) obj9, (ULong) obj3, (BitString) obj, (BitString) obj11, z2, z4, z3, z5, z, i2, (UInt) obj7, (ULong) obj6, (UInt) obj10, (UInt) obj8, (FutureSplitMerge) obj2, (CellRef) obj5, null, null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, ShardDescrNew value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder beginStructure = encoder.beginStructure(descriptor2);
        ShardDescrNew.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
