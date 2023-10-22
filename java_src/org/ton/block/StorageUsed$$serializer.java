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
/* compiled from: StorageUsed.kt */
/* loaded from: classes6.dex */
public final class StorageUsed$$serializer implements GeneratedSerializer<StorageUsed> {
    public static final StorageUsed$$serializer INSTANCE;
    private static final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;

    static {
        StorageUsed$$serializer storageUsed$$serializer = new StorageUsed$$serializer();
        INSTANCE = storageUsed$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("storage_used", storageUsed$$serializer, 3);
        pluginGeneratedSerialDescriptor.addElement("cells", false);
        pluginGeneratedSerialDescriptor.addElement("bits", false);
        pluginGeneratedSerialDescriptor.addElement("public_cells", false);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private StorageUsed$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        VarUInteger$$serializer varUInteger$$serializer = VarUInteger$$serializer.INSTANCE;
        return new KSerializer[]{varUInteger$$serializer, varUInteger$$serializer, varUInteger$$serializer};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public StorageUsed deserialize(Decoder decoder) {
        Object obj;
        int i;
        Object obj2;
        Object obj3;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor2);
        if (beginStructure.decodeSequentially()) {
            VarUInteger$$serializer varUInteger$$serializer = VarUInteger$$serializer.INSTANCE;
            obj = beginStructure.decodeSerializableElement(descriptor2, 0, varUInteger$$serializer, null);
            obj2 = beginStructure.decodeSerializableElement(descriptor2, 1, varUInteger$$serializer, null);
            obj3 = beginStructure.decodeSerializableElement(descriptor2, 2, varUInteger$$serializer, null);
            i = 7;
        } else {
            Object obj4 = null;
            Object obj5 = null;
            Object obj6 = null;
            int i2 = 0;
            boolean z = true;
            while (z) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                if (decodeElementIndex == -1) {
                    z = false;
                } else if (decodeElementIndex == 0) {
                    obj4 = beginStructure.decodeSerializableElement(descriptor2, 0, VarUInteger$$serializer.INSTANCE, obj4);
                    i2 |= 1;
                } else if (decodeElementIndex == 1) {
                    obj5 = beginStructure.decodeSerializableElement(descriptor2, 1, VarUInteger$$serializer.INSTANCE, obj5);
                    i2 |= 2;
                } else if (decodeElementIndex != 2) {
                    throw new UnknownFieldException(decodeElementIndex);
                } else {
                    obj6 = beginStructure.decodeSerializableElement(descriptor2, 2, VarUInteger$$serializer.INSTANCE, obj6);
                    i2 |= 4;
                }
            }
            obj = obj4;
            i = i2;
            obj2 = obj5;
            obj3 = obj6;
        }
        beginStructure.endStructure(descriptor2);
        return new StorageUsed(i, (VarUInteger) obj, (VarUInteger) obj2, (VarUInteger) obj3, null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, StorageUsed value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder beginStructure = encoder.beginStructure(descriptor2);
        StorageUsed.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
