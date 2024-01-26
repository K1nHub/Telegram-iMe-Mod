package org.ton.api.dht.config;

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
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.json.JsonClassDiscriminator;
import org.ton.api.dht.DhtNodes;
import org.ton.api.dht.DhtNodes$$serializer;
/* compiled from: DhtConfigGlobal.kt */
/* loaded from: classes6.dex */
public final class DhtConfigGlobal$$serializer implements GeneratedSerializer<DhtConfigGlobal> {
    public static final DhtConfigGlobal$$serializer INSTANCE;
    private static final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;

    static {
        DhtConfigGlobal$$serializer dhtConfigGlobal$$serializer = new DhtConfigGlobal$$serializer();
        INSTANCE = dhtConfigGlobal$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("dht.config.global", dhtConfigGlobal$$serializer, 3);
        pluginGeneratedSerialDescriptor.addElement("static_nodes", true);
        pluginGeneratedSerialDescriptor.addElement("k", true);
        pluginGeneratedSerialDescriptor.addElement("a", true);
        pluginGeneratedSerialDescriptor.pushClassAnnotation(new JsonClassDiscriminator("@type") { // from class: org.ton.api.dht.config.DhtConfigGlobal$$serializer$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0
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

    private DhtConfigGlobal$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        IntSerializer intSerializer = IntSerializer.INSTANCE;
        return new KSerializer[]{DhtNodes$$serializer.INSTANCE, intSerializer, intSerializer};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public DhtConfigGlobal deserialize(Decoder decoder) {
        int i;
        int i2;
        int i3;
        Object obj;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor2);
        if (beginStructure.decodeSequentially()) {
            obj = beginStructure.decodeSerializableElement(descriptor2, 0, DhtNodes$$serializer.INSTANCE, null);
            int decodeIntElement = beginStructure.decodeIntElement(descriptor2, 1);
            i3 = beginStructure.decodeIntElement(descriptor2, 2);
            i = decodeIntElement;
            i2 = 7;
        } else {
            boolean z = true;
            int i4 = 0;
            int i5 = 0;
            Object obj2 = null;
            i = 0;
            while (z) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                if (decodeElementIndex == -1) {
                    z = false;
                } else if (decodeElementIndex == 0) {
                    obj2 = beginStructure.decodeSerializableElement(descriptor2, 0, DhtNodes$$serializer.INSTANCE, obj2);
                    i5 |= 1;
                } else if (decodeElementIndex == 1) {
                    i = beginStructure.decodeIntElement(descriptor2, 1);
                    i5 |= 2;
                } else if (decodeElementIndex != 2) {
                    throw new UnknownFieldException(decodeElementIndex);
                } else {
                    i4 = beginStructure.decodeIntElement(descriptor2, 2);
                    i5 |= 4;
                }
            }
            i2 = i5;
            i3 = i4;
            obj = obj2;
        }
        beginStructure.endStructure(descriptor2);
        return new DhtConfigGlobal(i2, (DhtNodes) obj, i, i3, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, DhtConfigGlobal value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder beginStructure = encoder.beginStructure(descriptor2);
        DhtConfigGlobal.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
