package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.UnknownFieldException;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.BooleanSerializer;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
/* compiled from: McStateExtra.kt */
/* loaded from: classes6.dex */
public final class McStateExtraAux$$serializer implements GeneratedSerializer<McStateExtraAux> {
    public static final McStateExtraAux$$serializer INSTANCE;
    private static final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;

    static {
        McStateExtraAux$$serializer mcStateExtraAux$$serializer = new McStateExtraAux$$serializer();
        INSTANCE = mcStateExtraAux$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.ton.block.McStateExtraAux", mcStateExtraAux$$serializer, 6);
        pluginGeneratedSerialDescriptor.addElement("flags", false);
        pluginGeneratedSerialDescriptor.addElement("validator_info", false);
        pluginGeneratedSerialDescriptor.addElement("prev_blocks", false);
        pluginGeneratedSerialDescriptor.addElement("afterKeyBlock", false);
        pluginGeneratedSerialDescriptor.addElement("lastKeyBlock", false);
        pluginGeneratedSerialDescriptor.addElement("blockCreateStats", false);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private McStateExtraAux$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        KSerializer<?>[] kSerializerArr;
        kSerializerArr = McStateExtraAux.$childSerializers;
        return new KSerializer[]{IntSerializer.INSTANCE, ValidatorInfo$$serializer.INSTANCE, OldMcBlocksInfo$$serializer.INSTANCE, BooleanSerializer.INSTANCE, kSerializerArr[4], BuiltinSerializersKt.getNullable(kSerializerArr[5])};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public McStateExtraAux deserialize(Decoder decoder) {
        KSerializer[] kSerializerArr;
        Object obj;
        Object obj2;
        int i;
        boolean z;
        int i2;
        Object obj3;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor2);
        kSerializerArr = McStateExtraAux.$childSerializers;
        Object obj4 = null;
        if (beginStructure.decodeSequentially()) {
            int decodeIntElement = beginStructure.decodeIntElement(descriptor2, 0);
            obj3 = beginStructure.decodeSerializableElement(descriptor2, 1, ValidatorInfo$$serializer.INSTANCE, null);
            Object decodeSerializableElement = beginStructure.decodeSerializableElement(descriptor2, 2, OldMcBlocksInfo$$serializer.INSTANCE, null);
            boolean decodeBooleanElement = beginStructure.decodeBooleanElement(descriptor2, 3);
            Object decodeSerializableElement2 = beginStructure.decodeSerializableElement(descriptor2, 4, kSerializerArr[4], null);
            obj2 = beginStructure.decodeNullableSerializableElement(descriptor2, 5, kSerializerArr[5], null);
            obj = decodeSerializableElement;
            obj4 = decodeSerializableElement2;
            i = decodeIntElement;
            z = decodeBooleanElement;
            i2 = 63;
        } else {
            boolean z2 = true;
            Object obj5 = null;
            obj = null;
            Object obj6 = null;
            int i3 = 0;
            boolean z3 = false;
            int i4 = 0;
            while (z2) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                switch (decodeElementIndex) {
                    case -1:
                        z2 = false;
                        continue;
                    case 0:
                        i3 = beginStructure.decodeIntElement(descriptor2, 0);
                        i4 |= 1;
                        continue;
                    case 1:
                        obj6 = beginStructure.decodeSerializableElement(descriptor2, 1, ValidatorInfo$$serializer.INSTANCE, obj6);
                        i4 |= 2;
                        break;
                    case 2:
                        obj = beginStructure.decodeSerializableElement(descriptor2, 2, OldMcBlocksInfo$$serializer.INSTANCE, obj);
                        i4 |= 4;
                        break;
                    case 3:
                        z3 = beginStructure.decodeBooleanElement(descriptor2, 3);
                        i4 |= 8;
                        break;
                    case 4:
                        obj4 = beginStructure.decodeSerializableElement(descriptor2, 4, kSerializerArr[4], obj4);
                        i4 |= 16;
                        break;
                    case 5:
                        obj5 = beginStructure.decodeNullableSerializableElement(descriptor2, 5, kSerializerArr[5], obj5);
                        i4 |= 32;
                        break;
                    default:
                        throw new UnknownFieldException(decodeElementIndex);
                }
            }
            obj2 = obj5;
            i = i3;
            z = z3;
            i2 = i4;
            obj3 = obj6;
        }
        beginStructure.endStructure(descriptor2);
        OldMcBlocksInfo oldMcBlocksInfo = (OldMcBlocksInfo) obj;
        return new McStateExtraAux(i2, i, (ValidatorInfo) obj3, oldMcBlocksInfo != null ? oldMcBlocksInfo.m5120unboximpl() : null, z, (Maybe) obj4, (BlockCreateStats) obj2, null, null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, McStateExtraAux value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder beginStructure = encoder.beginStructure(descriptor2);
        McStateExtraAux.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
