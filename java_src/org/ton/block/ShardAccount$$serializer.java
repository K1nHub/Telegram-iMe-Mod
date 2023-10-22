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
import org.ton.bitstring.BitString;
import org.ton.bitstring.FiftHexBitStringSerializer;
import org.ton.tlb.CellRef;
/* compiled from: ShardAccount.kt */
/* loaded from: classes6.dex */
public final class ShardAccount$$serializer implements GeneratedSerializer<ShardAccount> {
    public static final ShardAccount$$serializer INSTANCE;
    private static final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;

    static {
        ShardAccount$$serializer shardAccount$$serializer = new ShardAccount$$serializer();
        INSTANCE = shardAccount$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("account_descr", shardAccount$$serializer, 3);
        pluginGeneratedSerialDescriptor.addElement("account", false);
        pluginGeneratedSerialDescriptor.addElement("last_trans_hash", false);
        pluginGeneratedSerialDescriptor.addElement("last_trans_lt", false);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private ShardAccount$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        KSerializer<?>[] kSerializerArr;
        kSerializerArr = ShardAccount.$childSerializers;
        return new KSerializer[]{kSerializerArr[0], FiftHexBitStringSerializer.INSTANCE, ULongSerializer.INSTANCE};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public ShardAccount deserialize(Decoder decoder) {
        KSerializer[] kSerializerArr;
        Object obj;
        Object obj2;
        Object obj3;
        int i;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor2);
        kSerializerArr = ShardAccount.$childSerializers;
        Object obj4 = null;
        if (beginStructure.decodeSequentially()) {
            obj2 = beginStructure.decodeSerializableElement(descriptor2, 0, kSerializerArr[0], null);
            obj = beginStructure.decodeSerializableElement(descriptor2, 1, FiftHexBitStringSerializer.INSTANCE, null);
            obj3 = beginStructure.decodeSerializableElement(descriptor2, 2, ULongSerializer.INSTANCE, null);
            i = 7;
        } else {
            obj = null;
            Object obj5 = null;
            boolean z = true;
            int i2 = 0;
            while (z) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                if (decodeElementIndex == -1) {
                    z = false;
                } else if (decodeElementIndex == 0) {
                    obj4 = beginStructure.decodeSerializableElement(descriptor2, 0, kSerializerArr[0], obj4);
                    i2 |= 1;
                } else if (decodeElementIndex == 1) {
                    obj = beginStructure.decodeSerializableElement(descriptor2, 1, FiftHexBitStringSerializer.INSTANCE, obj);
                    i2 |= 2;
                } else if (decodeElementIndex != 2) {
                    throw new UnknownFieldException(decodeElementIndex);
                } else {
                    obj5 = beginStructure.decodeSerializableElement(descriptor2, 2, ULongSerializer.INSTANCE, obj5);
                    i2 |= 4;
                }
            }
            obj2 = obj4;
            obj3 = obj5;
            i = i2;
        }
        beginStructure.endStructure(descriptor2);
        return new ShardAccount(i, (CellRef) obj2, (BitString) obj, (ULong) obj3, null, null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, ShardAccount value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder beginStructure = encoder.beginStructure(descriptor2);
        ShardAccount.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
