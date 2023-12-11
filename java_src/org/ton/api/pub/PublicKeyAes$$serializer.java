package org.ton.api.pub;

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
import org.ton.p045tl.ByteString;
import org.ton.p045tl.ByteStringSerializer;
/* compiled from: pub.kt */
/* loaded from: classes6.dex */
public final class PublicKeyAes$$serializer implements GeneratedSerializer<PublicKeyAes> {
    public static final PublicKeyAes$$serializer INSTANCE;
    private static final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;

    static {
        PublicKeyAes$$serializer publicKeyAes$$serializer = new PublicKeyAes$$serializer();
        INSTANCE = publicKeyAes$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("pub.aes", publicKeyAes$$serializer, 1);
        pluginGeneratedSerialDescriptor.addElement("key", false);
        pluginGeneratedSerialDescriptor.pushClassAnnotation(new C7512x79401cc9("@type"));
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private PublicKeyAes$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        return new KSerializer[]{ByteStringSerializer.INSTANCE};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public PublicKeyAes deserialize(Decoder decoder) {
        Object obj;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor2);
        int i = 1;
        if (beginStructure.decodeSequentially()) {
            obj = beginStructure.decodeSerializableElement(descriptor2, 0, ByteStringSerializer.INSTANCE, null);
        } else {
            obj = null;
            int i2 = 0;
            while (i != 0) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                if (decodeElementIndex == -1) {
                    i = 0;
                } else if (decodeElementIndex != 0) {
                    throw new UnknownFieldException(decodeElementIndex);
                } else {
                    obj = beginStructure.decodeSerializableElement(descriptor2, 0, ByteStringSerializer.INSTANCE, obj);
                    i2 |= 1;
                }
            }
            i = i2;
        }
        beginStructure.endStructure(descriptor2);
        return new PublicKeyAes(i, (ByteString) obj, null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, PublicKeyAes value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder beginStructure = encoder.beginStructure(descriptor2);
        beginStructure.encodeSerializableElement(descriptor2, 0, ByteStringSerializer.INSTANCE, value.key);
        beginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
