package org.ton.block;

import kotlin.ULong;
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
import kotlinx.serialization.internal.ULongSerializer;
/* compiled from: KeyMaxLt.kt */
/* loaded from: classes6.dex */
public final class KeyMaxLt$$serializer implements GeneratedSerializer<KeyMaxLt> {
    public static final KeyMaxLt$$serializer INSTANCE;
    private static final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;

    static {
        KeyMaxLt$$serializer keyMaxLt$$serializer = new KeyMaxLt$$serializer();
        INSTANCE = keyMaxLt$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.ton.block.KeyMaxLt", keyMaxLt$$serializer, 2);
        pluginGeneratedSerialDescriptor.addElement("key", false);
        pluginGeneratedSerialDescriptor.addElement("max_end_lt", false);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private KeyMaxLt$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        return new KSerializer[]{BooleanSerializer.INSTANCE, ULongSerializer.INSTANCE};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public KeyMaxLt deserialize(Decoder decoder) {
        boolean z;
        int i;
        Object obj;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor2);
        if (beginStructure.decodeSequentially()) {
            boolean decodeBooleanElement = beginStructure.decodeBooleanElement(descriptor2, 0);
            obj = beginStructure.decodeSerializableElement(descriptor2, 1, ULongSerializer.INSTANCE, null);
            z = decodeBooleanElement;
            i = 3;
        } else {
            boolean z2 = false;
            boolean z3 = true;
            Object obj2 = null;
            int i2 = 0;
            while (z3) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                if (decodeElementIndex == -1) {
                    z3 = false;
                } else if (decodeElementIndex == 0) {
                    z2 = beginStructure.decodeBooleanElement(descriptor2, 0);
                    i2 |= 1;
                } else if (decodeElementIndex != 1) {
                    throw new UnknownFieldException(decodeElementIndex);
                } else {
                    obj2 = beginStructure.decodeSerializableElement(descriptor2, 1, ULongSerializer.INSTANCE, obj2);
                    i2 |= 2;
                }
            }
            z = z2;
            i = i2;
            obj = obj2;
        }
        beginStructure.endStructure(descriptor2);
        return new KeyMaxLt(i, z, (ULong) obj, null, null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, KeyMaxLt value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder beginStructure = encoder.beginStructure(descriptor2);
        KeyMaxLt.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
