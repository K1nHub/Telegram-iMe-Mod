package org.ton.block;

import kotlin.ULong;
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
import kotlinx.serialization.internal.ULongSerializer;
/* compiled from: ShardIdent.kt */
/* loaded from: classes6.dex */
public final class ShardIdent$$serializer implements GeneratedSerializer<ShardIdent> {
    public static final ShardIdent$$serializer INSTANCE;
    private static final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;

    static {
        ShardIdent$$serializer shardIdent$$serializer = new ShardIdent$$serializer();
        INSTANCE = shardIdent$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("shard_ident", shardIdent$$serializer, 3);
        pluginGeneratedSerialDescriptor.addElement("shard_pfx_bits", false);
        pluginGeneratedSerialDescriptor.addElement("workchain_id", false);
        pluginGeneratedSerialDescriptor.addElement("shard_prefix", false);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private ShardIdent$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        IntSerializer intSerializer = IntSerializer.INSTANCE;
        return new KSerializer[]{intSerializer, intSerializer, ULongSerializer.INSTANCE};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public ShardIdent deserialize(Decoder decoder) {
        int i;
        int i2;
        int i3;
        Object obj;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor2);
        if (beginStructure.decodeSequentially()) {
            int decodeIntElement = beginStructure.decodeIntElement(descriptor2, 0);
            int decodeIntElement2 = beginStructure.decodeIntElement(descriptor2, 1);
            obj = beginStructure.decodeSerializableElement(descriptor2, 2, ULongSerializer.INSTANCE, null);
            i = decodeIntElement;
            i2 = decodeIntElement2;
            i3 = 7;
        } else {
            boolean z = true;
            int i4 = 0;
            int i5 = 0;
            Object obj2 = null;
            int i6 = 0;
            while (z) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                if (decodeElementIndex == -1) {
                    z = false;
                } else if (decodeElementIndex == 0) {
                    i4 = beginStructure.decodeIntElement(descriptor2, 0);
                    i5 |= 1;
                } else if (decodeElementIndex == 1) {
                    i6 = beginStructure.decodeIntElement(descriptor2, 1);
                    i5 |= 2;
                } else if (decodeElementIndex != 2) {
                    throw new UnknownFieldException(decodeElementIndex);
                } else {
                    obj2 = beginStructure.decodeSerializableElement(descriptor2, 2, ULongSerializer.INSTANCE, obj2);
                    i5 |= 4;
                }
            }
            i = i4;
            i2 = i6;
            i3 = i5;
            obj = obj2;
        }
        beginStructure.endStructure(descriptor2);
        return new ShardIdent(i3, i, i2, (ULong) obj, null, null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, ShardIdent value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder beginStructure = encoder.beginStructure(descriptor2);
        ShardIdent.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
