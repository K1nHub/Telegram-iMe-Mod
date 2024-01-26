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
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.UIntSerializer;
import kotlinx.serialization.internal.ULongSerializer;
import org.ton.bitstring.BitString;
import org.ton.bitstring.FiftHexBitStringSerializer;
import org.ton.tlb.CellRef;
/* compiled from: Transaction.kt */
/* loaded from: classes6.dex */
public final class Transaction$$serializer implements GeneratedSerializer<Transaction> {
    public static final Transaction$$serializer INSTANCE;
    private static final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;

    static {
        Transaction$$serializer transaction$$serializer = new Transaction$$serializer();
        INSTANCE = transaction$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("transaction", transaction$$serializer, 12);
        pluginGeneratedSerialDescriptor.addElement("account_addr", false);
        pluginGeneratedSerialDescriptor.addElement("lt", false);
        pluginGeneratedSerialDescriptor.addElement("prev_trans_hash", false);
        pluginGeneratedSerialDescriptor.addElement("prev_trans_lt", false);
        pluginGeneratedSerialDescriptor.addElement("now", false);
        pluginGeneratedSerialDescriptor.addElement("outmsg_cnt", false);
        pluginGeneratedSerialDescriptor.addElement("orig_status", false);
        pluginGeneratedSerialDescriptor.addElement("end_status", false);
        pluginGeneratedSerialDescriptor.addElement("r1", false);
        pluginGeneratedSerialDescriptor.addElement("total_fees", false);
        pluginGeneratedSerialDescriptor.addElement("state_update", false);
        pluginGeneratedSerialDescriptor.addElement("description", false);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private Transaction$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        KSerializer<?>[] kSerializerArr;
        kSerializerArr = Transaction.$childSerializers;
        FiftHexBitStringSerializer fiftHexBitStringSerializer = FiftHexBitStringSerializer.INSTANCE;
        ULongSerializer uLongSerializer = ULongSerializer.INSTANCE;
        return new KSerializer[]{fiftHexBitStringSerializer, uLongSerializer, fiftHexBitStringSerializer, uLongSerializer, UIntSerializer.INSTANCE, IntSerializer.INSTANCE, kSerializerArr[6], kSerializerArr[7], kSerializerArr[8], CurrencyCollection$$serializer.INSTANCE, kSerializerArr[10], kSerializerArr[11]};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public Transaction deserialize(Decoder decoder) {
        KSerializer[] kSerializerArr;
        Object obj;
        Object obj2;
        Object obj3;
        CellRef cellRef;
        Object obj4;
        Object obj5;
        Object obj6;
        Object obj7;
        Object obj8;
        int i;
        Object obj9;
        Object obj10;
        int i2;
        Object obj11;
        Object obj12;
        Object obj13;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor2);
        kSerializerArr = Transaction.$childSerializers;
        if (beginStructure.decodeSequentially()) {
            FiftHexBitStringSerializer fiftHexBitStringSerializer = FiftHexBitStringSerializer.INSTANCE;
            obj6 = beginStructure.decodeSerializableElement(descriptor2, 0, fiftHexBitStringSerializer, null);
            ULongSerializer uLongSerializer = ULongSerializer.INSTANCE;
            obj3 = beginStructure.decodeSerializableElement(descriptor2, 1, uLongSerializer, null);
            obj4 = beginStructure.decodeSerializableElement(descriptor2, 2, fiftHexBitStringSerializer, null);
            Object decodeSerializableElement = beginStructure.decodeSerializableElement(descriptor2, 3, uLongSerializer, null);
            obj = beginStructure.decodeSerializableElement(descriptor2, 4, UIntSerializer.INSTANCE, null);
            int decodeIntElement = beginStructure.decodeIntElement(descriptor2, 5);
            obj7 = beginStructure.decodeSerializableElement(descriptor2, 6, kSerializerArr[6], null);
            obj9 = beginStructure.decodeSerializableElement(descriptor2, 7, kSerializerArr[7], null);
            obj2 = beginStructure.decodeSerializableElement(descriptor2, 8, kSerializerArr[8], null);
            obj10 = beginStructure.decodeSerializableElement(descriptor2, 9, CurrencyCollection$$serializer.INSTANCE, null);
            Object decodeSerializableElement2 = beginStructure.decodeSerializableElement(descriptor2, 10, kSerializerArr[10], null);
            obj5 = beginStructure.decodeSerializableElement(descriptor2, 11, kSerializerArr[11], null);
            cellRef = decodeSerializableElement2;
            i2 = decodeIntElement;
            obj8 = decodeSerializableElement;
            i = 4095;
        } else {
            int i3 = 11;
            CellRef cellRef2 = null;
            Object obj14 = null;
            Object obj15 = null;
            obj = null;
            Object obj16 = null;
            obj2 = null;
            Object obj17 = null;
            Object obj18 = null;
            Object obj19 = null;
            boolean z = true;
            int i4 = 0;
            obj3 = null;
            int i5 = 0;
            Object obj20 = null;
            while (true) {
                int i6 = i5;
                if (z) {
                    int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                    switch (decodeElementIndex) {
                        case -1:
                            z = false;
                            i5 = i6;
                            obj20 = obj20;
                            cellRef2 = cellRef2;
                            obj19 = obj19;
                            break;
                        case 0:
                            i4 |= 1;
                            cellRef2 = cellRef2;
                            i5 = i6;
                            obj19 = obj19;
                            obj20 = beginStructure.decodeSerializableElement(descriptor2, 0, FiftHexBitStringSerializer.INSTANCE, obj20);
                            i3 = 11;
                            break;
                        case 1:
                            obj11 = obj20;
                            obj12 = obj19;
                            obj13 = cellRef2;
                            obj3 = beginStructure.decodeSerializableElement(descriptor2, 1, ULongSerializer.INSTANCE, obj3);
                            i4 |= 2;
                            cellRef2 = obj13;
                            i5 = i6;
                            i3 = 11;
                            obj19 = obj12;
                            obj20 = obj11;
                            break;
                        case 2:
                            obj11 = obj20;
                            obj12 = obj19;
                            obj13 = cellRef2;
                            obj16 = beginStructure.decodeSerializableElement(descriptor2, 2, FiftHexBitStringSerializer.INSTANCE, obj16);
                            i4 |= 4;
                            cellRef2 = obj13;
                            i5 = i6;
                            i3 = 11;
                            obj19 = obj12;
                            obj20 = obj11;
                            break;
                        case 3:
                            obj11 = obj20;
                            obj12 = obj19;
                            obj13 = cellRef2;
                            obj15 = beginStructure.decodeSerializableElement(descriptor2, 3, ULongSerializer.INSTANCE, obj15);
                            i4 |= 8;
                            cellRef2 = obj13;
                            i5 = i6;
                            i3 = 11;
                            obj19 = obj12;
                            obj20 = obj11;
                            break;
                        case 4:
                            obj11 = obj20;
                            obj12 = obj19;
                            obj13 = cellRef2;
                            obj = beginStructure.decodeSerializableElement(descriptor2, 4, UIntSerializer.INSTANCE, obj);
                            i4 |= 16;
                            cellRef2 = obj13;
                            i5 = i6;
                            i3 = 11;
                            obj19 = obj12;
                            obj20 = obj11;
                            break;
                        case 5:
                            obj11 = obj20;
                            obj12 = obj19;
                            i4 |= 32;
                            i5 = beginStructure.decodeIntElement(descriptor2, 5);
                            cellRef2 = cellRef2;
                            i3 = 11;
                            obj19 = obj12;
                            obj20 = obj11;
                            break;
                        case 6:
                            obj11 = obj20;
                            obj12 = obj19;
                            obj13 = cellRef2;
                            obj14 = beginStructure.decodeSerializableElement(descriptor2, 6, kSerializerArr[6], obj14);
                            i4 |= 64;
                            cellRef2 = obj13;
                            i5 = i6;
                            i3 = 11;
                            obj19 = obj12;
                            obj20 = obj11;
                            break;
                        case 7:
                            obj11 = obj20;
                            obj12 = obj19;
                            obj13 = cellRef2;
                            obj17 = beginStructure.decodeSerializableElement(descriptor2, 7, kSerializerArr[7], obj17);
                            i4 |= 128;
                            cellRef2 = obj13;
                            i5 = i6;
                            i3 = 11;
                            obj19 = obj12;
                            obj20 = obj11;
                            break;
                        case 8:
                            obj11 = obj20;
                            obj12 = obj19;
                            obj13 = cellRef2;
                            obj2 = beginStructure.decodeSerializableElement(descriptor2, 8, kSerializerArr[8], obj2);
                            i4 |= 256;
                            cellRef2 = obj13;
                            i5 = i6;
                            i3 = 11;
                            obj19 = obj12;
                            obj20 = obj11;
                            break;
                        case 9:
                            obj11 = obj20;
                            obj12 = obj19;
                            obj13 = cellRef2;
                            obj18 = beginStructure.decodeSerializableElement(descriptor2, 9, CurrencyCollection$$serializer.INSTANCE, obj18);
                            i4 |= 512;
                            cellRef2 = obj13;
                            i5 = i6;
                            i3 = 11;
                            obj19 = obj12;
                            obj20 = obj11;
                            break;
                        case 10:
                            cellRef2 = beginStructure.decodeSerializableElement(descriptor2, 10, kSerializerArr[10], cellRef2);
                            i4 |= 1024;
                            i5 = i6;
                            obj20 = obj20;
                            i3 = 11;
                            break;
                        case 11:
                            obj11 = obj20;
                            obj19 = beginStructure.decodeSerializableElement(descriptor2, i3, kSerializerArr[i3], obj19);
                            i4 |= 2048;
                            i5 = i6;
                            obj20 = obj11;
                            break;
                        default:
                            throw new UnknownFieldException(decodeElementIndex);
                    }
                } else {
                    Object obj21 = obj19;
                    cellRef = cellRef2;
                    obj4 = obj16;
                    obj5 = obj21;
                    obj6 = obj20;
                    obj7 = obj14;
                    obj8 = obj15;
                    i = i4;
                    obj9 = obj17;
                    obj10 = obj18;
                    i2 = i6;
                }
            }
        }
        beginStructure.endStructure(descriptor2);
        return new Transaction(i, (BitString) obj6, (ULong) obj3, (BitString) obj4, (ULong) obj8, (UInt) obj, i2, (AccountStatus) obj7, (AccountStatus) obj9, (CellRef) obj2, (CurrencyCollection) obj10, cellRef, (CellRef) obj5, null, null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, Transaction value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder beginStructure = encoder.beginStructure(descriptor2);
        Transaction.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
