package org.ton.api.liteserver;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
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
import org.ton.api.pub.PublicKey;
/* compiled from: LiteServerDesc.kt */
/* loaded from: classes6.dex */
public final class LiteServerDesc$$serializer implements GeneratedSerializer<LiteServerDesc> {
    public static final LiteServerDesc$$serializer INSTANCE;
    private static final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;

    static {
        LiteServerDesc$$serializer liteServerDesc$$serializer = new LiteServerDesc$$serializer();
        INSTANCE = liteServerDesc$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("liteserver.desc", liteServerDesc$$serializer, 3);
        pluginGeneratedSerialDescriptor.addElement(TtmlNode.ATTR_ID, false);
        pluginGeneratedSerialDescriptor.addElement("ip", false);
        pluginGeneratedSerialDescriptor.addElement("port", false);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private LiteServerDesc$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        KSerializer<?>[] kSerializerArr;
        kSerializerArr = LiteServerDesc.$childSerializers;
        IntSerializer intSerializer = IntSerializer.INSTANCE;
        return new KSerializer[]{kSerializerArr[0], intSerializer, intSerializer};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public LiteServerDesc deserialize(Decoder decoder) {
        KSerializer[] kSerializerArr;
        int i;
        int i2;
        int i3;
        Object obj;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor2);
        kSerializerArr = LiteServerDesc.$childSerializers;
        if (beginStructure.decodeSequentially()) {
            obj = beginStructure.decodeSerializableElement(descriptor2, 0, kSerializerArr[0], null);
            i2 = beginStructure.decodeIntElement(descriptor2, 1);
            i = beginStructure.decodeIntElement(descriptor2, 2);
            i3 = 7;
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
                    obj2 = beginStructure.decodeSerializableElement(descriptor2, 0, kSerializerArr[0], obj2);
                    i5 |= 1;
                } else if (decodeElementIndex == 1) {
                    i4 = beginStructure.decodeIntElement(descriptor2, 1);
                    i5 |= 2;
                } else if (decodeElementIndex != 2) {
                    throw new UnknownFieldException(decodeElementIndex);
                } else {
                    i = beginStructure.decodeIntElement(descriptor2, 2);
                    i5 |= 4;
                }
            }
            i2 = i4;
            i3 = i5;
            obj = obj2;
        }
        beginStructure.endStructure(descriptor2);
        return new LiteServerDesc(i3, (PublicKey) obj, i2, i, null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, LiteServerDesc value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder beginStructure = encoder.beginStructure(descriptor2);
        LiteServerDesc.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
