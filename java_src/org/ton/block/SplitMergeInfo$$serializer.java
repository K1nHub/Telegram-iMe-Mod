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
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import org.ton.bitstring.BitString;
import org.ton.bitstring.FiftHexBitStringSerializer;
/* compiled from: SplitMergeInfo.kt */
/* loaded from: classes6.dex */
public final class SplitMergeInfo$$serializer implements GeneratedSerializer<SplitMergeInfo> {
    public static final SplitMergeInfo$$serializer INSTANCE;
    private static final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;

    static {
        SplitMergeInfo$$serializer splitMergeInfo$$serializer = new SplitMergeInfo$$serializer();
        INSTANCE = splitMergeInfo$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("split_merge_info", splitMergeInfo$$serializer, 4);
        pluginGeneratedSerialDescriptor.addElement("curShardPfxLen", false);
        pluginGeneratedSerialDescriptor.addElement("accSplitDepth", false);
        pluginGeneratedSerialDescriptor.addElement("thisAddr", false);
        pluginGeneratedSerialDescriptor.addElement("siblingAddr", false);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private SplitMergeInfo$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        IntSerializer intSerializer = IntSerializer.INSTANCE;
        FiftHexBitStringSerializer fiftHexBitStringSerializer = FiftHexBitStringSerializer.INSTANCE;
        return new KSerializer[]{intSerializer, intSerializer, fiftHexBitStringSerializer, fiftHexBitStringSerializer};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public SplitMergeInfo deserialize(Decoder decoder) {
        int i;
        Object obj;
        Object obj2;
        int i2;
        int i3;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor2);
        Object obj3 = null;
        if (beginStructure.decodeSequentially()) {
            int decodeIntElement = beginStructure.decodeIntElement(descriptor2, 0);
            int decodeIntElement2 = beginStructure.decodeIntElement(descriptor2, 1);
            FiftHexBitStringSerializer fiftHexBitStringSerializer = FiftHexBitStringSerializer.INSTANCE;
            obj = beginStructure.decodeSerializableElement(descriptor2, 2, fiftHexBitStringSerializer, null);
            obj2 = beginStructure.decodeSerializableElement(descriptor2, 3, fiftHexBitStringSerializer, null);
            i = decodeIntElement;
            i2 = 15;
            i3 = decodeIntElement2;
        } else {
            Object obj4 = null;
            boolean z = true;
            int i4 = 0;
            int i5 = 0;
            int i6 = 0;
            while (z) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                if (decodeElementIndex == -1) {
                    z = false;
                } else if (decodeElementIndex == 0) {
                    i4 = beginStructure.decodeIntElement(descriptor2, 0);
                    i5 |= 1;
                } else if (decodeElementIndex == 1) {
                    i6 = beginStructure.decodeIntElement(descriptor2, 1);
                    i5 |= 2;
                } else if (decodeElementIndex == 2) {
                    obj3 = beginStructure.decodeSerializableElement(descriptor2, 2, FiftHexBitStringSerializer.INSTANCE, obj3);
                    i5 |= 4;
                } else if (decodeElementIndex != 3) {
                    throw new UnknownFieldException(decodeElementIndex);
                } else {
                    obj4 = beginStructure.decodeSerializableElement(descriptor2, 3, FiftHexBitStringSerializer.INSTANCE, obj4);
                    i5 |= 8;
                }
            }
            i = i4;
            obj = obj3;
            obj2 = obj4;
            i2 = i5;
            i3 = i6;
        }
        beginStructure.endStructure(descriptor2);
        return new SplitMergeInfo(i2, i, i3, (BitString) obj, (BitString) obj2, null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, SplitMergeInfo value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder beginStructure = encoder.beginStructure(descriptor2);
        SplitMergeInfo.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
