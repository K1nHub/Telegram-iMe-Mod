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
/* compiled from: StorageUsedShort.kt */
/* loaded from: classes6.dex */
public final class StorageUsedShort$$serializer implements GeneratedSerializer<StorageUsedShort> {
    public static final StorageUsedShort$$serializer INSTANCE;
    private static final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;

    static {
        StorageUsedShort$$serializer storageUsedShort$$serializer = new StorageUsedShort$$serializer();
        INSTANCE = storageUsedShort$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("storage_used_short", storageUsedShort$$serializer, 2);
        pluginGeneratedSerialDescriptor.addElement("cells", false);
        pluginGeneratedSerialDescriptor.addElement("bits", false);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private StorageUsedShort$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        VarUInteger$$serializer varUInteger$$serializer = VarUInteger$$serializer.INSTANCE;
        return new KSerializer[]{varUInteger$$serializer, varUInteger$$serializer};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public StorageUsedShort deserialize(Decoder decoder) {
        Object obj;
        Object obj2;
        int i;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor2);
        if (beginStructure.decodeSequentially()) {
            VarUInteger$$serializer varUInteger$$serializer = VarUInteger$$serializer.INSTANCE;
            obj2 = beginStructure.decodeSerializableElement(descriptor2, 0, varUInteger$$serializer, null);
            obj = beginStructure.decodeSerializableElement(descriptor2, 1, varUInteger$$serializer, null);
            i = 3;
        } else {
            obj = null;
            Object obj3 = null;
            int i2 = 0;
            boolean z = true;
            while (z) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                if (decodeElementIndex == -1) {
                    z = false;
                } else if (decodeElementIndex == 0) {
                    obj3 = beginStructure.decodeSerializableElement(descriptor2, 0, VarUInteger$$serializer.INSTANCE, obj3);
                    i2 |= 1;
                } else if (decodeElementIndex != 1) {
                    throw new UnknownFieldException(decodeElementIndex);
                } else {
                    obj = beginStructure.decodeSerializableElement(descriptor2, 1, VarUInteger$$serializer.INSTANCE, obj);
                    i2 |= 2;
                }
            }
            obj2 = obj3;
            i = i2;
        }
        beginStructure.endStructure(descriptor2);
        return new StorageUsedShort(i, (VarUInteger) obj2, (VarUInteger) obj, null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, StorageUsedShort value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder beginStructure = encoder.beginStructure(descriptor2);
        StorageUsedShort.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
