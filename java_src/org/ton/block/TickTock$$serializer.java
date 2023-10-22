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
/* compiled from: TickTock.kt */
/* loaded from: classes6.dex */
public final class TickTock$$serializer implements GeneratedSerializer<TickTock> {
    public static final TickTock$$serializer INSTANCE;
    private static final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;

    static {
        TickTock$$serializer tickTock$$serializer = new TickTock$$serializer();
        INSTANCE = tickTock$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("tick_tock", tickTock$$serializer, 2);
        pluginGeneratedSerialDescriptor.addElement("tick", false);
        pluginGeneratedSerialDescriptor.addElement("tock", false);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private TickTock$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        BooleanSerializer booleanSerializer = BooleanSerializer.INSTANCE;
        return new KSerializer[]{booleanSerializer, booleanSerializer};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public TickTock deserialize(Decoder decoder) {
        boolean z;
        boolean z2;
        int i;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor2);
        if (beginStructure.decodeSequentially()) {
            z = beginStructure.decodeBooleanElement(descriptor2, 0);
            z2 = beginStructure.decodeBooleanElement(descriptor2, 1);
            i = 3;
        } else {
            boolean z3 = true;
            z = false;
            boolean z4 = false;
            int i2 = 0;
            while (z3) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                if (decodeElementIndex == -1) {
                    z3 = false;
                } else if (decodeElementIndex == 0) {
                    z = beginStructure.decodeBooleanElement(descriptor2, 0);
                    i2 |= 1;
                } else if (decodeElementIndex != 1) {
                    throw new UnknownFieldException(decodeElementIndex);
                } else {
                    z4 = beginStructure.decodeBooleanElement(descriptor2, 1);
                    i2 |= 2;
                }
            }
            z2 = z4;
            i = i2;
        }
        beginStructure.endStructure(descriptor2);
        return new TickTock(i, z, z2, null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, TickTock value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder beginStructure = encoder.beginStructure(descriptor2);
        TickTock.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
