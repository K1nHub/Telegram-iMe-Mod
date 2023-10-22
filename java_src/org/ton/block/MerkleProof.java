package org.ton.block;

import java.lang.annotation.Annotation;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.PolymorphicSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import org.ton.bitstring.BitString;
import org.ton.bitstring.FiftHexBitStringSerializer;
import org.ton.cell.Cell;
import org.ton.cell.CellType;
import org.ton.tlb.CellRef;
/* compiled from: MerkleProof.kt */
@Serializable
/* loaded from: classes6.dex */
public final class MerkleProof<X> {
    private static final SerialDescriptor $cachedDescriptor;
    private final int depth;
    private final BitString virtualHash;
    private final CellRef<X> virtualRoot;
    public static final Companion Companion = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {null, null, new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(CellRef.class), new Annotation[0])};

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MerkleProof) {
            MerkleProof merkleProof = (MerkleProof) obj;
            return Intrinsics.areEqual(this.virtualHash, merkleProof.virtualHash) && this.depth == merkleProof.depth && Intrinsics.areEqual(this.virtualRoot, merkleProof.virtualRoot);
        }
        return false;
    }

    public int hashCode() {
        return (((this.virtualHash.hashCode() * 31) + this.depth) * 31) + this.virtualRoot.hashCode();
    }

    public String toString() {
        return "MerkleProof(virtualHash=" + this.virtualHash + ", depth=" + this.depth + ", virtualRoot=" + this.virtualRoot + ')';
    }

    public /* synthetic */ MerkleProof(int i, BitString bitString, int i2, CellRef cellRef, SerializationConstructorMarker serializationConstructorMarker) {
        if (7 != (i & 7)) {
            PluginExceptionsKt.throwMissingFieldException(i, 7, $cachedDescriptor);
        }
        this.virtualHash = bitString;
        this.depth = i2;
        this.virtualRoot = cellRef;
    }

    public static final /* synthetic */ void write$Self(MerkleProof merkleProof, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor, KSerializer kSerializer) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        compositeEncoder.encodeSerializableElement(serialDescriptor, 0, FiftHexBitStringSerializer.INSTANCE, merkleProof.virtualHash);
        compositeEncoder.encodeIntElement(serialDescriptor, 1, merkleProof.depth);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 2, kSerializerArr[2], merkleProof.virtualRoot);
    }

    /* compiled from: MerkleProof.kt */
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final <T0> KSerializer<MerkleProof<T0>> serializer(KSerializer<T0> typeSerial0) {
            Intrinsics.checkNotNullParameter(typeSerial0, "typeSerial0");
            return new MerkleProof$$serializer(typeSerial0);
        }

        public static /* synthetic */ Cell virtualize$default(Companion companion, Cell cell, int i, int i2, Object obj) {
            if ((i2 & 2) != 0) {
                i = 1;
            }
            return companion.virtualize(cell, i);
        }

        public final Cell virtualize(Cell cell, int i) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            CellType type = cell.getType();
            CellType cellType = CellType.MERKLE_PROOF;
            if (!(type == cellType)) {
                throw new IllegalArgumentException(("Invalid cell type, expected: " + cellType + ", actual: " + cell.getType()).toString());
            }
            return ((Cell) CollectionsKt.first((List<? extends Object>) cell.getRefs())).virtualize(i);
        }
    }

    static {
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("merkle_proof", null, 3);
        pluginGeneratedSerialDescriptor.addElement("virtualHash", false);
        pluginGeneratedSerialDescriptor.addElement("depth", false);
        pluginGeneratedSerialDescriptor.addElement("virtualRoot", false);
        $cachedDescriptor = pluginGeneratedSerialDescriptor;
    }
}
