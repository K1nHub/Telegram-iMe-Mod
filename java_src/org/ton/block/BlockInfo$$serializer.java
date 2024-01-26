package org.ton.block;

import kotlin.UInt;
import kotlin.ULong;
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
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.UIntSerializer;
import kotlinx.serialization.internal.ULongSerializer;
import org.telegram.messenger.LiteMode;
import org.ton.tlb.CellRef;
/* compiled from: BlockInfo.kt */
/* loaded from: classes6.dex */
public final class BlockInfo$$serializer implements GeneratedSerializer<BlockInfo> {
    public static final BlockInfo$$serializer INSTANCE;
    private static final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;

    static {
        BlockInfo$$serializer blockInfo$$serializer = new BlockInfo$$serializer();
        INSTANCE = blockInfo$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("block_info", blockInfo$$serializer, 24);
        pluginGeneratedSerialDescriptor.addElement("version", false);
        pluginGeneratedSerialDescriptor.addElement("not_master", false);
        pluginGeneratedSerialDescriptor.addElement("after_merge", false);
        pluginGeneratedSerialDescriptor.addElement("before_split", false);
        pluginGeneratedSerialDescriptor.addElement("after_split", false);
        pluginGeneratedSerialDescriptor.addElement("want_split", false);
        pluginGeneratedSerialDescriptor.addElement("want_merge", false);
        pluginGeneratedSerialDescriptor.addElement("key_block", false);
        pluginGeneratedSerialDescriptor.addElement("ver_seqno_inc", false);
        pluginGeneratedSerialDescriptor.addElement("flags", false);
        pluginGeneratedSerialDescriptor.addElement("seq_no", false);
        pluginGeneratedSerialDescriptor.addElement("vert_seq_no", false);
        pluginGeneratedSerialDescriptor.addElement("shard", false);
        pluginGeneratedSerialDescriptor.addElement("gen_utime", false);
        pluginGeneratedSerialDescriptor.addElement("start_lt", false);
        pluginGeneratedSerialDescriptor.addElement("end_lt", false);
        pluginGeneratedSerialDescriptor.addElement("gen_validator_list_hash_short", false);
        pluginGeneratedSerialDescriptor.addElement("gen_catchain_seqno", false);
        pluginGeneratedSerialDescriptor.addElement("min_ref_mc_seqno", false);
        pluginGeneratedSerialDescriptor.addElement("prevKeyBlockSeqno", false);
        pluginGeneratedSerialDescriptor.addElement("gen_software", false);
        pluginGeneratedSerialDescriptor.addElement("master_ref", false);
        pluginGeneratedSerialDescriptor.addElement("prev_ref", false);
        pluginGeneratedSerialDescriptor.addElement("prev_vert_ref", false);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private BlockInfo$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        KSerializer<?>[] kSerializerArr;
        kSerializerArr = BlockInfo.$childSerializers;
        UIntSerializer uIntSerializer = UIntSerializer.INSTANCE;
        BooleanSerializer booleanSerializer = BooleanSerializer.INSTANCE;
        IntSerializer intSerializer = IntSerializer.INSTANCE;
        ULongSerializer uLongSerializer = ULongSerializer.INSTANCE;
        return new KSerializer[]{uIntSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, intSerializer, intSerializer, intSerializer, ShardIdent$$serializer.INSTANCE, uIntSerializer, uLongSerializer, uLongSerializer, uIntSerializer, uIntSerializer, uIntSerializer, uIntSerializer, BuiltinSerializersKt.getNullable(GlobalVersion$$serializer.INSTANCE), BuiltinSerializersKt.getNullable(kSerializerArr[21]), kSerializerArr[22], BuiltinSerializersKt.getNullable(kSerializerArr[23])};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public BlockInfo deserialize(Decoder decoder) {
        KSerializer[] kSerializerArr;
        Object obj;
        Object obj2;
        Object obj3;
        Object obj4;
        Object obj5;
        Object obj6;
        int i;
        Object obj7;
        Object obj8;
        Object obj9;
        boolean z;
        Object obj10;
        int i2;
        int i3;
        int i4;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        UInt uInt;
        boolean z6;
        ShardIdent shardIdent;
        Object obj11;
        boolean z7;
        boolean z8;
        KSerializer[] kSerializerArr2;
        ShardIdent shardIdent2;
        Object obj12;
        KSerializer[] kSerializerArr3;
        ShardIdent shardIdent3;
        int i5;
        int i6;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor2);
        kSerializerArr = BlockInfo.$childSerializers;
        if (beginStructure.decodeSequentially()) {
            UIntSerializer uIntSerializer = UIntSerializer.INSTANCE;
            Object decodeSerializableElement = beginStructure.decodeSerializableElement(descriptor2, 0, uIntSerializer, null);
            boolean decodeBooleanElement = beginStructure.decodeBooleanElement(descriptor2, 1);
            boolean decodeBooleanElement2 = beginStructure.decodeBooleanElement(descriptor2, 2);
            boolean decodeBooleanElement3 = beginStructure.decodeBooleanElement(descriptor2, 3);
            boolean decodeBooleanElement4 = beginStructure.decodeBooleanElement(descriptor2, 4);
            boolean decodeBooleanElement5 = beginStructure.decodeBooleanElement(descriptor2, 5);
            boolean decodeBooleanElement6 = beginStructure.decodeBooleanElement(descriptor2, 6);
            boolean decodeBooleanElement7 = beginStructure.decodeBooleanElement(descriptor2, 7);
            boolean decodeBooleanElement8 = beginStructure.decodeBooleanElement(descriptor2, 8);
            int decodeIntElement = beginStructure.decodeIntElement(descriptor2, 9);
            int decodeIntElement2 = beginStructure.decodeIntElement(descriptor2, 10);
            int decodeIntElement3 = beginStructure.decodeIntElement(descriptor2, 11);
            Object decodeSerializableElement2 = beginStructure.decodeSerializableElement(descriptor2, 12, ShardIdent$$serializer.INSTANCE, null);
            Object decodeSerializableElement3 = beginStructure.decodeSerializableElement(descriptor2, 13, uIntSerializer, null);
            ULongSerializer uLongSerializer = ULongSerializer.INSTANCE;
            Object decodeSerializableElement4 = beginStructure.decodeSerializableElement(descriptor2, 14, uLongSerializer, null);
            Object decodeSerializableElement5 = beginStructure.decodeSerializableElement(descriptor2, 15, uLongSerializer, null);
            Object decodeSerializableElement6 = beginStructure.decodeSerializableElement(descriptor2, 16, uIntSerializer, null);
            obj5 = decodeSerializableElement5;
            Object decodeSerializableElement7 = beginStructure.decodeSerializableElement(descriptor2, 17, uIntSerializer, null);
            obj9 = beginStructure.decodeSerializableElement(descriptor2, 18, uIntSerializer, null);
            Object decodeSerializableElement8 = beginStructure.decodeSerializableElement(descriptor2, 19, uIntSerializer, null);
            obj8 = beginStructure.decodeNullableSerializableElement(descriptor2, 20, GlobalVersion$$serializer.INSTANCE, null);
            obj7 = beginStructure.decodeNullableSerializableElement(descriptor2, 21, kSerializerArr[21], null);
            Object decodeSerializableElement9 = beginStructure.decodeSerializableElement(descriptor2, 22, kSerializerArr[22], null);
            obj11 = beginStructure.decodeNullableSerializableElement(descriptor2, 23, kSerializerArr[23], null);
            i2 = decodeIntElement3;
            i3 = decodeIntElement2;
            i4 = decodeIntElement;
            z2 = decodeBooleanElement7;
            z3 = decodeBooleanElement6;
            z4 = decodeBooleanElement5;
            z5 = decodeBooleanElement3;
            obj3 = decodeSerializableElement4;
            uInt = decodeSerializableElement;
            z = decodeBooleanElement8;
            z6 = decodeBooleanElement4;
            obj = decodeSerializableElement7;
            i = 16777215;
            obj2 = decodeSerializableElement6;
            z8 = decodeBooleanElement;
            shardIdent = decodeSerializableElement2;
            obj6 = decodeSerializableElement3;
            obj4 = decodeSerializableElement9;
            obj10 = decodeSerializableElement8;
            z7 = decodeBooleanElement2;
        } else {
            int i7 = 23;
            boolean z9 = true;
            boolean z10 = false;
            boolean z11 = false;
            boolean z12 = false;
            boolean z13 = false;
            int i8 = 0;
            int i9 = 0;
            int i10 = 0;
            boolean z14 = false;
            boolean z15 = false;
            boolean z16 = false;
            boolean z17 = false;
            Object obj13 = null;
            Object obj14 = null;
            Object obj15 = null;
            ShardIdent shardIdent4 = null;
            Object obj16 = null;
            Object obj17 = null;
            Object obj18 = null;
            obj = null;
            obj2 = null;
            obj3 = null;
            Object obj19 = null;
            Object obj20 = null;
            UInt uInt2 = null;
            int i11 = 0;
            while (z9) {
                UInt uInt3 = uInt2;
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                switch (decodeElementIndex) {
                    case -1:
                        kSerializerArr2 = kSerializerArr;
                        z9 = false;
                        shardIdent4 = shardIdent4;
                        uInt2 = uInt3;
                        obj13 = obj13;
                        kSerializerArr = kSerializerArr2;
                        break;
                    case 0:
                        kSerializerArr2 = kSerializerArr;
                        shardIdent2 = shardIdent4;
                        i11 |= 1;
                        uInt2 = beginStructure.decodeSerializableElement(descriptor2, 0, UIntSerializer.INSTANCE, uInt3);
                        obj13 = obj13;
                        i7 = 23;
                        shardIdent4 = shardIdent2;
                        kSerializerArr = kSerializerArr2;
                        break;
                    case 1:
                        kSerializerArr2 = kSerializerArr;
                        obj12 = obj13;
                        shardIdent2 = shardIdent4;
                        z13 = beginStructure.decodeBooleanElement(descriptor2, 1);
                        i11 |= 2;
                        obj13 = obj12;
                        uInt2 = uInt3;
                        i7 = 23;
                        shardIdent4 = shardIdent2;
                        kSerializerArr = kSerializerArr2;
                        break;
                    case 2:
                        kSerializerArr2 = kSerializerArr;
                        obj12 = obj13;
                        shardIdent2 = shardIdent4;
                        z12 = beginStructure.decodeBooleanElement(descriptor2, 2);
                        i11 |= 4;
                        obj13 = obj12;
                        uInt2 = uInt3;
                        i7 = 23;
                        shardIdent4 = shardIdent2;
                        kSerializerArr = kSerializerArr2;
                        break;
                    case 3:
                        kSerializerArr2 = kSerializerArr;
                        obj12 = obj13;
                        shardIdent2 = shardIdent4;
                        z17 = beginStructure.decodeBooleanElement(descriptor2, 3);
                        i11 |= 8;
                        obj13 = obj12;
                        uInt2 = uInt3;
                        i7 = 23;
                        shardIdent4 = shardIdent2;
                        kSerializerArr = kSerializerArr2;
                        break;
                    case 4:
                        kSerializerArr2 = kSerializerArr;
                        obj12 = obj13;
                        shardIdent2 = shardIdent4;
                        z11 = beginStructure.decodeBooleanElement(descriptor2, 4);
                        i11 |= 16;
                        obj13 = obj12;
                        uInt2 = uInt3;
                        i7 = 23;
                        shardIdent4 = shardIdent2;
                        kSerializerArr = kSerializerArr2;
                        break;
                    case 5:
                        kSerializerArr2 = kSerializerArr;
                        obj12 = obj13;
                        shardIdent2 = shardIdent4;
                        z16 = beginStructure.decodeBooleanElement(descriptor2, 5);
                        i11 |= 32;
                        obj13 = obj12;
                        uInt2 = uInt3;
                        i7 = 23;
                        shardIdent4 = shardIdent2;
                        kSerializerArr = kSerializerArr2;
                        break;
                    case 6:
                        kSerializerArr2 = kSerializerArr;
                        obj12 = obj13;
                        shardIdent2 = shardIdent4;
                        z15 = beginStructure.decodeBooleanElement(descriptor2, 6);
                        i11 |= 64;
                        obj13 = obj12;
                        uInt2 = uInt3;
                        i7 = 23;
                        shardIdent4 = shardIdent2;
                        kSerializerArr = kSerializerArr2;
                        break;
                    case 7:
                        kSerializerArr2 = kSerializerArr;
                        obj12 = obj13;
                        shardIdent2 = shardIdent4;
                        z14 = beginStructure.decodeBooleanElement(descriptor2, 7);
                        i11 |= 128;
                        obj13 = obj12;
                        uInt2 = uInt3;
                        i7 = 23;
                        shardIdent4 = shardIdent2;
                        kSerializerArr = kSerializerArr2;
                        break;
                    case 8:
                        kSerializerArr2 = kSerializerArr;
                        obj12 = obj13;
                        shardIdent2 = shardIdent4;
                        z10 = beginStructure.decodeBooleanElement(descriptor2, 8);
                        i11 |= 256;
                        obj13 = obj12;
                        uInt2 = uInt3;
                        i7 = 23;
                        shardIdent4 = shardIdent2;
                        kSerializerArr = kSerializerArr2;
                        break;
                    case 9:
                        kSerializerArr2 = kSerializerArr;
                        obj12 = obj13;
                        shardIdent2 = shardIdent4;
                        i10 = beginStructure.decodeIntElement(descriptor2, 9);
                        i11 |= 512;
                        obj13 = obj12;
                        uInt2 = uInt3;
                        i7 = 23;
                        shardIdent4 = shardIdent2;
                        kSerializerArr = kSerializerArr2;
                        break;
                    case 10:
                        kSerializerArr2 = kSerializerArr;
                        obj12 = obj13;
                        shardIdent2 = shardIdent4;
                        i9 = beginStructure.decodeIntElement(descriptor2, 10);
                        i11 |= 1024;
                        obj13 = obj12;
                        uInt2 = uInt3;
                        i7 = 23;
                        shardIdent4 = shardIdent2;
                        kSerializerArr = kSerializerArr2;
                        break;
                    case 11:
                        kSerializerArr2 = kSerializerArr;
                        obj12 = obj13;
                        shardIdent2 = shardIdent4;
                        i8 = beginStructure.decodeIntElement(descriptor2, 11);
                        i11 |= 2048;
                        obj13 = obj12;
                        uInt2 = uInt3;
                        i7 = 23;
                        shardIdent4 = shardIdent2;
                        kSerializerArr = kSerializerArr2;
                        break;
                    case 12:
                        kSerializerArr2 = kSerializerArr;
                        obj12 = obj13;
                        shardIdent2 = beginStructure.decodeSerializableElement(descriptor2, 12, ShardIdent$$serializer.INSTANCE, shardIdent4);
                        i11 |= 4096;
                        obj13 = obj12;
                        uInt2 = uInt3;
                        i7 = 23;
                        shardIdent4 = shardIdent2;
                        kSerializerArr = kSerializerArr2;
                        break;
                    case 13:
                        kSerializerArr3 = kSerializerArr;
                        shardIdent3 = shardIdent4;
                        obj15 = beginStructure.decodeSerializableElement(descriptor2, 13, UIntSerializer.INSTANCE, obj15);
                        i11 |= 8192;
                        kSerializerArr = kSerializerArr3;
                        uInt2 = uInt3;
                        shardIdent4 = shardIdent3;
                        i7 = 23;
                        break;
                    case 14:
                        kSerializerArr3 = kSerializerArr;
                        shardIdent3 = shardIdent4;
                        obj3 = beginStructure.decodeSerializableElement(descriptor2, 14, ULongSerializer.INSTANCE, obj3);
                        i11 |= 16384;
                        kSerializerArr = kSerializerArr3;
                        uInt2 = uInt3;
                        shardIdent4 = shardIdent3;
                        i7 = 23;
                        break;
                    case 15:
                        kSerializerArr3 = kSerializerArr;
                        shardIdent3 = shardIdent4;
                        obj14 = beginStructure.decodeSerializableElement(descriptor2, 15, ULongSerializer.INSTANCE, obj14);
                        i5 = LiteMode.FLAG_CHAT_SCALE;
                        i11 |= i5;
                        kSerializerArr = kSerializerArr3;
                        uInt2 = uInt3;
                        shardIdent4 = shardIdent3;
                        i7 = 23;
                        break;
                    case 16:
                        shardIdent3 = shardIdent4;
                        kSerializerArr3 = kSerializerArr;
                        obj2 = beginStructure.decodeSerializableElement(descriptor2, 16, UIntSerializer.INSTANCE, obj2);
                        i5 = 65536;
                        i11 |= i5;
                        kSerializerArr = kSerializerArr3;
                        uInt2 = uInt3;
                        shardIdent4 = shardIdent3;
                        i7 = 23;
                        break;
                    case 17:
                        shardIdent3 = shardIdent4;
                        obj = beginStructure.decodeSerializableElement(descriptor2, 17, UIntSerializer.INSTANCE, obj);
                        i6 = 131072;
                        i11 |= i6;
                        uInt2 = uInt3;
                        shardIdent4 = shardIdent3;
                        i7 = 23;
                        break;
                    case 18:
                        shardIdent3 = shardIdent4;
                        obj18 = beginStructure.decodeSerializableElement(descriptor2, 18, UIntSerializer.INSTANCE, obj18);
                        i6 = 262144;
                        i11 |= i6;
                        uInt2 = uInt3;
                        shardIdent4 = shardIdent3;
                        i7 = 23;
                        break;
                    case 19:
                        shardIdent3 = shardIdent4;
                        obj13 = beginStructure.decodeSerializableElement(descriptor2, 19, UIntSerializer.INSTANCE, obj13);
                        i6 = 524288;
                        i11 |= i6;
                        uInt2 = uInt3;
                        shardIdent4 = shardIdent3;
                        i7 = 23;
                        break;
                    case 20:
                        shardIdent3 = shardIdent4;
                        obj17 = beginStructure.decodeNullableSerializableElement(descriptor2, 20, GlobalVersion$$serializer.INSTANCE, obj17);
                        i6 = 1048576;
                        i11 |= i6;
                        uInt2 = uInt3;
                        shardIdent4 = shardIdent3;
                        i7 = 23;
                        break;
                    case 21:
                        shardIdent3 = shardIdent4;
                        obj16 = beginStructure.decodeNullableSerializableElement(descriptor2, 21, kSerializerArr[21], obj16);
                        i11 |= 2097152;
                        uInt2 = uInt3;
                        shardIdent4 = shardIdent3;
                        i7 = 23;
                        break;
                    case 22:
                        shardIdent3 = shardIdent4;
                        obj19 = beginStructure.decodeSerializableElement(descriptor2, 22, kSerializerArr[22], obj19);
                        i6 = 4194304;
                        i11 |= i6;
                        uInt2 = uInt3;
                        shardIdent4 = shardIdent3;
                        i7 = 23;
                        break;
                    case 23:
                        obj20 = beginStructure.decodeNullableSerializableElement(descriptor2, i7, kSerializerArr[i7], obj20);
                        i11 |= 8388608;
                        uInt2 = uInt3;
                        shardIdent4 = shardIdent4;
                        break;
                    default:
                        throw new UnknownFieldException(decodeElementIndex);
                }
            }
            ShardIdent shardIdent5 = shardIdent4;
            obj4 = obj19;
            obj5 = obj14;
            obj6 = obj15;
            i = i11;
            obj7 = obj16;
            obj8 = obj17;
            obj9 = obj18;
            z = z10;
            obj10 = obj13;
            i2 = i8;
            i3 = i9;
            i4 = i10;
            z2 = z14;
            z3 = z15;
            z4 = z16;
            z5 = z17;
            uInt = uInt2;
            z6 = z11;
            shardIdent = shardIdent5;
            obj11 = obj20;
            boolean z18 = z13;
            z7 = z12;
            z8 = z18;
        }
        beginStructure.endStructure(descriptor2);
        return new BlockInfo(i, uInt, z8, z7, z5, z6, z4, z3, z2, z, i4, i3, i2, shardIdent, (UInt) obj6, (ULong) obj3, (ULong) obj5, (UInt) obj2, (UInt) obj, (UInt) obj9, (UInt) obj10, (GlobalVersion) obj8, (CellRef) obj7, (CellRef) obj4, (CellRef) obj11, null, null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, BlockInfo value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder beginStructure = encoder.beginStructure(descriptor2);
        BlockInfo.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
