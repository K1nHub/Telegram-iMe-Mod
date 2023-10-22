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
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.json.JsonClassDiscriminator;
/* compiled from: IntermediateAddressRegular.kt */
/* loaded from: classes6.dex */
public final class IntermediateAddressRegular$$serializer implements GeneratedSerializer<IntermediateAddressRegular> {
    public static final IntermediateAddressRegular$$serializer INSTANCE;
    private static final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;

    static {
        IntermediateAddressRegular$$serializer intermediateAddressRegular$$serializer = new IntermediateAddressRegular$$serializer();
        INSTANCE = intermediateAddressRegular$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("interm_addr_regular", intermediateAddressRegular$$serializer, 1);
        pluginGeneratedSerialDescriptor.addElement("use_dest_bits", false);
        pluginGeneratedSerialDescriptor.pushClassAnnotation(new JsonClassDiscriminator("@type") { // from class: org.ton.block.IntermediateAddressRegular$$serializer$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0
            private final /* synthetic */ String discriminator;

            {
                Intrinsics.checkNotNullParameter(discriminator, "discriminator");
                this.discriminator = discriminator;
            }

            @Override // java.lang.annotation.Annotation
            public final /* synthetic */ Class annotationType() {
                return JsonClassDiscriminator.class;
            }

            @Override // kotlinx.serialization.json.JsonClassDiscriminator
            public final /* synthetic */ String discriminator() {
                return this.discriminator;
            }

            @Override // java.lang.annotation.Annotation
            public final boolean equals(Object obj) {
                return (obj instanceof JsonClassDiscriminator) && Intrinsics.areEqual(discriminator(), ((JsonClassDiscriminator) obj).discriminator());
            }

            @Override // java.lang.annotation.Annotation
            public final int hashCode() {
                return this.discriminator.hashCode() ^ 707790692;
            }

            @Override // java.lang.annotation.Annotation
            public final String toString() {
                return "@kotlinx.serialization.json.JsonClassDiscriminator(discriminator=" + this.discriminator + ')';
            }
        });
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private IntermediateAddressRegular$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        return new KSerializer[]{IntSerializer.INSTANCE};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public IntermediateAddressRegular deserialize(Decoder decoder) {
        int i;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor2);
        int i2 = 1;
        if (beginStructure.decodeSequentially()) {
            i = beginStructure.decodeIntElement(descriptor2, 0);
        } else {
            i = 0;
            int i3 = 0;
            while (i2 != 0) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                if (decodeElementIndex == -1) {
                    i2 = 0;
                } else if (decodeElementIndex != 0) {
                    throw new UnknownFieldException(decodeElementIndex);
                } else {
                    i = beginStructure.decodeIntElement(descriptor2, 0);
                    i3 |= 1;
                }
            }
            i2 = i3;
        }
        beginStructure.endStructure(descriptor2);
        return new IntermediateAddressRegular(i2, i, null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, IntermediateAddressRegular value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder beginStructure = encoder.beginStructure(descriptor2);
        beginStructure.encodeIntElement(descriptor2, 0, value.useDestBits);
        beginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
