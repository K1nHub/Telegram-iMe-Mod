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
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.UIntSerializer;
import kotlinx.serialization.internal.ULongSerializer;
/* compiled from: Counters.kt */
/* loaded from: classes6.dex */
public final class Counters$$serializer implements GeneratedSerializer<Counters> {
    public static final Counters$$serializer INSTANCE;
    private static final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;

    static {
        Counters$$serializer counters$$serializer = new Counters$$serializer();
        INSTANCE = counters$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("counters", counters$$serializer, 4);
        pluginGeneratedSerialDescriptor.addElement("last_updated", false);
        pluginGeneratedSerialDescriptor.addElement("total", false);
        pluginGeneratedSerialDescriptor.addElement("cnt2048", false);
        pluginGeneratedSerialDescriptor.addElement("cnt65536", false);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private Counters$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        ULongSerializer uLongSerializer = ULongSerializer.INSTANCE;
        return new KSerializer[]{UIntSerializer.INSTANCE, uLongSerializer, uLongSerializer, uLongSerializer};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public Counters deserialize(Decoder decoder) {
        Object obj;
        int i;
        Object obj2;
        Object obj3;
        Object obj4;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor2);
        if (beginStructure.decodeSequentially()) {
            obj = beginStructure.decodeSerializableElement(descriptor2, 0, UIntSerializer.INSTANCE, null);
            ULongSerializer uLongSerializer = ULongSerializer.INSTANCE;
            obj2 = beginStructure.decodeSerializableElement(descriptor2, 1, uLongSerializer, null);
            obj3 = beginStructure.decodeSerializableElement(descriptor2, 2, uLongSerializer, null);
            obj4 = beginStructure.decodeSerializableElement(descriptor2, 3, uLongSerializer, null);
            i = 15;
        } else {
            obj = null;
            Object obj5 = null;
            Object obj6 = null;
            Object obj7 = null;
            int i2 = 0;
            boolean z = true;
            while (z) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                if (decodeElementIndex == -1) {
                    z = false;
                } else if (decodeElementIndex == 0) {
                    obj = beginStructure.decodeSerializableElement(descriptor2, 0, UIntSerializer.INSTANCE, obj);
                    i2 |= 1;
                } else if (decodeElementIndex == 1) {
                    obj5 = beginStructure.decodeSerializableElement(descriptor2, 1, ULongSerializer.INSTANCE, obj5);
                    i2 |= 2;
                } else if (decodeElementIndex == 2) {
                    obj6 = beginStructure.decodeSerializableElement(descriptor2, 2, ULongSerializer.INSTANCE, obj6);
                    i2 |= 4;
                } else if (decodeElementIndex != 3) {
                    throw new UnknownFieldException(decodeElementIndex);
                } else {
                    obj7 = beginStructure.decodeSerializableElement(descriptor2, 3, ULongSerializer.INSTANCE, obj7);
                    i2 |= 8;
                }
            }
            i = i2;
            obj2 = obj5;
            obj3 = obj6;
            obj4 = obj7;
        }
        beginStructure.endStructure(descriptor2);
        return new Counters(i, (UInt) obj, (ULong) obj2, (ULong) obj3, (ULong) obj4, null, null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, Counters value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder beginStructure = encoder.beginStructure(descriptor2);
        Counters.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
