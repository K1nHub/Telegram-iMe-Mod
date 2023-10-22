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
/* compiled from: SignedCertificate.kt */
/* loaded from: classes6.dex */
public final class SignedCertificate$$serializer implements GeneratedSerializer<SignedCertificate> {
    public static final SignedCertificate$$serializer INSTANCE;
    private static final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;

    static {
        SignedCertificate$$serializer signedCertificate$$serializer = new SignedCertificate$$serializer();
        INSTANCE = signedCertificate$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("signed_certificate", signedCertificate$$serializer, 2);
        pluginGeneratedSerialDescriptor.addElement("certificate", false);
        pluginGeneratedSerialDescriptor.addElement("certificate_signature", false);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private SignedCertificate$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        KSerializer<?>[] kSerializerArr;
        kSerializerArr = SignedCertificate.$childSerializers;
        return new KSerializer[]{Certificate$$serializer.INSTANCE, kSerializerArr[1]};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public SignedCertificate deserialize(Decoder decoder) {
        KSerializer[] kSerializerArr;
        Object obj;
        Object obj2;
        int i;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor2);
        kSerializerArr = SignedCertificate.$childSerializers;
        if (beginStructure.decodeSequentially()) {
            obj2 = beginStructure.decodeSerializableElement(descriptor2, 0, Certificate$$serializer.INSTANCE, null);
            obj = beginStructure.decodeSerializableElement(descriptor2, 1, kSerializerArr[1], null);
            i = 3;
        } else {
            Object obj3 = null;
            Object obj4 = null;
            int i2 = 0;
            boolean z = true;
            while (z) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                if (decodeElementIndex == -1) {
                    z = false;
                } else if (decodeElementIndex == 0) {
                    obj4 = beginStructure.decodeSerializableElement(descriptor2, 0, Certificate$$serializer.INSTANCE, obj4);
                    i2 |= 1;
                } else if (decodeElementIndex != 1) {
                    throw new UnknownFieldException(decodeElementIndex);
                } else {
                    obj3 = beginStructure.decodeSerializableElement(descriptor2, 1, kSerializerArr[1], obj3);
                    i2 |= 2;
                }
            }
            obj = obj3;
            obj2 = obj4;
            i = i2;
        }
        beginStructure.endStructure(descriptor2);
        return new SignedCertificate(i, (Certificate) obj2, (CryptoSignature) obj, null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, SignedCertificate value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder beginStructure = encoder.beginStructure(descriptor2);
        SignedCertificate.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
