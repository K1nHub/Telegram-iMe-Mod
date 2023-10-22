package org.ton.lite.api.liteserver;

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
import org.ton.api.tonnode.TonNodeBlockIdExt;
import org.ton.api.tonnode.TonNodeBlockIdExt$$serializer;
import org.ton.api.tonnode.TonNodeZeroStateIdExt;
import org.ton.api.tonnode.TonNodeZeroStateIdExt$$serializer;
import org.ton.crypto.HexByteArraySerializer;
/* compiled from: LiteServerMasterchainInfo.kt */
/* loaded from: classes6.dex */
public final class LiteServerMasterchainInfo$$serializer implements GeneratedSerializer<LiteServerMasterchainInfo> {
    public static final LiteServerMasterchainInfo$$serializer INSTANCE;
    private static final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;

    static {
        LiteServerMasterchainInfo$$serializer liteServerMasterchainInfo$$serializer = new LiteServerMasterchainInfo$$serializer();
        INSTANCE = liteServerMasterchainInfo$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("liteServer.masterchainInfo", liteServerMasterchainInfo$$serializer, 3);
        pluginGeneratedSerialDescriptor.addElement("last", false);
        pluginGeneratedSerialDescriptor.addElement("stateRootHash", false);
        pluginGeneratedSerialDescriptor.addElement("init", false);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private LiteServerMasterchainInfo$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        return new KSerializer[]{TonNodeBlockIdExt$$serializer.INSTANCE, HexByteArraySerializer.INSTANCE, TonNodeZeroStateIdExt$$serializer.INSTANCE};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public LiteServerMasterchainInfo deserialize(Decoder decoder) {
        Object obj;
        Object obj2;
        Object obj3;
        int i;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor2);
        Object obj4 = null;
        if (beginStructure.decodeSequentially()) {
            obj2 = beginStructure.decodeSerializableElement(descriptor2, 0, TonNodeBlockIdExt$$serializer.INSTANCE, null);
            Object decodeSerializableElement = beginStructure.decodeSerializableElement(descriptor2, 1, HexByteArraySerializer.INSTANCE, null);
            obj3 = beginStructure.decodeSerializableElement(descriptor2, 2, TonNodeZeroStateIdExt$$serializer.INSTANCE, null);
            i = 7;
            obj = decodeSerializableElement;
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
                    obj4 = beginStructure.decodeSerializableElement(descriptor2, 0, TonNodeBlockIdExt$$serializer.INSTANCE, obj4);
                    i2 |= 1;
                } else if (decodeElementIndex == 1) {
                    obj5 = beginStructure.decodeSerializableElement(descriptor2, 1, HexByteArraySerializer.INSTANCE, obj5);
                    i2 |= 2;
                } else if (decodeElementIndex != 2) {
                    throw new UnknownFieldException(decodeElementIndex);
                } else {
                    obj6 = beginStructure.decodeSerializableElement(descriptor2, 2, TonNodeZeroStateIdExt$$serializer.INSTANCE, obj6);
                    i2 |= 4;
                }
            }
            obj = obj5;
            obj2 = obj4;
            obj3 = obj6;
            i = i2;
        }
        beginStructure.endStructure(descriptor2);
        return new LiteServerMasterchainInfo(i, (TonNodeBlockIdExt) obj2, (byte[]) obj, (TonNodeZeroStateIdExt) obj3, null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, LiteServerMasterchainInfo value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder beginStructure = encoder.beginStructure(descriptor2);
        LiteServerMasterchainInfo.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
