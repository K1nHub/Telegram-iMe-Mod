package org.ton.api.validator.config;

import java.util.Collection;
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
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.json.JsonClassDiscriminator;
import org.ton.api.tonnode.TonNodeBlockIdExt;
import org.ton.api.tonnode.TonNodeBlockIdExt$$serializer;
/* compiled from: ValidatorConfigGlobal.kt */
/* loaded from: classes6.dex */
public final class ValidatorConfigGlobal$$serializer implements GeneratedSerializer<ValidatorConfigGlobal> {
    public static final ValidatorConfigGlobal$$serializer INSTANCE;
    private static final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;

    static {
        ValidatorConfigGlobal$$serializer validatorConfigGlobal$$serializer = new ValidatorConfigGlobal$$serializer();
        INSTANCE = validatorConfigGlobal$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("validator.config.global", validatorConfigGlobal$$serializer, 3);
        pluginGeneratedSerialDescriptor.addElement("zero_state", true);
        pluginGeneratedSerialDescriptor.addElement("init_block", true);
        pluginGeneratedSerialDescriptor.addElement("hardforks", true);
        pluginGeneratedSerialDescriptor.pushClassAnnotation(new JsonClassDiscriminator("@type") { // from class: org.ton.api.validator.config.ValidatorConfigGlobal$$serializer$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0
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

    private ValidatorConfigGlobal$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        KSerializer<?>[] kSerializerArr;
        kSerializerArr = ValidatorConfigGlobal.$childSerializers;
        TonNodeBlockIdExt$$serializer tonNodeBlockIdExt$$serializer = TonNodeBlockIdExt$$serializer.INSTANCE;
        return new KSerializer[]{tonNodeBlockIdExt$$serializer, tonNodeBlockIdExt$$serializer, kSerializerArr[2]};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public ValidatorConfigGlobal deserialize(Decoder decoder) {
        KSerializer[] kSerializerArr;
        int i;
        Object obj;
        Object obj2;
        Object obj3;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor2);
        kSerializerArr = ValidatorConfigGlobal.$childSerializers;
        if (beginStructure.decodeSequentially()) {
            TonNodeBlockIdExt$$serializer tonNodeBlockIdExt$$serializer = TonNodeBlockIdExt$$serializer.INSTANCE;
            Object decodeSerializableElement = beginStructure.decodeSerializableElement(descriptor2, 0, tonNodeBlockIdExt$$serializer, null);
            obj3 = beginStructure.decodeSerializableElement(descriptor2, 1, tonNodeBlockIdExt$$serializer, null);
            obj = beginStructure.decodeSerializableElement(descriptor2, 2, kSerializerArr[2], null);
            i = 7;
            obj2 = decodeSerializableElement;
        } else {
            Object obj4 = null;
            Object obj5 = null;
            Object obj6 = null;
            int i2 = 0;
            boolean z = true;
            while (z) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                if (decodeElementIndex == -1) {
                    z = false;
                } else if (decodeElementIndex == 0) {
                    obj4 = beginStructure.decodeSerializableElement(descriptor2, 0, TonNodeBlockIdExt$$serializer.INSTANCE, obj4);
                    i2 |= 1;
                } else if (decodeElementIndex == 1) {
                    obj5 = beginStructure.decodeSerializableElement(descriptor2, 1, TonNodeBlockIdExt$$serializer.INSTANCE, obj5);
                    i2 |= 2;
                } else if (decodeElementIndex != 2) {
                    throw new UnknownFieldException(decodeElementIndex);
                } else {
                    obj6 = beginStructure.decodeSerializableElement(descriptor2, 2, kSerializerArr[2], obj6);
                    i2 |= 4;
                }
            }
            i = i2;
            obj = obj6;
            obj2 = obj4;
            obj3 = obj5;
        }
        beginStructure.endStructure(descriptor2);
        return new ValidatorConfigGlobal(i, (TonNodeBlockIdExt) obj2, (TonNodeBlockIdExt) obj3, (Collection) obj, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, ValidatorConfigGlobal value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder beginStructure = encoder.beginStructure(descriptor2);
        ValidatorConfigGlobal.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
