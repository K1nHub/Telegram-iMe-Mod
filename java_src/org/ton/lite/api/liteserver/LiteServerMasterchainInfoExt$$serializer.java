package org.ton.lite.api.liteserver;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.UnknownFieldException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.ByteArraySerializer;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.LongSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import org.ton.api.tonnode.TonNodeBlockIdExt;
import org.ton.api.tonnode.TonNodeBlockIdExt$$serializer;
import org.ton.api.tonnode.TonNodeZeroStateIdExt;
import org.ton.api.tonnode.TonNodeZeroStateIdExt$$serializer;
/* compiled from: LiteServerMasterchainInfoExt.kt */
/* loaded from: classes6.dex */
public final class LiteServerMasterchainInfoExt$$serializer implements GeneratedSerializer<LiteServerMasterchainInfoExt> {
    public static final LiteServerMasterchainInfoExt$$serializer INSTANCE;
    private static final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;

    static {
        LiteServerMasterchainInfoExt$$serializer liteServerMasterchainInfoExt$$serializer = new LiteServerMasterchainInfoExt$$serializer();
        INSTANCE = liteServerMasterchainInfoExt$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("liteServer.masterchainInfoExt", liteServerMasterchainInfoExt$$serializer, 8);
        pluginGeneratedSerialDescriptor.addElement("mode", false);
        pluginGeneratedSerialDescriptor.addElement("version", false);
        pluginGeneratedSerialDescriptor.addElement("capabilities", false);
        pluginGeneratedSerialDescriptor.addElement("last", false);
        pluginGeneratedSerialDescriptor.addElement("last_utime", false);
        pluginGeneratedSerialDescriptor.addElement("now", false);
        pluginGeneratedSerialDescriptor.addElement("state_root_hash", false);
        pluginGeneratedSerialDescriptor.addElement("init", false);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private LiteServerMasterchainInfoExt$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        IntSerializer intSerializer = IntSerializer.INSTANCE;
        return new KSerializer[]{intSerializer, intSerializer, LongSerializer.INSTANCE, TonNodeBlockIdExt$$serializer.INSTANCE, intSerializer, intSerializer, ByteArraySerializer.INSTANCE, TonNodeZeroStateIdExt$$serializer.INSTANCE};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public LiteServerMasterchainInfoExt deserialize(Decoder decoder) {
        int i;
        Object obj;
        Object obj2;
        Object obj3;
        int i2;
        long j;
        int i3;
        int i4;
        int i5;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor2);
        if (beginStructure.decodeSequentially()) {
            int decodeIntElement = beginStructure.decodeIntElement(descriptor2, 0);
            int decodeIntElement2 = beginStructure.decodeIntElement(descriptor2, 1);
            long decodeLongElement = beginStructure.decodeLongElement(descriptor2, 2);
            obj2 = beginStructure.decodeSerializableElement(descriptor2, 3, TonNodeBlockIdExt$$serializer.INSTANCE, null);
            int decodeIntElement3 = beginStructure.decodeIntElement(descriptor2, 4);
            int decodeIntElement4 = beginStructure.decodeIntElement(descriptor2, 5);
            obj3 = beginStructure.decodeSerializableElement(descriptor2, 6, ByteArraySerializer.INSTANCE, null);
            obj = beginStructure.decodeSerializableElement(descriptor2, 7, TonNodeZeroStateIdExt$$serializer.INSTANCE, null);
            i5 = decodeIntElement;
            i = decodeIntElement4;
            i3 = decodeIntElement3;
            i2 = decodeIntElement2;
            j = decodeLongElement;
            i4 = 255;
        } else {
            Object obj4 = null;
            Object obj5 = null;
            boolean z = true;
            int i6 = 0;
            int i7 = 0;
            long j2 = 0;
            int i8 = 0;
            int i9 = 0;
            int i10 = 0;
            Object obj6 = null;
            while (z) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                switch (decodeElementIndex) {
                    case -1:
                        z = false;
                        break;
                    case 0:
                        i10 |= 1;
                        i6 = beginStructure.decodeIntElement(descriptor2, 0);
                        continue;
                    case 1:
                        i7 = beginStructure.decodeIntElement(descriptor2, 1);
                        i10 |= 2;
                        continue;
                    case 2:
                        j2 = beginStructure.decodeLongElement(descriptor2, 2);
                        i10 |= 4;
                        break;
                    case 3:
                        obj4 = beginStructure.decodeSerializableElement(descriptor2, 3, TonNodeBlockIdExt$$serializer.INSTANCE, obj4);
                        i10 |= 8;
                        break;
                    case 4:
                        i9 = beginStructure.decodeIntElement(descriptor2, 4);
                        i10 |= 16;
                        break;
                    case 5:
                        i8 = beginStructure.decodeIntElement(descriptor2, 5);
                        i10 |= 32;
                        break;
                    case 6:
                        obj5 = beginStructure.decodeSerializableElement(descriptor2, 6, ByteArraySerializer.INSTANCE, obj5);
                        i10 |= 64;
                        break;
                    case 7:
                        obj6 = beginStructure.decodeSerializableElement(descriptor2, 7, TonNodeZeroStateIdExt$$serializer.INSTANCE, obj6);
                        i10 |= 128;
                        break;
                    default:
                        throw new UnknownFieldException(decodeElementIndex);
                }
            }
            i = i8;
            obj = obj6;
            obj2 = obj4;
            obj3 = obj5;
            i2 = i7;
            j = j2;
            i3 = i9;
            i4 = i10;
            i5 = i6;
        }
        beginStructure.endStructure(descriptor2);
        return new LiteServerMasterchainInfoExt(i4, i5, i2, j, (TonNodeBlockIdExt) obj2, i3, i, (byte[]) obj3, (TonNodeZeroStateIdExt) obj, null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, LiteServerMasterchainInfoExt value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder beginStructure = encoder.beginStructure(descriptor2);
        LiteServerMasterchainInfoExt.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
