package org.ton.block;

import kotlin.UShort;
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
import kotlinx.serialization.internal.UShortSerializer;
import org.ton.bitstring.BitString;
import org.ton.bitstring.FiftHexBitStringSerializer;
import org.ton.tlb.CellRef;
/* compiled from: MerkleUpdate.kt */
/* loaded from: classes6.dex */
public final class MerkleUpdate$$serializer<X> implements GeneratedSerializer<MerkleUpdate<X>> {
    private final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;
    private final /* synthetic */ KSerializer<?> typeSerial0;

    private MerkleUpdate$$serializer() {
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("!merkle_update", this, 6);
        pluginGeneratedSerialDescriptor.addElement("old_hash", false);
        pluginGeneratedSerialDescriptor.addElement("new_hash", false);
        pluginGeneratedSerialDescriptor.addElement("old_depth", false);
        pluginGeneratedSerialDescriptor.addElement("new_depth", false);
        pluginGeneratedSerialDescriptor.addElement("old", false);
        pluginGeneratedSerialDescriptor.addElement("new", false);
        this.descriptor = pluginGeneratedSerialDescriptor;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ MerkleUpdate$$serializer(KSerializer typeSerial0) {
        this();
        Intrinsics.checkNotNullParameter(typeSerial0, "typeSerial0");
        this.typeSerial0 = typeSerial0;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        KSerializer<?>[] kSerializerArr;
        kSerializerArr = MerkleUpdate.$childSerializers;
        FiftHexBitStringSerializer fiftHexBitStringSerializer = FiftHexBitStringSerializer.INSTANCE;
        UShortSerializer uShortSerializer = UShortSerializer.INSTANCE;
        return new KSerializer[]{fiftHexBitStringSerializer, fiftHexBitStringSerializer, uShortSerializer, uShortSerializer, kSerializerArr[4], kSerializerArr[5]};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public MerkleUpdate<X> deserialize(Decoder decoder) {
        KSerializer[] kSerializerArr;
        int i;
        Object obj;
        Object obj2;
        Object obj3;
        Object obj4;
        Object obj5;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor);
        kSerializerArr = MerkleUpdate.$childSerializers;
        int i2 = 3;
        Object obj6 = null;
        if (beginStructure.decodeSequentially()) {
            FiftHexBitStringSerializer fiftHexBitStringSerializer = FiftHexBitStringSerializer.INSTANCE;
            Object decodeSerializableElement = beginStructure.decodeSerializableElement(descriptor, 0, fiftHexBitStringSerializer, null);
            obj = beginStructure.decodeSerializableElement(descriptor, 1, fiftHexBitStringSerializer, null);
            UShortSerializer uShortSerializer = UShortSerializer.INSTANCE;
            obj2 = beginStructure.decodeSerializableElement(descriptor, 2, uShortSerializer, null);
            obj3 = beginStructure.decodeSerializableElement(descriptor, 3, uShortSerializer, null);
            obj4 = beginStructure.decodeSerializableElement(descriptor, 4, kSerializerArr[4], null);
            obj5 = beginStructure.decodeSerializableElement(descriptor, 5, kSerializerArr[5], null);
            obj6 = decodeSerializableElement;
            i = 63;
        } else {
            int i3 = 0;
            boolean z = true;
            Object obj7 = null;
            Object obj8 = null;
            Object obj9 = null;
            Object obj10 = null;
            Object obj11 = null;
            while (z) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor);
                switch (decodeElementIndex) {
                    case -1:
                        z = false;
                        i2 = 3;
                    case 0:
                        obj6 = beginStructure.decodeSerializableElement(descriptor, 0, FiftHexBitStringSerializer.INSTANCE, obj6);
                        i3 |= 1;
                        i2 = 3;
                    case 1:
                        obj7 = beginStructure.decodeSerializableElement(descriptor, 1, FiftHexBitStringSerializer.INSTANCE, obj7);
                        i3 |= 2;
                    case 2:
                        obj8 = beginStructure.decodeSerializableElement(descriptor, 2, UShortSerializer.INSTANCE, obj8);
                        i3 |= 4;
                    case 3:
                        obj9 = beginStructure.decodeSerializableElement(descriptor, i2, UShortSerializer.INSTANCE, obj9);
                        i3 |= 8;
                    case 4:
                        obj10 = beginStructure.decodeSerializableElement(descriptor, 4, kSerializerArr[4], obj10);
                        i3 |= 16;
                    case 5:
                        obj11 = beginStructure.decodeSerializableElement(descriptor, 5, kSerializerArr[5], obj11);
                        i3 |= 32;
                    default:
                        throw new UnknownFieldException(decodeElementIndex);
                }
            }
            i = i3;
            obj = obj7;
            obj2 = obj8;
            obj3 = obj9;
            obj4 = obj10;
            obj5 = obj11;
        }
        beginStructure.endStructure(descriptor);
        return new MerkleUpdate<>(i, (BitString) obj6, (BitString) obj, (UShort) obj2, (UShort) obj3, (CellRef) obj4, (CellRef) obj5, null, null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return this.descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public /* bridge */ /* synthetic */ void serialize(Encoder encoder, Object obj) {
        serialize(encoder, (MerkleUpdate) ((MerkleUpdate) obj));
    }

    public void serialize(Encoder encoder, MerkleUpdate<X> value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor = getDescriptor();
        CompositeEncoder beginStructure = encoder.beginStructure(descriptor);
        MerkleUpdate.write$Self(value, beginStructure, descriptor, this.typeSerial0);
        beginStructure.endStructure(descriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return new KSerializer[]{this.typeSerial0};
    }
}
