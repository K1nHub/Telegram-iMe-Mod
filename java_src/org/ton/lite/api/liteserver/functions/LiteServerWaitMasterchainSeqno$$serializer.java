package org.ton.lite.api.liteserver.functions;

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
/* compiled from: LiteServerWaitMasterchainSeqno.kt */
/* loaded from: classes6.dex */
public final class LiteServerWaitMasterchainSeqno$$serializer implements GeneratedSerializer<LiteServerWaitMasterchainSeqno> {
    public static final LiteServerWaitMasterchainSeqno$$serializer INSTANCE;
    private static final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;

    static {
        LiteServerWaitMasterchainSeqno$$serializer liteServerWaitMasterchainSeqno$$serializer = new LiteServerWaitMasterchainSeqno$$serializer();
        INSTANCE = liteServerWaitMasterchainSeqno$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("liteServer.waitMasterchainSeqno", liteServerWaitMasterchainSeqno$$serializer, 2);
        pluginGeneratedSerialDescriptor.addElement("seqno", false);
        pluginGeneratedSerialDescriptor.addElement("timeout_ms", false);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private LiteServerWaitMasterchainSeqno$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        IntSerializer intSerializer = IntSerializer.INSTANCE;
        return new KSerializer[]{intSerializer, intSerializer};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public LiteServerWaitMasterchainSeqno deserialize(Decoder decoder) {
        int i;
        int i2;
        int i3;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor2);
        if (beginStructure.decodeSequentially()) {
            i = beginStructure.decodeIntElement(descriptor2, 0);
            i2 = beginStructure.decodeIntElement(descriptor2, 1);
            i3 = 3;
        } else {
            boolean z = true;
            i = 0;
            int i4 = 0;
            int i5 = 0;
            while (z) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                if (decodeElementIndex == -1) {
                    z = false;
                } else if (decodeElementIndex == 0) {
                    i = beginStructure.decodeIntElement(descriptor2, 0);
                    i5 |= 1;
                } else if (decodeElementIndex != 1) {
                    throw new UnknownFieldException(decodeElementIndex);
                } else {
                    i4 = beginStructure.decodeIntElement(descriptor2, 1);
                    i5 |= 2;
                }
            }
            i2 = i4;
            i3 = i5;
        }
        beginStructure.endStructure(descriptor2);
        return new LiteServerWaitMasterchainSeqno(i3, i, i2, null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, LiteServerWaitMasterchainSeqno value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder beginStructure = encoder.beginStructure(descriptor2);
        LiteServerWaitMasterchainSeqno.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
