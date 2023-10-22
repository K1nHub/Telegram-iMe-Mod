package org.ton.block;

import kotlin.UInt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.UnknownFieldException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.BooleanSerializer;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.UIntSerializer;
/* compiled from: ValidatorInfo.kt */
/* loaded from: classes6.dex */
public final class ValidatorInfo$$serializer implements GeneratedSerializer<ValidatorInfo> {
    public static final ValidatorInfo$$serializer INSTANCE;
    private static final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;

    static {
        ValidatorInfo$$serializer validatorInfo$$serializer = new ValidatorInfo$$serializer();
        INSTANCE = validatorInfo$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("validator_info", validatorInfo$$serializer, 3);
        pluginGeneratedSerialDescriptor.addElement("validator_list_hash_short", false);
        pluginGeneratedSerialDescriptor.addElement("catchain_seqno", false);
        pluginGeneratedSerialDescriptor.addElement("nx_cc_updated", false);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private ValidatorInfo$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        UIntSerializer uIntSerializer = UIntSerializer.INSTANCE;
        return new KSerializer[]{uIntSerializer, uIntSerializer, BooleanSerializer.INSTANCE};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public ValidatorInfo deserialize(Decoder decoder) {
        Object obj;
        boolean z;
        Object obj2;
        int i;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor2);
        Object obj3 = null;
        if (beginStructure.decodeSequentially()) {
            UIntSerializer uIntSerializer = UIntSerializer.INSTANCE;
            obj2 = beginStructure.decodeSerializableElement(descriptor2, 0, uIntSerializer, null);
            obj = beginStructure.decodeSerializableElement(descriptor2, 1, uIntSerializer, null);
            i = 7;
            z = beginStructure.decodeBooleanElement(descriptor2, 2);
        } else {
            obj = null;
            z = false;
            int i2 = 0;
            boolean z2 = true;
            while (z2) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                if (decodeElementIndex == -1) {
                    z2 = false;
                } else if (decodeElementIndex == 0) {
                    obj3 = beginStructure.decodeSerializableElement(descriptor2, 0, UIntSerializer.INSTANCE, obj3);
                    i2 |= 1;
                } else if (decodeElementIndex == 1) {
                    obj = beginStructure.decodeSerializableElement(descriptor2, 1, UIntSerializer.INSTANCE, obj);
                    i2 |= 2;
                } else if (decodeElementIndex != 2) {
                    throw new UnknownFieldException(decodeElementIndex);
                } else {
                    z = beginStructure.decodeBooleanElement(descriptor2, 2);
                    i2 |= 4;
                }
            }
            obj2 = obj3;
            i = i2;
        }
        beginStructure.endStructure(descriptor2);
        return new ValidatorInfo(i, (UInt) obj2, (UInt) obj, z, null, null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, ValidatorInfo value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder beginStructure = encoder.beginStructure(descriptor2);
        ValidatorInfo.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
