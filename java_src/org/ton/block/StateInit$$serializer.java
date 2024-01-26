package org.ton.block;

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
import kotlinx.serialization.internal.SerializationConstructorMarker;
import org.ton.hashmap.HashMapE;
/* compiled from: StateInit.kt */
/* loaded from: classes6.dex */
public final class StateInit$$serializer implements GeneratedSerializer<StateInit> {
    public static final StateInit$$serializer INSTANCE;
    private static final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;

    static {
        StateInit$$serializer stateInit$$serializer = new StateInit$$serializer();
        INSTANCE = stateInit$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.ton.block.StateInit", stateInit$$serializer, 5);
        pluginGeneratedSerialDescriptor.addElement("split_depth", false);
        pluginGeneratedSerialDescriptor.addElement("special", false);
        pluginGeneratedSerialDescriptor.addElement("code", false);
        pluginGeneratedSerialDescriptor.addElement("data", false);
        pluginGeneratedSerialDescriptor.addElement("library", false);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private StateInit$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        KSerializer<?>[] kSerializerArr;
        kSerializerArr = StateInit.$childSerializers;
        return new KSerializer[]{kSerializerArr[0], kSerializerArr[1], kSerializerArr[2], kSerializerArr[3], kSerializerArr[4]};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public StateInit deserialize(Decoder decoder) {
        KSerializer[] kSerializerArr;
        Object obj;
        int i;
        Object obj2;
        Object obj3;
        Object obj4;
        Object obj5;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor2);
        kSerializerArr = StateInit.$childSerializers;
        if (beginStructure.decodeSequentially()) {
            obj = beginStructure.decodeSerializableElement(descriptor2, 0, kSerializerArr[0], null);
            obj2 = beginStructure.decodeSerializableElement(descriptor2, 1, kSerializerArr[1], null);
            obj3 = beginStructure.decodeSerializableElement(descriptor2, 2, kSerializerArr[2], null);
            obj4 = beginStructure.decodeSerializableElement(descriptor2, 3, kSerializerArr[3], null);
            obj5 = beginStructure.decodeSerializableElement(descriptor2, 4, kSerializerArr[4], null);
            i = 31;
        } else {
            obj = null;
            Object obj6 = null;
            Object obj7 = null;
            Object obj8 = null;
            Object obj9 = null;
            int i2 = 0;
            boolean z = true;
            while (z) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                if (decodeElementIndex == -1) {
                    z = false;
                } else if (decodeElementIndex == 0) {
                    obj = beginStructure.decodeSerializableElement(descriptor2, 0, kSerializerArr[0], obj);
                    i2 |= 1;
                } else if (decodeElementIndex == 1) {
                    obj6 = beginStructure.decodeSerializableElement(descriptor2, 1, kSerializerArr[1], obj6);
                    i2 |= 2;
                } else if (decodeElementIndex == 2) {
                    obj7 = beginStructure.decodeSerializableElement(descriptor2, 2, kSerializerArr[2], obj7);
                    i2 |= 4;
                } else if (decodeElementIndex == 3) {
                    obj8 = beginStructure.decodeSerializableElement(descriptor2, 3, kSerializerArr[3], obj8);
                    i2 |= 8;
                } else if (decodeElementIndex != 4) {
                    throw new UnknownFieldException(decodeElementIndex);
                } else {
                    obj9 = beginStructure.decodeSerializableElement(descriptor2, 4, kSerializerArr[4], obj9);
                    i2 |= 16;
                }
            }
            i = i2;
            obj2 = obj6;
            obj3 = obj7;
            obj4 = obj8;
            obj5 = obj9;
        }
        beginStructure.endStructure(descriptor2);
        return new StateInit(i, (Maybe) obj, (Maybe) obj2, (Maybe) obj3, (Maybe) obj4, (HashMapE) obj5, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, StateInit value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder beginStructure = encoder.beginStructure(descriptor2);
        StateInit.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
