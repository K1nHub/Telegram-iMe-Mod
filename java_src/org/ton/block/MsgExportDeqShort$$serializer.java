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
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.ULongSerializer;
import kotlinx.serialization.json.JsonClassDiscriminator;
import org.ton.bitstring.BitString;
import org.ton.bitstring.FiftHexBitStringSerializer;
/* compiled from: MsgExportDeqShort.kt */
/* loaded from: classes6.dex */
public final class MsgExportDeqShort$$serializer implements GeneratedSerializer<MsgExportDeqShort> {
    public static final MsgExportDeqShort$$serializer INSTANCE;
    private static final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;

    static {
        MsgExportDeqShort$$serializer msgExportDeqShort$$serializer = new MsgExportDeqShort$$serializer();
        INSTANCE = msgExportDeqShort$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("msg_export_deq_short", msgExportDeqShort$$serializer, 4);
        pluginGeneratedSerialDescriptor.addElement("msgEnvHash", false);
        pluginGeneratedSerialDescriptor.addElement("nextWorkchain", false);
        pluginGeneratedSerialDescriptor.addElement("nextAddrPfx", false);
        pluginGeneratedSerialDescriptor.addElement("importBlockLt", false);
        pluginGeneratedSerialDescriptor.pushClassAnnotation(new JsonClassDiscriminator("@type") { // from class: org.ton.block.MsgExportDeqShort$$serializer$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0
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

    private MsgExportDeqShort$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        ULongSerializer uLongSerializer = ULongSerializer.INSTANCE;
        return new KSerializer[]{FiftHexBitStringSerializer.INSTANCE, IntSerializer.INSTANCE, uLongSerializer, uLongSerializer};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public MsgExportDeqShort deserialize(Decoder decoder) {
        Object obj;
        Object obj2;
        int i;
        Object obj3;
        int i2;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor2);
        if (beginStructure.decodeSequentially()) {
            obj = beginStructure.decodeSerializableElement(descriptor2, 0, FiftHexBitStringSerializer.INSTANCE, null);
            int decodeIntElement = beginStructure.decodeIntElement(descriptor2, 1);
            ULongSerializer uLongSerializer = ULongSerializer.INSTANCE;
            Object decodeSerializableElement = beginStructure.decodeSerializableElement(descriptor2, 2, uLongSerializer, null);
            obj3 = beginStructure.decodeSerializableElement(descriptor2, 3, uLongSerializer, null);
            obj2 = decodeSerializableElement;
            i2 = decodeIntElement;
            i = 15;
        } else {
            obj = null;
            obj2 = null;
            Object obj4 = null;
            int i3 = 0;
            int i4 = 0;
            boolean z = true;
            while (z) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                if (decodeElementIndex == -1) {
                    z = false;
                } else if (decodeElementIndex == 0) {
                    obj = beginStructure.decodeSerializableElement(descriptor2, 0, FiftHexBitStringSerializer.INSTANCE, obj);
                    i3 |= 1;
                } else if (decodeElementIndex == 1) {
                    i4 = beginStructure.decodeIntElement(descriptor2, 1);
                    i3 |= 2;
                } else if (decodeElementIndex == 2) {
                    obj2 = beginStructure.decodeSerializableElement(descriptor2, 2, ULongSerializer.INSTANCE, obj2);
                    i3 |= 4;
                } else if (decodeElementIndex != 3) {
                    throw new UnknownFieldException(decodeElementIndex);
                } else {
                    obj4 = beginStructure.decodeSerializableElement(descriptor2, 3, ULongSerializer.INSTANCE, obj4);
                    i3 |= 8;
                }
            }
            i = i3;
            obj3 = obj4;
            i2 = i4;
        }
        beginStructure.endStructure(descriptor2);
        return new MsgExportDeqShort(i, (BitString) obj, i2, (ULong) obj2, (ULong) obj3, null, null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, MsgExportDeqShort value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder beginStructure = encoder.beginStructure(descriptor2);
        MsgExportDeqShort.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
