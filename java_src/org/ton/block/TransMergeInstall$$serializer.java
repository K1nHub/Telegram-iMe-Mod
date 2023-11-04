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
/* compiled from: TransMergeInstall.kt */
/* loaded from: classes6.dex */
public final class TransMergeInstall$$serializer implements GeneratedSerializer<TransMergeInstall> {
    public static final TransMergeInstall$$serializer INSTANCE;
    private static final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;

    static {
        TransMergeInstall$$serializer transMergeInstall$$serializer = new TransMergeInstall$$serializer();
        INSTANCE = transMergeInstall$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("trans_merge_install", transMergeInstall$$serializer, 8);
        pluginGeneratedSerialDescriptor.addElement("split_info", false);
        pluginGeneratedSerialDescriptor.addElement("prepare_transaction", false);
        pluginGeneratedSerialDescriptor.addElement("storage_ph", false);
        pluginGeneratedSerialDescriptor.addElement("credit_ph", false);
        pluginGeneratedSerialDescriptor.addElement("compute_ph", false);
        pluginGeneratedSerialDescriptor.addElement("action", false);
        pluginGeneratedSerialDescriptor.addElement("aborted", false);
        pluginGeneratedSerialDescriptor.addElement("destroyed", false);
        pluginGeneratedSerialDescriptor.pushClassAnnotation(new C7615xc1d40114("@type"));
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private TransMergeInstall$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        KSerializer<?>[] kSerializerArr;
        kSerializerArr = TransMergeInstall.$childSerializers;
        BooleanSerializer booleanSerializer = BooleanSerializer.INSTANCE;
        return new KSerializer[]{SplitMergeInfo$$serializer.INSTANCE, kSerializerArr[1], kSerializerArr[2], kSerializerArr[3], kSerializerArr[4], kSerializerArr[5], booleanSerializer, booleanSerializer};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public TransMergeInstall deserialize(Decoder decoder) {
        KSerializer[] kSerializerArr;
        Object obj;
        Object obj2;
        Object obj3;
        Object obj4;
        int i;
        Object obj5;
        boolean z;
        boolean z2;
        Object obj6;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor2);
        kSerializerArr = TransMergeInstall.$childSerializers;
        int i2 = 7;
        int i3 = 6;
        if (beginStructure.decodeSequentially()) {
            obj6 = beginStructure.decodeSerializableElement(descriptor2, 0, SplitMergeInfo$$serializer.INSTANCE, null);
            obj5 = beginStructure.decodeSerializableElement(descriptor2, 1, kSerializerArr[1], null);
            obj3 = beginStructure.decodeSerializableElement(descriptor2, 2, kSerializerArr[2], null);
            obj4 = beginStructure.decodeSerializableElement(descriptor2, 3, kSerializerArr[3], null);
            obj2 = beginStructure.decodeSerializableElement(descriptor2, 4, kSerializerArr[4], null);
            obj = beginStructure.decodeSerializableElement(descriptor2, 5, kSerializerArr[5], null);
            boolean decodeBooleanElement = beginStructure.decodeBooleanElement(descriptor2, 6);
            z = beginStructure.decodeBooleanElement(descriptor2, 7);
            z2 = decodeBooleanElement;
            i = 255;
        } else {
            Object obj7 = null;
            Object obj8 = null;
            Object obj9 = null;
            Object obj10 = null;
            boolean z3 = false;
            int i4 = 0;
            boolean z4 = true;
            Object obj11 = null;
            boolean z5 = false;
            Object obj12 = null;
            while (z4) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                switch (decodeElementIndex) {
                    case -1:
                        z4 = false;
                        i2 = 7;
                    case 0:
                        obj9 = beginStructure.decodeSerializableElement(descriptor2, 0, SplitMergeInfo$$serializer.INSTANCE, obj9);
                        i4 |= 1;
                        i2 = 7;
                        i3 = 6;
                    case 1:
                        obj10 = beginStructure.decodeSerializableElement(descriptor2, 1, kSerializerArr[1], obj10);
                        i4 |= 2;
                        i2 = 7;
                        i3 = 6;
                    case 2:
                        obj12 = beginStructure.decodeSerializableElement(descriptor2, 2, kSerializerArr[2], obj12);
                        i4 |= 4;
                        i2 = 7;
                        i3 = 6;
                    case 3:
                        obj11 = beginStructure.decodeSerializableElement(descriptor2, 3, kSerializerArr[3], obj11);
                        i4 |= 8;
                        i2 = 7;
                        i3 = 6;
                    case 4:
                        obj8 = beginStructure.decodeSerializableElement(descriptor2, 4, kSerializerArr[4], obj8);
                        i4 |= 16;
                        i2 = 7;
                    case 5:
                        obj7 = beginStructure.decodeSerializableElement(descriptor2, 5, kSerializerArr[5], obj7);
                        i4 |= 32;
                    case 6:
                        z5 = beginStructure.decodeBooleanElement(descriptor2, i3);
                        i4 |= 64;
                    case 7:
                        z3 = beginStructure.decodeBooleanElement(descriptor2, i2);
                        i4 |= 128;
                    default:
                        throw new UnknownFieldException(decodeElementIndex);
                }
            }
            obj = obj7;
            obj2 = obj8;
            obj3 = obj12;
            obj4 = obj11;
            i = i4;
            obj5 = obj10;
            z = z3;
            z2 = z5;
            obj6 = obj9;
        }
        beginStructure.endStructure(descriptor2);
        return new TransMergeInstall(i, (SplitMergeInfo) obj6, (CellRef) obj5, (Maybe) obj3, (Maybe) obj4, (TrComputePhase) obj2, (Maybe) obj, z2, z, null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, TransMergeInstall value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder beginStructure = encoder.beginStructure(descriptor2);
        TransMergeInstall.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
