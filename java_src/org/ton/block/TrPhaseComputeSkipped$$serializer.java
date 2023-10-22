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
import kotlinx.serialization.json.JsonClassDiscriminator;
/* compiled from: TrPhaseComputeSkipped.kt */
/* loaded from: classes6.dex */
public final class TrPhaseComputeSkipped$$serializer implements GeneratedSerializer<TrPhaseComputeSkipped> {
    public static final TrPhaseComputeSkipped$$serializer INSTANCE;
    private static final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;

    static {
        TrPhaseComputeSkipped$$serializer trPhaseComputeSkipped$$serializer = new TrPhaseComputeSkipped$$serializer();
        INSTANCE = trPhaseComputeSkipped$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("tr_phase_compute_skipped", trPhaseComputeSkipped$$serializer, 1);
        pluginGeneratedSerialDescriptor.addElement("reason", false);
        pluginGeneratedSerialDescriptor.pushClassAnnotation(new JsonClassDiscriminator("@type") { // from class: org.ton.block.TrPhaseComputeSkipped$$serializer$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0
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

    private TrPhaseComputeSkipped$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        KSerializer<?>[] kSerializerArr;
        kSerializerArr = TrPhaseComputeSkipped.$childSerializers;
        return new KSerializer[]{kSerializerArr[0]};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public TrPhaseComputeSkipped deserialize(Decoder decoder) {
        KSerializer[] kSerializerArr;
        Object obj;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor2);
        kSerializerArr = TrPhaseComputeSkipped.$childSerializers;
        int i = 1;
        if (beginStructure.decodeSequentially()) {
            obj = beginStructure.decodeSerializableElement(descriptor2, 0, kSerializerArr[0], null);
        } else {
            Object obj2 = null;
            int i2 = 0;
            while (i != 0) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                if (decodeElementIndex == -1) {
                    i = 0;
                } else if (decodeElementIndex != 0) {
                    throw new UnknownFieldException(decodeElementIndex);
                } else {
                    obj2 = beginStructure.decodeSerializableElement(descriptor2, 0, kSerializerArr[0], obj2);
                    i2 |= 1;
                }
            }
            obj = obj2;
            i = i2;
        }
        beginStructure.endStructure(descriptor2);
        return new TrPhaseComputeSkipped(i, (ComputeSkipReason) obj, null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, TrPhaseComputeSkipped value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder beginStructure = encoder.beginStructure(descriptor2);
        beginStructure.encodeSerializableElement(descriptor2, 0, TrPhaseComputeSkipped.$childSerializers[0], value.reason);
        beginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
