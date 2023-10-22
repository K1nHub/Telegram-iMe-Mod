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
/* compiled from: TransTickTock.kt */
/* loaded from: classes6.dex */
public final class TransTickTock$$serializer implements GeneratedSerializer<TransTickTock> {
    public static final TransTickTock$$serializer INSTANCE;
    private static final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;

    static {
        TransTickTock$$serializer transTickTock$$serializer = new TransTickTock$$serializer();
        INSTANCE = transTickTock$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("trans_tick_tock", transTickTock$$serializer, 6);
        pluginGeneratedSerialDescriptor.addElement("is_tock", false);
        pluginGeneratedSerialDescriptor.addElement("storage_ph", false);
        pluginGeneratedSerialDescriptor.addElement("compute_ph", false);
        pluginGeneratedSerialDescriptor.addElement("action", false);
        pluginGeneratedSerialDescriptor.addElement("aborted", false);
        pluginGeneratedSerialDescriptor.addElement("destroyed", false);
        pluginGeneratedSerialDescriptor.pushClassAnnotation(new C7546x409a9f17("@type"));
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private TransTickTock$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        KSerializer<?>[] kSerializerArr;
        kSerializerArr = TransTickTock.$childSerializers;
        BooleanSerializer booleanSerializer = BooleanSerializer.INSTANCE;
        return new KSerializer[]{booleanSerializer, TrStoragePhase$$serializer.INSTANCE, kSerializerArr[2], kSerializerArr[3], booleanSerializer, booleanSerializer};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public TransTickTock deserialize(Decoder decoder) {
        KSerializer[] kSerializerArr;
        boolean z;
        boolean z2;
        boolean z3;
        int i;
        Object obj;
        Object obj2;
        Object obj3;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor2);
        kSerializerArr = TransTickTock.$childSerializers;
        if (beginStructure.decodeSequentially()) {
            boolean decodeBooleanElement = beginStructure.decodeBooleanElement(descriptor2, 0);
            obj = beginStructure.decodeSerializableElement(descriptor2, 1, TrStoragePhase$$serializer.INSTANCE, null);
            obj2 = beginStructure.decodeSerializableElement(descriptor2, 2, kSerializerArr[2], null);
            obj3 = beginStructure.decodeSerializableElement(descriptor2, 3, kSerializerArr[3], null);
            boolean decodeBooleanElement2 = beginStructure.decodeBooleanElement(descriptor2, 4);
            z3 = beginStructure.decodeBooleanElement(descriptor2, 5);
            z = decodeBooleanElement2;
            i = 63;
            z2 = decodeBooleanElement;
        } else {
            Object obj4 = null;
            Object obj5 = null;
            Object obj6 = null;
            boolean z4 = true;
            boolean z5 = false;
            boolean z6 = false;
            z = false;
            int i2 = 0;
            while (z4) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                switch (decodeElementIndex) {
                    case -1:
                        z4 = false;
                        continue;
                    case 0:
                        z5 = beginStructure.decodeBooleanElement(descriptor2, 0);
                        i2 |= 1;
                        continue;
                    case 1:
                        obj4 = beginStructure.decodeSerializableElement(descriptor2, 1, TrStoragePhase$$serializer.INSTANCE, obj4);
                        i2 |= 2;
                        break;
                    case 2:
                        obj5 = beginStructure.decodeSerializableElement(descriptor2, 2, kSerializerArr[2], obj5);
                        i2 |= 4;
                        break;
                    case 3:
                        obj6 = beginStructure.decodeSerializableElement(descriptor2, 3, kSerializerArr[3], obj6);
                        i2 |= 8;
                        break;
                    case 4:
                        z = beginStructure.decodeBooleanElement(descriptor2, 4);
                        i2 |= 16;
                        break;
                    case 5:
                        z6 = beginStructure.decodeBooleanElement(descriptor2, 5);
                        i2 |= 32;
                        break;
                    default:
                        throw new UnknownFieldException(decodeElementIndex);
                }
            }
            z2 = z5;
            z3 = z6;
            i = i2;
            obj = obj4;
            obj2 = obj5;
            obj3 = obj6;
        }
        beginStructure.endStructure(descriptor2);
        return new TransTickTock(i, z2, (TrStoragePhase) obj, (TrComputePhase) obj2, (Maybe) obj3, z, z3, null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, TransTickTock value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder beginStructure = encoder.beginStructure(descriptor2);
        TransTickTock.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
