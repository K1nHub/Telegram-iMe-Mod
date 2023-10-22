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
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.ULongSerializer;
import org.ton.hashmap.HashMapE;
/* compiled from: ShardStateUnsplit.kt */
/* loaded from: classes6.dex */
public final class ShardStateUnsplitAux$$serializer implements GeneratedSerializer<ShardStateUnsplitAux> {
    public static final ShardStateUnsplitAux$$serializer INSTANCE;
    private static final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;

    static {
        ShardStateUnsplitAux$$serializer shardStateUnsplitAux$$serializer = new ShardStateUnsplitAux$$serializer();
        INSTANCE = shardStateUnsplitAux$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.ton.block.ShardStateUnsplitAux", shardStateUnsplitAux$$serializer, 6);
        pluginGeneratedSerialDescriptor.addElement("overload_history", false);
        pluginGeneratedSerialDescriptor.addElement("underload_history", false);
        pluginGeneratedSerialDescriptor.addElement("total_balance", false);
        pluginGeneratedSerialDescriptor.addElement("total_validator_fees", false);
        pluginGeneratedSerialDescriptor.addElement("libraries", false);
        pluginGeneratedSerialDescriptor.addElement("master_ref", false);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private ShardStateUnsplitAux$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        KSerializer<?>[] kSerializerArr;
        kSerializerArr = ShardStateUnsplitAux.$childSerializers;
        ULongSerializer uLongSerializer = ULongSerializer.INSTANCE;
        CurrencyCollection$$serializer currencyCollection$$serializer = CurrencyCollection$$serializer.INSTANCE;
        return new KSerializer[]{uLongSerializer, uLongSerializer, currencyCollection$$serializer, currencyCollection$$serializer, kSerializerArr[4], kSerializerArr[5]};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public ShardStateUnsplitAux deserialize(Decoder decoder) {
        KSerializer[] kSerializerArr;
        int i;
        Object obj;
        Object obj2;
        Object obj3;
        Object obj4;
        Object obj5;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor2);
        kSerializerArr = ShardStateUnsplitAux.$childSerializers;
        int i2 = 3;
        Object obj6 = null;
        if (beginStructure.decodeSequentially()) {
            ULongSerializer uLongSerializer = ULongSerializer.INSTANCE;
            Object decodeSerializableElement = beginStructure.decodeSerializableElement(descriptor2, 0, uLongSerializer, null);
            obj = beginStructure.decodeSerializableElement(descriptor2, 1, uLongSerializer, null);
            CurrencyCollection$$serializer currencyCollection$$serializer = CurrencyCollection$$serializer.INSTANCE;
            obj2 = beginStructure.decodeSerializableElement(descriptor2, 2, currencyCollection$$serializer, null);
            obj3 = beginStructure.decodeSerializableElement(descriptor2, 3, currencyCollection$$serializer, null);
            obj4 = beginStructure.decodeSerializableElement(descriptor2, 4, kSerializerArr[4], null);
            obj5 = beginStructure.decodeSerializableElement(descriptor2, 5, kSerializerArr[5], null);
            obj6 = decodeSerializableElement;
            i = 63;
        } else {
            int i3 = 0;
            boolean z = true;
            Object obj7 = null;
            Object obj8 = null;
            Object obj9 = null;
            Object obj10 = null;
            Object obj11 = null;
            while (z) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                switch (decodeElementIndex) {
                    case -1:
                        z = false;
                        i2 = 3;
                    case 0:
                        obj6 = beginStructure.decodeSerializableElement(descriptor2, 0, ULongSerializer.INSTANCE, obj6);
                        i3 |= 1;
                        i2 = 3;
                    case 1:
                        obj7 = beginStructure.decodeSerializableElement(descriptor2, 1, ULongSerializer.INSTANCE, obj7);
                        i3 |= 2;
                    case 2:
                        obj8 = beginStructure.decodeSerializableElement(descriptor2, 2, CurrencyCollection$$serializer.INSTANCE, obj8);
                        i3 |= 4;
                    case 3:
                        obj9 = beginStructure.decodeSerializableElement(descriptor2, i2, CurrencyCollection$$serializer.INSTANCE, obj9);
                        i3 |= 8;
                    case 4:
                        obj10 = beginStructure.decodeSerializableElement(descriptor2, 4, kSerializerArr[4], obj10);
                        i3 |= 16;
                    case 5:
                        obj11 = beginStructure.decodeSerializableElement(descriptor2, 5, kSerializerArr[5], obj11);
                        i3 |= 32;
                    default:
                        throw new UnknownFieldException(decodeElementIndex);
                }
            }
            i = i3;
            obj = obj7;
            obj2 = obj8;
            obj3 = obj9;
            obj4 = obj10;
            obj5 = obj11;
        }
        beginStructure.endStructure(descriptor2);
        return new ShardStateUnsplitAux(i, (ULong) obj6, (ULong) obj, (CurrencyCollection) obj2, (CurrencyCollection) obj3, (HashMapE) obj4, (Maybe) obj5, null, null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, ShardStateUnsplitAux value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder beginStructure = encoder.beginStructure(descriptor2);
        ShardStateUnsplitAux.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
