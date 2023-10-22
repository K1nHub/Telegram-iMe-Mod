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
/* compiled from: KeyExtBlkRef.kt */
/* loaded from: classes6.dex */
public final class KeyExtBlkRef$$serializer implements GeneratedSerializer<KeyExtBlkRef> {
    public static final KeyExtBlkRef$$serializer INSTANCE;
    private static final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;

    static {
        KeyExtBlkRef$$serializer keyExtBlkRef$$serializer = new KeyExtBlkRef$$serializer();
        INSTANCE = keyExtBlkRef$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.ton.block.KeyExtBlkRef", keyExtBlkRef$$serializer, 2);
        pluginGeneratedSerialDescriptor.addElement("key", false);
        pluginGeneratedSerialDescriptor.addElement("blk_ref", false);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private KeyExtBlkRef$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        return new KSerializer[]{BooleanSerializer.INSTANCE, ExtBlkRef$$serializer.INSTANCE};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public KeyExtBlkRef deserialize(Decoder decoder) {
        boolean z;
        Object obj;
        int i;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor2);
        if (beginStructure.decodeSequentially()) {
            z = beginStructure.decodeBooleanElement(descriptor2, 0);
            obj = beginStructure.decodeSerializableElement(descriptor2, 1, ExtBlkRef$$serializer.INSTANCE, null);
            i = 3;
        } else {
            Object obj2 = null;
            z = false;
            int i2 = 0;
            boolean z2 = true;
            while (z2) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                if (decodeElementIndex == -1) {
                    z2 = false;
                } else if (decodeElementIndex == 0) {
                    z = beginStructure.decodeBooleanElement(descriptor2, 0);
                    i2 |= 1;
                } else if (decodeElementIndex != 1) {
                    throw new UnknownFieldException(decodeElementIndex);
                } else {
                    obj2 = beginStructure.decodeSerializableElement(descriptor2, 1, ExtBlkRef$$serializer.INSTANCE, obj2);
                    i2 |= 2;
                }
            }
            obj = obj2;
            i = i2;
        }
        beginStructure.endStructure(descriptor2);
        return new KeyExtBlkRef(i, z, (ExtBlkRef) obj, null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, KeyExtBlkRef value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder beginStructure = encoder.beginStructure(descriptor2);
        KeyExtBlkRef.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
