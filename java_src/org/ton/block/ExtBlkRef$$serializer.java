package org.ton.block;

import kotlin.UInt;
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
import kotlinx.serialization.internal.UIntSerializer;
import kotlinx.serialization.internal.ULongSerializer;
import org.ton.bitstring.BitString;
import org.ton.bitstring.FiftHexBitStringSerializer;
/* compiled from: ExtBlkRef.kt */
/* loaded from: classes6.dex */
public final class ExtBlkRef$$serializer implements GeneratedSerializer<ExtBlkRef> {
    public static final ExtBlkRef$$serializer INSTANCE;
    private static final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;

    static {
        ExtBlkRef$$serializer extBlkRef$$serializer = new ExtBlkRef$$serializer();
        INSTANCE = extBlkRef$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("ext_blk_ref", extBlkRef$$serializer, 4);
        pluginGeneratedSerialDescriptor.addElement("end_lt", false);
        pluginGeneratedSerialDescriptor.addElement("seq_no", false);
        pluginGeneratedSerialDescriptor.addElement("root_hash", false);
        pluginGeneratedSerialDescriptor.addElement("file_hash", false);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private ExtBlkRef$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        FiftHexBitStringSerializer fiftHexBitStringSerializer = FiftHexBitStringSerializer.INSTANCE;
        return new KSerializer[]{ULongSerializer.INSTANCE, UIntSerializer.INSTANCE, fiftHexBitStringSerializer, fiftHexBitStringSerializer};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public ExtBlkRef deserialize(Decoder decoder) {
        Object obj;
        Object obj2;
        int i;
        Object obj3;
        Object obj4;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor2);
        if (beginStructure.decodeSequentially()) {
            obj = beginStructure.decodeSerializableElement(descriptor2, 0, ULongSerializer.INSTANCE, null);
            Object decodeSerializableElement = beginStructure.decodeSerializableElement(descriptor2, 1, UIntSerializer.INSTANCE, null);
            FiftHexBitStringSerializer fiftHexBitStringSerializer = FiftHexBitStringSerializer.INSTANCE;
            obj3 = beginStructure.decodeSerializableElement(descriptor2, 2, fiftHexBitStringSerializer, null);
            obj4 = beginStructure.decodeSerializableElement(descriptor2, 3, fiftHexBitStringSerializer, null);
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
                    obj = beginStructure.decodeSerializableElement(descriptor2, 0, ULongSerializer.INSTANCE, obj);
                    i2 |= 1;
                } else if (decodeElementIndex == 1) {
                    obj2 = beginStructure.decodeSerializableElement(descriptor2, 1, UIntSerializer.INSTANCE, obj2);
                    i2 |= 2;
                } else if (decodeElementIndex == 2) {
                    obj5 = beginStructure.decodeSerializableElement(descriptor2, 2, FiftHexBitStringSerializer.INSTANCE, obj5);
                    i2 |= 4;
                } else if (decodeElementIndex != 3) {
                    throw new UnknownFieldException(decodeElementIndex);
                } else {
                    obj6 = beginStructure.decodeSerializableElement(descriptor2, 3, FiftHexBitStringSerializer.INSTANCE, obj6);
                    i2 |= 8;
                }
            }
            i = i2;
            obj3 = obj5;
            obj4 = obj6;
        }
        beginStructure.endStructure(descriptor2);
        return new ExtBlkRef(i, (ULong) obj, (UInt) obj2, (BitString) obj3, (BitString) obj4, null, null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, ExtBlkRef value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder beginStructure = encoder.beginStructure(descriptor2);
        ExtBlkRef.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
