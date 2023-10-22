package org.ton.block;

import kotlin.UInt;
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
import org.ton.bitstring.BitString;
import org.ton.bitstring.FiftHexBitStringSerializer;
/* compiled from: TrPhaseComputeVm.kt */
/* loaded from: classes6.dex */
public final class TrComputePhaseAux$$serializer implements GeneratedSerializer<TrComputePhaseAux> {
    public static final TrComputePhaseAux$$serializer INSTANCE;
    private static final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;

    static {
        TrComputePhaseAux$$serializer trComputePhaseAux$$serializer = new TrComputePhaseAux$$serializer();
        INSTANCE = trComputePhaseAux$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.ton.block.TrComputePhaseAux", trComputePhaseAux$$serializer, 9);
        pluginGeneratedSerialDescriptor.addElement("gas_used", false);
        pluginGeneratedSerialDescriptor.addElement("gas_limit", false);
        pluginGeneratedSerialDescriptor.addElement("gas_credit", false);
        pluginGeneratedSerialDescriptor.addElement("mode", false);
        pluginGeneratedSerialDescriptor.addElement("exit_code", false);
        pluginGeneratedSerialDescriptor.addElement("exit_arg", false);
        pluginGeneratedSerialDescriptor.addElement("vm_steps", false);
        pluginGeneratedSerialDescriptor.addElement("vm_init_state_hash", false);
        pluginGeneratedSerialDescriptor.addElement("vm_final_state_hash", false);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private TrComputePhaseAux$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        KSerializer<?>[] kSerializerArr;
        kSerializerArr = TrComputePhaseAux.$childSerializers;
        VarUInteger$$serializer varUInteger$$serializer = VarUInteger$$serializer.INSTANCE;
        IntSerializer intSerializer = IntSerializer.INSTANCE;
        FiftHexBitStringSerializer fiftHexBitStringSerializer = FiftHexBitStringSerializer.INSTANCE;
        return new KSerializer[]{varUInteger$$serializer, varUInteger$$serializer, kSerializerArr[2], intSerializer, intSerializer, kSerializerArr[5], UIntSerializer.INSTANCE, fiftHexBitStringSerializer, fiftHexBitStringSerializer};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public TrComputePhaseAux deserialize(Decoder decoder) {
        KSerializer[] kSerializerArr;
        Object obj;
        Object obj2;
        int i;
        Object obj3;
        Object obj4;
        Object obj5;
        int i2;
        int i3;
        Object obj6;
        Object obj7;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor2);
        kSerializerArr = TrComputePhaseAux.$childSerializers;
        int i4 = 7;
        if (beginStructure.decodeSequentially()) {
            VarUInteger$$serializer varUInteger$$serializer = VarUInteger$$serializer.INSTANCE;
            obj7 = beginStructure.decodeSerializableElement(descriptor2, 0, varUInteger$$serializer, null);
            obj6 = beginStructure.decodeSerializableElement(descriptor2, 1, varUInteger$$serializer, null);
            obj2 = beginStructure.decodeSerializableElement(descriptor2, 2, kSerializerArr[2], null);
            int decodeIntElement = beginStructure.decodeIntElement(descriptor2, 3);
            int decodeIntElement2 = beginStructure.decodeIntElement(descriptor2, 4);
            obj5 = beginStructure.decodeSerializableElement(descriptor2, 5, kSerializerArr[5], null);
            obj3 = beginStructure.decodeSerializableElement(descriptor2, 6, UIntSerializer.INSTANCE, null);
            FiftHexBitStringSerializer fiftHexBitStringSerializer = FiftHexBitStringSerializer.INSTANCE;
            obj4 = beginStructure.decodeSerializableElement(descriptor2, 7, fiftHexBitStringSerializer, null);
            i3 = decodeIntElement;
            i = decodeIntElement2;
            obj = beginStructure.decodeSerializableElement(descriptor2, 8, fiftHexBitStringSerializer, null);
            i2 = 511;
        } else {
            boolean z = true;
            int i5 = 0;
            int i6 = 0;
            Object obj8 = null;
            Object obj9 = null;
            obj = null;
            obj2 = null;
            Object obj10 = null;
            Object obj11 = null;
            Object obj12 = null;
            i = 0;
            while (z) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                switch (decodeElementIndex) {
                    case -1:
                        z = false;
                        i4 = 7;
                        break;
                    case 0:
                        obj11 = beginStructure.decodeSerializableElement(descriptor2, 0, VarUInteger$$serializer.INSTANCE, obj11);
                        i6 |= 1;
                        i4 = 7;
                        break;
                    case 1:
                        obj12 = beginStructure.decodeSerializableElement(descriptor2, 1, VarUInteger$$serializer.INSTANCE, obj12);
                        i6 |= 2;
                        i4 = 7;
                        break;
                    case 2:
                        obj2 = beginStructure.decodeSerializableElement(descriptor2, 2, kSerializerArr[2], obj2);
                        i6 |= 4;
                        i4 = 7;
                        break;
                    case 3:
                        i6 |= 8;
                        i5 = beginStructure.decodeIntElement(descriptor2, 3);
                        i4 = 7;
                        break;
                    case 4:
                        i = beginStructure.decodeIntElement(descriptor2, 4);
                        i6 |= 16;
                        i4 = 7;
                        break;
                    case 5:
                        obj10 = beginStructure.decodeSerializableElement(descriptor2, 5, kSerializerArr[5], obj10);
                        i6 |= 32;
                        i4 = 7;
                        break;
                    case 6:
                        obj8 = beginStructure.decodeSerializableElement(descriptor2, 6, UIntSerializer.INSTANCE, obj8);
                        i6 |= 64;
                        i4 = 7;
                        continue;
                    case 7:
                        obj9 = beginStructure.decodeSerializableElement(descriptor2, i4, FiftHexBitStringSerializer.INSTANCE, obj9);
                        i6 |= 128;
                        break;
                    case 8:
                        obj = beginStructure.decodeSerializableElement(descriptor2, 8, FiftHexBitStringSerializer.INSTANCE, obj);
                        i6 |= 256;
                        break;
                    default:
                        throw new UnknownFieldException(decodeElementIndex);
                }
            }
            obj3 = obj8;
            obj4 = obj9;
            obj5 = obj10;
            i2 = i6;
            i3 = i5;
            obj6 = obj12;
            obj7 = obj11;
        }
        beginStructure.endStructure(descriptor2);
        return new TrComputePhaseAux(i2, (VarUInteger) obj7, (VarUInteger) obj6, (Maybe) obj2, i3, i, (Maybe) obj5, (UInt) obj3, (BitString) obj4, (BitString) obj, null, null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, TrComputePhaseAux value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder beginStructure = encoder.beginStructure(descriptor2);
        TrComputePhaseAux.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
