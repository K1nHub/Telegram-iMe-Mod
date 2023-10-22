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
/* compiled from: MsgDiscardFin.kt */
/* loaded from: classes6.dex */
public final class MsgDiscardFin$$serializer implements GeneratedSerializer<MsgDiscardFin> {
    public static final MsgDiscardFin$$serializer INSTANCE;
    private static final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;

    static {
        MsgDiscardFin$$serializer msgDiscardFin$$serializer = new MsgDiscardFin$$serializer();
        INSTANCE = msgDiscardFin$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("msg_discard_fin", msgDiscardFin$$serializer, 3);
        pluginGeneratedSerialDescriptor.addElement("inMsg", false);
        pluginGeneratedSerialDescriptor.addElement("transactionId", false);
        pluginGeneratedSerialDescriptor.addElement("fwdFee", false);
        pluginGeneratedSerialDescriptor.pushClassAnnotation(new JsonClassDiscriminator("@type") { // from class: org.ton.block.MsgDiscardFin$$serializer$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0
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

    private MsgDiscardFin$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        KSerializer<?>[] kSerializerArr;
        kSerializerArr = MsgDiscardFin.$childSerializers;
        return new KSerializer[]{kSerializerArr[0], ULongSerializer.INSTANCE, Coins$$serializer.INSTANCE};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public MsgDiscardFin deserialize(Decoder decoder) {
        KSerializer[] kSerializerArr;
        Object obj;
        Object obj2;
        Object obj3;
        int i;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor2);
        kSerializerArr = MsgDiscardFin.$childSerializers;
        Object obj4 = null;
        if (beginStructure.decodeSequentially()) {
            obj2 = beginStructure.decodeSerializableElement(descriptor2, 0, kSerializerArr[0], null);
            obj = beginStructure.decodeSerializableElement(descriptor2, 1, ULongSerializer.INSTANCE, null);
            obj3 = beginStructure.decodeSerializableElement(descriptor2, 2, Coins$$serializer.INSTANCE, null);
            i = 7;
        } else {
            obj = null;
            Object obj5 = null;
            boolean z = true;
            int i2 = 0;
            while (z) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                if (decodeElementIndex == -1) {
                    z = false;
                } else if (decodeElementIndex == 0) {
                    obj4 = beginStructure.decodeSerializableElement(descriptor2, 0, kSerializerArr[0], obj4);
                    i2 |= 1;
                } else if (decodeElementIndex == 1) {
                    obj = beginStructure.decodeSerializableElement(descriptor2, 1, ULongSerializer.INSTANCE, obj);
                    i2 |= 2;
                } else if (decodeElementIndex != 2) {
                    throw new UnknownFieldException(decodeElementIndex);
                } else {
                    obj5 = beginStructure.decodeSerializableElement(descriptor2, 2, Coins$$serializer.INSTANCE, obj5);
                    i2 |= 4;
                }
            }
            obj2 = obj4;
            obj3 = obj5;
            i = i2;
        }
        beginStructure.endStructure(descriptor2);
        return new MsgDiscardFin(i, (CellRef) obj2, (ULong) obj, (Coins) obj3, null, null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, MsgDiscardFin value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder beginStructure = encoder.beginStructure(descriptor2);
        MsgDiscardFin.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
