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
/* compiled from: ChainedSignature.kt */
/* loaded from: classes6.dex */
public final class ChainedSignature$$serializer implements GeneratedSerializer<ChainedSignature> {
    public static final ChainedSignature$$serializer INSTANCE;
    private static final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;

    static {
        ChainedSignature$$serializer chainedSignature$$serializer = new ChainedSignature$$serializer();
        INSTANCE = chainedSignature$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("chained_signature", chainedSignature$$serializer, 2);
        pluginGeneratedSerialDescriptor.addElement("signed_crt", false);
        pluginGeneratedSerialDescriptor.addElement("temp_key_signature", false);
        pluginGeneratedSerialDescriptor.pushClassAnnotation(new JsonClassDiscriminator("@type") { // from class: org.ton.block.ChainedSignature$$serializer$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0
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

    private ChainedSignature$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        return new KSerializer[]{SignedCertificate$$serializer.INSTANCE, CryptoSignatureSimple$$serializer.INSTANCE};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public ChainedSignature deserialize(Decoder decoder) {
        Object obj;
        Object obj2;
        int i;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor2);
        if (beginStructure.decodeSequentially()) {
            obj = beginStructure.decodeSerializableElement(descriptor2, 0, SignedCertificate$$serializer.INSTANCE, null);
            obj2 = beginStructure.decodeSerializableElement(descriptor2, 1, CryptoSignatureSimple$$serializer.INSTANCE, null);
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
                    obj = beginStructure.decodeSerializableElement(descriptor2, 0, SignedCertificate$$serializer.INSTANCE, obj);
                    i2 |= 1;
                } else if (decodeElementIndex != 1) {
                    throw new UnknownFieldException(decodeElementIndex);
                } else {
                    obj3 = beginStructure.decodeSerializableElement(descriptor2, 1, CryptoSignatureSimple$$serializer.INSTANCE, obj3);
                    i2 |= 2;
                }
            }
            obj2 = obj3;
            i = i2;
        }
        beginStructure.endStructure(descriptor2);
        return new ChainedSignature(i, (SignedCertificate) obj, (CryptoSignatureSimple) obj2, null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, ChainedSignature value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder beginStructure = encoder.beginStructure(descriptor2);
        ChainedSignature.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
