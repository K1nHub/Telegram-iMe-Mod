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
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.UIntSerializer;
import org.ton.block.FutureSplitMerge;
/* compiled from: FutureSplitMerge.kt */
/* loaded from: classes6.dex */
public final class FutureSplitMerge$FsmSplit$$serializer implements GeneratedSerializer<FutureSplitMerge.FsmSplit> {
    public static final FutureSplitMerge$FsmSplit$$serializer INSTANCE;
    private static final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;

    static {
        FutureSplitMerge$FsmSplit$$serializer futureSplitMerge$FsmSplit$$serializer = new FutureSplitMerge$FsmSplit$$serializer();
        INSTANCE = futureSplitMerge$FsmSplit$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("fsm_split", futureSplitMerge$FsmSplit$$serializer, 2);
        pluginGeneratedSerialDescriptor.addElement("splitUtime", false);
        pluginGeneratedSerialDescriptor.addElement("interval", false);
        pluginGeneratedSerialDescriptor.pushClassAnnotation(new C7556xec1cadf2("@type"));
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private FutureSplitMerge$FsmSplit$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        UIntSerializer uIntSerializer = UIntSerializer.INSTANCE;
        return new KSerializer[]{uIntSerializer, uIntSerializer};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public FutureSplitMerge.FsmSplit deserialize(Decoder decoder) {
        int i;
        Object obj;
        Object obj2;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor2);
        if (beginStructure.decodeSequentially()) {
            UIntSerializer uIntSerializer = UIntSerializer.INSTANCE;
            Object decodeSerializableElement = beginStructure.decodeSerializableElement(descriptor2, 0, uIntSerializer, null);
            obj2 = beginStructure.decodeSerializableElement(descriptor2, 1, uIntSerializer, null);
            i = 3;
            obj = decodeSerializableElement;
        } else {
            Object obj3 = null;
            Object obj4 = null;
            int i2 = 0;
            boolean z = true;
            while (z) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                if (decodeElementIndex == -1) {
                    z = false;
                } else if (decodeElementIndex == 0) {
                    obj3 = beginStructure.decodeSerializableElement(descriptor2, 0, UIntSerializer.INSTANCE, obj3);
                    i2 |= 1;
                } else if (decodeElementIndex != 1) {
                    throw new UnknownFieldException(decodeElementIndex);
                } else {
                    obj4 = beginStructure.decodeSerializableElement(descriptor2, 1, UIntSerializer.INSTANCE, obj4);
                    i2 |= 2;
                }
            }
            i = i2;
            obj = obj3;
            obj2 = obj4;
        }
        beginStructure.endStructure(descriptor2);
        return new FutureSplitMerge.FsmSplit(i, (UInt) obj, (UInt) obj2, null, null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, FutureSplitMerge.FsmSplit value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder beginStructure = encoder.beginStructure(descriptor2);
        FutureSplitMerge.FsmSplit.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
