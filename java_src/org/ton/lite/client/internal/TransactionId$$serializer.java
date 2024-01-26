package org.ton.lite.client.internal;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.UnknownFieldException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.LongSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import org.ton.bitstring.BitString;
import org.ton.bitstring.FiftHexBitStringSerializer;
/* compiled from: BlockHeaderResult.kt */
/* loaded from: classes6.dex */
public final class TransactionId$$serializer implements GeneratedSerializer<TransactionId> {
    public static final TransactionId$$serializer INSTANCE;
    private static final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;

    static {
        TransactionId$$serializer transactionId$$serializer = new TransactionId$$serializer();
        INSTANCE = transactionId$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.ton.lite.client.internal.TransactionId", transactionId$$serializer, 2);
        pluginGeneratedSerialDescriptor.addElement("hash", false);
        pluginGeneratedSerialDescriptor.addElement("lt", false);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private TransactionId$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        return new KSerializer[]{FiftHexBitStringSerializer.INSTANCE, LongSerializer.INSTANCE};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public TransactionId deserialize(Decoder decoder) {
        long j;
        Object obj;
        int i;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor2);
        if (beginStructure.decodeSequentially()) {
            obj = beginStructure.decodeSerializableElement(descriptor2, 0, FiftHexBitStringSerializer.INSTANCE, null);
            i = 3;
            j = beginStructure.decodeLongElement(descriptor2, 1);
        } else {
            j = 0;
            boolean z = true;
            obj = null;
            i = 0;
            while (z) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                if (decodeElementIndex == -1) {
                    z = false;
                } else if (decodeElementIndex == 0) {
                    obj = beginStructure.decodeSerializableElement(descriptor2, 0, FiftHexBitStringSerializer.INSTANCE, obj);
                    i |= 1;
                } else if (decodeElementIndex != 1) {
                    throw new UnknownFieldException(decodeElementIndex);
                } else {
                    j = beginStructure.decodeLongElement(descriptor2, 1);
                    i |= 2;
                }
            }
        }
        beginStructure.endStructure(descriptor2);
        return new TransactionId(i, (BitString) obj, j, null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, TransactionId value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder beginStructure = encoder.beginStructure(descriptor2);
        TransactionId.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
