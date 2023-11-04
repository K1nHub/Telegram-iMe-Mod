package org.ton.block;

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
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import org.ton.tlb.CellRef;
/* compiled from: TrPhaseComputeVm.kt */
/* loaded from: classes6.dex */
public final class TrPhaseComputeVm$$serializer implements GeneratedSerializer<TrPhaseComputeVm> {
    public static final TrPhaseComputeVm$$serializer INSTANCE;
    private static final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;

    static {
        TrPhaseComputeVm$$serializer trPhaseComputeVm$$serializer = new TrPhaseComputeVm$$serializer();
        INSTANCE = trPhaseComputeVm$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("tr_phase_compute_vm", trPhaseComputeVm$$serializer, 5);
        pluginGeneratedSerialDescriptor.addElement("success", false);
        pluginGeneratedSerialDescriptor.addElement("msg_state_used", false);
        pluginGeneratedSerialDescriptor.addElement("account_activated", false);
        pluginGeneratedSerialDescriptor.addElement("gas_fees", false);
        pluginGeneratedSerialDescriptor.addElement("r1", false);
        pluginGeneratedSerialDescriptor.pushClassAnnotation(new C7613x101b1ca4("@type"));
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private TrPhaseComputeVm$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        KSerializer<?>[] kSerializerArr;
        kSerializerArr = TrPhaseComputeVm.$childSerializers;
        BooleanSerializer booleanSerializer = BooleanSerializer.INSTANCE;
        return new KSerializer[]{booleanSerializer, booleanSerializer, booleanSerializer, Coins$$serializer.INSTANCE, kSerializerArr[4]};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public TrPhaseComputeVm deserialize(Decoder decoder) {
        KSerializer[] kSerializerArr;
        Object obj;
        int i;
        boolean z;
        Object obj2;
        boolean z2;
        boolean z3;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor2);
        kSerializerArr = TrPhaseComputeVm.$childSerializers;
        if (beginStructure.decodeSequentially()) {
            boolean decodeBooleanElement = beginStructure.decodeBooleanElement(descriptor2, 0);
            boolean decodeBooleanElement2 = beginStructure.decodeBooleanElement(descriptor2, 1);
            boolean decodeBooleanElement3 = beginStructure.decodeBooleanElement(descriptor2, 2);
            Object decodeSerializableElement = beginStructure.decodeSerializableElement(descriptor2, 3, Coins$$serializer.INSTANCE, null);
            obj2 = beginStructure.decodeSerializableElement(descriptor2, 4, kSerializerArr[4], null);
            i = 31;
            obj = decodeSerializableElement;
            z = decodeBooleanElement;
            z2 = decodeBooleanElement3;
            z3 = decodeBooleanElement2;
        } else {
            obj = null;
            Object obj3 = null;
            boolean z4 = true;
            boolean z5 = false;
            i = 0;
            boolean z6 = false;
            boolean z7 = false;
            while (z4) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                if (decodeElementIndex == -1) {
                    z4 = false;
                } else if (decodeElementIndex == 0) {
                    z5 = beginStructure.decodeBooleanElement(descriptor2, 0);
                    i |= 1;
                } else if (decodeElementIndex == 1) {
                    z7 = beginStructure.decodeBooleanElement(descriptor2, 1);
                    i |= 2;
                } else if (decodeElementIndex == 2) {
                    z6 = beginStructure.decodeBooleanElement(descriptor2, 2);
                    i |= 4;
                } else if (decodeElementIndex == 3) {
                    obj = beginStructure.decodeSerializableElement(descriptor2, 3, Coins$$serializer.INSTANCE, obj);
                    i |= 8;
                } else if (decodeElementIndex != 4) {
                    throw new UnknownFieldException(decodeElementIndex);
                } else {
                    obj3 = beginStructure.decodeSerializableElement(descriptor2, 4, kSerializerArr[4], obj3);
                    i |= 16;
                }
            }
            z = z5;
            obj2 = obj3;
            z2 = z6;
            z3 = z7;
        }
        beginStructure.endStructure(descriptor2);
        return new TrPhaseComputeVm(i, z, z3, z2, (Coins) obj, (CellRef) obj2, null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, TrPhaseComputeVm value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder beginStructure = encoder.beginStructure(descriptor2);
        TrPhaseComputeVm.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
