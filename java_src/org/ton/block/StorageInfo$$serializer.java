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
/* compiled from: StorageInfo.kt */
/* loaded from: classes6.dex */
public final class StorageInfo$$serializer implements GeneratedSerializer<StorageInfo> {
    public static final StorageInfo$$serializer INSTANCE;
    private static final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;

    static {
        StorageInfo$$serializer storageInfo$$serializer = new StorageInfo$$serializer();
        INSTANCE = storageInfo$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("storage_info", storageInfo$$serializer, 3);
        pluginGeneratedSerialDescriptor.addElement("used", false);
        pluginGeneratedSerialDescriptor.addElement("last_paid", false);
        pluginGeneratedSerialDescriptor.addElement("due_payment", false);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private StorageInfo$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        KSerializer<?>[] kSerializerArr;
        kSerializerArr = StorageInfo.$childSerializers;
        return new KSerializer[]{StorageUsed$$serializer.INSTANCE, UIntSerializer.INSTANCE, kSerializerArr[2]};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public StorageInfo deserialize(Decoder decoder) {
        KSerializer[] kSerializerArr;
        Object obj;
        Object obj2;
        int i;
        Object obj3;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor2);
        kSerializerArr = StorageInfo.$childSerializers;
        if (beginStructure.decodeSequentially()) {
            obj = beginStructure.decodeSerializableElement(descriptor2, 0, StorageUsed$$serializer.INSTANCE, null);
            Object decodeSerializableElement = beginStructure.decodeSerializableElement(descriptor2, 1, UIntSerializer.INSTANCE, null);
            obj3 = beginStructure.decodeSerializableElement(descriptor2, 2, kSerializerArr[2], null);
            obj2 = decodeSerializableElement;
            i = 7;
        } else {
            obj = null;
            obj2 = null;
            Object obj4 = null;
            int i2 = 0;
            boolean z = true;
            while (z) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                if (decodeElementIndex == -1) {
                    z = false;
                } else if (decodeElementIndex == 0) {
                    obj = beginStructure.decodeSerializableElement(descriptor2, 0, StorageUsed$$serializer.INSTANCE, obj);
                    i2 |= 1;
                } else if (decodeElementIndex == 1) {
                    obj2 = beginStructure.decodeSerializableElement(descriptor2, 1, UIntSerializer.INSTANCE, obj2);
                    i2 |= 2;
                } else if (decodeElementIndex != 2) {
                    throw new UnknownFieldException(decodeElementIndex);
                } else {
                    obj4 = beginStructure.decodeSerializableElement(descriptor2, 2, kSerializerArr[2], obj4);
                    i2 |= 4;
                }
            }
            i = i2;
            obj3 = obj4;
        }
        beginStructure.endStructure(descriptor2);
        return new StorageInfo(i, (StorageUsed) obj, (UInt) obj2, (Maybe) obj3, null, null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, StorageInfo value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder beginStructure = encoder.beginStructure(descriptor2);
        StorageInfo.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
