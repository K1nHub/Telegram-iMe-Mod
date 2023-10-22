package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.UnknownFieldException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.BooleanSerializer;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.json.JsonClassDiscriminator;
import org.ton.tlb.CellRef;
/* compiled from: TransSplitInstall.kt */
/* loaded from: classes6.dex */
public final class TransSplitInstall$$serializer implements GeneratedSerializer<TransSplitInstall> {
    public static final TransSplitInstall$$serializer INSTANCE;
    private static final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;

    static {
        TransSplitInstall$$serializer transSplitInstall$$serializer = new TransSplitInstall$$serializer();
        INSTANCE = transSplitInstall$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("trans_split_install", transSplitInstall$$serializer, 3);
        pluginGeneratedSerialDescriptor.addElement("split_info", false);
        pluginGeneratedSerialDescriptor.addElement("prepare_transaction", false);
        pluginGeneratedSerialDescriptor.addElement("installed", false);
        pluginGeneratedSerialDescriptor.pushClassAnnotation(new JsonClassDiscriminator("@type") { // from class: org.ton.block.TransSplitInstall$$serializer$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0
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

    private TransSplitInstall$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        KSerializer<?>[] kSerializerArr;
        kSerializerArr = TransSplitInstall.$childSerializers;
        return new KSerializer[]{SplitMergeInfo$$serializer.INSTANCE, kSerializerArr[1], BooleanSerializer.INSTANCE};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public TransSplitInstall deserialize(Decoder decoder) {
        KSerializer[] kSerializerArr;
        boolean z;
        Object obj;
        Object obj2;
        int i;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor2);
        kSerializerArr = TransSplitInstall.$childSerializers;
        Object obj3 = null;
        if (beginStructure.decodeSequentially()) {
            obj2 = beginStructure.decodeSerializableElement(descriptor2, 0, SplitMergeInfo$$serializer.INSTANCE, null);
            obj = beginStructure.decodeSerializableElement(descriptor2, 1, kSerializerArr[1], null);
            i = 7;
            z = beginStructure.decodeBooleanElement(descriptor2, 2);
        } else {
            Object obj4 = null;
            z = false;
            int i2 = 0;
            boolean z2 = true;
            while (z2) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                if (decodeElementIndex == -1) {
                    z2 = false;
                } else if (decodeElementIndex == 0) {
                    obj3 = beginStructure.decodeSerializableElement(descriptor2, 0, SplitMergeInfo$$serializer.INSTANCE, obj3);
                    i2 |= 1;
                } else if (decodeElementIndex == 1) {
                    obj4 = beginStructure.decodeSerializableElement(descriptor2, 1, kSerializerArr[1], obj4);
                    i2 |= 2;
                } else if (decodeElementIndex != 2) {
                    throw new UnknownFieldException(decodeElementIndex);
                } else {
                    z = beginStructure.decodeBooleanElement(descriptor2, 2);
                    i2 |= 4;
                }
            }
            obj = obj4;
            obj2 = obj3;
            i = i2;
        }
        beginStructure.endStructure(descriptor2);
        return new TransSplitInstall(i, (SplitMergeInfo) obj2, (CellRef) obj, z, null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, TransSplitInstall value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder beginStructure = encoder.beginStructure(descriptor2);
        TransSplitInstall.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
