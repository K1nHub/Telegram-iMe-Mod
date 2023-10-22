package org.ton.block;

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
/* compiled from: ShardFeeCreated.kt */
/* loaded from: classes6.dex */
public final class ShardFeeCreated$$serializer implements GeneratedSerializer<ShardFeeCreated> {
    public static final ShardFeeCreated$$serializer INSTANCE;
    private static final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;

    static {
        ShardFeeCreated$$serializer shardFeeCreated$$serializer = new ShardFeeCreated$$serializer();
        INSTANCE = shardFeeCreated$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.ton.block.ShardFeeCreated", shardFeeCreated$$serializer, 2);
        pluginGeneratedSerialDescriptor.addElement("fees", false);
        pluginGeneratedSerialDescriptor.addElement("create", false);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private ShardFeeCreated$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        CurrencyCollection$$serializer currencyCollection$$serializer = CurrencyCollection$$serializer.INSTANCE;
        return new KSerializer[]{currencyCollection$$serializer, currencyCollection$$serializer};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public ShardFeeCreated deserialize(Decoder decoder) {
        Object obj;
        Object obj2;
        int i;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor2);
        if (beginStructure.decodeSequentially()) {
            CurrencyCollection$$serializer currencyCollection$$serializer = CurrencyCollection$$serializer.INSTANCE;
            obj2 = beginStructure.decodeSerializableElement(descriptor2, 0, currencyCollection$$serializer, null);
            obj = beginStructure.decodeSerializableElement(descriptor2, 1, currencyCollection$$serializer, null);
            i = 3;
        } else {
            obj = null;
            Object obj3 = null;
            int i2 = 0;
            boolean z = true;
            while (z) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                if (decodeElementIndex == -1) {
                    z = false;
                } else if (decodeElementIndex == 0) {
                    obj3 = beginStructure.decodeSerializableElement(descriptor2, 0, CurrencyCollection$$serializer.INSTANCE, obj3);
                    i2 |= 1;
                } else if (decodeElementIndex != 1) {
                    throw new UnknownFieldException(decodeElementIndex);
                } else {
                    obj = beginStructure.decodeSerializableElement(descriptor2, 1, CurrencyCollection$$serializer.INSTANCE, obj);
                    i2 |= 2;
                }
            }
            obj2 = obj3;
            i = i2;
        }
        beginStructure.endStructure(descriptor2);
        return new ShardFeeCreated(i, (CurrencyCollection) obj2, (CurrencyCollection) obj, null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, ShardFeeCreated value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder beginStructure = encoder.beginStructure(descriptor2);
        ShardFeeCreated.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
