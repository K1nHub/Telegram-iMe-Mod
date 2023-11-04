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
/* compiled from: TransSplitPrepare.kt */
/* loaded from: classes6.dex */
public final class TransSplitPrepare$$serializer implements GeneratedSerializer<TransSplitPrepare> {
    public static final TransSplitPrepare$$serializer INSTANCE;
    private static final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;

    static {
        TransSplitPrepare$$serializer transSplitPrepare$$serializer = new TransSplitPrepare$$serializer();
        INSTANCE = transSplitPrepare$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("trans_split_prepare", transSplitPrepare$$serializer, 6);
        pluginGeneratedSerialDescriptor.addElement("splitInfo", false);
        pluginGeneratedSerialDescriptor.addElement("storagePh", false);
        pluginGeneratedSerialDescriptor.addElement("computePh", false);
        pluginGeneratedSerialDescriptor.addElement("action", false);
        pluginGeneratedSerialDescriptor.addElement("aborted", false);
        pluginGeneratedSerialDescriptor.addElement("destroyed", false);
        pluginGeneratedSerialDescriptor.pushClassAnnotation(new C7619x2f1d0b0a("@type"));
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private TransSplitPrepare$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        KSerializer<?>[] kSerializerArr;
        kSerializerArr = TransSplitPrepare.$childSerializers;
        BooleanSerializer booleanSerializer = BooleanSerializer.INSTANCE;
        return new KSerializer[]{SplitMergeInfo$$serializer.INSTANCE, kSerializerArr[1], kSerializerArr[2], kSerializerArr[3], booleanSerializer, booleanSerializer};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public TransSplitPrepare deserialize(Decoder decoder) {
        KSerializer[] kSerializerArr;
        boolean z;
        int i;
        Object obj;
        Object obj2;
        Object obj3;
        boolean z2;
        Object obj4;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor2);
        kSerializerArr = TransSplitPrepare.$childSerializers;
        int i2 = 5;
        if (beginStructure.decodeSequentially()) {
            obj4 = beginStructure.decodeSerializableElement(descriptor2, 0, SplitMergeInfo$$serializer.INSTANCE, null);
            obj = beginStructure.decodeSerializableElement(descriptor2, 1, kSerializerArr[1], null);
            obj2 = beginStructure.decodeSerializableElement(descriptor2, 2, kSerializerArr[2], null);
            obj3 = beginStructure.decodeSerializableElement(descriptor2, 3, kSerializerArr[3], null);
            boolean decodeBooleanElement = beginStructure.decodeBooleanElement(descriptor2, 4);
            z2 = beginStructure.decodeBooleanElement(descriptor2, 5);
            z = decodeBooleanElement;
            i = 63;
        } else {
            Object obj5 = null;
            Object obj6 = null;
            Object obj7 = null;
            Object obj8 = null;
            boolean z3 = false;
            boolean z4 = false;
            int i3 = 0;
            boolean z5 = true;
            while (z5) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                switch (decodeElementIndex) {
                    case -1:
                        z5 = false;
                        i2 = 5;
                    case 0:
                        obj5 = beginStructure.decodeSerializableElement(descriptor2, 0, SplitMergeInfo$$serializer.INSTANCE, obj5);
                        i3 |= 1;
                        i2 = 5;
                    case 1:
                        obj6 = beginStructure.decodeSerializableElement(descriptor2, 1, kSerializerArr[1], obj6);
                        i3 |= 2;
                    case 2:
                        obj7 = beginStructure.decodeSerializableElement(descriptor2, 2, kSerializerArr[2], obj7);
                        i3 |= 4;
                    case 3:
                        obj8 = beginStructure.decodeSerializableElement(descriptor2, 3, kSerializerArr[3], obj8);
                        i3 |= 8;
                    case 4:
                        z4 = beginStructure.decodeBooleanElement(descriptor2, 4);
                        i3 |= 16;
                    case 5:
                        z3 = beginStructure.decodeBooleanElement(descriptor2, i2);
                        i3 |= 32;
                    default:
                        throw new UnknownFieldException(decodeElementIndex);
                }
            }
            z = z4;
            i = i3;
            obj = obj6;
            obj2 = obj7;
            obj3 = obj8;
            z2 = z3;
            obj4 = obj5;
        }
        beginStructure.endStructure(descriptor2);
        return new TransSplitPrepare(i, (SplitMergeInfo) obj4, (Maybe) obj, (TrComputePhase) obj2, (Maybe) obj3, z, z2, null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, TransSplitPrepare value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder beginStructure = encoder.beginStructure(descriptor2);
        TransSplitPrepare.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
