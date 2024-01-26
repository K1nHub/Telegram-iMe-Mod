package org.ton.lite.client.internal;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.UnknownFieldException;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import org.ton.api.tonnode.TonNodeBlockIdExt;
import org.ton.api.tonnode.TonNodeBlockIdExt$$serializer;
import org.ton.block.AddrStd;
import org.ton.block.AddrStd$$serializer;
import org.ton.tlb.CellRef;
/* compiled from: BlockHeaderResult.kt */
/* loaded from: classes6.dex */
public final class FullAccountState$$serializer implements GeneratedSerializer<FullAccountState> {
    public static final FullAccountState$$serializer INSTANCE;
    private static final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;

    static {
        FullAccountState$$serializer fullAccountState$$serializer = new FullAccountState$$serializer();
        INSTANCE = fullAccountState$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.ton.lite.client.internal.FullAccountState", fullAccountState$$serializer, 4);
        pluginGeneratedSerialDescriptor.addElement("block_id", false);
        pluginGeneratedSerialDescriptor.addElement("address", false);
        pluginGeneratedSerialDescriptor.addElement("last_transaction_id", false);
        pluginGeneratedSerialDescriptor.addElement("account", false);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private FullAccountState$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        KSerializer<?>[] kSerializerArr;
        kSerializerArr = FullAccountState.$childSerializers;
        return new KSerializer[]{TonNodeBlockIdExt$$serializer.INSTANCE, AddrStd$$serializer.INSTANCE, BuiltinSerializersKt.getNullable(TransactionId$$serializer.INSTANCE), kSerializerArr[3]};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public FullAccountState deserialize(Decoder decoder) {
        KSerializer[] kSerializerArr;
        Object obj;
        Object obj2;
        int i;
        Object obj3;
        Object obj4;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor2);
        kSerializerArr = FullAccountState.$childSerializers;
        if (beginStructure.decodeSequentially()) {
            obj = beginStructure.decodeSerializableElement(descriptor2, 0, TonNodeBlockIdExt$$serializer.INSTANCE, null);
            Object decodeSerializableElement = beginStructure.decodeSerializableElement(descriptor2, 1, AddrStd$$serializer.INSTANCE, null);
            obj3 = beginStructure.decodeNullableSerializableElement(descriptor2, 2, TransactionId$$serializer.INSTANCE, null);
            obj4 = beginStructure.decodeSerializableElement(descriptor2, 3, kSerializerArr[3], null);
            obj2 = decodeSerializableElement;
            i = 15;
        } else {
            obj = null;
            obj2 = null;
            Object obj5 = null;
            Object obj6 = null;
            int i2 = 0;
            boolean z = true;
            while (z) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                if (decodeElementIndex == -1) {
                    z = false;
                } else if (decodeElementIndex == 0) {
                    obj = beginStructure.decodeSerializableElement(descriptor2, 0, TonNodeBlockIdExt$$serializer.INSTANCE, obj);
                    i2 |= 1;
                } else if (decodeElementIndex == 1) {
                    obj2 = beginStructure.decodeSerializableElement(descriptor2, 1, AddrStd$$serializer.INSTANCE, obj2);
                    i2 |= 2;
                } else if (decodeElementIndex == 2) {
                    obj5 = beginStructure.decodeNullableSerializableElement(descriptor2, 2, TransactionId$$serializer.INSTANCE, obj5);
                    i2 |= 4;
                } else if (decodeElementIndex != 3) {
                    throw new UnknownFieldException(decodeElementIndex);
                } else {
                    obj6 = beginStructure.decodeSerializableElement(descriptor2, 3, kSerializerArr[3], obj6);
                    i2 |= 8;
                }
            }
            i = i2;
            obj3 = obj5;
            obj4 = obj6;
        }
        beginStructure.endStructure(descriptor2);
        return new FullAccountState(i, (TonNodeBlockIdExt) obj, (AddrStd) obj2, (TransactionId) obj3, (CellRef) obj4, null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, FullAccountState value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder beginStructure = encoder.beginStructure(descriptor2);
        FullAccountState.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
