package org.ton.block;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import org.ton.bitstring.BitString;
import org.ton.bitstring.FiftHexBitStringSerializer;
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.TlbCodec;
import org.ton.tlb.TlbCombinator;
import org.ton.tlb.TlbConstructorKt;
import org.ton.tlb.TlbObject;
import org.ton.tlb.TlbPrettyPrinter;
/* compiled from: HashUpdate.kt */
@Serializable
/* loaded from: classes6.dex */
public final class HashUpdate implements TlbObject {
    public static final Companion Companion = new Companion(null);
    private final BitString newHash;
    private final BitString oldHash;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof HashUpdate) {
            HashUpdate hashUpdate = (HashUpdate) obj;
            return Intrinsics.areEqual(this.oldHash, hashUpdate.oldHash) && Intrinsics.areEqual(this.newHash, hashUpdate.newHash);
        }
        return false;
    }

    public int hashCode() {
        return (this.oldHash.hashCode() * 31) + this.newHash.hashCode();
    }

    public /* synthetic */ HashUpdate(int i, BitString bitString, BitString bitString2, SerializationConstructorMarker serializationConstructorMarker) {
        if (3 != (i & 3)) {
            PluginExceptionsKt.throwMissingFieldException(i, 3, HashUpdate$$serializer.INSTANCE.getDescriptor());
        }
        this.oldHash = bitString;
        this.newHash = bitString2;
    }

    public HashUpdate(BitString oldHash, BitString newHash) {
        Intrinsics.checkNotNullParameter(oldHash, "oldHash");
        Intrinsics.checkNotNullParameter(newHash, "newHash");
        this.oldHash = oldHash;
        this.newHash = newHash;
    }

    public static final /* synthetic */ void write$Self(HashUpdate hashUpdate, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        FiftHexBitStringSerializer fiftHexBitStringSerializer = FiftHexBitStringSerializer.INSTANCE;
        compositeEncoder.encodeSerializableElement(serialDescriptor, 0, fiftHexBitStringSerializer, hashUpdate.oldHash);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 1, fiftHexBitStringSerializer, hashUpdate.newHash);
    }

    public final BitString getOldHash() {
        return this.oldHash;
    }

    public final BitString getNewHash() {
        return this.newHash;
    }

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }

    /* compiled from: HashUpdate.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbCodec<HashUpdate> {
        private final /* synthetic */ TlbCombinator<HashUpdate> $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.tlb.TlbLoader
        public HashUpdate loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public HashUpdate loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, HashUpdate value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        private Companion() {
            this.$$delegate_0 = TlbConstructorKt.asTlbCombinator(HashUpdateTlbConstructor.INSTANCE, Reflection.getOrCreateKotlinClass(HashUpdate.class));
        }

        public final KSerializer<HashUpdate> serializer() {
            return HashUpdate$$serializer.INSTANCE;
        }
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("update_hashes");
        open.field("old_hash", this.oldHash);
        open.field("new_hash", this.newHash);
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }
}
