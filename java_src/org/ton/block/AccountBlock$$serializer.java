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
import org.ton.bitstring.BitString;
import org.ton.bitstring.FiftHexBitStringSerializer;
import org.ton.hashmap.HashmapAug;
import org.ton.tlb.CellRef;
/* compiled from: AccountBlock.kt */
/* loaded from: classes6.dex */
public final class AccountBlock$$serializer implements GeneratedSerializer<AccountBlock> {
    public static final AccountBlock$$serializer INSTANCE;
    private static final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;

    static {
        AccountBlock$$serializer accountBlock$$serializer = new AccountBlock$$serializer();
        INSTANCE = accountBlock$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("acc_trans", accountBlock$$serializer, 3);
        pluginGeneratedSerialDescriptor.addElement("account_addr", false);
        pluginGeneratedSerialDescriptor.addElement("transactions", false);
        pluginGeneratedSerialDescriptor.addElement("state_update", false);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private AccountBlock$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        KSerializer<?>[] kSerializerArr;
        kSerializerArr = AccountBlock.$childSerializers;
        return new KSerializer[]{FiftHexBitStringSerializer.INSTANCE, kSerializerArr[1], kSerializerArr[2]};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public AccountBlock deserialize(Decoder decoder) {
        KSerializer[] kSerializerArr;
        Object obj;
        Object obj2;
        int i;
        Object obj3;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor2);
        kSerializerArr = AccountBlock.$childSerializers;
        if (beginStructure.decodeSequentially()) {
            obj = beginStructure.decodeSerializableElement(descriptor2, 0, FiftHexBitStringSerializer.INSTANCE, null);
            Object decodeSerializableElement = beginStructure.decodeSerializableElement(descriptor2, 1, kSerializerArr[1], null);
            obj3 = beginStructure.decodeSerializableElement(descriptor2, 2, kSerializerArr[2], null);
            obj2 = decodeSerializableElement;
            i = 7;
        } else {
            obj = null;
            obj2 = null;
            Object obj4 = null;
            int i2 = 0;
            boolean z = true;
            while (z) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                if (decodeElementIndex == -1) {
                    z = false;
                } else if (decodeElementIndex == 0) {
                    obj = beginStructure.decodeSerializableElement(descriptor2, 0, FiftHexBitStringSerializer.INSTANCE, obj);
                    i2 |= 1;
                } else if (decodeElementIndex == 1) {
                    obj2 = beginStructure.decodeSerializableElement(descriptor2, 1, kSerializerArr[1], obj2);
                    i2 |= 2;
                } else if (decodeElementIndex != 2) {
                    throw new UnknownFieldException(decodeElementIndex);
                } else {
                    obj4 = beginStructure.decodeSerializableElement(descriptor2, 2, kSerializerArr[2], obj4);
                    i2 |= 4;
                }
            }
            i = i2;
            obj3 = obj4;
        }
        beginStructure.endStructure(descriptor2);
        return new AccountBlock(i, (BitString) obj, (HashmapAug) obj2, (CellRef) obj3, null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, AccountBlock value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder beginStructure = encoder.beginStructure(descriptor2);
        AccountBlock.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
