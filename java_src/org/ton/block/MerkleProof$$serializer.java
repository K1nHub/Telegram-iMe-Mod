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
import org.ton.tlb.CellRef;
/* compiled from: MerkleProof.kt */
/* loaded from: classes6.dex */
public final class MerkleProof$$serializer<X> implements GeneratedSerializer<MerkleProof<X>> {
    private final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;
    private final /* synthetic */ KSerializer<?> typeSerial0;

    private MerkleProof$$serializer() {
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("merkle_proof", this, 3);
        pluginGeneratedSerialDescriptor.addElement("virtualHash", false);
        pluginGeneratedSerialDescriptor.addElement("depth", false);
        pluginGeneratedSerialDescriptor.addElement("virtualRoot", false);
        this.descriptor = pluginGeneratedSerialDescriptor;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ MerkleProof$$serializer(KSerializer typeSerial0) {
        this();
        Intrinsics.checkNotNullParameter(typeSerial0, "typeSerial0");
        this.typeSerial0 = typeSerial0;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        return new KSerializer[]{FiftHexBitStringSerializer.INSTANCE, IntSerializer.INSTANCE, MerkleProof.access$get$childSerializers$cp()[2]};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public MerkleProof<X> deserialize(Decoder decoder) {
        Object obj;
        int i;
        Object obj2;
        int i2;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor);
        KSerializer[] access$get$childSerializers$cp = MerkleProof.access$get$childSerializers$cp();
        if (beginStructure.decodeSequentially()) {
            obj = beginStructure.decodeSerializableElement(descriptor, 0, FiftHexBitStringSerializer.INSTANCE, null);
            int decodeIntElement = beginStructure.decodeIntElement(descriptor, 1);
            obj2 = beginStructure.decodeSerializableElement(descriptor, 2, access$get$childSerializers$cp[2], null);
            i2 = decodeIntElement;
            i = 7;
        } else {
            obj = null;
            Object obj3 = null;
            int i3 = 0;
            int i4 = 0;
            boolean z = true;
            while (z) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor);
                if (decodeElementIndex == -1) {
                    z = false;
                } else if (decodeElementIndex == 0) {
                    obj = beginStructure.decodeSerializableElement(descriptor, 0, FiftHexBitStringSerializer.INSTANCE, obj);
                    i3 |= 1;
                } else if (decodeElementIndex == 1) {
                    i4 = beginStructure.decodeIntElement(descriptor, 1);
                    i3 |= 2;
                } else if (decodeElementIndex != 2) {
                    throw new UnknownFieldException(decodeElementIndex);
                } else {
                    obj3 = beginStructure.decodeSerializableElement(descriptor, 2, access$get$childSerializers$cp[2], obj3);
                    i3 |= 4;
                }
            }
            i = i3;
            obj2 = obj3;
            i2 = i4;
        }
        beginStructure.endStructure(descriptor);
        return new MerkleProof<>(i, (BitString) obj, i2, (CellRef) obj2, null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return this.descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public /* bridge */ /* synthetic */ void serialize(Encoder encoder, Object obj) {
        serialize(encoder, (MerkleProof) ((MerkleProof) obj));
    }

    public void serialize(Encoder encoder, MerkleProof<X> value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor = getDescriptor();
        CompositeEncoder beginStructure = encoder.beginStructure(descriptor);
        MerkleProof.write$Self(value, beginStructure, descriptor, this.typeSerial0);
        beginStructure.endStructure(descriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return new KSerializer[]{this.typeSerial0};
    }
}
