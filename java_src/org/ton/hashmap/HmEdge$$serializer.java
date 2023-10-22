package org.ton.hashmap;

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
/* compiled from: HmEdge.kt */
/* loaded from: classes6.dex */
public final class HmEdge$$serializer<T> implements GeneratedSerializer<HmEdge<T>> {
    private final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;
    private final /* synthetic */ KSerializer<?> typeSerial0;

    private HmEdge$$serializer() {
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("hm_edge", this, 2);
        pluginGeneratedSerialDescriptor.addElement("label", false);
        pluginGeneratedSerialDescriptor.addElement("node", false);
        this.descriptor = pluginGeneratedSerialDescriptor;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ HmEdge$$serializer(KSerializer typeSerial0) {
        this();
        Intrinsics.checkNotNullParameter(typeSerial0, "typeSerial0");
        this.typeSerial0 = typeSerial0;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        KSerializer<?>[] access$get$childSerializers$cp = HmEdge.access$get$childSerializers$cp();
        return new KSerializer[]{access$get$childSerializers$cp[0], access$get$childSerializers$cp[1]};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public HmEdge<T> deserialize(Decoder decoder) {
        Object obj;
        Object obj2;
        int i;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor);
        KSerializer[] access$get$childSerializers$cp = HmEdge.access$get$childSerializers$cp();
        if (beginStructure.decodeSequentially()) {
            obj2 = beginStructure.decodeSerializableElement(descriptor, 0, access$get$childSerializers$cp[0], null);
            obj = beginStructure.decodeSerializableElement(descriptor, 1, access$get$childSerializers$cp[1], null);
            i = 3;
        } else {
            Object obj3 = null;
            Object obj4 = null;
            int i2 = 0;
            boolean z = true;
            while (z) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor);
                if (decodeElementIndex == -1) {
                    z = false;
                } else if (decodeElementIndex == 0) {
                    obj4 = beginStructure.decodeSerializableElement(descriptor, 0, access$get$childSerializers$cp[0], obj4);
                    i2 |= 1;
                } else if (decodeElementIndex != 1) {
                    throw new UnknownFieldException(decodeElementIndex);
                } else {
                    obj3 = beginStructure.decodeSerializableElement(descriptor, 1, access$get$childSerializers$cp[1], obj3);
                    i2 |= 2;
                }
            }
            obj = obj3;
            obj2 = obj4;
            i = i2;
        }
        beginStructure.endStructure(descriptor);
        return new HmEdge<>(i, (HmLabel) obj2, (HashMapNode) obj, null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return this.descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public /* bridge */ /* synthetic */ void serialize(Encoder encoder, Object obj) {
        serialize(encoder, (HmEdge) ((HmEdge) obj));
    }

    public void serialize(Encoder encoder, HmEdge<T> value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor = getDescriptor();
        CompositeEncoder beginStructure = encoder.beginStructure(descriptor);
        HmEdge.write$Self(value, beginStructure, descriptor, this.typeSerial0);
        beginStructure.endStructure(descriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return new KSerializer[]{this.typeSerial0};
    }
}
