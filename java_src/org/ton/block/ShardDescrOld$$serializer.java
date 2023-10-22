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
/* compiled from: ShardDescr.kt */
/* loaded from: classes6.dex */
public final class ShardDescrOld$$serializer implements GeneratedSerializer<ShardDescrOld> {
    public static final ShardDescrOld$$serializer INSTANCE;
    private static final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;

    static {
        ShardDescrOld$$serializer shardDescrOld$$serializer = new ShardDescrOld$$serializer();
        INSTANCE = shardDescrOld$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("shard_descr_old", shardDescrOld$$serializer, 19);
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
        pluginGeneratedSerialDescriptor.addElement("fees_collected", false);
        pluginGeneratedSerialDescriptor.addElement("funds_created", false);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private ShardDescrOld$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        KSerializer<?>[] kSerializerArr;
        kSerializerArr = ShardDescrOld.$childSerializers;
        UIntSerializer uIntSerializer = UIntSerializer.INSTANCE;
        ULongSerializer uLongSerializer = ULongSerializer.INSTANCE;
        FiftHexBitStringSerializer fiftHexBitStringSerializer = FiftHexBitStringSerializer.INSTANCE;
        BooleanSerializer booleanSerializer = BooleanSerializer.INSTANCE;
        CurrencyCollection$$serializer currencyCollection$$serializer = CurrencyCollection$$serializer.INSTANCE;
        return new KSerializer[]{uIntSerializer, uIntSerializer, uLongSerializer, uLongSerializer, fiftHexBitStringSerializer, fiftHexBitStringSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, IntSerializer.INSTANCE, uIntSerializer, uLongSerializer, uIntSerializer, uIntSerializer, kSerializerArr[16], currencyCollection$$serializer, currencyCollection$$serializer};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public ShardDescrOld deserialize(Decoder decoder) {
        KSerializer[] kSerializerArr;
        Object obj;
        Object obj2;
        Object obj3;
        Object obj4;
        boolean z;
        Object obj5;
        Object obj6;
        Object obj7;
        Object obj8;
        int i;
        Object obj9;
        Object obj10;
        Object obj11;
        boolean z2;
        boolean z3;
        boolean z4;
        int i2;
        boolean z5;
        Object obj12;
        CurrencyCollection currencyCollection;
        CurrencyCollection currencyCollection2;
        boolean z6;
        CurrencyCollection currencyCollection3;
        Object obj13;
        KSerializer[] kSerializerArr2;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor2);
        kSerializerArr = ShardDescrOld.$childSerializers;
        if (beginStructure.decodeSequentially()) {
            UIntSerializer uIntSerializer = UIntSerializer.INSTANCE;
            Object decodeSerializableElement = beginStructure.decodeSerializableElement(descriptor2, 0, uIntSerializer, null);
            Object decodeSerializableElement2 = beginStructure.decodeSerializableElement(descriptor2, 1, uIntSerializer, null);
            ULongSerializer uLongSerializer = ULongSerializer.INSTANCE;
            obj3 = beginStructure.decodeSerializableElement(descriptor2, 2, uLongSerializer, null);
            Object decodeSerializableElement3 = beginStructure.decodeSerializableElement(descriptor2, 3, uLongSerializer, null);
            FiftHexBitStringSerializer fiftHexBitStringSerializer = FiftHexBitStringSerializer.INSTANCE;
            obj2 = beginStructure.decodeSerializableElement(descriptor2, 4, fiftHexBitStringSerializer, null);
            Object decodeSerializableElement4 = beginStructure.decodeSerializableElement(descriptor2, 5, fiftHexBitStringSerializer, null);
            boolean decodeBooleanElement = beginStructure.decodeBooleanElement(descriptor2, 6);
            boolean decodeBooleanElement2 = beginStructure.decodeBooleanElement(descriptor2, 7);
            boolean decodeBooleanElement3 = beginStructure.decodeBooleanElement(descriptor2, 8);
            boolean decodeBooleanElement4 = beginStructure.decodeBooleanElement(descriptor2, 9);
            boolean decodeBooleanElement5 = beginStructure.decodeBooleanElement(descriptor2, 10);
            int decodeIntElement = beginStructure.decodeIntElement(descriptor2, 11);
            obj9 = beginStructure.decodeSerializableElement(descriptor2, 12, uIntSerializer, null);
            Object decodeSerializableElement5 = beginStructure.decodeSerializableElement(descriptor2, 13, uLongSerializer, null);
            Object decodeSerializableElement6 = beginStructure.decodeSerializableElement(descriptor2, 14, uIntSerializer, null);
            obj7 = beginStructure.decodeSerializableElement(descriptor2, 15, uIntSerializer, null);
            Object decodeSerializableElement7 = beginStructure.decodeSerializableElement(descriptor2, 16, kSerializerArr[16], null);
            CurrencyCollection$$serializer currencyCollection$$serializer = CurrencyCollection$$serializer.INSTANCE;
            z2 = decodeBooleanElement5;
            obj12 = decodeSerializableElement6;
            obj10 = decodeSerializableElement4;
            z3 = decodeBooleanElement2;
            z = decodeBooleanElement;
            obj4 = decodeSerializableElement5;
            obj8 = decodeSerializableElement;
            i2 = decodeIntElement;
            obj5 = beginStructure.decodeSerializableElement(descriptor2, 17, currencyCollection$$serializer, null);
            z5 = decodeBooleanElement3;
            i = 524287;
            obj6 = decodeSerializableElement2;
            obj11 = decodeSerializableElement7;
            currencyCollection = beginStructure.decodeSerializableElement(descriptor2, 18, currencyCollection$$serializer, null);
            obj = decodeSerializableElement3;
            z4 = decodeBooleanElement4;
        } else {
            boolean z7 = true;
            Object obj14 = null;
            obj = null;
            Object obj15 = null;
            obj2 = null;
            obj3 = null;
            CurrencyCollection currencyCollection4 = null;
            obj4 = null;
            Object obj16 = null;
            Object obj17 = null;
            Object obj18 = null;
            Object obj19 = null;
            Object obj20 = null;
            boolean z8 = false;
            int i3 = 0;
            boolean z9 = false;
            boolean z10 = false;
            z = false;
            boolean z11 = false;
            int i4 = 0;
            Object obj21 = null;
            while (z7) {
                int i5 = i4;
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                switch (decodeElementIndex) {
                    case -1:
                        currencyCollection2 = currencyCollection4;
                        z6 = z8;
                        z7 = false;
                        currencyCollection4 = currencyCollection2;
                        i4 = i5;
                        z8 = z6;
                        break;
                    case 0:
                        currencyCollection3 = currencyCollection4;
                        z6 = z8;
                        obj13 = obj20;
                        kSerializerArr2 = kSerializerArr;
                        obj21 = beginStructure.decodeSerializableElement(descriptor2, 0, UIntSerializer.INSTANCE, obj21);
                        i3 |= 1;
                        currencyCollection4 = currencyCollection3;
                        kSerializerArr = kSerializerArr2;
                        i4 = i5;
                        obj20 = obj13;
                        z8 = z6;
                        break;
                    case 1:
                        currencyCollection3 = currencyCollection4;
                        z6 = z8;
                        obj13 = obj20;
                        kSerializerArr2 = kSerializerArr;
                        obj14 = beginStructure.decodeSerializableElement(descriptor2, 1, UIntSerializer.INSTANCE, obj14);
                        i3 |= 2;
                        currencyCollection4 = currencyCollection3;
                        kSerializerArr = kSerializerArr2;
                        i4 = i5;
                        obj20 = obj13;
                        z8 = z6;
                        break;
                    case 2:
                        currencyCollection3 = currencyCollection4;
                        z6 = z8;
                        obj13 = obj20;
                        kSerializerArr2 = kSerializerArr;
                        obj3 = beginStructure.decodeSerializableElement(descriptor2, 2, ULongSerializer.INSTANCE, obj3);
                        i3 |= 4;
                        currencyCollection4 = currencyCollection3;
                        kSerializerArr = kSerializerArr2;
                        i4 = i5;
                        obj20 = obj13;
                        z8 = z6;
                        break;
                    case 3:
                        currencyCollection3 = currencyCollection4;
                        z6 = z8;
                        obj13 = obj20;
                        kSerializerArr2 = kSerializerArr;
                        obj = beginStructure.decodeSerializableElement(descriptor2, 3, ULongSerializer.INSTANCE, obj);
                        i3 |= 8;
                        currencyCollection4 = currencyCollection3;
                        kSerializerArr = kSerializerArr2;
                        i4 = i5;
                        obj20 = obj13;
                        z8 = z6;
                        break;
                    case 4:
                        currencyCollection3 = currencyCollection4;
                        z6 = z8;
                        obj13 = obj20;
                        kSerializerArr2 = kSerializerArr;
                        obj2 = beginStructure.decodeSerializableElement(descriptor2, 4, FiftHexBitStringSerializer.INSTANCE, obj2);
                        i3 |= 16;
                        currencyCollection4 = currencyCollection3;
                        kSerializerArr = kSerializerArr2;
                        i4 = i5;
                        obj20 = obj13;
                        z8 = z6;
                        break;
                    case 5:
                        currencyCollection3 = currencyCollection4;
                        z6 = z8;
                        obj13 = obj20;
                        kSerializerArr2 = kSerializerArr;
                        obj17 = beginStructure.decodeSerializableElement(descriptor2, 5, FiftHexBitStringSerializer.INSTANCE, obj17);
                        i3 |= 32;
                        currencyCollection4 = currencyCollection3;
                        kSerializerArr = kSerializerArr2;
                        i4 = i5;
                        obj20 = obj13;
                        z8 = z6;
                        break;
                    case 6:
                        currencyCollection3 = currencyCollection4;
                        z6 = z8;
                        obj13 = obj20;
                        kSerializerArr2 = kSerializerArr;
                        z = beginStructure.decodeBooleanElement(descriptor2, 6);
                        i3 |= 64;
                        currencyCollection4 = currencyCollection3;
                        kSerializerArr = kSerializerArr2;
                        i4 = i5;
                        obj20 = obj13;
                        z8 = z6;
                        break;
                    case 7:
                        currencyCollection3 = currencyCollection4;
                        z6 = z8;
                        obj13 = obj20;
                        kSerializerArr2 = kSerializerArr;
                        z10 = beginStructure.decodeBooleanElement(descriptor2, 7);
                        i3 |= 128;
                        currencyCollection4 = currencyCollection3;
                        kSerializerArr = kSerializerArr2;
                        i4 = i5;
                        obj20 = obj13;
                        z8 = z6;
                        break;
                    case 8:
                        i3 |= 256;
                        currencyCollection4 = currencyCollection4;
                        kSerializerArr = kSerializerArr;
                        i4 = i5;
                        obj20 = obj20;
                        z8 = beginStructure.decodeBooleanElement(descriptor2, 8);
                        break;
                    case 9:
                        currencyCollection3 = currencyCollection4;
                        z6 = z8;
                        obj13 = obj20;
                        kSerializerArr2 = kSerializerArr;
                        z11 = beginStructure.decodeBooleanElement(descriptor2, 9);
                        i3 |= 512;
                        currencyCollection4 = currencyCollection3;
                        kSerializerArr = kSerializerArr2;
                        i4 = i5;
                        obj20 = obj13;
                        z8 = z6;
                        break;
                    case 10:
                        currencyCollection3 = currencyCollection4;
                        z6 = z8;
                        obj13 = obj20;
                        kSerializerArr2 = kSerializerArr;
                        z9 = beginStructure.decodeBooleanElement(descriptor2, 10);
                        i3 |= 1024;
                        currencyCollection4 = currencyCollection3;
                        kSerializerArr = kSerializerArr2;
                        i4 = i5;
                        obj20 = obj13;
                        z8 = z6;
                        break;
                    case 11:
                        z6 = z8;
                        obj13 = obj20;
                        i3 |= 2048;
                        currencyCollection4 = currencyCollection4;
                        i4 = beginStructure.decodeIntElement(descriptor2, 11);
                        kSerializerArr = kSerializerArr;
                        obj20 = obj13;
                        z8 = z6;
                        break;
                    case 12:
                        currencyCollection3 = currencyCollection4;
                        z6 = z8;
                        obj13 = obj20;
                        kSerializerArr2 = kSerializerArr;
                        obj16 = beginStructure.decodeSerializableElement(descriptor2, 12, UIntSerializer.INSTANCE, obj16);
                        i3 |= 4096;
                        currencyCollection4 = currencyCollection3;
                        kSerializerArr = kSerializerArr2;
                        i4 = i5;
                        obj20 = obj13;
                        z8 = z6;
                        break;
                    case 13:
                        currencyCollection3 = currencyCollection4;
                        z6 = z8;
                        obj13 = obj20;
                        kSerializerArr2 = kSerializerArr;
                        obj4 = beginStructure.decodeSerializableElement(descriptor2, 13, ULongSerializer.INSTANCE, obj4);
                        i3 |= 8192;
                        currencyCollection4 = currencyCollection3;
                        kSerializerArr = kSerializerArr2;
                        i4 = i5;
                        obj20 = obj13;
                        z8 = z6;
                        break;
                    case 14:
                        currencyCollection3 = currencyCollection4;
                        z6 = z8;
                        obj13 = obj20;
                        kSerializerArr2 = kSerializerArr;
                        obj15 = beginStructure.decodeSerializableElement(descriptor2, 14, UIntSerializer.INSTANCE, obj15);
                        i3 |= 16384;
                        currencyCollection4 = currencyCollection3;
                        kSerializerArr = kSerializerArr2;
                        i4 = i5;
                        obj20 = obj13;
                        z8 = z6;
                        break;
                    case 15:
                        z6 = z8;
                        obj13 = obj20;
                        kSerializerArr2 = kSerializerArr;
                        obj18 = beginStructure.decodeSerializableElement(descriptor2, 15, UIntSerializer.INSTANCE, obj18);
                        i3 |= LiteMode.FLAG_CHAT_SCALE;
                        currencyCollection4 = currencyCollection4;
                        obj19 = obj19;
                        kSerializerArr = kSerializerArr2;
                        i4 = i5;
                        obj20 = obj13;
                        z8 = z6;
                        break;
                    case 16:
                        currencyCollection3 = currencyCollection4;
                        z6 = z8;
                        obj13 = obj20;
                        kSerializerArr2 = kSerializerArr;
                        obj19 = beginStructure.decodeSerializableElement(descriptor2, 16, kSerializerArr[16], obj19);
                        i3 |= 65536;
                        currencyCollection4 = currencyCollection3;
                        kSerializerArr = kSerializerArr2;
                        i4 = i5;
                        obj20 = obj13;
                        z8 = z6;
                        break;
                    case 17:
                        z6 = z8;
                        currencyCollection2 = currencyCollection4;
                        obj20 = beginStructure.decodeSerializableElement(descriptor2, 17, CurrencyCollection$$serializer.INSTANCE, obj20);
                        i3 |= 131072;
                        currencyCollection4 = currencyCollection2;
                        i4 = i5;
                        z8 = z6;
                        break;
                    case 18:
                        z6 = z8;
                        currencyCollection4 = beginStructure.decodeSerializableElement(descriptor2, 18, CurrencyCollection$$serializer.INSTANCE, currencyCollection4);
                        i3 |= 262144;
                        i4 = i5;
                        z8 = z6;
                        break;
                    default:
                        throw new UnknownFieldException(decodeElementIndex);
                }
            }
            CurrencyCollection currencyCollection5 = currencyCollection4;
            int i6 = i4;
            boolean z12 = z8;
            obj5 = obj20;
            obj6 = obj14;
            obj7 = obj18;
            obj8 = obj21;
            i = i3;
            obj9 = obj16;
            obj10 = obj17;
            obj11 = obj19;
            z2 = z9;
            z3 = z10;
            z4 = z11;
            i2 = i6;
            z5 = z12;
            obj12 = obj15;
            currencyCollection = currencyCollection5;
        }
        beginStructure.endStructure(descriptor2);
        return new ShardDescrOld(i, (UInt) obj8, (UInt) obj6, (ULong) obj3, (ULong) obj, (BitString) obj2, (BitString) obj10, z, z3, z5, z4, z2, i2, (UInt) obj9, (ULong) obj4, (UInt) obj12, (UInt) obj7, (FutureSplitMerge) obj11, (CurrencyCollection) obj5, currencyCollection, null, null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, ShardDescrOld value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder beginStructure = encoder.beginStructure(descriptor2);
        ShardDescrOld.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
