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
/* compiled from: TonNodeBlockId.kt */
/* loaded from: classes6.dex */
public final class TonNodeBlockIdImpl$$serializer implements GeneratedSerializer<TonNodeBlockIdImpl> {
    public static final TonNodeBlockIdImpl$$serializer INSTANCE;
    private static final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;

    static {
        TonNodeBlockIdImpl$$serializer tonNodeBlockIdImpl$$serializer = new TonNodeBlockIdImpl$$serializer();
        INSTANCE = tonNodeBlockIdImpl$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.ton.api.tonnode.TonNodeBlockIdImpl", tonNodeBlockIdImpl$$serializer, 3);
        pluginGeneratedSerialDescriptor.addElement("workchain", false);
        pluginGeneratedSerialDescriptor.addElement("shard", false);
        pluginGeneratedSerialDescriptor.addElement("seqno", false);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private TonNodeBlockIdImpl$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        IntSerializer intSerializer = IntSerializer.INSTANCE;
        return new KSerializer[]{intSerializer, LongSerializer.INSTANCE, intSerializer};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public TonNodeBlockIdImpl deserialize(Decoder decoder) {
        int i;
        int i2;
        long j;
        int i3;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor2);
        if (beginStructure.decodeSequentially()) {
            int decodeIntElement = beginStructure.decodeIntElement(descriptor2, 0);
            long decodeLongElement = beginStructure.decodeLongElement(descriptor2, 1);
            i = decodeIntElement;
            i2 = beginStructure.decodeIntElement(descriptor2, 2);
            j = decodeLongElement;
            i3 = 7;
        } else {
            boolean z = true;
            int i4 = 0;
            int i5 = 0;
            long j2 = 0;
            int i6 = 0;
            while (z) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                if (decodeElementIndex == -1) {
                    z = false;
                } else if (decodeElementIndex == 0) {
                    i4 = beginStructure.decodeIntElement(descriptor2, 0);
                    i5 |= 1;
                } else if (decodeElementIndex == 1) {
                    j2 = beginStructure.decodeLongElement(descriptor2, 1);
                    i5 |= 2;
                } else if (decodeElementIndex != 2) {
                    throw new UnknownFieldException(decodeElementIndex);
                } else {
                    i6 = beginStructure.decodeIntElement(descriptor2, 2);
                    i5 |= 4;
                }
            }
            i = i4;
            i2 = i6;
            j = j2;
            i3 = i5;
        }
        beginStructure.endStructure(descriptor2);
        return new TonNodeBlockIdImpl(i3, i, j, i2, null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, TonNodeBlockIdImpl value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder beginStructure = encoder.beginStructure(descriptor2);
        TonNodeBlockIdImpl.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
