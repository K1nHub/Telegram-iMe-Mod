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
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import org.ton.api.tonnode.TonNodeBlockIdExt;
import org.ton.api.tonnode.TonNodeBlockIdExt$$serializer;
import org.ton.crypto.Base64ByteArraySerializer;
/* compiled from: LiteServerAccountState.kt */
/* loaded from: classes6.dex */
public final class LiteServerAccountState$$serializer implements GeneratedSerializer<LiteServerAccountState> {
    public static final LiteServerAccountState$$serializer INSTANCE;
    private static final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;

    static {
        LiteServerAccountState$$serializer liteServerAccountState$$serializer = new LiteServerAccountState$$serializer();
        INSTANCE = liteServerAccountState$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("liteServer.accountState", liteServerAccountState$$serializer, 5);
        pluginGeneratedSerialDescriptor.addElement(TtmlNode.ATTR_ID, false);
        pluginGeneratedSerialDescriptor.addElement("shardblk", false);
        pluginGeneratedSerialDescriptor.addElement("shard_proof", false);
        pluginGeneratedSerialDescriptor.addElement("proof", false);
        pluginGeneratedSerialDescriptor.addElement("state", false);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private LiteServerAccountState$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        TonNodeBlockIdExt$$serializer tonNodeBlockIdExt$$serializer = TonNodeBlockIdExt$$serializer.INSTANCE;
        Base64ByteArraySerializer base64ByteArraySerializer = Base64ByteArraySerializer.INSTANCE;
        return new KSerializer[]{tonNodeBlockIdExt$$serializer, tonNodeBlockIdExt$$serializer, base64ByteArraySerializer, base64ByteArraySerializer, base64ByteArraySerializer};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public LiteServerAccountState deserialize(Decoder decoder) {
        Object obj;
        int i;
        Object obj2;
        Object obj3;
        Object obj4;
        Object obj5;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor2);
        if (beginStructure.decodeSequentially()) {
            TonNodeBlockIdExt$$serializer tonNodeBlockIdExt$$serializer = TonNodeBlockIdExt$$serializer.INSTANCE;
            obj = beginStructure.decodeSerializableElement(descriptor2, 0, tonNodeBlockIdExt$$serializer, null);
            obj2 = beginStructure.decodeSerializableElement(descriptor2, 1, tonNodeBlockIdExt$$serializer, null);
            Base64ByteArraySerializer base64ByteArraySerializer = Base64ByteArraySerializer.INSTANCE;
            obj3 = beginStructure.decodeSerializableElement(descriptor2, 2, base64ByteArraySerializer, null);
            obj4 = beginStructure.decodeSerializableElement(descriptor2, 3, base64ByteArraySerializer, null);
            obj5 = beginStructure.decodeSerializableElement(descriptor2, 4, base64ByteArraySerializer, null);
            i = 31;
        } else {
            Object obj6 = null;
            Object obj7 = null;
            Object obj8 = null;
            Object obj9 = null;
            Object obj10 = null;
            boolean z = true;
            int i2 = 0;
            while (z) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                if (decodeElementIndex == -1) {
                    z = false;
                } else if (decodeElementIndex == 0) {
                    obj6 = beginStructure.decodeSerializableElement(descriptor2, 0, TonNodeBlockIdExt$$serializer.INSTANCE, obj6);
                    i2 |= 1;
                } else if (decodeElementIndex == 1) {
                    obj7 = beginStructure.decodeSerializableElement(descriptor2, 1, TonNodeBlockIdExt$$serializer.INSTANCE, obj7);
                    i2 |= 2;
                } else if (decodeElementIndex == 2) {
                    obj8 = beginStructure.decodeSerializableElement(descriptor2, 2, Base64ByteArraySerializer.INSTANCE, obj8);
                    i2 |= 4;
                } else if (decodeElementIndex == 3) {
                    obj9 = beginStructure.decodeSerializableElement(descriptor2, 3, Base64ByteArraySerializer.INSTANCE, obj9);
                    i2 |= 8;
                } else if (decodeElementIndex != 4) {
                    throw new UnknownFieldException(decodeElementIndex);
                } else {
                    obj10 = beginStructure.decodeSerializableElement(descriptor2, 4, Base64ByteArraySerializer.INSTANCE, obj10);
                    i2 |= 16;
                }
            }
            obj = obj6;
            i = i2;
            obj2 = obj7;
            obj3 = obj8;
            obj4 = obj9;
            obj5 = obj10;
        }
        beginStructure.endStructure(descriptor2);
        return new LiteServerAccountState(i, (TonNodeBlockIdExt) obj, (TonNodeBlockIdExt) obj2, (byte[]) obj3, (byte[]) obj4, (byte[]) obj5, null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, LiteServerAccountState value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder beginStructure = encoder.beginStructure(descriptor2);
        LiteServerAccountState.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
