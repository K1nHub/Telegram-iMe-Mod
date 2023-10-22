package org.ton.api.liteclient.config;

import java.util.Collection;
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
import org.ton.api.dht.config.DhtConfigGlobal;
import org.ton.api.dht.config.DhtConfigGlobal$$serializer;
import org.ton.api.validator.config.ValidatorConfigGlobal;
import org.ton.api.validator.config.ValidatorConfigGlobal$$serializer;
/* compiled from: LiteClientConfigGlobal.kt */
/* loaded from: classes6.dex */
public final class LiteClientConfigGlobal$$serializer implements GeneratedSerializer<LiteClientConfigGlobal> {
    public static final LiteClientConfigGlobal$$serializer INSTANCE;
    private static final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;

    static {
        LiteClientConfigGlobal$$serializer liteClientConfigGlobal$$serializer = new LiteClientConfigGlobal$$serializer();
        INSTANCE = liteClientConfigGlobal$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("liteclient.config.global", liteClientConfigGlobal$$serializer, 3);
        pluginGeneratedSerialDescriptor.addElement("dht", true);
        pluginGeneratedSerialDescriptor.addElement("liteservers", false);
        pluginGeneratedSerialDescriptor.addElement("validator", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private LiteClientConfigGlobal$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        KSerializer<?>[] kSerializerArr;
        kSerializerArr = LiteClientConfigGlobal.$childSerializers;
        return new KSerializer[]{DhtConfigGlobal$$serializer.INSTANCE, kSerializerArr[1], ValidatorConfigGlobal$$serializer.INSTANCE};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public LiteClientConfigGlobal deserialize(Decoder decoder) {
        KSerializer[] kSerializerArr;
        Object obj;
        Object obj2;
        Object obj3;
        int i;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor2);
        kSerializerArr = LiteClientConfigGlobal.$childSerializers;
        Object obj4 = null;
        if (beginStructure.decodeSequentially()) {
            obj2 = beginStructure.decodeSerializableElement(descriptor2, 0, DhtConfigGlobal$$serializer.INSTANCE, null);
            obj = beginStructure.decodeSerializableElement(descriptor2, 1, kSerializerArr[1], null);
            obj3 = beginStructure.decodeSerializableElement(descriptor2, 2, ValidatorConfigGlobal$$serializer.INSTANCE, null);
            i = 7;
        } else {
            Object obj5 = null;
            Object obj6 = null;
            int i2 = 0;
            boolean z = true;
            while (z) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                if (decodeElementIndex == -1) {
                    z = false;
                } else if (decodeElementIndex == 0) {
                    obj4 = beginStructure.decodeSerializableElement(descriptor2, 0, DhtConfigGlobal$$serializer.INSTANCE, obj4);
                    i2 |= 1;
                } else if (decodeElementIndex == 1) {
                    obj5 = beginStructure.decodeSerializableElement(descriptor2, 1, kSerializerArr[1], obj5);
                    i2 |= 2;
                } else if (decodeElementIndex != 2) {
                    throw new UnknownFieldException(decodeElementIndex);
                } else {
                    obj6 = beginStructure.decodeSerializableElement(descriptor2, 2, ValidatorConfigGlobal$$serializer.INSTANCE, obj6);
                    i2 |= 4;
                }
            }
            obj = obj5;
            obj2 = obj4;
            obj3 = obj6;
            i = i2;
        }
        beginStructure.endStructure(descriptor2);
        return new LiteClientConfigGlobal(i, (DhtConfigGlobal) obj2, (Collection) obj, (ValidatorConfigGlobal) obj3, null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, LiteClientConfigGlobal value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder beginStructure = encoder.beginStructure(descriptor2);
        LiteClientConfigGlobal.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
