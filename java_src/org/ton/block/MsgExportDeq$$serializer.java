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
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.ULongSerializer;
import kotlinx.serialization.json.JsonClassDiscriminator;
import org.ton.tlb.CellRef;
/* compiled from: MsgExportDeq.kt */
/* loaded from: classes6.dex */
public final class MsgExportDeq$$serializer implements GeneratedSerializer<MsgExportDeq> {
    public static final MsgExportDeq$$serializer INSTANCE;
    private static final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;

    static {
        MsgExportDeq$$serializer msgExportDeq$$serializer = new MsgExportDeq$$serializer();
        INSTANCE = msgExportDeq$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("msg_export_deq", msgExportDeq$$serializer, 2);
        pluginGeneratedSerialDescriptor.addElement("outMsg", false);
        pluginGeneratedSerialDescriptor.addElement("importBlockLt", false);
        pluginGeneratedSerialDescriptor.pushClassAnnotation(new JsonClassDiscriminator("@type") { // from class: org.ton.block.MsgExportDeq$$serializer$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0
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

    private MsgExportDeq$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        KSerializer<?>[] kSerializerArr;
        kSerializerArr = MsgExportDeq.$childSerializers;
        return new KSerializer[]{kSerializerArr[0], ULongSerializer.INSTANCE};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public MsgExportDeq deserialize(Decoder decoder) {
        KSerializer[] kSerializerArr;
        Object obj;
        int i;
        Object obj2;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor2);
        kSerializerArr = MsgExportDeq.$childSerializers;
        if (beginStructure.decodeSequentially()) {
            obj = beginStructure.decodeSerializableElement(descriptor2, 0, kSerializerArr[0], null);
            obj2 = beginStructure.decodeSerializableElement(descriptor2, 1, ULongSerializer.INSTANCE, null);
            i = 3;
        } else {
            Object obj3 = null;
            Object obj4 = null;
            boolean z = true;
            int i2 = 0;
            while (z) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                if (decodeElementIndex == -1) {
                    z = false;
                } else if (decodeElementIndex == 0) {
                    obj3 = beginStructure.decodeSerializableElement(descriptor2, 0, kSerializerArr[0], obj3);
                    i2 |= 1;
                } else if (decodeElementIndex != 1) {
                    throw new UnknownFieldException(decodeElementIndex);
                } else {
                    obj4 = beginStructure.decodeSerializableElement(descriptor2, 1, ULongSerializer.INSTANCE, obj4);
                    i2 |= 2;
                }
            }
            obj = obj3;
            i = i2;
            obj2 = obj4;
        }
        beginStructure.endStructure(descriptor2);
        return new MsgExportDeq(i, (CellRef) obj, (ULong) obj2, null, null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, MsgExportDeq value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder beginStructure = encoder.beginStructure(descriptor2);
        MsgExportDeq.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
