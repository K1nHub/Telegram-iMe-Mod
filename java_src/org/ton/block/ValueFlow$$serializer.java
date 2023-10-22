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
/* compiled from: ValueFlow.kt */
/* loaded from: classes6.dex */
public final class ValueFlow$$serializer implements GeneratedSerializer<ValueFlow> {
    public static final ValueFlow$$serializer INSTANCE;
    private static final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;

    static {
        ValueFlow$$serializer valueFlow$$serializer = new ValueFlow$$serializer();
        INSTANCE = valueFlow$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("value_flow", valueFlow$$serializer, 9);
        pluginGeneratedSerialDescriptor.addElement("from_prev_blk", false);
        pluginGeneratedSerialDescriptor.addElement("to_next_blk", false);
        pluginGeneratedSerialDescriptor.addElement("imported", false);
        pluginGeneratedSerialDescriptor.addElement("exported", false);
        pluginGeneratedSerialDescriptor.addElement("fees_collected", false);
        pluginGeneratedSerialDescriptor.addElement("fees_imported", false);
        pluginGeneratedSerialDescriptor.addElement("recovered", false);
        pluginGeneratedSerialDescriptor.addElement("created", false);
        pluginGeneratedSerialDescriptor.addElement("minted", false);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private ValueFlow$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        CurrencyCollection$$serializer currencyCollection$$serializer = CurrencyCollection$$serializer.INSTANCE;
        return new KSerializer[]{currencyCollection$$serializer, currencyCollection$$serializer, currencyCollection$$serializer, currencyCollection$$serializer, currencyCollection$$serializer, currencyCollection$$serializer, currencyCollection$$serializer, currencyCollection$$serializer, currencyCollection$$serializer};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public ValueFlow deserialize(Decoder decoder) {
        Object obj;
        Object obj2;
        Object obj3;
        Object obj4;
        Object obj5;
        Object obj6;
        Object obj7;
        int i;
        Object obj8;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor2);
        int i2 = 7;
        Object obj9 = null;
        if (beginStructure.decodeSequentially()) {
            CurrencyCollection$$serializer currencyCollection$$serializer = CurrencyCollection$$serializer.INSTANCE;
            Object decodeSerializableElement = beginStructure.decodeSerializableElement(descriptor2, 0, currencyCollection$$serializer, null);
            obj5 = beginStructure.decodeSerializableElement(descriptor2, 1, currencyCollection$$serializer, null);
            obj6 = beginStructure.decodeSerializableElement(descriptor2, 2, currencyCollection$$serializer, null);
            obj7 = beginStructure.decodeSerializableElement(descriptor2, 3, currencyCollection$$serializer, null);
            Object decodeSerializableElement2 = beginStructure.decodeSerializableElement(descriptor2, 4, currencyCollection$$serializer, null);
            obj4 = beginStructure.decodeSerializableElement(descriptor2, 5, currencyCollection$$serializer, null);
            obj3 = beginStructure.decodeSerializableElement(descriptor2, 6, currencyCollection$$serializer, null);
            obj2 = beginStructure.decodeSerializableElement(descriptor2, 7, currencyCollection$$serializer, null);
            obj8 = beginStructure.decodeSerializableElement(descriptor2, 8, currencyCollection$$serializer, null);
            obj9 = decodeSerializableElement;
            obj = decodeSerializableElement2;
            i = 511;
        } else {
            int i3 = 0;
            boolean z = true;
            Object obj10 = null;
            Object obj11 = null;
            Object obj12 = null;
            obj = null;
            Object obj13 = null;
            Object obj14 = null;
            Object obj15 = null;
            Object obj16 = null;
            while (z) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                switch (decodeElementIndex) {
                    case -1:
                        z = false;
                        i2 = 7;
                        break;
                    case 0:
                        obj9 = beginStructure.decodeSerializableElement(descriptor2, 0, CurrencyCollection$$serializer.INSTANCE, obj9);
                        i3 |= 1;
                        i2 = 7;
                        break;
                    case 1:
                        obj14 = beginStructure.decodeSerializableElement(descriptor2, 1, CurrencyCollection$$serializer.INSTANCE, obj14);
                        i3 |= 2;
                        i2 = 7;
                        break;
                    case 2:
                        obj15 = beginStructure.decodeSerializableElement(descriptor2, 2, CurrencyCollection$$serializer.INSTANCE, obj15);
                        i3 |= 4;
                        i2 = 7;
                        break;
                    case 3:
                        obj16 = beginStructure.decodeSerializableElement(descriptor2, 3, CurrencyCollection$$serializer.INSTANCE, obj16);
                        i3 |= 8;
                        i2 = 7;
                        break;
                    case 4:
                        obj = beginStructure.decodeSerializableElement(descriptor2, 4, CurrencyCollection$$serializer.INSTANCE, obj);
                        i3 |= 16;
                        i2 = 7;
                        break;
                    case 5:
                        obj13 = beginStructure.decodeSerializableElement(descriptor2, 5, CurrencyCollection$$serializer.INSTANCE, obj13);
                        i3 |= 32;
                        i2 = 7;
                        continue;
                    case 6:
                        obj12 = beginStructure.decodeSerializableElement(descriptor2, 6, CurrencyCollection$$serializer.INSTANCE, obj12);
                        i3 |= 64;
                        break;
                    case 7:
                        obj10 = beginStructure.decodeSerializableElement(descriptor2, i2, CurrencyCollection$$serializer.INSTANCE, obj10);
                        i3 |= 128;
                        break;
                    case 8:
                        obj11 = beginStructure.decodeSerializableElement(descriptor2, 8, CurrencyCollection$$serializer.INSTANCE, obj11);
                        i3 |= 256;
                        break;
                    default:
                        throw new UnknownFieldException(decodeElementIndex);
                }
            }
            obj2 = obj10;
            obj3 = obj12;
            obj4 = obj13;
            obj5 = obj14;
            obj6 = obj15;
            obj7 = obj16;
            Object obj17 = obj11;
            i = i3;
            obj8 = obj17;
        }
        beginStructure.endStructure(descriptor2);
        return new ValueFlow(i, (CurrencyCollection) obj9, (CurrencyCollection) obj5, (CurrencyCollection) obj6, (CurrencyCollection) obj7, (CurrencyCollection) obj, (CurrencyCollection) obj4, (CurrencyCollection) obj3, (CurrencyCollection) obj2, (CurrencyCollection) obj8, null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, ValueFlow value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder beginStructure = encoder.beginStructure(descriptor2);
        ValueFlow.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
