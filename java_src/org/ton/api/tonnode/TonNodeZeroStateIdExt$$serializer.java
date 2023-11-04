package org.ton.api.tonnode;

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
/* compiled from: TonNodeZeroStateIdExt.kt */
/* loaded from: classes6.dex */
public final class TonNodeZeroStateIdExt$$serializer implements GeneratedSerializer<TonNodeZeroStateIdExt> {
    public static final TonNodeZeroStateIdExt$$serializer INSTANCE;
    private static final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;

    static {
        TonNodeZeroStateIdExt$$serializer tonNodeZeroStateIdExt$$serializer = new TonNodeZeroStateIdExt$$serializer();
        INSTANCE = tonNodeZeroStateIdExt$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.ton.api.tonnode.TonNodeZeroStateIdExt", tonNodeZeroStateIdExt$$serializer, 3);
        pluginGeneratedSerialDescriptor.addElement("workchain", false);
        pluginGeneratedSerialDescriptor.addElement("root_hash", false);
        pluginGeneratedSerialDescriptor.addElement("file_hash", false);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private TonNodeZeroStateIdExt$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        ByteStringSerializer byteStringSerializer = ByteStringSerializer.INSTANCE;
        return new KSerializer[]{IntSerializer.INSTANCE, byteStringSerializer, byteStringSerializer};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public TonNodeZeroStateIdExt deserialize(Decoder decoder) {
        int i;
        Object obj;
        Object obj2;
        int i2;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor2);
        Object obj3 = null;
        if (beginStructure.decodeSequentially()) {
            int decodeIntElement = beginStructure.decodeIntElement(descriptor2, 0);
            ByteStringSerializer byteStringSerializer = ByteStringSerializer.INSTANCE;
            obj = beginStructure.decodeSerializableElement(descriptor2, 1, byteStringSerializer, null);
            obj2 = beginStructure.decodeSerializableElement(descriptor2, 2, byteStringSerializer, null);
            i = decodeIntElement;
            i2 = 7;
        } else {
            Object obj4 = null;
            int i3 = 0;
            int i4 = 0;
            boolean z = true;
            while (z) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                if (decodeElementIndex == -1) {
                    z = false;
                } else if (decodeElementIndex == 0) {
                    i3 = beginStructure.decodeIntElement(descriptor2, 0);
                    i4 |= 1;
                } else if (decodeElementIndex == 1) {
                    obj3 = beginStructure.decodeSerializableElement(descriptor2, 1, ByteStringSerializer.INSTANCE, obj3);
                    i4 |= 2;
                } else if (decodeElementIndex != 2) {
                    throw new UnknownFieldException(decodeElementIndex);
                } else {
                    obj4 = beginStructure.decodeSerializableElement(descriptor2, 2, ByteStringSerializer.INSTANCE, obj4);
                    i4 |= 4;
                }
            }
            i = i3;
            obj = obj3;
            obj2 = obj4;
            i2 = i4;
        }
        beginStructure.endStructure(descriptor2);
        return new TonNodeZeroStateIdExt(i2, i, (ByteString) obj, (ByteString) obj2, null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, TonNodeZeroStateIdExt value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder beginStructure = encoder.beginStructure(descriptor2);
        TonNodeZeroStateIdExt.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
