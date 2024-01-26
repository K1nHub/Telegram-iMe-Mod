package org.ton.lite.api.liteserver;

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
import org.ton.p045tl.ByteString;
import org.ton.p045tl.ByteStringSerializer;
/* compiled from: LiteServerAccountId.kt */
/* loaded from: classes6.dex */
public final class LiteServerAccountId$$serializer implements GeneratedSerializer<LiteServerAccountId> {
    public static final LiteServerAccountId$$serializer INSTANCE;
    private static final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;

    static {
        LiteServerAccountId$$serializer liteServerAccountId$$serializer = new LiteServerAccountId$$serializer();
        INSTANCE = liteServerAccountId$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("liteServer.accountId", liteServerAccountId$$serializer, 2);
        pluginGeneratedSerialDescriptor.addElement("workchain", false);
        pluginGeneratedSerialDescriptor.addElement(TtmlNode.ATTR_ID, false);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private LiteServerAccountId$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        return new KSerializer[]{IntSerializer.INSTANCE, ByteStringSerializer.INSTANCE};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public LiteServerAccountId deserialize(Decoder decoder) {
        int i;
        Object obj;
        int i2;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor2);
        if (beginStructure.decodeSequentially()) {
            i = beginStructure.decodeIntElement(descriptor2, 0);
            obj = beginStructure.decodeSerializableElement(descriptor2, 1, ByteStringSerializer.INSTANCE, null);
            i2 = 3;
        } else {
            Object obj2 = null;
            i = 0;
            int i3 = 0;
            boolean z = true;
            while (z) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                if (decodeElementIndex == -1) {
                    z = false;
                } else if (decodeElementIndex == 0) {
                    i = beginStructure.decodeIntElement(descriptor2, 0);
                    i3 |= 1;
                } else if (decodeElementIndex != 1) {
                    throw new UnknownFieldException(decodeElementIndex);
                } else {
                    obj2 = beginStructure.decodeSerializableElement(descriptor2, 1, ByteStringSerializer.INSTANCE, obj2);
                    i3 |= 2;
                }
            }
            obj = obj2;
            i2 = i3;
        }
        beginStructure.endStructure(descriptor2);
        return new LiteServerAccountId(i2, i, (ByteString) obj, null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, LiteServerAccountId value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder beginStructure = encoder.beginStructure(descriptor2);
        LiteServerAccountId.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
