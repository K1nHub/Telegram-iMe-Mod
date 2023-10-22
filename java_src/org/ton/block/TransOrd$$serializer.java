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
/* compiled from: TransOrd.kt */
/* loaded from: classes6.dex */
public final class TransOrd$$serializer implements GeneratedSerializer<TransOrd> {
    public static final TransOrd$$serializer INSTANCE;
    private static final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;

    static {
        TransOrd$$serializer transOrd$$serializer = new TransOrd$$serializer();
        INSTANCE = transOrd$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("trans_ord", transOrd$$serializer, 8);
        pluginGeneratedSerialDescriptor.addElement("credit_first", false);
        pluginGeneratedSerialDescriptor.addElement("storage_ph", false);
        pluginGeneratedSerialDescriptor.addElement("credit_ph", false);
        pluginGeneratedSerialDescriptor.addElement("compute_ph", false);
        pluginGeneratedSerialDescriptor.addElement("action", false);
        pluginGeneratedSerialDescriptor.addElement("aborted", false);
        pluginGeneratedSerialDescriptor.addElement("bounce", false);
        pluginGeneratedSerialDescriptor.addElement("destroyed", false);
        pluginGeneratedSerialDescriptor.pushClassAnnotation(new C7542x7d68d86("@type"));
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private TransOrd$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        KSerializer<?>[] kSerializerArr;
        kSerializerArr = TransOrd.$childSerializers;
        BooleanSerializer booleanSerializer = BooleanSerializer.INSTANCE;
        return new KSerializer[]{booleanSerializer, kSerializerArr[1], kSerializerArr[2], kSerializerArr[3], kSerializerArr[4], booleanSerializer, kSerializerArr[6], booleanSerializer};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public TransOrd deserialize(Decoder decoder) {
        KSerializer[] kSerializerArr;
        boolean z;
        Object obj;
        Object obj2;
        Object obj3;
        Object obj4;
        int i;
        Object obj5;
        boolean z2;
        boolean z3;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor2);
        kSerializerArr = TransOrd.$childSerializers;
        int i2 = 7;
        int i3 = 5;
        if (beginStructure.decodeSequentially()) {
            boolean decodeBooleanElement = beginStructure.decodeBooleanElement(descriptor2, 0);
            obj5 = beginStructure.decodeSerializableElement(descriptor2, 1, kSerializerArr[1], null);
            obj4 = beginStructure.decodeSerializableElement(descriptor2, 2, kSerializerArr[2], null);
            obj3 = beginStructure.decodeSerializableElement(descriptor2, 3, kSerializerArr[3], null);
            obj2 = beginStructure.decodeSerializableElement(descriptor2, 4, kSerializerArr[4], null);
            boolean decodeBooleanElement2 = beginStructure.decodeBooleanElement(descriptor2, 5);
            obj = beginStructure.decodeSerializableElement(descriptor2, 6, kSerializerArr[6], null);
            z2 = beginStructure.decodeBooleanElement(descriptor2, 7);
            z3 = decodeBooleanElement2;
            i = 255;
            z = decodeBooleanElement;
        } else {
            Object obj6 = null;
            Object obj7 = null;
            Object obj8 = null;
            boolean z4 = true;
            boolean z5 = false;
            boolean z6 = false;
            int i4 = 0;
            Object obj9 = null;
            boolean z7 = false;
            Object obj10 = null;
            while (z4) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                switch (decodeElementIndex) {
                    case -1:
                        z4 = false;
                        i2 = 7;
                        i3 = 5;
                        break;
                    case 0:
                        z5 = beginStructure.decodeBooleanElement(descriptor2, 0);
                        i4 |= 1;
                        i2 = 7;
                        i3 = 5;
                        break;
                    case 1:
                        obj8 = beginStructure.decodeSerializableElement(descriptor2, 1, kSerializerArr[1], obj8);
                        i4 |= 2;
                        i2 = 7;
                        i3 = 5;
                        break;
                    case 2:
                        obj10 = beginStructure.decodeSerializableElement(descriptor2, 2, kSerializerArr[2], obj10);
                        i4 |= 4;
                        i2 = 7;
                        i3 = 5;
                        break;
                    case 3:
                        obj9 = beginStructure.decodeSerializableElement(descriptor2, 3, kSerializerArr[3], obj9);
                        i4 |= 8;
                        i2 = 7;
                        i3 = 5;
                        break;
                    case 4:
                        obj7 = beginStructure.decodeSerializableElement(descriptor2, 4, kSerializerArr[4], obj7);
                        i4 |= 16;
                        i2 = 7;
                        break;
                    case 5:
                        z6 = beginStructure.decodeBooleanElement(descriptor2, i3);
                        i4 |= 32;
                        break;
                    case 6:
                        obj6 = beginStructure.decodeSerializableElement(descriptor2, 6, kSerializerArr[6], obj6);
                        i4 |= 64;
                        break;
                    case 7:
                        z7 = beginStructure.decodeBooleanElement(descriptor2, i2);
                        i4 |= 128;
                        break;
                    default:
                        throw new UnknownFieldException(decodeElementIndex);
                }
            }
            z = z5;
            obj = obj6;
            obj2 = obj7;
            obj3 = obj9;
            obj4 = obj10;
            i = i4;
            obj5 = obj8;
            z2 = z7;
            z3 = z6;
        }
        beginStructure.endStructure(descriptor2);
        return new TransOrd(i, z, (Maybe) obj5, (Maybe) obj4, (TrComputePhase) obj3, (Maybe) obj2, z3, (Maybe) obj, z2, null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, TransOrd value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder beginStructure = encoder.beginStructure(descriptor2);
        TransOrd.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
