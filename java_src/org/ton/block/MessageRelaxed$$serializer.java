package org.ton.block;

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
/* compiled from: MessageRelaxed.kt */
/* loaded from: classes6.dex */
public final class MessageRelaxed$$serializer<X> implements GeneratedSerializer<MessageRelaxed<X>> {
    private final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;
    private final /* synthetic */ KSerializer<?> typeSerial0;

    private MessageRelaxed$$serializer() {
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.ton.block.MessageRelaxed", this, 3);
        pluginGeneratedSerialDescriptor.addElement("info", false);
        pluginGeneratedSerialDescriptor.addElement("init", false);
        pluginGeneratedSerialDescriptor.addElement(TtmlNode.TAG_BODY, false);
        this.descriptor = pluginGeneratedSerialDescriptor;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ MessageRelaxed$$serializer(KSerializer typeSerial0) {
        this();
        Intrinsics.checkNotNullParameter(typeSerial0, "typeSerial0");
        this.typeSerial0 = typeSerial0;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        KSerializer<?>[] access$get$childSerializers$cp = MessageRelaxed.access$get$childSerializers$cp();
        return new KSerializer[]{access$get$childSerializers$cp[0], access$get$childSerializers$cp[1], access$get$childSerializers$cp[2]};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public MessageRelaxed<X> deserialize(Decoder decoder) {
        Object obj;
        int i;
        Object obj2;
        Object obj3;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor);
        KSerializer[] access$get$childSerializers$cp = MessageRelaxed.access$get$childSerializers$cp();
        if (beginStructure.decodeSequentially()) {
            obj = beginStructure.decodeSerializableElement(descriptor, 0, access$get$childSerializers$cp[0], null);
            obj2 = beginStructure.decodeSerializableElement(descriptor, 1, access$get$childSerializers$cp[1], null);
            obj3 = beginStructure.decodeSerializableElement(descriptor, 2, access$get$childSerializers$cp[2], null);
            i = 7;
        } else {
            obj = null;
            Object obj4 = null;
            Object obj5 = null;
            int i2 = 0;
            boolean z = true;
            while (z) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor);
                if (decodeElementIndex == -1) {
                    z = false;
                } else if (decodeElementIndex == 0) {
                    obj = beginStructure.decodeSerializableElement(descriptor, 0, access$get$childSerializers$cp[0], obj);
                    i2 |= 1;
                } else if (decodeElementIndex == 1) {
                    obj4 = beginStructure.decodeSerializableElement(descriptor, 1, access$get$childSerializers$cp[1], obj4);
                    i2 |= 2;
                } else if (decodeElementIndex != 2) {
                    throw new UnknownFieldException(decodeElementIndex);
                } else {
                    obj5 = beginStructure.decodeSerializableElement(descriptor, 2, access$get$childSerializers$cp[2], obj5);
                    i2 |= 4;
                }
            }
            i = i2;
            obj2 = obj4;
            obj3 = obj5;
        }
        beginStructure.endStructure(descriptor);
        return new MessageRelaxed<>(i, (CommonMsgInfoRelaxed) obj, (Maybe) obj2, (Either) obj3, null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return this.descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public /* bridge */ /* synthetic */ void serialize(Encoder encoder, Object obj) {
        serialize(encoder, (MessageRelaxed) ((MessageRelaxed) obj));
    }

    public void serialize(Encoder encoder, MessageRelaxed<X> value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor = getDescriptor();
        CompositeEncoder beginStructure = encoder.beginStructure(descriptor);
        MessageRelaxed.write$Self(value, beginStructure, descriptor, this.typeSerial0);
        beginStructure.endStructure(descriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return new KSerializer[]{this.typeSerial0};
    }
}
