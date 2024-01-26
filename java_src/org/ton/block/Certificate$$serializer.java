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
/* compiled from: Certificate.kt */
/* loaded from: classes6.dex */
public final class Certificate$$serializer implements GeneratedSerializer<Certificate> {
    public static final Certificate$$serializer INSTANCE;
    private static final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;

    static {
        Certificate$$serializer certificate$$serializer = new Certificate$$serializer();
        INSTANCE = certificate$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("certificate", certificate$$serializer, 3);
        pluginGeneratedSerialDescriptor.addElement("temp_key", false);
        pluginGeneratedSerialDescriptor.addElement("valid_since", false);
        pluginGeneratedSerialDescriptor.addElement("valid_until", false);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private Certificate$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        UIntSerializer uIntSerializer = UIntSerializer.INSTANCE;
        return new KSerializer[]{SigPubKey$$serializer.INSTANCE, uIntSerializer, uIntSerializer};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public Certificate deserialize(Decoder decoder) {
        Object obj;
        Object obj2;
        Object obj3;
        int i;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor2);
        Object obj4 = null;
        if (beginStructure.decodeSequentially()) {
            obj2 = beginStructure.decodeSerializableElement(descriptor2, 0, SigPubKey$$serializer.INSTANCE, null);
            UIntSerializer uIntSerializer = UIntSerializer.INSTANCE;
            obj = beginStructure.decodeSerializableElement(descriptor2, 1, uIntSerializer, null);
            obj3 = beginStructure.decodeSerializableElement(descriptor2, 2, uIntSerializer, null);
            i = 7;
        } else {
            Object obj5 = null;
            Object obj6 = null;
            int i2 = 0;
            boolean z = true;
            while (z) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                if (decodeElementIndex == -1) {
                    z = false;
                } else if (decodeElementIndex == 0) {
                    obj4 = beginStructure.decodeSerializableElement(descriptor2, 0, SigPubKey$$serializer.INSTANCE, obj4);
                    i2 |= 1;
                } else if (decodeElementIndex == 1) {
                    obj5 = beginStructure.decodeSerializableElement(descriptor2, 1, UIntSerializer.INSTANCE, obj5);
                    i2 |= 2;
                } else if (decodeElementIndex != 2) {
                    throw new UnknownFieldException(decodeElementIndex);
                } else {
                    obj6 = beginStructure.decodeSerializableElement(descriptor2, 2, UIntSerializer.INSTANCE, obj6);
                    i2 |= 4;
                }
            }
            obj = obj5;
            obj2 = obj4;
            obj3 = obj6;
            i = i2;
        }
        beginStructure.endStructure(descriptor2);
        return new Certificate(i, (SigPubKey) obj2, (UInt) obj, (UInt) obj3, null, null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, Certificate value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder beginStructure = encoder.beginStructure(descriptor2);
        Certificate.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
