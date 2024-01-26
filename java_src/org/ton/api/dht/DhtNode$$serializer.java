package org.ton.api.dht;

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
import org.ton.api.adnl.AdnlAddressList;
import org.ton.api.adnl.AdnlAddressList$$serializer;
import org.ton.api.pub.PublicKey;
import org.ton.crypto.Base64ByteArraySerializer;
/* compiled from: DhtNode.kt */
/* loaded from: classes6.dex */
public final class DhtNode$$serializer implements GeneratedSerializer<DhtNode> {
    public static final DhtNode$$serializer INSTANCE;
    private static final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;

    static {
        DhtNode$$serializer dhtNode$$serializer = new DhtNode$$serializer();
        INSTANCE = dhtNode$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.ton.api.dht.DhtNode", dhtNode$$serializer, 4);
        pluginGeneratedSerialDescriptor.addElement(TtmlNode.ATTR_ID, false);
        pluginGeneratedSerialDescriptor.addElement("addr_list", false);
        pluginGeneratedSerialDescriptor.addElement("version", true);
        pluginGeneratedSerialDescriptor.addElement("signature", true);
        pluginGeneratedSerialDescriptor.pushClassAnnotation(new C7695x6c935aed("@type"));
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private DhtNode$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        KSerializer<?>[] kSerializerArr;
        kSerializerArr = DhtNode.$childSerializers;
        return new KSerializer[]{kSerializerArr[0], AdnlAddressList$$serializer.INSTANCE, IntSerializer.INSTANCE, Base64ByteArraySerializer.INSTANCE};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public DhtNode deserialize(Decoder decoder) {
        KSerializer[] kSerializerArr;
        Object obj;
        int i;
        Object obj2;
        Object obj3;
        int i2;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor2);
        kSerializerArr = DhtNode.$childSerializers;
        if (beginStructure.decodeSequentially()) {
            obj = beginStructure.decodeSerializableElement(descriptor2, 0, kSerializerArr[0], null);
            obj2 = beginStructure.decodeSerializableElement(descriptor2, 1, AdnlAddressList$$serializer.INSTANCE, null);
            int decodeIntElement = beginStructure.decodeIntElement(descriptor2, 2);
            obj3 = beginStructure.decodeSerializableElement(descriptor2, 3, Base64ByteArraySerializer.INSTANCE, null);
            i2 = decodeIntElement;
            i = 15;
        } else {
            Object obj4 = null;
            Object obj5 = null;
            Object obj6 = null;
            boolean z = true;
            int i3 = 0;
            int i4 = 0;
            while (z) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                if (decodeElementIndex == -1) {
                    z = false;
                } else if (decodeElementIndex == 0) {
                    obj4 = beginStructure.decodeSerializableElement(descriptor2, 0, kSerializerArr[0], obj4);
                    i3 |= 1;
                } else if (decodeElementIndex == 1) {
                    obj5 = beginStructure.decodeSerializableElement(descriptor2, 1, AdnlAddressList$$serializer.INSTANCE, obj5);
                    i3 |= 2;
                } else if (decodeElementIndex == 2) {
                    i4 = beginStructure.decodeIntElement(descriptor2, 2);
                    i3 |= 4;
                } else if (decodeElementIndex != 3) {
                    throw new UnknownFieldException(decodeElementIndex);
                } else {
                    obj6 = beginStructure.decodeSerializableElement(descriptor2, 3, Base64ByteArraySerializer.INSTANCE, obj6);
                    i3 |= 8;
                }
            }
            obj = obj4;
            i = i3;
            obj2 = obj5;
            obj3 = obj6;
            i2 = i4;
        }
        beginStructure.endStructure(descriptor2);
        return new DhtNode(i, (PublicKey) obj, (AdnlAddressList) obj2, i2, (byte[]) obj3, null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, DhtNode value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder beginStructure = encoder.beginStructure(descriptor2);
        DhtNode.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
