package org.ton.block;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.TlbObject;
import org.ton.tlb.TlbPrettyPrinter;
import org.ton.tlb.providers.TlbConstructorProvider;
/* compiled from: StorageUsed.kt */
@Serializable
/* loaded from: classes6.dex */
public final class StorageUsed implements TlbObject {
    public static final Companion Companion = new Companion(null);
    private final VarUInteger bits;
    private final VarUInteger cells;
    private final VarUInteger publicCells;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof StorageUsed) {
            StorageUsed storageUsed = (StorageUsed) obj;
            return Intrinsics.areEqual(this.cells, storageUsed.cells) && Intrinsics.areEqual(this.bits, storageUsed.bits) && Intrinsics.areEqual(this.publicCells, storageUsed.publicCells);
        }
        return false;
    }

    public int hashCode() {
        return (((this.cells.hashCode() * 31) + this.bits.hashCode()) * 31) + this.publicCells.hashCode();
    }

    public /* synthetic */ StorageUsed(int i, VarUInteger varUInteger, VarUInteger varUInteger2, VarUInteger varUInteger3, SerializationConstructorMarker serializationConstructorMarker) {
        if (7 != (i & 7)) {
            PluginExceptionsKt.throwMissingFieldException(i, 7, StorageUsed$$serializer.INSTANCE.getDescriptor());
        }
        this.cells = varUInteger;
        this.bits = varUInteger2;
        this.publicCells = varUInteger3;
    }

    public StorageUsed(VarUInteger cells, VarUInteger bits, VarUInteger publicCells) {
        Intrinsics.checkNotNullParameter(cells, "cells");
        Intrinsics.checkNotNullParameter(bits, "bits");
        Intrinsics.checkNotNullParameter(publicCells, "publicCells");
        this.cells = cells;
        this.bits = bits;
        this.publicCells = publicCells;
    }

    public static final /* synthetic */ void write$Self(StorageUsed storageUsed, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        VarUInteger$$serializer varUInteger$$serializer = VarUInteger$$serializer.INSTANCE;
        compositeEncoder.encodeSerializableElement(serialDescriptor, 0, varUInteger$$serializer, storageUsed.cells);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 1, varUInteger$$serializer, storageUsed.bits);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 2, varUInteger$$serializer, storageUsed.publicCells);
    }

    public final VarUInteger getCells() {
        return this.cells;
    }

    public final VarUInteger getBits() {
        return this.bits;
    }

    public final VarUInteger getPublicCells() {
        return this.publicCells;
    }

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }

    /* compiled from: StorageUsed.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbConstructorProvider<StorageUsed> {
        private final /* synthetic */ StorageUsedTlbConstructor $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.tlb.TlbLoader
        public StorageUsed loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public StorageUsed loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, StorageUsed value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        @Override // org.ton.tlb.providers.TlbConstructorProvider
        public org.ton.tlb.TlbConstructor<StorageUsed> tlbConstructor() {
            return this.$$delegate_0.tlbConstructor();
        }

        private Companion() {
            this.$$delegate_0 = StorageUsedTlbConstructor.INSTANCE;
        }

        public final KSerializer<StorageUsed> serializer() {
            return StorageUsed$$serializer.INSTANCE;
        }
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("storage_used");
        open.field("cells", this.cells);
        open.field("bits", this.bits);
        open.field("public_cells", this.publicCells);
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }
}
