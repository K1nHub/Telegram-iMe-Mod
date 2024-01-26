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
/* compiled from: AccountInfo.kt */
/* loaded from: classes6.dex */
public final class AccountInfo$$serializer implements GeneratedSerializer<AccountInfo> {
    public static final AccountInfo$$serializer INSTANCE;
    private static final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;

    static {
        AccountInfo$$serializer accountInfo$$serializer = new AccountInfo$$serializer();
        INSTANCE = accountInfo$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("account", accountInfo$$serializer, 3);
        pluginGeneratedSerialDescriptor.addElement("addr", false);
        pluginGeneratedSerialDescriptor.addElement("storage_stat", false);
        pluginGeneratedSerialDescriptor.addElement("storage", false);
        pluginGeneratedSerialDescriptor.pushClassAnnotation(new C7713x4da51fa4("@type"));
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private AccountInfo$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        KSerializer<?>[] kSerializerArr;
        kSerializerArr = AccountInfo.$childSerializers;
        return new KSerializer[]{kSerializerArr[0], StorageInfo$$serializer.INSTANCE, AccountStorage$$serializer.INSTANCE};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public AccountInfo deserialize(Decoder decoder) {
        KSerializer[] kSerializerArr;
        Object obj;
        Object obj2;
        Object obj3;
        int i;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor2);
        kSerializerArr = AccountInfo.$childSerializers;
        Object obj4 = null;
        if (beginStructure.decodeSequentially()) {
            obj2 = beginStructure.decodeSerializableElement(descriptor2, 0, kSerializerArr[0], null);
            obj = beginStructure.decodeSerializableElement(descriptor2, 1, StorageInfo$$serializer.INSTANCE, null);
            obj3 = beginStructure.decodeSerializableElement(descriptor2, 2, AccountStorage$$serializer.INSTANCE, null);
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
                    obj = beginStructure.decodeSerializableElement(descriptor2, 1, StorageInfo$$serializer.INSTANCE, obj);
                    i2 |= 2;
                } else if (decodeElementIndex != 2) {
                    throw new UnknownFieldException(decodeElementIndex);
                } else {
                    obj5 = beginStructure.decodeSerializableElement(descriptor2, 2, AccountStorage$$serializer.INSTANCE, obj5);
                    i2 |= 4;
                }
            }
            obj2 = obj4;
            obj3 = obj5;
            i = i2;
        }
        beginStructure.endStructure(descriptor2);
        return new AccountInfo(i, (MsgAddressInt) obj2, (StorageInfo) obj, (AccountStorage) obj3, null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, AccountInfo value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder beginStructure = encoder.beginStructure(descriptor2);
        AccountInfo.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
