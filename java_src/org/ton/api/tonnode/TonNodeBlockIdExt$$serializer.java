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
import kotlinx.serialization.internal.LongSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import org.ton.p045tl.ByteString;
import org.ton.p045tl.ByteStringSerializer;
/* compiled from: TonNodeBlockIdExt.kt */
/* loaded from: classes6.dex */
public final class TonNodeBlockIdExt$$serializer implements GeneratedSerializer<TonNodeBlockIdExt> {
    public static final TonNodeBlockIdExt$$serializer INSTANCE;
    private static final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;

    static {
        TonNodeBlockIdExt$$serializer tonNodeBlockIdExt$$serializer = new TonNodeBlockIdExt$$serializer();
        INSTANCE = tonNodeBlockIdExt$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.ton.api.tonnode.TonNodeBlockIdExt", tonNodeBlockIdExt$$serializer, 5);
        pluginGeneratedSerialDescriptor.addElement("workchain", false);
        pluginGeneratedSerialDescriptor.addElement("shard", false);
        pluginGeneratedSerialDescriptor.addElement("seqno", false);
        pluginGeneratedSerialDescriptor.addElement("root_hash", false);
        pluginGeneratedSerialDescriptor.addElement("file_hash", false);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private TonNodeBlockIdExt$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        IntSerializer intSerializer = IntSerializer.INSTANCE;
        ByteStringSerializer byteStringSerializer = ByteStringSerializer.INSTANCE;
        return new KSerializer[]{intSerializer, LongSerializer.INSTANCE, intSerializer, byteStringSerializer, byteStringSerializer};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public TonNodeBlockIdExt deserialize(Decoder decoder) {
        int i;
        Object obj;
        Object obj2;
        int i2;
        int i3;
        long j;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor2);
        Object obj3 = null;
        if (beginStructure.decodeSequentially()) {
            int decodeIntElement = beginStructure.decodeIntElement(descriptor2, 0);
            long decodeLongElement = beginStructure.decodeLongElement(descriptor2, 1);
            int decodeIntElement2 = beginStructure.decodeIntElement(descriptor2, 2);
            ByteStringSerializer byteStringSerializer = ByteStringSerializer.INSTANCE;
            obj = beginStructure.decodeSerializableElement(descriptor2, 3, byteStringSerializer, null);
            obj2 = beginStructure.decodeSerializableElement(descriptor2, 4, byteStringSerializer, null);
            i = decodeIntElement;
            i2 = 31;
            i3 = decodeIntElement2;
            j = decodeLongElement;
        } else {
            boolean z = true;
            int i4 = 0;
            int i5 = 0;
            long j2 = 0;
            Object obj4 = null;
            int i6 = 0;
            while (z) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                if (decodeElementIndex == -1) {
                    z = false;
                } else if (decodeElementIndex == 0) {
                    i4 = beginStructure.decodeIntElement(descriptor2, 0);
                    i6 |= 1;
                } else if (decodeElementIndex == 1) {
                    j2 = beginStructure.decodeLongElement(descriptor2, 1);
                    i6 |= 2;
                } else if (decodeElementIndex == 2) {
                    i5 = beginStructure.decodeIntElement(descriptor2, 2);
                    i6 |= 4;
                } else if (decodeElementIndex == 3) {
                    obj3 = beginStructure.decodeSerializableElement(descriptor2, 3, ByteStringSerializer.INSTANCE, obj3);
                    i6 |= 8;
                } else if (decodeElementIndex != 4) {
                    throw new UnknownFieldException(decodeElementIndex);
                } else {
                    obj4 = beginStructure.decodeSerializableElement(descriptor2, 4, ByteStringSerializer.INSTANCE, obj4);
                    i6 |= 16;
                }
            }
            i = i4;
            obj = obj3;
            obj2 = obj4;
            i2 = i6;
            i3 = i5;
            j = j2;
        }
        beginStructure.endStructure(descriptor2);
        return new TonNodeBlockIdExt(i2, i, j, i3, (ByteString) obj, (ByteString) obj2, null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, TonNodeBlockIdExt value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder beginStructure = encoder.beginStructure(descriptor2);
        TonNodeBlockIdExt.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
